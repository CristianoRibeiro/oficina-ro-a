

<body cz-shortcut-listen="true">

<div class="container" style="
    margin-top: 20px;
    margin-right: auto;
    margin-left: auto;
    margin-bottom: 10px;
">

<div class="row">
  <div class="col-md-12 bg_login">


       <div class="row">
            <div class="col-xs-5 col-md-5" style="width: 50%;">
              <h3 style="
    font-family: unset;
    text-align: -webkit-center;
    text-align:center;
        font-size: 30px;">
                <b>
                <br>
                <span style="

                            font-size: 30px;
                            color: #F18C2F;
                        ">Bem-Vindo<br><span style="font-size:14px; font-weight:100 ; ">AO NOSSO SITE.</span></span></b>
                </h3>

                <p style="margin-left: 36px;">
                  <hr class="style17">
                </p>
                <ul id="descricao" style="list-style: none !important; font-style: italic;">
                  <li style="float: left;">
                    <p>
                      <div>
                     <span>
                       <img src="<?= base_url('assets/images/dateicon.png') ?>" alt="" style="float: left; margin: 10px;">
                     </span>
                     </div> No meu xinélo da humildade eu gostaria muito de ver o Neymar e o Ganso.
                     No meu xinélo da humildade eu gostaria muito de ver o Neymar e o Ganso.
                    </p>
                  </li>
                  <li style="float: left;">
                    <p>
                    <div>
                     <span>
                       <img src="<?= base_url('assets/images/porcenicon.png') ?>" alt="" style="float: left; margin: 10px;">
                     </span>
                     </div>
                     No meu xinélo da humildade eu gostaria muito de ver o Neymar e o Ganso.
                     No meu xinélo da humildade eu gostaria muito de ver o Neymar e o Ganso.
                    </p>
                  </li>
                  <li style="float: left;">
                    <p>
                      <div>
                      <span>
                       <img src="<?= base_url('assets/images/livroicon.png') ?>" alt="" style="float: left; margin: 10px;">
                     </span>
                     </div>
                     No meu xinélo da humildade eu gostaria muito de ver o Neymar e o Ganso.
                     No meu xinélo da humildade eu gostaria muito de ver o Neymar e o Ganso.

                    </p>
                  </li>
                </ul>
                <p>




                </p>
            </div>
            <div class="col-xs-5 col-md-5" style="width: 50%;">

                     <div class="login-body">
                         <article class="container-login center-block">
                           <section>
                              <ul id="top-bar" class="nav nav-tabs nav-justified">
                                 <li ><a href="#" data-target="#password-access" data-toggle="tab"><i>CADASTRO</i></a></li>
                                 <li class="active"><a href="#" data-target="#login-access" data-toggle="tab"><i>LOGAR</i></a></li>
                              </ul>
                              <div class="tab-content tabs-login col-lg-12 col-md-12 col-sm-12 cols-xs-12">
                                 <div id="login-access" class="tab-pane fade active in">
                                    <!--<h2><i class="glyphicon glyphicon-log-in"></i> Accesso</h2>-->
                                    <form method="post" accept-charset="utf-8" autocomplete="off" role="form" class="form-horizontal">
                                       <div class="form-group ">
                                          <label for="login" class="sr-only">Email</label>
                                             <input type="text" class="form-control" name="login" id="login_value"
                                                placeholder="Email" tabindex="1" value="" />
                                       </div>
                                       <div class="form-group ">
                                          <label for="password" class="sr-only">Password</label>
                                             <input type="password" class="form-control" name="password" id="password"
                                                placeholder="Password" value="" tabindex="2" />
                                       </div>
                                       <div class="checkbox">
                                             <label class="control-label" for="remember_me">
                                                <input type="checkbox" name="remember_me" id="remember_me" value="1" class="" tabindex="3" /> Continuar logado.
                                             </label>
                                             <a href="#" style="float: right; margin: 10px;">Recuperar conta.</a>

                                       </div>
                                       <br/>
                                       <div class="form-group ">
                                             <button type="submit" name="log-me-in" id="submit" tabindex="5" class="btn btn-lg btn-primary">Entra</button>
                                       </div>
                                    </form>
                                 </div>
                                     <div id="password-access" name="password-access" class="tab-pane fade">

                                         <form method="post" accept-charset="utf-8" autocomplete="off" role="form" class="form-horizontal">
                                             <div class="form-group">
                                                 <label type="text" class="sr-only" for="password-reset">Nome Completo</label>
                                                 <input name="password-reset" id="password-reset" class="form-control" placeholder="Nome Completo" value="" tabindex="6">
                                             </div>
                                             <div class="form-group">
                                                 <label type="text" class="sr-only" for="password-reset">E-mail</label>
                                                 <input name="password-reset" id="password-reset" class="form-control" placeholder="E-mail" value="" tabindex="6">
                                             </div>
                                             <div class="form-group">
                                                 <label type="text" class="sr-only" for="password-reset">Senha</label>
                                                 <input name="password-reset" id="password-reset" class="form-control" placeholder="Senha" value="" tabindex="6">
                                             </div>
                                             <div class="form-group">
                                                 <label type="text" class="sr-only" for="password-reset">Confime a senha</label>
                                                 <input name="password-reset" id="password-reset" class="form-control" placeholder="Confirme a senha" value="" tabindex="6">
                                             </div>
                                             <div class="form-group">
                                                 <button type="submit" name="password-reset-button" id="submit" tabindex="7" class="btn btn-lg btn-success">Cadastrar</button>
                                             </div>
                                         </form>
                                     </div>
                                 </div>
                           </section>
                        </article>
                     </div>


            </div>
      </div>

  </div>
</div>
</div>

  <!-- jQuery -->
    <script src="<?= base_url('assets/js/jquery.js') ?>"></script>
    <script src="<?= base_url('assets/js/bootstrap.min.js') ?>"></script>
    <script src="<?= base_url('assets/js/bootstrap.js') ?>"></script>



</body>

</html>
