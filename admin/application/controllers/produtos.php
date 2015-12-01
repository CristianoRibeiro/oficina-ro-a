<?php
defined('BASEPATH') OR exit('No direct script access allowed');



class Produtos extends CI_Controller {

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
      $this->load->model('Produtos_model');
   }


   public function index()
   {
      session_start();
      if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['login'] = $session_data['login'];
        $this->load->view('produtos/includes/header');
        $this->load->view('includes/nav', $data);
        $this->load->view('produtos/produtos');
        $this->load->view('produtos/includes/footer');
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



   public function newProduct()
   {


      $this->form_validation->set_rules('id', 'ID', '');
      $this->form_validation->set_rules('referencia', 'Referência', 'max_length[45]');
      $this->form_validation->set_rules('nome_produto', 'Nome Produto', 'max_length[200]');
      $this->form_validation->set_rules('data_cadastro', 'Data Cadastro', '');
      $this->form_validation->set_rules('cor', 'cor', 'max_length[100]');
      $this->form_validation->set_rules('preco_para_dinda_sem_impostos', 'Preço para DINDA SEM IMPOSTOS', '');
      $this->form_validation->set_rules('preco_de_atacado', 'Preço de Atacado', '');
      $this->form_validation->set_rules('preco_varejo', 'Preço Varejo', '');
      $this->form_validation->set_rules('estoque_total', 'Estoque Total', '');
      $this->form_validation->set_rules('codigo_ncm', 'Código NCM', 'max_length[100]');
      $this->form_validation->set_rules('ean', 'EAN - Cód de barras (13 dígitos)', 'max_length[100]');
      $this->form_validation->set_rules('altura', 'Altura (cm)', 'max_length[50]');
      $this->form_validation->set_rules('largura', 'Largura (cm) do produto', 'max_length[50]');
      $this->form_validation->set_rules('comprimento', 'Comprimento (cm) do produto', 'max_length[100]');
      $this->form_validation->set_rules('profundidade', 'Profundidade (cm) do produto', 'max_length[50]');
      $this->form_validation->set_rules('peso_kg', 'Peso (Kg) do produto', 'max_length[50]');
      $this->form_validation->set_rules('altura_cm_da_embalagem', 'Altura (cm) da embalagem', 'max_length[50]');
      $this->form_validation->set_rules('largura_cm_da_embalagem', 'Largura (cm) da embalagem', 'max_length[50]');
      $this->form_validation->set_rules('comprimento_cm_da_embalagem', 'Comprimento (cm) da embalagem', 'max_length[100]');
      $this->form_validation->set_rules('profundidade_cm_da_embalagem', 'Profundidade (cm) da embalagem', 'max_length[50]');
      $this->form_validation->set_rules('peso_kg_da_embalagem', 'Peso (Kg) da embalagem', 'max_length[50]');
      $this->form_validation->set_rules('descricao', 'Descrição do Produto + Informações que agreguem na venda', '');
      $this->form_validation->set_rules('informacoes_limpeza', 'Informações de limpeza e conservação do produto', '');
      $this->form_validation->set_rules('informacaeo_assitencia', 'Informação de assitencia tecnica e garantia', '');
      $this->form_validation->set_rules('material_produto', 'Material do produto', 'max_length[200]');
      $this->form_validation->set_rules('prazo_de_entrega', 'Prazo de entrega do pedido pelo fornecedor', 'max_length[50]');
      $this->form_validation->set_rules('inmetro', 'Inmetro', 'max_length[100]');
      $this->form_validation->set_rules('idade_recomendada', 'Idade Recomendada', 'max_length[100]');
      $this->form_validation->set_rules('id_categoria', 'ID Categoria', '');

      $this->form_validation->set_error_delimiters('<br /><span class="error">', '</span>');

      if ($this->form_validation->run() == FALSE) // validation hasn't been passed
      {
         session_start();
      if($this->session->userdata('logged_in'))
      {
        $session_data = $this->session->userdata('logged_in');
        $data['login'] = $session_data['login'];
        $this->load->view('produtos/includes/header');
        $this->load->view('includes/nav', $data);
         $this->load->view('produtos/cad_produtos');
         $this->load->view('produtos/includes/footer');
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
                        'data_cadastro' => set_value('data_cadastro'),
                        'cor' => set_value('cor'),
                        'preco_para_dinda_sem_impostos' => set_value('preco_para_dinda_sem_impostos'),
                        'preco_de_atacado' => set_value('preco_de_atacado'),
                        'preco_varejo' => set_value('preco_varejo'),
                        'estoque_total' => set_value('estoque_total'),
                        'codigo_ncm' => set_value('codigo_ncm'),
                        'ean' => set_value('ean'),
                        'altura' => set_value('altura'),
                        'largura' => set_value('largura'),
                        'comprimento' => set_value('comprimento'),
                        'profundidade' => set_value('profundidade'),
                        'peso_kg' => set_value('peso_kg'),
                        'altura_cm_da_embalagem' => set_value('altura_cm_da_embalagem'),
                        'largura_cm_da_embalagem' => set_value('largura_cm_da_embalagem'),
                        'comprimento_cm_da_embalagem' => set_value('comprimento_cm_da_embalagem'),
                        'profundidade_cm_da_embalagem' => set_value('profundidade_cm_da_embalagem'),
                        'peso_kg_da_embalagem' => set_value('peso_kg_da_embalagem'),
                        'descricao' => set_value('descricao'),
                        'informacoes_limpeza' => set_value('informacoes_limpeza'),
                        'informacaeo_assitencia' => set_value('informacaeo_assitencia'),
                        'material_produto' => set_value('material_produto'),
                        'prazo_de_entrega' => set_value('prazo_de_entrega'),
                        'inmetro' => set_value('inmetro'),
                        'idade_recomendada' => set_value('idade_recomendada'),
                        'id_categoria' => set_value('id_categoria')
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



