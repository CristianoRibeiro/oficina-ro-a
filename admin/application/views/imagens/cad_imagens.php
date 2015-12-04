
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Imagem</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Cadastro de imagens no produto



                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">


                              <?php // Change the css classes to suit your needs

                              $attributes = array('class' => 'col-md-8', 'role' => 'form');
                              echo form_open('imagens/newImagem', $attributes); ?>

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


                               <div class="form-group">
                                      <label for="exampleInputFile">File input</label>
                                      <input type="file" id="exampleInputFile">

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



