<?php
/**
 * Created by PhpStorm.
 * User: GaoComet
 * Date: 12/1/2017
 * Time: 1:57 AM
 */
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {
    public function __construct()
    {
        parent::__construct();
        $this->load->library('session');
        $this->load->helper('form');
        $this->load->helper('url');
        $this->load->helper('html');
        $this->load->database();
        $this->load->library('form_validation');
        $this->load->model('UserModel');

    }

    public function index(){
        $this->load->view('login');
    }
    /*
     * User login
     */
    public function login(){
        $data = array();
        if($this->session->userdata('success_msg')){
            $data['success_msg'] = $this->session->userdata('success_msg');
            $this->session->unset_userdata('success_msg');
        }
        if($this->session->userdata('error_msg')){
            $data['error_msg'] = $this->session->userdata('error_msg');
            $this->session->unset_userdata('error_msg');
        }
        if($this->input->post('loginSubmit')){

            $this->form_validation->set_rules('user-name', 'user-name', 'required');
            $this->form_validation->set_rules('user-password', 'user-password', 'required');

            if($this->form_validation->run() == true){

                $con['returnType'] = 'single';
                $con['conditions'] = array(
                    'name'=>$this->input->post('user-name'),
                    'password'=>$this->input->post('user-password'),
                );
                $checkLogin = $this->UserModel->getRows($con);

                if($checkLogin){
                    $this->session->set_userdata('isUserLoggedIn', true);
                    $this->session->set_userdata('userID', $checkLogin['id']);
                    $this->session->set_userdata('permission', $checkLogin['permission']);
                    redirect('main');
                }else{
                    $data['error_msg'] = 'Login Failed!';
                }
            }
        }
//        redirect('user/login', $data);
        $this->load->view('login', $data);
    }
    /*
    * User registration
    */
    public function register(){
        $data = array();
        $userData = array();
        if($this->input->post('registerSubmit')){
            $this->form_validation->set_rules('name', 'name', 'required|callback_name_check');
            $this->form_validation->set_rules('password', 'password', 'required');
            $this->form_validation->set_rules('conf_password', 'confirm password', 'required|matches[password]');

            $userData = array(
                'name' => strip_tags($this->input->post('name')),
                'password' => strip_tags($this->input->post('password')),
                'permission' => strip_tags($this->input->post('permission'))
            );
            if($this->form_validation->run() == true){
                $insert = $this->UserModel->insert($userData);
                if($insert){
                    $this->session->set_userdata('success_msg', 'Register Success!');
                    redirect('user/get_users');
                }else{
                    $data['error_msg'] = 'Register Failed';
                }
            }
        }
        $data['userData'] = $userData;
        $userInfo = $this->UserModel->getRows(array('id'=>$this->session->userdata('userID')));
        $data['user'] = $userInfo;
        $data['title'] = "User Management";
        if ($userInfo['permission'] == 'admin'){
            $data['user_data'] = $this->UserModel->get_users();
            $this->load->view('users/header', $data);
            $this->load->view('users/add_user', $data);
            $this->load->view('users/footer');
        }else{
            redirect('user/login');
        }
    }
    /*
     * User logout
     */
    public function logout(){
        $this->session->unset_userdata('isUserLoggedIn');
        $this->session->unset_userdata('userID');
        $this->session->unset_userdata('permission');
        $this->session->sess_destroy();
        redirect('user/login');
    }
    /*
     * Existing name check during validation
     */
    public function name_check($str){
        $con['returnType'] = 'count';
        $con['conditions'] = array('name'=>$str);
        $checkName = $this->UserModel->getRows($con);
        if ($checkName > 0){
            $this->form_validation->set_message('name_check', 'This Name already exists!');
            return false;
        }else{
            return true;
        }
    }

    function get_users(){
        $userInfo = $this->UserModel->getRows(array('id'=>$this->session->userdata('userID')));
        $data['user'] = $userInfo;
        $data['title'] = "User Management";
        if ($userInfo['permission'] == 'admin'){
            $data['user_data'] = $this->UserModel->get_users();
            $this->load->view('header', $data);
            $this->load->view('control_user', $data);
            $this->load->view('footer');
        }else{
            redirect('user/login');
        }
    }
    function delete_user(){
        if ($this->input->post()){
            $id = $this->input->post('delete-user-id');
            $this->UserModel->delete_user($id);
            $this->rrmdir("uploads/".$id);
            redirect('user/get_users');
        }else{
            redirect('user/get_users');
        }
    }
    function uploadFiles(){
        if ($this->input->post()){
            $id = $this->input->post('uploadFiles-user-id');
            $uploadFilePath = "uploads/".$id;
            $this->rrmdir($uploadFilePath);
            mkdir($uploadFilePath);
            $this->load->library('upload');
            $diskFileName = "";
            $screenSaverFileName = "";
            $screenSaverDisc1 = "";
            $screenSaverDisc2 = "";
            $screenSaverData = "";

            $this->upload->initialize($this->set_upload_options($uploadFilePath));
            if($this->upload->do_upload('diskFile')){
                $diskFileName = $uploadFilePath."/".$this->upload->data()['file_name'];
            }
            $this->upload->initialize($this->set_upload_options($uploadFilePath));
            if($this->upload->do_upload('screenSaverFile')){
                $screenSaverFileName = $uploadFilePath."/".$this->upload->data()['file_name'];
            }
            $this->upload->initialize($this->set_upload_options($uploadFilePath));
            if($this->upload->do_upload('screenSaver_disk1')){
                $screenSaverDisc1 = $uploadFilePath."/".$this->upload->data()['file_name'];
            }
            $this->upload->initialize($this->set_upload_options($uploadFilePath));
            if($this->upload->do_upload('screenSaver_disk2')){
                $screenSaverDisc2 = $uploadFilePath."/".$this->upload->data()['file_name'];
            }
            $this->upload->initialize($this->set_upload_options($uploadFilePath));
            if($this->upload->do_upload('screenSaver_data')){
                $screenSaverData = $uploadFilePath."/".$this->upload->data()['file_name'];
            }
            $fileData = array(
                'disk' => $diskFileName,
                'screensaver' => $screenSaverFileName,
                'image1' => $screenSaverDisc1,
                'image2' => $screenSaverDisc2,
                'json_data' => $screenSaverData
            );
            $this->UserModel->upload_files($id, $fileData);
            redirect('user/get_users');
        }else{
            redirect('user/get_users');
        }
    }
    public function rrmdir($dir)
    {
        if (is_dir($dir)) {
            $files = scandir($dir);
            foreach ($files as $file)
                if ($file != "." && $file != "..") $this->rrmdir("$dir/$file");
            rmdir($dir);
        } else if (file_exists($dir)) unlink($dir);
    }
    public function set_upload_options($file_path) {
        // upload an image options
        $config = array();
        $config ['upload_path'] = $file_path;
        $config ['allowed_types'] = '*';
        return $config;
    }
}

?>