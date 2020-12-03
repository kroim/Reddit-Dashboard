<?php
/**
 * Created by PhpStorm.
 * User: GaoComet
 * Date: 12/1/2017
 * Time: 12:46 PM
 */
defined('BASEPATH') OR exit('No direct script access allowed');
require APPPATH . '/libraries/BaseController.php';

class Main extends BaseController{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->helper('html');
        $this->load->database();
        $this->load->library('form_validation');
        $this->load->helper(array('form', 'url'));
        $this->load->model('UserModel');
        $this->load->model('MainModel');
    }
    public function index(){
        $data = array();
        if($this->session->userdata('isUserLoggedIn')){
            $data['user'] = $this->UserModel->getRows(array('id'=>$this->session->userdata('userID')));
            if ($data['user']['permission'] == "admin"){
                redirect('main/accounts');
            } else {
                redirect('user/login');
            }
        }else{
            redirect('user/login');
        }
    }
    // accounts
    public function accounts(){
        $data = array();
        if($this->session->userdata('isUserLoggedIn')){
            $data['user'] = $this->UserModel->getRows(array('id'=>$this->session->userdata('userID')));
            $data['title'] = "Accounts";
            $data['accounts'] = $this->MainModel->getAllAccounts();
            $this->load->view('partial/header', $data);
            $this->load->view('partial/side', $data);
            $this->load->view('accounts/accounts', $data);
            $this->load->view('partial/footer');
        }else{
            redirect('user/login');
        }
    }

    // comments
    public function comments(){
        $data = array();
        if($this->session->userdata('isUserLoggedIn')){
            $data['user'] = $this->UserModel->getRows(array('id'=>$this->session->userdata('userID')));
            $data['title'] = "Comments";
            $data['accounts'] = $this->MainModel->getAllAccounts();
            $data['comments'] = $this->MainModel->getAllComments();
            $this->load->view('partial/header', $data);
            $this->load->view('partial/side', $data);
            $this->load->view('comments/comments', $data);
            $this->load->view('partial/footer');
        }else{
            redirect('user/login');
        }
    }
    public function add_comment(){
        if ($this->input->post()){
            $comment = array(
                'user_id' => $this->input->post('user'),
                'sub_reddit' => $this->input->post('sub_reddit'),
                'url_option' => $this->input->post('url_option'),
                'comment_url' => $this->input->post('comment_url'),
                'comment' => $this->input->post('comment'),
                'delay' => $this->input->post('delay'),
                'state' => "inprogress"
            );
            $this->MainModel->addComment($comment);
            echo 'success';
        } else {
            echo 'failed';
        }
    }
    public function delete_comment(){
        if ($this->input->post()){
            $comment_id = $this->input->post('id');
            $this->MainModel->deleteComment($comment_id);
            echo 'success';
        } else {
            echo 'failed';
        }
    }

    // votes
    public function votes(){
        $data = array();
        if($this->session->userdata('isUserLoggedIn')){
            $data['user'] = $this->UserModel->getRows(array('id'=>$this->session->userdata('userID')));
            $data['title'] = "Votes";
            $data['votes'] = $this->MainModel->getAllVotes();
            $this->load->view('partial/header', $data);
            $this->load->view('partial/side', $data);
            $this->load->view('votes/votes', $data);
            $this->load->view('partial/footer');
        }else{
            redirect('user/login');
        }
    }
    public function add_votes(){
        if ($this->input->post()){
            $targets = $this->input->post('targets');
            $options = $this->input->post('options');
            $data = array();
            for ($i = 0; $i < sizeof($options); $i++){
                $data[$i] = array(
                    'target' => $targets[$i],
                    'option' => $options[$i],
                    'state' => "inprogress"
                );
            }
            $this->MainModel->addVotes($data);
            echo 'success';
        } else {
            echo 'failed';
        }
    }
    public function delete_vote(){
        if ($this->input->post()){
            $vote_id = $this->input->post('id');
            $this->MainModel->deleteVote($vote_id);
            echo 'success';
        } else {
            echo 'failed';
        }
    }

    // logs
    public function logs(){
        $data = array();
        if($this->session->userdata('isUserLoggedIn')){
            $data['user'] = $this->UserModel->getRows(array('id'=>$this->session->userdata('userID')));
            $data['title'] = "Logs";
            $data['logs'] = $this->MainModel->getAllLogs();
            $this->load->view('partial/header', $data);
            $this->load->view('partial/side', $data);
            $this->load->view('logs/logs', $data);
            $this->load->view('partial/footer');
        }else{
            redirect('user/login');
        }
    }
}