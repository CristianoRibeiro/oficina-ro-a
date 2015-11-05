<?php
    include 'includes/header.php';
?>



<div class="container" style="
    margin-top: 20px;
    margin-right: auto;
    margin-left: auto;
    margin-bottom: 10px;
">

<ol class="breadcrumb">
  <li><a href="#">Home</a></li>
  <li class="active"><a href="#">Categoria</a></li>
</ol>

            <div class="row">
                <div class="col-md-8">
                    <img class="img-responsive" src="http://placehold.it/900x400" alt="">
                </div>
                <!-- /.col-md-8 -->
                <div class="col-md-4 text-center ">
                    <h3 style="    font-style: italic;font-family: -webkit-pictograph;text-align: -webkit-center;text-align:center;font-size: 30px;">
                    <b>Mais que uma cadeira</b>
                    </h3>
                    <span class="small">Descricao minima</span>
                    <br><br>
                    <p class="text-justify">
                         Donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna,
                        vel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis in,
                        egestas eget quam. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor
                        auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia
                        odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.
                        0Donec id elit non mi porta gravida at eget metus.

                    </p>

                </div>
                <!-- /.col-md-4 -->
            </div>
            <br><br>
            <div class="row">
                <div class="col-lg-12">
                    <div class="col-md-4 text-center">
                     Ordene por:
                        <div class="col-md-8" style="float: right;">
                            <select class="form-control">
                                  <option>Preço</option>
                                  <option>Inspiração</option>
                                  <option>Disponibilidade</option>
                            </select>
                        </div>
                    </div>
                   <div class="col-md-4 text-center" style="margin-right: 20px;">

                        <div class="col-md-6" style="margin-left: 30px;">
                          <i class="fa fa-share fa-lg" title="Compartilhar"></i> CAMPANHA —
                        </div>
                        <a href="https://www.facebook.com/bootsnipp"><i id="social-fb" class="fa fa-facebook-square fa-3x social"></i></a>
                        <a href="https://twitter.com/bootsnipp"><i id="social-tw" class="fa fa-twitter-square fa-3x social"></i></a>
                        <a href="https://plus.google.com/+Bootsnipp-page"><i id="social-gp" class="fa fa-google-plus-square fa-3x social"></i></a>
                        <a href="mailto:bootsnipp@gmail.com"><i id="social-em" class="fa fa-envelope-square fa-3x social"></i></a>

                    </div>
                   <div class="col-md-3">
                         <span class="glyphicon glyphicon-menu-right" aria-hidden="true"></span> Término em 3 dias 0 horas
                    </div>

                </div>
            </div>


            <div class="row">
                        <?php

                           for ($i=0; $i < 9 ; $i++) {

                        ?>
                                <div class="col-sm-4" style="margin-top:4%;">
                                     <div class="col-item">
                                         <div class="photo">
                                             <img src="http://placehold.it/350x260" class="img-responsive" alt="a">
                                         </div>
                                         <div class="info">
                                             <div class="row">
                                                 <div class="price col-md-6">
                                                     <h5>
                                                         Sample Product</h5>
                                                     <h5 class="price-text-color">
                                                         $199.99</h5>
                                                 </div>
                                                 <div class="rating hidden-sm col-md-6">
                                                     <i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                                     </i><i class="price-text-color fa fa-star"></i><i class="price-text-color fa fa-star">
                                                     </i><i class="fa fa-star"></i>
                                                 </div>
                                             </div>
                                             <div class="separator clear-left">
                                                 <p class="btn-add">
                                                     <i class="fa fa-shopping-cart"></i><a href="#" class="hidden-sm">Add ao carrinho</a></p>
                                                 <p class="btn-details">
                                                     <i class="fa fa-list"></i><a href="<?=base_url();?>categoria/detalhe" class="hidden-sm">Mais detalhes</a></p>
                                             </div>
                                             <div class="clearfix">
                                             </div>
                                         </div>
                                     </div>
                                 </div>
                        <?php

                          }

                        ?>
            </div>
            <br><br><br>


</div>


</div>



   <?php
       include 'includes/footer.php';
    ?>
