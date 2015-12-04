<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

   /**
    * Método principal do mini-crud
    * @param nenhum
    * @return view
    */

   public function index()
   {
        $this->form_validation->set_rules('login', 'LOGIN', 'trim|required|min_length[4]|strtolower');
        $this->form_validation->set_rules('senha', 'SENHA', 'trim|required|min_length[4]|strtolower');
            if($this->form_validation->run()== TRUE):
                echo 'Formulario vazio';
            endif;
        $variaveis['cadastros'] ="";
        $this->load->view('includes/headLogin');
        $this->load->view('login/login', $variaveis);
   }
   
   public function CadastroLogin(){
      $variaveis['cadastros'] ="";
      $this->load->view('includes/headLogin');
      $this->load->view('login/cadastroLogin', $variaveis);
   }
}
