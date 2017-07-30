<?php
class Barangkeluar_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
    }
    function getBarang(){
        $sql = 'SELECT * FROM barang ORDER BY nama asc';
        $q = $this->db->query($sql);
        return $q->result();
    }

    function getList($params){
        $sql_select_total = 'select count(*) as total ';
        $sql_select_query = 'select m.id,m.tanggal,b.id as barang_id,b.nama as nama_barang,m.jumlah,st.jumlah_sebelum as stok_sebelum,st.jumlah_setelah as stok_setelah';

        $sql_join = ' FROM barang_keluar m
		left join barang b on (m.barang_id = b.id)
		left join barang_stok st on (m.stok_id = st.id)
		WHERE 1=1';
        $sql_where = '';
        if(isset($params['search']['value']) && $params['search']['value'] != ''){
            $sql_where .= ' AND b.nama like "%'.$params['search']['value'].'%"';
        }
        if(isset($params['filters']['tanggal']) && $params['filters']['tanggal'] != ''){
            $petunjuk = '=';
            if(isset($params['filters']['tanggal_petunjuk']) && $params['filters']['tanggal_petunjuk'] != ''){
                $petunjuk_code = $params['filters']['tanggal_petunjuk'];
                switch($petunjuk_code){
                    case 0: $petunjuk  = '='; break;
                    case 1: $petunjuk  = '<'; break;
                    case 2: $petunjuk  = '>'; break;
                    default: $petunjuk  = '='; break;
                }
            }
            $sql_where .= ' AND m.tanggal '.$petunjuk.' "'.$params['filters']['tanggal'].'"';
        }
        if(isset($params['filters']['barang']) && $params['filters']['barang'] != ''){
            $sql_where .= ' AND m.barang_id = "'.$params['filters']['barang'].'"';
        }
        if(isset($params['filters']['jumlah']) && $params['filters']['jumlah'] != ''){
            if(isset($params['filters']['jumlah_operator']) && $params['filters']['jumlah_operator'] != ''){
                $operator_code = $params['filters']['jumlah_operator'];
                switch($operator_code){
                    case 0: $operator = '='; break;
                    case 1: $operator = '<'; break;
                    case 2: $operator = '>'; break;
                    default: $operator = '='; break;
                }
            }
            else {
                $operator = '=';
            }
            $sql_where .= ' AND m.jumlah '.$operator.' '.$params['filters']['jumlah'].'';
        }

        //Order by sorting
        if(isset($params['order']) && $params['order'] !='' ){
            $sql_order = ' ORDER BY '.$params['order'];
        }else {
            if($sql_where == ''){
                $sql_order = ' ORDER BY m.id DESC';
            } else {
               $sql_order = ' ORDER BY m.tanggal DESC,m.id DESC';
            }
        }

        if(isset($params['limit_start'])){
            $limit_start = $params['limit_start'];
        }
        else {
            $limit_start = 0;
        }
        if(isset($params['limit_num'])){
            $limit_num = $params['limit_num'];
        }
        else {
            $limit_num = 10;
        }
        $sql_limit = ' limit '.$limit_start.','.$limit_num;


        $sql_final_total = $sql_select_total.$sql_join.$sql_where.$sql_order;
        $sql_final_query = $sql_select_query.$sql_join.$sql_where.$sql_order.$sql_limit;

        $q_total = $this->db->query($sql_final_total);
        $data_total = $q_total->result();

        $q = $this->db->query($sql_final_query);
        $data = $q->result();
        return array($data,$data_total[0]->total,$sql_final_query);
    }

    function save($tanggal,$barang,$jumlah){
        $message = '';
        $status = false;
        try{
            $bm_id = $this->insert_barang_keluar($tanggal,$barang,$jumlah);
            list($status_stok,$new_stok_id) = $this->insert_barang_stok($tanggal,$barang,$jumlah,$bm_id);
            if(!$status_stok){
                //delete bm
                $this->delete_barang_keluar($bm_id);
                throw new Exception('Message : '.$new_stok_id);
            }
            $this->update_barang_keluar($bm_id,$new_stok_id);

            $this->db->trans_begin();
            $data_before = $this->get_barang_keluar_after($tanggal,$barang);
            if(!empty($data_before)){
                foreach($data_before as $row){
                    $this->update_barang_keluar_after($jumlah,$row->stok_id);
                }
            }
            if ($this->db->trans_status() === FALSE)
            {
                $this->db->trans_rollback();
            }
            else
            {
                $this->db->trans_commit();
            }
            $status = true;
        }
        catch(Exception $e){
            $this->db->trans_rollback();
            $message = $e->getMessage();
            $status = false;
        }

        if($status){
            return array($status,'Data telah ditambahkan');
        }
        else {
            return array($status, $message);
        }
    }

    public function insert_barang_keluar($tanggal,$barang,$jumlah){
        $data = array(
            'tanggal'=>$tanggal,
            'barang_id'=>$barang,
            'jumlah'=>$jumlah,
            'admin'=>'admin'
        );
        $this->db->insert('barang_keluar',$data);
        return $this->db->insert_id();
    }

    public function insert_barang_stok($tanggal,$barang,$jumlah,$bm_id){
        $sql_stok_after = "SELECT id,jumlah_setelah FROM barang_stok WHERE tanggal <= '".$tanggal."' AND barang_id = ? ORDER BY tanggal DESC,id DESC limit 0,1";
        $q_after = $this->db->query($sql_stok_after,array($barang));
        $datay = $q_after->row();
        if(empty($datay)){
            return array(false,'Tidak ada stok untuk barang ini');
        }
        if($datay->jumlah_setelah < $jumlah){
            return array(false,'Stok saat ini tidak cukup ( stok '.$datay->jumlah_setelah.' )');
        }
        $data = array(
            'tanggal'=>$tanggal,
            'barang_id'=>$barang,
            'jumlah_sebelum'=> (int) $datay->jumlah_setelah,
            'jumlah_setelah'=> (int) $datay->jumlah_setelah - (int) $jumlah,
            'tipe'=>'keluar',
            'trx_id'=> $bm_id,
            'admin'=>'admin'
        );
        $this->db->insert('barang_stok',$data);
        return array(true,$this->db->insert_id());
    }

    public function get_barang_keluar_after($tanggal,$barang){
        $sql = "SELECT stok_id  FROM barang_keluar WHERE tanggal > '".$tanggal."' and barang_id = ? ORDER BY tanggal DESC, id DESC";
        $q = $this->db->query($sql,array($barang));
        $data_a = $q->result();
        return $data_a;
    }

    public function update_barang_keluar_after($jumlah,$id){
        $sql = "UPDATE barang_stok SET jumlah_sebelum = (jumlah_sebelum - ".$jumlah."),jumlah_setelah = (jumlah_setelah - ".$jumlah.") WHERE id = ? ";
        $status = $this->db->query($sql,array($id));
        return $status;
    }

    public function update_barang_keluar($id,$stok_id){
        $sql = "UPDATE barang_keluar SET stok_id = ? WHERE id = ? ";
        $status = $this->db->query($sql,array($stok_id,$id));
        return $status;
    }

    public function delete_barang_keluar($id){
        $sql = "DELETE FROM barang_keluar WHERE id = ? ";
        $status = $this->db->query($sql,array($id));
        return $status;
    }

    public function delete_barang_stok($stok_id){
        $sql = "DELETE FROM barang_stok WHERE id = ? ";
        $status = $this->db->query($sql,array($stok_id));
        return $status;
    }

    function delete($id){
        $message = '';
        $status = false;
        try{
            $sql = "SELECT * FROM barang_keluar WHERE id = ?";
            $q = $this->db->query($sql,array($id));
            $datay = $q->row();
            if(empty($datay)){
                return array(false, 'Data tidak temukan.');
            }
            $barang = $datay->barang_id;
            $tanggal = $datay->tanggal;
            $stok_id = $datay->stok_id;
            $jumlah = $datay->jumlah;
            $status = $this->delete_barang_keluar($id);
            if($status){
                $this->delete_barang_stok($stok_id);

                $this->db->trans_begin();
                $sqla = "SELECT stok_id  FROM barang_keluar WHERE tanggal >= '".$tanggal."' and barang_id = ? and id > ? ORDER BY tanggal DESC, id DESC";
                $qa = $this->db->query($sqla,array($barang,$id));
                $data_a = $qa->result();
                if(!empty($data_a)){
                    foreach($data_a as $row){
                        $sqlb = "UPDATE barang_stok SET jumlah_sebelum = (jumlah_sebelum + ".$jumlah."),jumlah_setelah = (jumlah_setelah + ".$jumlah.") WHERE id = ? ";
                        $this->db->query($sqlb,array($row->stok_id));
                    }
                }
                if ($this->db->trans_status() === FALSE)
                {
                    $this->db->trans_rollback();
                }
                else
                {
                    $this->db->trans_commit();
                }
            }
            $status = true;
        }
        catch(Exception $e){
            $this->db->trans_rollback();
            $message = $e->getMessage();
            $status = false;
        }

        if($status){
            return array($status,'Data telah didelete');
        }
        else {
            return array($status, $message);
        }
    }


}
?>