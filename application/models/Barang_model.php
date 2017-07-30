<?php
class Barang_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
    }

    function getBarangMaster(){
        $sql = 'SELECT * FROM barang ORDER BY nama asc';
        $q = $this->db->query($sql);
        return $q->result();
    }

    function getBarang(){
        $sql = 'SELECT c.*, p1.jumlah_setelah as stok
            FROM barang c
            LEFT JOIN barang_stok p1 ON (c.id = p1.barang_id)
            LEFT OUTER JOIN barang_stok p2 ON (c.id = p2.barang_id AND
                (p1.tanggal < p2.tanggal OR p1.tanggal = p2.tanggal AND p1.id < p2.id))
            WHERE p2.id IS NULL
            ORDER BY nama asc';
        $q = $this->db->query($sql);
        return $q->result();
    }

    function getGudang(){
        $sql = 'SELECT c.*, p1.jumlah_setelah as stok
            FROM barang c
            LEFT JOIN gudang_stok p1 ON (c.id = p1.barang_id)
            LEFT OUTER JOIN gudang_stok p2 ON (c.id = p2.barang_id AND
                (p1.tanggal < p2.tanggal OR p1.tanggal = p2.tanggal AND p1.id < p2.id))
            WHERE p2.id IS NULL
            ORDER BY nama asc';
        $q = $this->db->query($sql);
        return $q->result();
    }

    function getTransaksi($params){
        $sql_select_total = 'select count(*) as total ';
        $sql_select_query = 'select st.id,st.tanggal,b.id as barang_id,b.nama as nama_barang,st.jumlah_sebelum as stok_sebelum,st.jumlah_setelah as stok_setelah,st.tipe,st.trx_id, ';
        $sql_select_query .='
            case st.tipe when "masuk" then bm.jumlah when "keluar" then bk.jumlah else "" end as jumlah
        ';
        $sql_join = ' FROM barang_stok st
        left join barang b on (st.barang_id = b.id) 
        left join barang_masuk bm on (bm.stok_id = st.id)  
        left join barang_keluar bk on (bk.stok_id = st.id)       
        WHERE st.tipe != "start" ';

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
            $sql_where .= ' AND st.tanggal '.$petunjuk.' "'.$params['filters']['tanggal'].'"';
        }
        if(isset($params['filters']['barang']) && $params['filters']['barang'] != ''){
            $sql_where .= ' AND st.barang_id = '.$params['filters']['barang'].'';
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
            $sql_where .= ' AND st.jumlah_setelah '.$operator.' '.$params['filters']['jumlah'].'';
        }

        //Order by sorting
        if(isset($params['order']) && $params['order'] !='' ){
            $sql_order = ' ORDER BY '.$params['order'];
        }else {
            if($sql_where == ''){
                $sql_order = ' ORDER BY st.id DESC ';
            }
            else {
                $sql_order = ' ORDER BY st.barang_id DESC,st.tanggal DESC,st.id DESC';
            }
           
        }
        //limit pagination
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
        //build query
        $sql_final_total = $sql_select_total.$sql_join.$sql_where.$sql_order;
        $sql_final_query = $sql_select_query.$sql_join.$sql_where.$sql_order.$sql_limit;
        
        $q_total = $this->db->query($sql_final_total);
        $data_total = $q_total->result();
        
        $q = $this->db->query($sql_final_query);
        $data = $q->result();
        return array($data,$data_total[0]->total,$sql_final_query);
    }


    public function saveBarang($barang){
        $message = '';
        $status = false;
        try{
            $bid = $this->insert_barang($barang);
            $new_stok_id = $this->insert_barang_stok_init(date("Y-m-d"),$bid,0,0);
            if(!$new_stok_id){ 
                throw new Exception('Tidak dapat menyimpan stok.');
            }            
            $status = true;
        }
        catch(Exception $e){            
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

    public function updateBarang($barang,$id){
       $sql = "UPDATE barang SET nama = ? WHERE id = ? ";
        $status = $this->db->query($sql,array($barang,$id));
        if($status){
            return array(true,'Data telah di update');
        }
        else {
            return array(false, $this->db->error());
        }
    }

    public function updateBarangStok($stok,$id){
        $status = $this->insert_barang_stok_manual_edit(date("Y-m-d"),$id,$stok,0);
        if($status){
            return array(true,'Data telah di update');
        }
        else {
            return array(false, $this->db->error());
        }
    }

    public function insert_barang($barang){
        $data = array(
            'nama'=>$barang,            
            'admin'=>'admin'
        );
        $this->db->insert('barang',$data);
        return $this->db->insert_id();
    }

    public function insert_barang_stok_init($tanggal,$barang,$jumlah,$bm_id){       
        $data = array(
            'tanggal'=>$tanggal,
            'barang_id'=>$barang,
            'jumlah_sebelum'=> 0,
            'jumlah_setelah'=> (int) $jumlah,
            'tipe'=>'start',
            'trx_id'=> '',
            'admin'=>'admin'
        );
        $this->db->insert('barang_stok',$data);
        return $this->db->insert_id();
    }

    public function insert_barang_stok_manual_edit($tanggal,$barang,$jumlah,$bm_id){    
        $sql_stok_after = "SELECT id,jumlah_setelah FROM barang_stok WHERE tanggal <= '".$tanggal."' AND barang_id = ? ORDER BY tanggal DESC,id DESC limit 0,1";
        $q_after = $this->db->query($sql_stok_after,array($barang));
        $datay = $q_after->row();
        $data = array(
            'tanggal'=>$tanggal,
            'barang_id'=>$barang,
            'jumlah_sebelum'=> isset($datay->jumlah_setelah)?(int) $datay->jumlah_setelah:0,
            'jumlah_setelah'=> (int) $jumlah,
            'tipe'=>'edit',
            'trx_id'=> 0,
            'admin'=>'admin'
        );
        $this->db->insert('barang_stok',$data);
        return $this->db->insert_id();
    }

    public function delete($id){
        $sql = "DELETE FROM barang WHERE id = ? ";
        $status = $this->db->query($sql,array($id));
        if($status){
            $sql = "DELETE FROM barang_stok WHERE barang_id = ? AND tipe = ?";
            $status = $this->db->query($sql,array($id,'start'));            
        }
        if($status){
            return array(true,'Data telah di hapus');
        }
        else {
            return array(false, $this->db->error());
        }
    }

    public function delete_barang_stok($stok_id){
        $sql = "DELETE FROM barang_stok WHERE id = ? ";
        $status = $this->db->query($sql,array($stok_id));
        return $status;
    }

    public function delete_transaksi($id){
        $message = '';
        $status = false;
        try{
            $sql = "SELECT * FROM barang_stok WHERE id = ?";
            $q = $this->db->query($sql,array($id));
            $datay = $q->row();
            if(empty($datay)){
                return array(false, 'Data tidak temukan.');
            }
            $barang = $datay->barang_id;
            $tanggal = $datay->tanggal;
            $jumlah_setelah = $datay->jumlah_setelah;
            $jumlah_sebelum = $datay->jumlah_sebelum;
            $sql_set = '';
            if($jumlah_sebelum > $jumlah_setelah){
                $selisih = $jumlah_sebelum - $jumlah_setelah;
                $sql_set = " jumlah_sebelum = (jumlah_sebelum + ".$selisih."),jumlah_setelah = (jumlah_setelah + ".$selisih.") ";
            }
            else if($jumlah_sebelum < $jumlah_setelah){
                 $selisih = $jumlah_setelah - $jumlah_sebelum;
                 $sql_set = " jumlah_sebelum = (jumlah_sebelum - ".$selisih."),jumlah_setelah = (jumlah_setelah - ".$selisih.") ";

            }
            $status = $this->delete_barang_stok($id);
            if($status && $sql_set != ''){              
                $this->db->trans_begin();
                $sqla = "SELECT id  FROM barang_stok WHERE tanggal >= '".$tanggal."' AND barang_id = ? AND id > ? ORDER BY tanggal DESC, id DESC";
                $qa = $this->db->query($sqla,array($barang,$id));
                $data_a = $qa->result();
                if(!empty($data_a)){
                    foreach($data_a as $row){
                        $sqlb = "UPDATE barang_stok SET ".$sql_set." WHERE id = ? ";
                        $this->db->query($sqlb,array($row->id));
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