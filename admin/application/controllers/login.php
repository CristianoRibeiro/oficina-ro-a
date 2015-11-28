<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {



   function __construct()
 {
   parent::__construct();
 }


   public function index()
   {

      $url = $this->load->helper('url');
      $this->load->view('login/includes/header');
      $this->load->view('login/login',$url);
      $this->load->view('login/includes/footer');
   }


}
