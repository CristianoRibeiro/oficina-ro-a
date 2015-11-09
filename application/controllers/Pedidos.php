<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Pedidos extends CI_Controller {

   /**
    * Método principal do mini-crud
    * @param nenhum
    * @return view
    */

   public function index()
   {

      $variaveis['cadastros'] ="";
      $this->load->view('includes/header');
      $this->load->view('pedido/pedidos', $variaveis);
      $this->load->view('includes/footer');
   }
}

