
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Categorias</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Cadastro de categorias de produtos



                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">


                              <?php // Change the css classes to suit your needs

                              $attributes = array('class' => 'col-md-8', 'role' => 'form');
                              echo form_open_multipart('Categorias/newCategoria', $attributes); ?>

                            <div class="row">
                            <div class="form-group col-lg-4">
                                      <label for="idcategoria" class="control-label" >idCategoria</label>
                                      <?php echo form_error('idcategoria'); ?>
                                      <br /><input id="idcategoria" class="form-control"  type="text" name="idcategoria" value="<?php echo set_value('idcategoria'); ?>"  readonly />
                              </div>
                              </div>


                              <div class="form-group">
                                      <label for="categoria" class="control-label" >Categoria</label>
                                      <?php echo form_error('categoria'); ?>
                                      <br /><input id="categoria" class="form-control"  type="text" name="categoria" value="<?php echo set_value('categoria'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="title" class="control-label" >Title</label>
                                      <?php echo form_error('title'); ?>
                                      <br /><input id="title" class="form-control"  type="text" name="title" value="<?php echo set_value('title'); ?>"  />
                              </div>

                              <div class="form-group">
                                      <label for="descricao" class="control-label" >Descricao</label>
                                      <?php echo form_error('descricao'); ?>
                                      <br /><input id="descricao" class="form-control"  type="text" name="descricao" value="<?php echo set_value('descricao'); ?>"  />
                              </div>


                              <div class="form-group">
                                <label for="texto">Texto</label>
                                <?php echo form_error('texto'); ?>
                                <br /><textarea class="form-control" rows="5" id="texto" name="texto" value="<?php echo set_value('texto'); ?>" ></textarea>
                              </div>


                               <div class="form-group">
                                      <label for="image">File input</label>

                                      <input type="file" id="image" name="image" value="<?php echo set_value('image'); ?>">

                                </div>

                                <div class="form-group">
                                      <label for="time" class="control-label" >time</label>
                                      <?php echo form_error('time'); ?>
                                      <br /><input id="time" class="form-control"  type="text" name="time" value="<?php echo set_value('time'); ?>"  />
                                </div>


                              <div class="form-group">
                                      <?php
                                          $attributes = array('class' => 'btn btn-default');
                                          echo form_submit($attributes,'CADASTRAR', 'CADASTRAR');
                                       ?>
                                      &nbsp;&nbsp;
                                      <?php
                                          $attributes = array('class' => 'btn btn-default');
                                          echo form_submit($attributes,'ALTERAR', 'ALTERAR');
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



