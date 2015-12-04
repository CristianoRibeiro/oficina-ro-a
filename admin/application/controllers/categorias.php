<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class Categorias extends CI_Controller {

   /**
    * Método principal do mini-crud
    * @param nenhum
    * @return view
    */


    function __construct()
   {
      parent::__construct();
      $this->load->helper('date');
      $this->load->library('form_validation');
      $this->load->database();
      $this->load->helper('form');
      $this->load->helper('url');
      $this->load->model('Categorias_model');
   }


   public function index()
   {
      session_start();
      if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['login'] = $session_data['login'];
        $this->load->view('categorias/includes/header');
        $this->load->view('includes/nav', $data);
        $this->load->view('categorias/index');
        $this->load->view('categorias/includes/footer');
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



   public function newCategoria()
   {

      //Configurações necessárias para fazer upload do arquivo

      //Pasta onde será feito o upload
      $config['upload_path'] = './uploads/';
      //Tipos suportados
      $config['allowed_types'] = 'gif|jpg|png';
      //Configurando atributos do arquivo imagem que iremos receber
      $config['max_size']     = '100';
      $config['max_width']  = '1024';
      $config['max_height']  = '768';

      //Carregando a lib com as configurações feitas
      $this->load->library('upload', $config);

      $this->form_validation->set_rules('idcategoria', 'ID Categoria', '');
      $this->form_validation->set_rules('categoria', 'Categoria', 'required');
      $this->form_validation->set_rules('title', 'Title', 'required');
      $this->form_validation->set_rules('descricao', 'Descricao', 'required');
      $this->form_validation->set_rules('texto', 'Texto', 'required');
      $this->form_validation->set_rules('image', 'File Input', '');
      $this->form_validation->set_rules('time', 'Time', 'required');



      if ($this->form_validation->run() == FALSE) // validation hasn't been passed
            {

             if (!$this->upload->do_upload())
            {
               $this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');


               session_start();
               if($this->session->userdata('logged_in'))
               {
                 $session_data = $this->session->userdata('logged_in');
                 $data['login'] = $session_data['login'];
                 $this->load->view('categorias/includes/header');
                 $this->load->view('includes/nav', $data);
                  $this->load->view('categorias/cad_categorias');
                  $this->load->view('categorias/includes/footer');
               }
               else
               {
                 //If no session, redirect to login page
                 echo "erro";
               }
            }
            else // passed validation proceed to post success logic
            {
               // build array for the model

               $form_data = array(
                              'categoria' => set_value('categoria'),
                              'title' => set_value('title'),
                              'descricao' => set_value('descricao'),
                              'texto' => set_value('texto'),
                              'imagem' => set_value('image'),
                              'time' => set_value('time'),
                              'data_cadastro' => set_value((new DateTime())->format('Y-m-d H:i:s')),



                        );

               // run insert model to write data to db

               if ($this->myform_model->SaveForm($form_data) == TRUE) // the information has therefore been successfully saved in the db
               {
                    session_start();
                     if($this->session->userdata('logged_in'))
                     {
                       $session_data = $this->session->userdata('logged_in');
                       $data['login'] = $session_data['login'];
                       $this->load->view('categorias/includes/header');
                       $this->load->view('includes/nav', $data);
                        $this->load->view('categorias/cad_categorias');
                        $this->load->view('categorias/includes/footer');
                     }
                     else
                     {
                       //If no session, redirect to login page
                       echo "erro";
                     }
               }
               else
               {
               echo 'An error occurred saving your information. Please try again later';
               // Or whatever error handling is necessary
               }
            }

      }
   }


   public function success()
   {
         echo 'this form has been successfully submitted with all validation being passed. All messages or logic here. Please note
         sessions have not been used and would need to be added in to suit your app';
   }





}



