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

      $this->load->view('categoria', $variaveis);
   }

   public function detalhe(){

      $this->load->view('detalhe', $variaveis);

   }


}
