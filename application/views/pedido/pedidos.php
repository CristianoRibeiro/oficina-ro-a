
<div class="container" style="
    margin-top: 20px;
    margin-right: auto;
    margin-left: auto;
    margin-bottom: 10px;
    min-height: 600px;
">
<nav class="navbar navbar-default">
  <div class="container-fluid">
      <div class="navbar-header">
      <a class="navbar-brand" href="">
        Meus Pedidos
      </a>
    </div>
  </div>
</nav>
    
<div class="sidebar-nav">
    <div class="well" style="width:300px; padding: 8px 0;">
		<ul class="nav nav-list">        
                    <li><a href="<?php base_url(); ?>"><i class="icon-home"></i> NewSletters</a></li>
                    <li><a href="<?php base_url(); ?>pedidos"><i class="icon-envelope"></i> Meus pedidos</a></li>
                    <li><a href="#"><i class="icon-comment"></i> Meus cupons</a></li>
                    <li class="active"><a href="#"><i class="icon-user"></i> Convidar amigos</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="icon-comment"></i> Meus convites</a></li>
		</ul>
	</div>
</div>

   <div class="row">
       <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>


<!--
<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        <h4>Bootstrap Snipp for Datatable</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   <th><input type="checkbox" id="checkall" /></th>
                   <th>Código pedido</th>
                   <th>Data emissão</th>
                   <th>Quantidade</th>
                   <th>Valo total</th>
                   <th>Data entrega</th>
                   <th>Data Cadastro</th>
                   <th>Status</th>
                   </thead>
    <tbody>
    
    <tr>
        <td></td>
    <td>1</td>
    <td>07/12/2015</td>
    <td>5</td>
    <td>556,90</td>
    <td>07/12/2015</td>
    <td>aUSDHSH</td>
    <td>
        <select>
            <option> Selecione</option>
            <option> Cancelado</option>
            <option> Entregue</option>
            <option> Em entrega</option>
            <option> Pronto</option>
        </select>
    </td>
    <td><p data-placement="top" data-toggle="tooltip" title="Edit"><button class="btn btn-primary btn-xs" data-title="Edit" data-toggle="modal" data-target="#edit" ><span class="glyphicon glyphicon-pencil"></span></button></p></td>
    <td><p data-placement="top" data-toggle="tooltip" title="Delete"><button class="btn btn-danger btn-xs" data-title="Delete" data-toggle="modal" data-target="#delete" ><span class="glyphicon glyphicon-trash"></span></button></p></td>
    </tr>
 </tbody>
        
</table>

<div class="clearfix"></div>
<ul class="pagination pull-right">
  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
</ul>
                
            </div>
            
        </div>
	</div>
</div>


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>






   </div>

</div>