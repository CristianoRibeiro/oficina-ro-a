<?php
Class Produtos_model extends CI_Model
{


      /**
       * function SaveForm()
       *
       * insert form data
       * @param $form_data - array
       * @return Bool - TRUE or FALSE
       */

   function SaveForm($form_data)
   {
      $this->db->insert('tbProdutos', $form_data);

      if ($this->db->affected_rows() == '1')
      {
         return TRUE;
      }

      return FALSE;
   }
}
