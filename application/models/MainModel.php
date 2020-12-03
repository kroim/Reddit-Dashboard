<?php
/**
 * Created by PhpStorm.
 * User: GaoComet
 * Date: 12/2/2017
 * Time: 12:49 PM
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class MainModel extends CI_Model{
    function __construct()
    {
        parent::__construct();
        $this->load->database();
    }
    function getAllAccounts(){
        $this->db->select('*');
        $this->db->from('users');
        $query = $this->db->get();
        return $query->result();
    }
    function addComment($data){
        $insert = $this->db->insert('comments', $data);
        if ($insert){
            return $this->db->insert_id();
        } else {
            return false;
        }
    }
    function deleteComment($id){
        $this->db->where('id', $id);
        $this->db->delete('comments');
    }

    function getAllComments(){
        $this->db->select('*');
        $this->db->from('comments');
        $query = $this->db->get();
        return $query->result();
    }

    function getAllVotes(){
        $this->db->select('*');
        $this->db->from('votes');
        $query = $this->db->get();
        return $query->result();
    }
    function addVotes($data){
        $this->db->insert_batch('votes', $data);
    }
    function deleteVote($id){
        $this->db->where('id', $id);
        $this->db->delete('votes');
    }

    function getAllLogs(){
        $this->db->select('*');
        $this->db->from('logs');
        $query = $this->db->get();
        return $query->result();
    }
}