<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include(dirname(__FILE__).'/Base.php');
class Barang_masuk extends Base
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('general');
        $this->load->library('session');
        $this->load->model('barangmasuk_model');        
        $this->session->set_userdata('menu-active','menu-1');
    }

    public function index()
    {   $data = array();        
		$data['barang'] = $this->barangmasuk_model->getBarang();
        $this->load->templated_view('barang_masuk/index',$data);
    }
	
	public function data(){
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
		list($data,$total_data,$sql) = $this->barangmasuk_model->getlist($params);		
		$data_provider = array();
		if(!empty($data)){
			foreach($data as $row){
				$data_provider[] = array(
				'id'=>$row->id,
				'jumlah'=>$row->jumlah,
				'tanggal'=>$row->tanggal,
				'barang_id'=>$row->barang_id,
				'nama_barang'=>$row->nama_barang,
				'stok_sebelum'=>$row->stok_sebelum,
				'stok_setelah'=>$row->stok_setelah);
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
	
	public function add(){
		$tanggal = $this->input->post('tanggal');
        $barang = $this->input->post('barang');
        $jumlah = $this->input->post('jumlah');    
		list($status,$message) = $this->barangmasuk_model->save($tanggal,$barang,$jumlah);
        echo json_encode(array('status'=>$status,'message'=>$message));
	}

    public function delete(){
        $id = $this->input->post('id');
        list($status,$message) = $this->barangmasuk_model->delete($id);
        echo json_encode(array('status'=>$status,'message'=>$message));
    }

    

}