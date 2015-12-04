<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class Imagens extends CI_Controller {

   /**
    * Método principal do mini-crud
    * @param nenhum
    * @return view
    */

   function __construct()
    {
      parent::__construct();
      $this->load->library('form_validation');
      $this->load->database();
      $this->load->helper('form');
      $this->load->helper('url');
      $this->load->model('Imagem_model');

    }



   public function index()
   {
      session_start();
      if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['login'] = $session_data['login'];
        $this->load->view('imagens/includes/header');
        $this->load->view('includes/nav', $data);
        $this->load->view('imagens/index');
        $this->load->view('imagens/includes/footer');
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

    public function newImagem(){

      $this->form_validation->set_rules('id', 'ID', '');
      $this->form_validation->set_rules('referencia', 'Referência', 'max_length[45]');
      $this->form_validation->set_rules('nome_produto', 'Nome Produto', 'max_length[200]');
      $this->form_validation->set_rules('data_cadastro', 'Data Cadastro', '');

      $this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');

      if ($this->form_validation->run() == FALSE) // validation hasn't been passed
      {
         session_start();
      if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['login'] = $session_data['login'];
        $this->load->view('imagens/includes/header');
        $this->load->view('includes/nav', $data);
         $this->load->view('imagens/cad_imagens');
         $this->load->view('imagens/includes/footer');
      }
      else
      {
        //If no session, redirect to login page
        redirect('login', 'refresh');
      }
      }
      else // passed validation proceed to post success logic
      {
         // build array for the model

         $form_data = array(
                        'id' => set_value('id'),
                        'referencia' => set_value('referencia'),
                        'nome_produto' => set_value('nome_produto'),
                        'data_cadastro' => set_value('data_cadastro')

                  );

         // run insert model to write data to db

         if ($this->myform_model->SaveForm($form_data) == TRUE) // the information has therefore been successfully saved in the db
         {
            redirect('myform/success');   // or whatever logic needs to occur
         }
         else
         {
         echo 'An error occurred saving your information. Please try again later';
         // Or whatever error handling is necessary
         }
      }
   }


   public function success()
   {
         echo 'this form has been successfully submitted with all validation being passed. All messages or logic here. Please note
         sessions have not been used and would need to be added in to suit your app';
   }





}



