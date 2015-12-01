
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Produtos</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Cadastro de Produtos



                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">


                              <?php // Change the css classes to suit your needs

                              $attributes = array('class' => 'col-md-8', 'role' => 'form');
                              echo form_open('produtos/newProduct', $attributes); ?>

                              <div class="form-group">
                                      <label for="id" class="control-label" >ID</label>
                                      <?php echo form_error('id'); ?>
                                      <br /><input id="id" class="form-control"  type="text" name="id"  value="<?php echo set_value('id'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="referencia" class="control-label" >Referência</label>
                                      <?php echo form_error('referencia'); ?>
                                      <br /><input id="referencia" class="form-control"  type="text" name="referencia" maxlength="45" value="<?php echo set_value('referencia'); ?>"  />
                              </div>

                              <div class="form-group" class="control-label" >
                                      <label for="nome_produto">Nome Produto</label>
                                      <?php echo form_error('nome_produto'); ?>
                                      <br /><input id="nome_produto" class="form-control"  type="text" name="nome_produto" maxlength="200" value="<?php echo set_value('nome_produto'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="data_cadastro" class="control-label" >Data Cadastro</label>
                                      <?php echo form_error('data_cadastro'); ?>
                                      <br /><input id="data_cadastro" class="form-control"  type="text" name="data_cadastro"  value="<?php echo set_value('data_cadastro'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="cor" class="control-label" >cor</label>
                                      <?php echo form_error('cor'); ?>
                                      <br /><input id="cor" class="form-control"  type="text" name="cor" maxlength="100" value="<?php echo set_value('cor'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="preco_para_dinda_sem_impostos" class="control-label" >Preço para DINDA SEM IMPOSTOS</label>
                                      <?php echo form_error('preco_para_dinda_sem_impostos'); ?>
                                      <br /><input id="preco_para_dinda_sem_impostos"  class="form-control" type="text" name="preco_para_dinda_sem_impostos"  value="<?php echo set_value('preco_para_dinda_sem_impostos'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="preco_de_atacado" class="control-label" >Preço de Atacado</label>
                                      <?php echo form_error('preco_de_atacado'); ?>
                                      <br /><input id="preco_de_atacado" class="form-control"  type="text" name="preco_de_atacado"  value="<?php echo set_value('preco_de_atacado'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="preco_varejo" class="control-label" >Preço Varejo</label>
                                      <?php echo form_error('preco_varejo'); ?>
                                      <br /><input id="preco_varejo" class="form-control"  type="text" name="preco_varejo"  value="<?php echo set_value('preco_varejo'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="estoque_total" class="control-label" >Estoque Total</label>
                                      <?php echo form_error('estoque_total'); ?>
                                      <br /><input id="estoque_total" class="form-control"  type="text" name="estoque_total"  value="<?php echo set_value('estoque_total'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="codigo_ncm" class="control-label"  >Código NCM</label>
                                      <?php echo form_error('codigo_ncm'); ?>
                                      <br /><input id="codigo_ncm"  class="form-control" type="text" name="codigo_ncm" maxlength="100" value="<?php echo set_value('codigo_ncm'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="ean" class="control-label" >EAN - Cód de barras (13 dígitos)</label>
                                      <?php echo form_error('ean'); ?>
                                      <br /><input id="ean" class="form-control"  type="text" name="ean" maxlength="100" value="<?php echo set_value('ean'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="altura" class="control-label"   >Altura (cm)</label>
                                      <?php echo form_error('altura'); ?>
                                      <br /><input id="altura" class="form-control"  type="text" name="altura" maxlength="50" value="<?php echo set_value('altura'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="largura" class="control-label"   >Largura (cm) do produto</label>
                                      <?php echo form_error('largura'); ?>
                                      <br /><input id="largura" class="form-control"  type="text" name="largura" maxlength="50" value="<?php echo set_value('largura'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="comprimento" class="control-label"   >Comprimento (cm) do produto</label>
                                      <?php echo form_error('comprimento'); ?>
                                      <br /><input id="comprimento" class="form-control"  type="text" name="comprimento" maxlength="100" value="<?php echo set_value('comprimento'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="profundidade" class="control-label"   >Profundidade (cm) do produto</label>
                                      <?php echo form_error('profundidade'); ?>
                                      <br /><input id="profundidade" class="form-control"  type="text" name="profundidade" maxlength="50" value="<?php echo set_value('profundidade'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="peso_kg" class="control-label"  >Peso (Kg) do produto</label>
                                      <?php echo form_error('peso_kg'); ?>
                                      <br /><input id="peso_kg" class="form-control"  type="text" name="peso_kg" maxlength="50" value="<?php echo set_value('peso_kg'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="altura_cm_da_embalagem" class="control-label"   >Altura (cm) da embalagem</label>
                                      <?php echo form_error('altura_cm_da_embalagem'); ?>
                                      <br /><input id="altura_cm_da_embalagem" class="form-control"  type="text" name="altura_cm_da_embalagem" maxlength="50" value="<?php echo set_value('altura_cm_da_embalagem'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="largura_cm_da_embalagem" class="control-label"  >Largura (cm) da embalagem</label>
                                      <?php echo form_error('largura_cm_da_embalagem'); ?>
                                      <br /><input id="largura_cm_da_embalagem" class="form-control"  type="text" name="largura_cm_da_embalagem" maxlength="50" value="<?php echo set_value('largura_cm_da_embalagem'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="comprimento_cm_da_embalagem" class="control-label"  >Comprimento (cm) da embalagem</label>
                                      <?php echo form_error('comprimento_cm_da_embalagem'); ?>
                                      <br /><input id="comprimento_cm_da_embalagem" class="form-control"  type="text" name="comprimento_cm_da_embalagem" maxlength="100" value="<?php echo set_value('comprimento_cm_da_embalagem'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="profundidade_cm_da_embalagem" class="control-label"  >Profundidade (cm) da embalagem</label>
                                      <?php echo form_error('profundidade_cm_da_embalagem'); ?>
                                      <br /><input id="profundidade_cm_da_embalagem" class="form-control"  type="text" name="profundidade_cm_da_embalagem" maxlength="50" value="<?php echo set_value('profundidade_cm_da_embalagem'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="peso_kg_da_embalagem" class="control-label"  >Peso (Kg) da embalagem</label>
                                      <?php echo form_error('peso_kg_da_embalagem'); ?>
                                      <br /><input id="peso_kg_da_embalagem" class="form-control"  type="text" name="peso_kg_da_embalagem" maxlength="50" value="<?php echo set_value('peso_kg_da_embalagem'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="descricao" class="control-label"  >Descrição do Produto + Informações que agreguem na venda</label>
                                      <?php echo form_error('descricao'); ?>
                                      <br /> <textarea id="descricao" class="form-control" name="descricao"  value="<?php echo set_value('descricao'); ?>"  rows="3"></textarea>

                              </div>

                              <div class="form-group">
                                      <label for="informacoes_limpeza" class="control-label"  >Informações de limpeza e conservação do produto</label>
                                      <?php echo form_error('informacoes_limpeza'); ?>
                                      <br /> <textarea id="informacoes_limpeza" class="form-control" name="informacoes_limpeza"  value="<?php echo set_value('informacoes_limpeza'); ?>"  rows="3"></textarea>

                              </div>

                              <div class="form-group">
                                      <label for="informacaeo_assitencia" class="control-label"  >Informação de assitencia tecnica e garantia</label>
                                      <?php echo form_error('informacaeo_assitencia'); ?>
                                      <br /> <textarea id="informacaeo_assitencia" class="form-control" name="informacaeo_assitencia"  value="<?php echo set_value('informacaeo_assitencia'); ?>"  rows="3"></textarea>
                              </div>

                              <div class="form-group">
                                      <label for="material_produto" class="control-label"  >Material do produto</label>
                                      <?php echo form_error('material_produto'); ?>
                                      <br /><input id="material_produto" class="form-control"  type="text" name="material_produto" maxlength="200" value="<?php echo set_value('material_produto'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="prazo_de_entrega" class="control-label"  >Prazo de entrega do pedido pelo fornecedor</label>
                                      <?php echo form_error('prazo_de_entrega'); ?>
                                      <br /><input id="prazo_de_entrega" class="form-control"  type="text" name="prazo_de_entrega" maxlength="50" value="<?php echo set_value('prazo_de_entrega'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="inmetro" class="control-label"  >Inmetro</label>
                                      <?php echo form_error('inmetro'); ?>
                                      <br /><input id="inmetro"  class="form-control"  type="text" name="inmetro" maxlength="100" value="<?php echo set_value('inmetro'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="idade_recomendada" class="control-label"  >Idade Recomendada</label>
                                      <?php echo form_error('idade_recomendada'); ?>
                                      <br /><input id="idade_recomendada"  class="form-control"  type="text" name="idade_recomendada" maxlength="100" value="<?php echo set_value('idade_recomendada'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="id_categoria" class="control-label"  >ID Categoria</label>
                                      <?php echo form_error('id_categoria'); ?>
                                      <br /><input id="id_categoria"  class="form-control"  type="text" name="id_categoria"  value="<?php echo set_value('id_categoria'); ?>"  />
                              </div>


                              <div class="form-group">
                                      <?php
                                          $attributes = array('class' => 'btn btn-default');
                                          echo form_submit($attributes,'CADASTRAR', 'CADASTRAR');
                                       ?>
                              </div>

                              <?php echo form_close(); ?>



                     </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /#page-wrapper -->



