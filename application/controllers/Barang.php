<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include(dirname(__FILE__).'/Base.php');
class Barang extends Base
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('general');
        $this->load->library('session');
        $this->load->model('barang_model');
        $this->session->set_userdata('menu-active','menu-0');
    }

    public function index()
    {   $data = array();        
		$data['barang'] = $this->barang_model->getBarang();
        $this->load->templated_view('barang/index',$data);
    }

    public function gudang()
    {   $data = array();
        $data['barang'] = $this->barang_model->getGudang();
        $this->load->templated_view('barang/gudang',$data);
    }

	public function add(){		
        $barang = $this->input->post('barang');         
		list($status,$message) = $this->barang_model->saveBarang($barang);
        echo json_encode(array('status'=>$status,'message'=>$message));
	}

    public function edit(){      
        $barang = $this->input->post('barang'); 
        $id = $this->input->post('id');        
        list($status,$message) = $this->barang_model->updateBarang($barang,$id);
        echo json_encode(array('status'=>$status,'message'=>$message));
    }

    public function edit_stok(){      
        $stok = $this->input->post('stok'); 
        $id = $this->input->post('id');        
        list($status,$message) = $this->barang_model->updateBarangStok($stok,$id);
        echo json_encode(array('status'=>$status,'message'=>$message));
    }

    public function delete(){
        $id = $this->input->post('barang');
        list($status,$message) = $this->barang_model->delete($id);
        echo json_encode(array('status'=>$status,'message'=>$message));
    }

     public function transaksi()
    {   $data = array(); 
        $data['barang'] = $this->barang_model->getBarangMaster();
        $this->load->templated_view('barang/transaksi',$data);
    }

    public function transaksi_data(){
        $params = array();
        $params['limit_num'] = $this->input->get('length');
        $params['limit_start'] = $this->input->get('start');
        if($this->input->get('search')){
            $params['search'] = $this->input->get('search');
        }
        $params['filters'] = array();
        if($this->input->get('filter_tanggal')){
            $params['filters']['tanggal'] = $this->input->get('filter_tanggal');
            $params['filters']['tanggal_petunjuk'] = $this->input->get('filter_tanggal_petunjuk');
        }
        if($this->input->get('filter_barang')){
            $params['filters']['barang'] = $this->input->get('filter_barang');
        }
        if($this->input->get('filter_jumlah')){
            $params['filters']['jumlah'] = $this->input->get('filter_jumlah');
            $params['filters']['jumlah_operator'] = $this->input->get('filter_jumlah_operator');
        }
        if($this->input->get('order')){
            $order = $this->input->get('order');
            $params['order'] = '';
            if(!empty($order)){
                if($order[0]['column'] == 0){
                    $params['order'] = ' m.tanggal '.$order[0]['dir'];
                }
                else if($order[0]['column'] == 1){
                    $params['order'] = ' b.nama '.$order[0]['dir'];
                }
            }
        }
        //echo json_encode($params); die;
        list($data,$total_data,$sql) = $this->barang_model->getTransaksi($params);      
        $data_provider = array();
        if(!empty($data)){
            foreach($data as $row){
                $data_provider[] = array(
                'id'=>$row->id,
                'tipe'=>$row->tipe,
                'jumlah'=>$row->jumlah,
                'tanggal'=>$row->tanggal,
                'barang_id'=>$row->barang_id,
                'nama_barang'=>$row->nama_barang,
                'stok_sebelum'=>$row->stok_sebelum,
                'stok_setelah'=>$row->stok_setelah,
                'trx_id'=>$row->trx_id);
            }
        }
        $result = array(
            'draw' => ($this->input->get('draw'))?$this->input->get('draw'):1,
            'recordsTotal' =>$total_data,
            'recordsFiltered' => $total_data,
            'data' => $data_provider,
            'debug'=>$sql
        );
        echo json_encode($result);
    }

    public function transaksi_delete(){
        $id = $this->input->post('id');
        $trx_id = $this->input->post('trx_id');
        $type = $this->input->post('type');
        $result = '';
        switch($type){
            case 'masuk':
                $result = $this->_delete_barang_masuk($trx_id);
                break;
            case 'keluar':
                $result = $this->_delete_barang_keluar($trx_id);
                break;
            case 'edit':
                $result = $this->_delete_stok_only($id);
                break;           
            default: break;
        }

        echo $result;
    }

    private function _delete_stok_only($id){ 
        list($status,$message) = $this->barang_model->delete_transaksi($id);
        return json_encode(array('status'=>$status,'message'=>$message));    
    }

    private function _delete_barang_keluar($id){       
        $this->load->model('barangkeluar_model');
        list($status,$message) = $this->barangkeluar_model->delete($id);
        return json_encode(array('status'=>$status,'message'=>$message));    
    }

    private function _delete_barang_masuk($id){
        $this->load->model('barangmasuk_model');
        list($status,$message) = $this->barangmasuk_model->delete($id);
        return json_encode(array('status'=>$status,'message'=>$message));
    }

    

}