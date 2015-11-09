<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Carrinho extends CI_Controller {

	/**
	 * Método principal do mini-crud
	 * @param nenhum
	 * @return view
	 */

	public function index()
	{

		$variaveis['cadastros'] ="";
		$this->load->view('includes/header');
		$this->load->view('carrinho/carrinho', $variaveis);
                $this->load->view('includes/footer');
	}


}

