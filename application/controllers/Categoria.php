<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Categoria extends CI_Controller {

   /**
    * Método principal do mini-crud
    * @param nenhum
    * @return view
    */

   public function index()
   {

      $variaveis['cadastros'] ="";
      $this->load->view('includes/header', $variaveis);
      $this->load->view('categoria/categoria', $variaveis);
      $this->load->view('includes/footer');
   }


}
