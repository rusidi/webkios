<?php
class Admin_model extends CI_Model {

    public function __construct()
    {
        parent::__construct();
        $this->db = $this->load->database('default', TRUE);
    }

    function getAdmin(){
        $sql = 'SELECT * FROM admin ORDER BY fullname asc';
        $q = $this->db->query($sql);
        return $q->result();
    }

    function addUser($post)
    {
      
        $sql = "INSERT INTO admin (username,password,fullname) VALUES (?,?,?)";
        $status = $this->db->query($sql,$post);
        if($status){
            return array($status,'Data telah ditambahkan');
        }
        else {
            return array($status, $this->db->error());
        }

    }

    function editUser($post){     
        if(isset($post['id_admin']) && $post['id_admin'] > 0){            
            $sql = "UPDATE admin SET username = ?, fullname = ? WHERE id = ?";
            $status = $this->db->query($sql,array($post['username'],$post['fullname'],$post['id_admin']));
            if($status){
                return array($status,'Data telah diupdate');
            }
            else {
                return array($status, $this->db->error());
            }
        }  
        else {
            return array(false, 'Data invalid');
        } 
        
    }

     function deleteUser($uid)
    {
        $sql = "DELETE FROM admin WHERE id = ?";
        return $this->db->query($sql,array($uid));
    }




}