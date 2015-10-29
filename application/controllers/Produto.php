<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Produto extends CI_Controller {

   /**
    * Método principal do mini-crud
    * @param nenhum
    * @return view
    */

   public function detalhe()
   {

      $variaveis['cadastros'] ="";

      $this->load->view('sobre_produto', $variaveis);
   }


}
