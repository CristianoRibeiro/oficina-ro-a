<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

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
            $this->load->view('includes/header');
            $this->load->view('home/home');
            $this->load->view('includes/footer');
	}


}
