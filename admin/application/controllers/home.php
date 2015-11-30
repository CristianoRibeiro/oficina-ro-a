<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class Home extends CI_Controller {

   /**
    * Método principal do mini-crud
    * @param nenhum
    * @return view
    */

   function __construct()
    {
      parent::__construct();


    }



   public function index()
   {
      session_start();
      if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['login'] = $session_data['login'];
        $this->load->view('home/includes/header');
        $this->load->view('includes/nav', $data);
        $this->load->view('home/home');
        $this->load->view('home/includes/footer');
      }
      else
      {
        //If no session, redirect to login page
        redirect('login', 'refresh');
      }

   }


   public function logout()
    {
      $this->session->unset_userdata('logged_in');
      session_destroy();
      redirect('login', 'refresh');
    }

}



