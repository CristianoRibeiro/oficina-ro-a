<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

	/**
	 * Método principal do mini-crud
	 * @param nenhum
	 * @return view
	 */

	function __construct()
	 {
	   parent::__construct();
   	$this->load->model('user','',TRUE);
	 }


	public function index()
	{
		//$this->load->helper(array('form'));
		$url = $this->load->helper(['url','form']);
		$this->load->view('login/includes/header');
		$this->load->view('login/login', $url);
      $this->load->view('login/includes/footer');
	}


	public function verifica()
	 {
	   //This method will have the credentials validation
	   $this->load->library('form_validation');

	   $this->form_validation->set_rules('username', 'Username', 'required');
	   $this->form_validation->set_rules('password', 'Password', 'required|callback_check_database');

	   if($this->form_validation->run() == FALSE)
	   {
	     //Field validation failed.  User redirected to login page
	     redirect('login','refresh');
	   }
	   else
	   {
	     //Go to private area
	     redirect('home', 'refresh');
	   }



	 }


	 public function check_database($password)
	 {
	   //Field validation succeeded.  Validate against database
	   $username = $this->input->post('username');

	   //query the database
	   $result = $this->user->login($username, $password);

	   if($result)
	   {
	     $sess_array = array();
	     foreach($result as $row)
	     {
	       $sess_array = array(
	         'idLogin' => $row->idLogin,
	         'login' => $row->login
	       );
	       $this->session->set_userdata('logged_in', $sess_array);
	     }
	     return TRUE;
	   }
	   else
	   {
	     $this->form_validation->set_message('check_database', 'Invalid username or password');
	     return false;
	   }
	 }


}
