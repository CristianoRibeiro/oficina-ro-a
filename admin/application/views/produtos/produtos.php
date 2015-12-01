
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
                            Listagem de produtos avançada

                             <a href="<?=base_url();?>produtos/newProduct" class="btn btn-primary btn-xs pull-right"><b>+</b> Add new product</a>

                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <div class="dataTable_wrapper">
                                <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>NOME</th>
                                            <th>CATEGORIA</th>
                                            <th>DESCRIÇÃO</th>
                                            <th>PREÇO</th>
                                            <th>STATUS</th>
                                            <th>AÇÕES</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <?php for ($i=0; $i < 20; $i++) { ?>


                                        <tr class="gradeA">
                                            <td><?=$i+1?></td>
                                            <td>Nome Produto</td>
                                            <td>Categoria</td>
                                            <td>Descriçao do produto</td>
                                            <td class="center">preço</td>
                                            <td class="center">
                                                <span class="label label-success">Active</span>
                                            </td>
                                            <td class="center">
                                                <a class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Edit</a>
                                                <a href="#" class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Del</a>
                                            </td>
                                        </tr>

                                        <?php } ?>

                                    </tbody>
                                </table>
                            </div>
                            <!-- /.table-responsive -->

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


