


<!-- Projects Row -->
        <div class="row" style="
    background-color: #fff;
    border-color: #cacaca;
    border: 1px dotted #CCCCCC;
    margin-t: 0px !important;
">
        <div class="container" style="

    padding-left: 0px !important;
    padding-right: 0px !important;

">
            <div class="col-md-6 portfolio-item" style="
            border: 0px;
            margin: 0px auto;
            /* width: 50% !IMPORTANT; */

            margin-bottom: 25px;
            margin: 18px;
            padding: 15px;">

                <!--<a href="#">
                    <img class="img-responsive" src="http://placehold.it/700x400" alt="">
                </a>-->
                <h3 style="    font-style: italic;
    font-family: -webkit-pictograph;
    text-align: -webkit-center;
    text-align:center;
        font-size: 30px;">
                <b>Mais que uma cadeira
                <br>
                <span style="

                            font-size: 24px;
                            text-decoration: underline;
                            color: #F18C2F;
                        ">Pra você.</span></b>
                </h3>

                <p>
                    <span style="
    font-size: 40px;
    color: #F18C2F;
">E</span>d do donec id elit non mi porta gravida at eget metus. Praesent commodo cursus magna,
                    vel scelerisque nisl consectetur et. Cras justo odio, dapibus ac facilisis in,
                    egestas eget quam. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor
                    auctor. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia
                    odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.
                    0Donec id elit non mi porta gravida at eget metus.
                    Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia
                    odio sem nec elit. Cras justo odio, dapibus ac facilisis in, egestas eget quam.
                    0Donec id elit non mi porta gravida at eget metus.


                </p>

            </div>
            <div class="col-md-6 portfolio-item" style="
            border: 0px;
            margin: 0px auto;
            /* width: 50% !IMPORTANT; */

            margin-bottom: 25px;
            margin: 18px;
            padding: 15px;">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/700x400" alt="">
                </a>

            </div>
            </div>
        </div>
        <!-- /.row -->


 <div class="container" style="
    padding-right: 40px;
    padding-left: 40px;
    margin-right: auto;
    margin-left: auto;
">

    <?php

       for ($i=0; $i < 3 ; $i++) {

    ?>
        <!-- Projects Row -->
        <div class="row">
            <div class="col-md-6 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/700x400" alt="">
                </a>
                <h3  >
                    <a style="
    color: #F18C2F;
    font-family: serif;
    text-decoration: none;
    text-transform: uppercase;
" href="#">MESA PARA CINCO</a>
                </h3>
                <p>FEITA COM MADEIRA, FERRO E AÇO.</p>
                <p style="
    float: right;
">
                    <span style="
    color: #CCCCCC;
">ACABA EM 14:36 | </span><a href="<?= base_url();?>categoria" style="padding: 10px;" class="btn btn-default"> EFETUAR COMPRA </a>
                </p>
            </div>
            <div class="col-md-6 portfolio-item">
                <a href="#">
                    <img class="img-responsive" src="http://placehold.it/700x400" alt="">
                </a>
                <h3 >
                    <a style="
    color: #F18C2F;
    font-family: serif;
    text-decoration: none;
    text-transform: uppercase;
" href="#">CADEIRAS CHILENAS</a>
                </h3>
                <p>FEITA COM MADEIRA, FERRO E AÇO.</p>
                 <p style="
    float: right;
">
                    <span style="
                    color: #CCCCCC;
                ">ACABA EM 14:36 | </span><a href="<?= base_url();?>categoria" style="padding: 10px;" class="btn btn-default"> EFETUAR COMPRA </a>
                  </p>
            </div>
        </div>
       <!-- /.row -->
 <?php
    }
  ?>





        <!-- Footer -->





    </div>


    <?php
       include 'includes/footer.php';
    ?>
