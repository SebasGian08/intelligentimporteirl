<?php 
headerTienda($data);
?>
<br>
<hr>
<!-- breadcrumb -->
<br>
<div class="container">
    <div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
        <a href="<?= base_url() ?>" class="stext-109 cl8 hov-cl1 trans-04">
            Inicio
            <i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
        </a>
        <span class="stext-109 cl4">
            <?= $data['page_title'] ?>
        </span>
    </div>
</div>
<?php 
$subtotal = 0;
$total = 0;
if(isset($_SESSION['arrCarrito']) and count($_SESSION['arrCarrito']) > 0){ 
 ?>
<!-- Shoping Cart -->
<form class="bg0 p-t-75 p-b-85">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 col-xl-7 m-lr-auto m-b-50">
                <div class="m-l-25 m-r--38 m-lr-0-xl">
                    <div class="wrap-table-shopping-cart">
                        <table id="tblCarrito" class="table-shopping-cart">
                            <tr class="table_head">
                                <th class="column-1">Producto</th>
                                <th class="column-2"></th>
                                <th class="column-3">Precio</th>
                                <th class="column-4">Cantidad</th>
                                <th class="column-5">Total</th>
                            </tr>
                            <?php 
								foreach ($_SESSION['arrCarrito'] as $producto) {
									$totalProducto = $producto['precio'] * $producto['cantidad'];
									$subtotal += $totalProducto;
									$idProducto = openssl_encrypt($producto['idproducto'],METHODENCRIPT,KEY);
								
							 ?>
                            <tr class="table_row <?= $idProducto ?>">
                                <td class="column-1">
                                    <div class="how-itemcart1" idpr="<?= $idProducto ?>" op="2"
                                        onclick="fntdelItem(this)">
                                        <img src="<?= $producto['imagen'] ?>" alt="<?= $producto['producto'] ?>">
                                    </div>
                                </td>
                                <td class="column-2"><?= $producto['producto'] ?></td>
                                <td class="column-3"><?= SMONEY.formatMoney($producto['precio']) ?></td>
                                <td class="column-4">
                                    <div class="wrap-num-product flex-w m-l-auto m-r-0">
                                        <div class="btn-num-product-down cl8 hov-btn3 trans-04 flex-c-m"
                                            idpr="<?= $idProducto ?>">
                                            <i class="fs-16 zmdi zmdi-minus"></i>
                                        </div>

                                        <input class="mtext-104 cl3 txt-center num-product" type="number"
                                            name="num-product1" value="<?= $producto['cantidad'] ?>"
                                            idpr="<?= $idProducto ?>">

                                        <div class="btn-num-product-up cl8 hov-btn3 trans-04 flex-c-m"
                                            idpr="<?= $idProducto ?>">
                                            <i class="fs-16 zmdi zmdi-plus"></i>
                                        </div>
                                    </div>
                                </td>
                                <td class="column-5"><?= SMONEY.formatMoney($totalProducto) ?></td>
                            </tr>
                            <?php } ?>

                        </table>
                    </div>
                    <!-- <div class="flex-w flex-sb-m bor15 p-t-18 p-b-15 p-lr-40 p-lr-15-sm">
							<div class="flex-w flex-m m-r-20 m-tb-5">
								<input class="stext-104 cl2 plh4 size-117 bor13 p-lr-20 m-r-10 m-tb-5" type="text" name="coupon" placeholder="Coupon Code">
									
								<div class="flex-c-m stext-101 cl2 size-118 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-5">
									Apply coupon
								</div>
							</div>

							<div class="flex-c-m stext-101 cl2 size-119 bg8 bor13 hov-btn3 p-lr-15 trans-04 pointer m-tb-10">
								Update Cart
							</div>
						</div> -->
                </div>
            </div>

            <div class="col-sm-10 col-lg-7 col-xl-5 m-lr-auto m-b-50">
                <div class="bor10 p-lr-40 p-t-30 p-b-40 m-l-63 m-r-40 m-lr-0-xl p-lr-15-sm">
                    <h4 class="mtext-109 cl2 p-b-30">
                        Totales
                    </h4>

                    <div class="flex-w flex-t bor12 p-b-13">
                        <div class="size-208">
                            <span class="stext-110 cl2">
                                Subtotal:
                            </span>
                        </div>

                        <div class="size-209">
                            <span id="subTotalCompra" class="mtext-110 cl2">
                                <?= SMONEY.formatMoney($subtotal) ?>
                            </span>
                        </div>

                        <div class="size-208">
                            <span class="stext-110 cl2">
                                Envío:
                            </span>
                        </div>

                        <div class="size-209">
                            <span class="mtext-110 cl2">
                                <?= SMONEY.formatMoney(COSTOENVIO) ?>
                            </span>
                        </div>
                    </div>
                    <div class="flex-w flex-t p-t-27 p-b-33">
                        <div class="size-208">
                            <span class="mtext-101 cl2">
                                Total:
                            </span>
                        </div>

                        <div class="size-209 p-t-1">
                            <span id="totalCompra" class="mtext-110 cl2">
                                <?= SMONEY.formatMoney($subtotal + COSTOENVIO) ?>
                            </span>
                        </div>
                    </div>
                    <a href="<?= base_url() ?>/carrito/procesarpago" id="btnComprar"
                        class="flex-c-m stext-101 cl0 size-116 bg3 bor14 hov-btn3 p-lr-15 trans-04 pointer">
                        Procesar pago
                    </a>
                    <br>
                    <!-- METODO DE PAGO -->
                    <div class="iphone">
                        <form action="https://httpbin.org/post" class="form" method="POST">
                            <fieldset>
                                <div class="form__radios">
                                    <div class="form__radio">
                                        <label for="visa" style="font-family: Poppins-Medium;">
                                        <img src="<?= media() ?>/images/bcp.png" alt="Bcp"
                                                style="width:30px">
                                            Transferencia o deposito bancario
                                        </label>
                                        <input id="visa" name="payment-method" type="radio"
                                            onclick="showPaymentDetails('visa')" />
                                    </div>
                                    <div class="form__radio">
                                        <label for="yape" style="font-family: Poppins-Medium;">
                                            <img src="<?= media() ?>/images/yapelogo.png" alt="Yape QR Code"
                                                style="width:30px">
                                            Yape
                                        </label>
                                        <input checked id="yape" name="payment-method" type="radio"
                                            onclick="showPaymentDetails('yape')" />
                                    </div>
                                </div>
                            </fieldset>
                            <br>
                        </form>

                        <div id="visaDetailsContainer" style="display: none;">
                            <p style="font-family: system-ui;">Por favor, realiza el pago de <?= SMONEY.formatMoney($subtotal + COSTOENVIO) ?>
                                Cuenta corriente soles en BCP a nombre de la empresa FullHerramientas.
                                <br>
                                Cuenta: 1919-6460054-0-96 <br> CCI: 00219119646005409653 <br>
                                Envianos tu comprobante de pago al WhatsApp +51 923 282 607 para validar tu compra.</p>
                        </div>

                        <div id="yapeDetailsContainer">
                            <p style="font-family: system-ui;">Por favor, realiza el pago de <?= SMONEY.formatMoney($subtotal + COSTOENVIO) ?>
                                utilizando la aplicacion Yape al numero +51 989 021 462 con nombre Rodolfo Guillermo Esteban Ibarra. Envianos tu comprobante de pago al WhatsApp +51 923 282 607.</p>
                            <img src="<?= media() ?>/images/yapeqr.png" alt="Yape QR Code" style="width:300px">

                        </div>
                    </div>
                    <br>

                    <!-- Agrega este c��digo JavaScript en tu archivo o en un archivo externo -->
                    <script>
                    function showPaymentDetails(paymentMethod) {
                        var visaDetailsContainer = document.getElementById("visaDetailsContainer");
                        var yapeDetailsContainer = document.getElementById("yapeDetailsContainer");

                        if (paymentMethod === "visa") {
                            visaDetailsContainer.style.display = "block";
                            yapeDetailsContainer.style.display = "none";
                        } else if (paymentMethod === "yape") {
                            visaDetailsContainer.style.display = "none";
                            yapeDetailsContainer.style.display = "block";
                        }
                    }
                    </script>

                    <!-- FIN METODO DE PAGO -->
                    <?php
					// Crear una variable para almacenar los nombres de los productos
					$detallesProductos = "";

					// Recorrer los productos en el carrito y concatenar los nombres
					foreach ($_SESSION['arrCarrito'] as $producto) {
                        $totalProducto = $producto['precio'] * $producto['cantidad'];
                        $detallesProductos .= "Producto: " . $producto['producto'] . "\n";
                        $detallesProductos .= "Cantidad: " . $producto['cantidad'] . "\n";
                        $detallesProductos .= "Total: " . formatMoney($totalProducto) . "\n\n";
                    }

					// Eliminar la coma y el espacio al final de la cadena
					$detallesProductos  = rtrim($detallesProductos , ', ');
					?>
                    <a href="https://api.whatsapp.com/send?phone=+51923282607&text=<?= urlencode('Hola👋, Deseo una cotización de ' . $detallesProductos) ?>"
                        target="_blank" id="btnComprar"
                        class="flex-c-m stext-101 cl0 size-116 bor14 hov-btn3 p-lr-15 trans-04 pointer"
                        style="background-color: #40c351;">
                        <svg xmlns="http://www.w3.org/2000/svg" x="0px" y="0px" width="28" height="28"
                            viewBox="0 0 48 48">
                            <path fill="#fff"
                                d="M4.868,43.303l2.694-9.835C5.9,30.59,5.026,27.324,5.027,23.979C5.032,13.514,13.548,5,24.014,5c5.079,0.002,9.845,1.979,13.43,5.566c3.584,3.588,5.558,8.356,5.556,13.428c-0.004,10.465-8.522,18.98-18.986,18.98c-0.001,0,0,0,0,0h-0.008c-3.177-0.001-6.3-0.798-9.073-2.311L4.868,43.303z">
                            </path>
                            <path fill="#fff"
                                d="M4.868,43.803c-0.132,0-0.26-0.052-0.355-0.148c-0.125-0.127-0.174-0.312-0.127-0.483l2.639-9.636c-1.636-2.906-2.499-6.206-2.497-9.556C4.532,13.238,13.273,4.5,24.014,4.5c5.21,0.002,10.105,2.031,13.784,5.713c3.679,3.683,5.704,8.577,5.702,13.781c-0.004,10.741-8.746,19.48-19.486,19.48c-3.189-0.001-6.344-0.788-9.144-2.277l-9.875,2.589C4.953,43.798,4.911,43.803,4.868,43.803z">
                            </path>
                            <path fill="#cfd8dc"
                                d="M24.014,5c5.079,0.002,9.845,1.979,13.43,5.566c3.584,3.588,5.558,8.356,5.556,13.428c-0.004,10.465-8.522,18.98-18.986,18.98h-0.008c-3.177-0.001-6.3-0.798-9.073-2.311L4.868,43.303l2.694-9.835C5.9,30.59,5.026,27.324,5.027,23.979C5.032,13.514,13.548,5,24.014,5 M24.014,42.974C24.014,42.974,24.014,42.974,24.014,42.974C24.014,42.974,24.014,42.974,24.014,42.974 M24.014,42.974C24.014,42.974,24.014,42.974,24.014,42.974C24.014,42.974,24.014,42.974,24.014,42.974 M24.014,4C24.014,4,24.014,4,24.014,4C12.998,4,4.032,12.962,4.027,23.979c-0.001,3.367,0.849,6.685,2.461,9.622l-2.585,9.439c-0.094,0.345,0.002,0.713,0.254,0.967c0.19,0.192,0.447,0.297,0.711,0.297c0.085,0,0.17-0.011,0.254-0.033l9.687-2.54c2.828,1.468,5.998,2.243,9.197,2.244c11.024,0,19.99-8.963,19.995-19.98c0.002-5.339-2.075-10.359-5.848-14.135C34.378,6.083,29.357,4.002,24.014,4L24.014,4z">
                            </path>
                            <path fill="#40c351"
                                d="M35.176,12.832c-2.98-2.982-6.941-4.625-11.157-4.626c-8.704,0-15.783,7.076-15.787,15.774c-0.001,2.981,0.833,5.883,2.413,8.396l0.376,0.597l-1.595,5.821l5.973-1.566l0.577,0.342c2.422,1.438,5.2,2.198,8.032,2.199h0.006c8.698,0,15.777-7.077,15.78-15.776C39.795,19.778,38.156,15.814,35.176,12.832z">
                            </path>
                            <path fill="#fff" fill-rule="evenodd"
                                d="M19.268,16.045c-0.355-0.79-0.729-0.806-1.068-0.82c-0.277-0.012-0.593-0.011-0.909-0.011c-0.316,0-0.83,0.119-1.265,0.594c-0.435,0.475-1.661,1.622-1.661,3.956c0,2.334,1.7,4.59,1.937,4.906c0.237,0.316,3.282,5.259,8.104,7.161c4.007,1.58,4.823,1.266,5.693,1.187c0.87-0.079,2.807-1.147,3.202-2.255c0.395-1.108,0.395-2.057,0.277-2.255c-0.119-0.198-0.435-0.316-0.909-0.554s-2.807-1.385-3.242-1.543c-0.435-0.158-0.751-0.237-1.068,0.238c-0.316,0.474-1.225,1.543-1.502,1.859c-0.277,0.317-0.554,0.357-1.028,0.119c-0.474-0.238-2.002-0.738-3.815-2.354c-1.41-1.257-2.362-2.81-2.639-3.285c-0.277-0.474-0.03-0.731,0.208-0.968c0.213-0.213,0.474-0.554,0.712-0.831c0.237-0.277,0.316-0.475,0.474-0.791c0.158-0.317,0.079-0.594-0.04-0.831C20.612,19.329,19.69,16.983,19.268,16.045z"
                                clip-rule="evenodd"></path>
                        </svg> Cotizar ya
                    </a>
                </div>
            </div>
        </div>
    </div>
</form>
<?php }else{ ?>
<br>
<div class="container">
    <p>No hay producto en el carrito <a href="<?= base_url() ?>/tienda"> Ver productos</a></p>
</div>
<br>
<?php 
	}
	footerTienda($data);
 ?>