<?php
class Categoria_model extends CI_Model{
    public function ListarCategorias(){
        return $this->db->get('tbCategoria');
    }
}
