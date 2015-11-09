<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	/**
	 * Método principal do mini-crud
	 * @param nenhum
	 * @return view
	 */

	public function index()
	{

		$variaveis['cadastros'] ="";
		$this->load->view('includes/header');
		$this->load->view('home/home', $variaveis);
	}


}
