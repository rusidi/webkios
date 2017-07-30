<?php
defined('BASEPATH') OR exit('No direct script access allowed');
include(dirname(__FILE__).'/Base.php');

class Adminweb extends Base
{
    public function __construct()
    {
        parent::__construct();
        $this->load->helper('url');
        $this->load->helper('general');
        $this->load->library('session');
        $this->load->model('admin_model');
        $this->session->set_userdata('menu-active','menu-99');
    }
    
    public function profile_photo(){
        $this->load->templated_view('admin/upload_photo');
    }

    public function upload_photo(){
        if(isset($_FILES['file'])){
            $config['upload_path'] = 'public/uploads/profile';
            $config['allowed_types'] = 'jpg';
            $config['max_filename'] = '255';
            $config['encrypt_name'] = FALSE;
            $config['max_size'] = '3024'; //3 MB
            $config['overwrite']= TRUE;
            $config['file_name'] = $this->session->userdata('id');
            $msg = '';
            if (isset($_FILES['file']['name'])) {
                if (0 < $_FILES['file']['error']) {
                    $msg = 'Error during file upload' . $_FILES['file']['error'];
                } else {
                    $this->load->library('upload', $config);
                    if (!$this->upload->do_upload('file')) {
                        $msg = $this->upload->display_errors();
                    } else {
                        $msg = '';
                    }
                }
            } else {
                $msg = 'Please choose a file';
            }
            if($msg == ''){
                echo json_encode(['status'=>true,'message'=>"Sukses"]);
            }
            else {
                echo json_encode(['status'=>false,'message'=>$msg]);
            }
        }
        else {
            echo json_encode(['status'=>false,'message'=>'Gagal']);
        }
    }

     public function getList(){   
     	$data = array();        
		$data['admin'] = $this->admin_model->getAdmin();
        $this->load->templated_view('admin/list',$data);
    }

    public function profile_add(){
    	$params =  array("username","password","fullname");
	        $post = [];
	        foreach($params as $key){
	            if($key == 'password')
	            $post[$key] = md5(trim($this->input->post($key)));
	                else
	            $post[$key] = $this->input->post($key);
	        }
	        list($status,$message) = $this->admin_model->addUser($post);
	        echo json_encode(array('status'=>$status,'message'=>$message));
       	
    }

    public function profile_edit(){
    	$id = $this->input->post('id_admin');
    	if($id != '' && $id > 0){
    		$params =  array("username","id_admin","fullname");
	        $post = [];
	        foreach($params as $key){
	            if($key == 'password')
	            $post[$key] = md5(trim($this->input->post($key)));
	                else
	            $post[$key] = $this->input->post($key);
	        }
	        list($status,$message) = $this->admin_model->editUser($post);
	        echo json_encode(array('status'=>$status,'message'=>$message));
    	}   
    	else {
    		echo json_encode(array('status'=>false,'message'=>'Data invalid'));
    	} 	
       	
    }

    public function profile_delete(){
        $uid = $this->input->post('id');
        if($uid == $this->session->userdata('id')){
        	echo json_encode(array('status'=> false,'message'=> 'Tidak boleh delete data sendiri'));
        	exit;
        }
        $status = $this->admin_model->deleteUser($uid);
        if($status){
        	 echo json_encode(array('status'=> true,'message'=> 'Delete data sukses'));
        }
        else {
        	 echo json_encode(array('status'=>false,'message'=> 'Delet data gagal'));
        }
    }

    public function backup_database(){       
       	$host = 'localhost';
       	$user = 'root';
       	$pass = '';
       	$name = 'kios';
       	$tables = '*';
		$mysqli = new mysqli($host,$user,$pass,$name);		
		if($tables == '*')
		{
			$tables = array();
			$result = mysqli_query($mysqli,'SHOW TABLES');
			while($row = mysqli_fetch_row($result))
			{
				$tables[] = $row[0];
			}
		}
		else
		{
			$tables = is_array($tables) ? $tables : explode(',',$tables);
		}				
		foreach($tables as $table)
		{
			$result = mysqli_query($mysqli,'SELECT * FROM '.$table);
			$num_fields = mysqli_num_fields($result);			
			$return.= 'DROP TABLE '.$table.';';
			$row2 = mysqli_fetch_row(mysqli_query($mysqli,'SHOW CREATE TABLE '.$table));
			$return.= "\n\n".$row2[1].";\n\n";			
			for ($i = 0; $i < $num_fields; $i++) 
			{
				while($row = mysqli_fetch_row($result))
				{
					$return.= 'INSERT INTO '.$table.' VALUES(';
					for($j=0; $j < $num_fields; $j++) 
					{
						$row[$j] = addslashes($row[$j]);
						$row[$j] = preg_replace("/\n/","\\n",$row[$j]);
						if (isset($row[$j])) { $return.= '"'.$row[$j].'"' ; } else { $return.= '""'; }
						if ($j < ($num_fields-1)) { $return.= ','; }
					}
					$return.= ");\n";
				}
			}
			$return.="\n\n\n";
		}		
		//save file
        date_default_timezone_set('Asia/Jakarta');
		$handle = fopen(APPPATH."../public/dbbackups/db_".date("Ymd_His").".sql",'w+');
		$result = fwrite($handle,$return);
		fclose($handle);
		$mysqli->close();
        if($result){
             echo json_encode(array('status'=> true,'message'=> 'Backup database sukses'));
        }
        else {
             echo json_encode(array('status'=>false,'message'=> 'Backup database gagal'));
        }

	}

    function backup_files(){
        $this->session->set_userdata('menu-active','menu-6');
        $dir = APPPATH."../public/dbbackups/";
        $ignored = array('.', '..', '.svn', '.htaccess');
        $files = array();    
        foreach (scandir($dir) as $file) {
            if (in_array($file, $ignored)) continue;
            $files[$file] = filemtime($dir . '/' . $file);
        }
        arsort($files);
        $data = array();
        $data['files'] = array_keys($files);
        $this->load->templated_view('admin/file_list',$data);       
    }

    function backup_delete(){
        $dir = APPPATH."../public/dbbackups/";
        $filename = $this->input->post('file_name');
        $status = unlink($dir.$filename); //delete it
        if($status){
             echo json_encode(array('status'=> true,'message'=> 'Delete backup '.$filename.' database sukses'));
        }
        else {
             echo json_encode(array('status'=>false,'message'=> 'Delete Backup '.$filename.' database gagal'));
        }

    }


}