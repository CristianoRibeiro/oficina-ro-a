<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct() {
            parent::__construct();
            $this->load->helper('url');
            $this->load->helper('form');
            $this->load->helper('array');
            $this->load->library('form_validation');
            $this->load->library('table');
            $this->load->model('categoria_model', 'crud');
   }
   
   
   public function index()
   {
        $this->load->view('includes/headLogin');
        $this->load->view('login/login', $variaveis);
   }
   
   public function CadastroLogin(){
      $variaveis['cadastros'] ="";
      $this->load->view('includes/headLogin');
      $this->load->view('login/cadastroLogin', $variaveis);
   }
}
