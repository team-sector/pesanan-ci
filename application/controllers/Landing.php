<?php
defined('BASEPATH') OR exit('No direct script access allowed');
/**
 *
 */
class Landing extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    // load model admin
    // $this->load->model('admin');
  }

  public function index()
  {
    $this->load->view('landing');
  }
  public function menu(){
    $this->load->view('menu');
  }
}

?>
