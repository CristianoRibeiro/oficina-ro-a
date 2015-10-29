<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class User extends CI_Controller {

   /**
    * Método principal do mini-crud
    * @param nenhum
    * @return view
    */

   public function index()
   {

      $variaveis['cadastros'] ="";
      $this->load->view('includes/headLogin');
      $this->load->view('user', $variaveis);
   }


}
