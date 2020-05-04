<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 *
 */
class Login extends CI_Controller
{

  function __construct()
  {
    parent::__construct();
    // load model admin
    $this->load->model('Admin');
  }
  public function index(){
    if ($this->Admin->logged_id()) {
      // Jika session atau user sudah terdaftar, maka masuk ke halaman dashboard admin
      redirect("dashboard");
    } else {
      // Jika session atau user tidak terdaftar

      // set form validation
      $this->form_validation->set_rules('username', 'Username', 'required');
      $this->form_validation->set_rules('password', 'Password', 'required');

      // set message form validation
      $this->form_validation->set_message('required','<div class="alert alert-danger" style="margin-top: 3px;">
        <div class="header">
          <b><i class="fa fa-exclamation-circle"></i> {field}</b>
          Harus diisi bos..!!
        </div>
      </div>');

      // cek validasi
      if ($this->form_validation->run() == TRUE) {
        // get data dari FORM
        $username = $this->input->post('username', TRUE);
        $password = MD5($this->input->post('password', TRUE));

        // checking data via model
        $checking = $this->Admin->check_login('tbadmin', array('username' => $username), array('password' => $password));

        // jika ditemukan usernya, maka create session
        if ($checking != FALSE) {
          foreach($checking as $apps){
            $session_data = array(
              'admin_id' => $apps->id_admin,
              'user_name' => $apps->username,
              'user_pass' => $apps->password,
            );
            // set session userdata
            $this->session->set_userdata($session_data);
            redirect('dashboard/');
          }
        } else {
          $data['error'] = '<div class="alert alert-danger" style="margin-top:3px;">
            <div class="header">
              <b><i class="fa fa-exclamation-circle"></i> ERROR</b>
              Username atau Password Salah..!!
            </div>
          </div>';
          $this->load->view('login', $data);
        }
      } else {
        $this->load->view('login');
      }
    }
  }
}

?>
