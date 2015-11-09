<br>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
            <a class="navbar-brand" href="">
                <b>Carrinho</b>
            </a>
          </div>
        </div>
      </nav>
	<table id="cart" class="table table-hover table-condensed">
                                <thead>
						<tr>
							<th style="width:50%">Produto</th>
							<th style="width:10%">Preço</th>
							<th style="width:8%">Quantidade</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
                                </thead>
					<tbody>
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="http://placehold.it/100x100" alt="..." class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">Product 1</h4>
										<p>Quis aute iure reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Lorem ipsum dolor sit amet.</p>
									</div>
								</div>
							</td>
                                                        <td data-th="Price" id="preco">$1.99</td>
							<td data-th="Quantity">
                                                            <input type="number" id="quantidade" class="form-control text-center" value="1">
							</td>
                                                        <td data-th="Subtotal" id="total" class="text-center">1.99</td>
							<td class="actions" data-th="">
								<button class="btn btn-warning btn-sm"><i class="fa fa-refresh"></i></button>
								<button class="btn btn-warning btn-sm"><i class="fa fa-trash-o"></i></button>								
							</td>
						</tr>
					</tbody>
					<tfoot>
						<tr class="visible-xs">
							<td class="text-center"><strong>Total 1.99</strong></td>
						</tr>
                                        <br>
						<tr>
							<td><a href="#" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue comprando</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>Total $1.99</strong></td>
							<td><a href="#" class="btn btn-warning btn-block">Comprar <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>
<br>
<br>