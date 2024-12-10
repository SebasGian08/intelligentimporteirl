	<?php 
		$catFotter = getCatFooter();
	 ?>
	<!-- electronic_newsletter - start
			================================================== -->
	<style>
	    .btn-wsp{
        position:fixed;
        width:60px;
        height:60px;
        line-height: 63px;
        bottom:25px;
        right:25px;
        background:#25d366;
        color:#FFF;
        border-radius:50px;
        text-align:center;
        font-size:35px;
        box-shadow: 0px 1px 10px rgba(0,0,0,0.3);
        z-index:100;
        transition: all 300ms ease;
    }
    .btn-wsp:hover{
        background: #20ba5a;
    }
    @media only screen and (min-width:320px) and (max-width:768px){
        .btn-wsp{
            width:63px;
            height:63px;
            line-height: 66px;
    	
	</style>
	<a href="https://wa.me/51937393701" class="btn-wsp" target="_blank">
	    <i class="fab fa-whatsapp icono"></i>
	</a>
	<section class="electronic_newsletter clearfix">
	    <div class="container maxw_1600">
	        <div
	            class="row align-items-center justify-content-lg-between justify-content-md-center justify-content-sm-center">
	            <div class="col-lg-3 col-md-7 col-sm-9 col-xs-12">
	                <div class="title_wrap">
	                    <i class="fal fa-paper-plane"></i>
	                    <h2>Suscríbete al boletín</h2>
	                    <p class="mb-0">...y recibe un cupón de S/20 para tu primera compra.</p>
	                </div>
	            </div>

	            <div class="col-lg-5 col-md-7 col-sm-9 col-xs-12">
	                <form id="frmSuscripcion" name="frmSuscripcion">
	                    <div class="form_item">
	                        <input type="text" id="nombreSuscripcion" name="nombreSuscripcion"
	                            placeholder="Nombre completo" required>
	                        <input type="email" id="emailSuscripcion" name="emailSuscripcion"
	                            placeholder="email@example.com" required>
	                        <button type="submit" class="custom_btn bg_electronic_blue"
	                            style="top: 75%;">Suscribirse</button>
	                    </div>

	                </form>
	            </div>

	            <div class="col-lg-3 col-md-7 col-sm-9 col-xs-12">
	                <!-- <div class="payment_mathoud">
	                    <p>USAMOS PAGOS SEGUROS</p>
	                    <img src="<?= media() ?>/tiendacambio/images/payment_methods_01.png" alt="image_not_found">
	                </div> -->
	            </div>
	        </div>
	    </div>
	</section>
	<!-- electronic_newsletter - end
			================================================== -->


	</main>
	<!-- footer_section - start
		================================================== -->
		<footer class="footer_section fashion_minimal_footer clearfix" data-bg-color="#222222">

			<div class="footer_widget_area sec_ptb_100 clearfix">
				<div class="container">
					<div class="row justify-content-lg-between">

						<div class="col-lg-4 col-lmd-6 col-sm-6 col-xs-12">
							<div class="footer_widget footer_about">
								<div class="brand_logo mb_30">
									<a href="#!">
										<img src="<?= media() ?>/tiendacambio/images/logo/logo_16_1x.png" srcset="assets/images/logo/logo_33_2x.png 2x" alt="logo_not_found">
									</a>
								</div>
								<p class="mb_30">
									Intelligent Import es una empresa dedicada a la venta de una 
									amplia variedad de accesorios, desde tecnología y hogar hasta moda. 
									Nos enfocamos en ofrecer productos de alta calidad que combinan funcionalidad y 
									diseño, asegurando una experiencia de compra excepcional para nuestros clientes.
								</p>
								<ul class="circle_social_links ul_li clearfix">
									<li><a href="https://www.facebook.com/Poderiun" target="_blank"><i class="fab fa-facebook-f"></i></a></li>
								</ul>
							</div>
						</div>

						<div class="col-lg-4 col-lmd-6 col-sm-6 col-xs-12">
							<div class="row justify-content-lg-between">
								<div class="col-lg-6 col-lmd-6 col-sm-6 col-xs-12">
									<div class="footer_widget footer_useful_links clearfix">
										<h3 class="footer_widget_title text-white">Links</h3>
										<ul class="ul_li_block">
											<li><a href="<?= base_url(); ?>/tienda">Nuestra Tienda</a></li>
											<li><a href="<?= base_url(); ?>/contacto">Contacto</a></li>
											<li><a href="<?= base_url(); ?>/nosotros">Sobre Nosotros</a></li>
										</ul>
									</div>
								</div>

								<div class="col-lg-6 col-lmd-6 col-sm-6 col-xs-12">
									<div class="footer_widget footer_useful_links clearfix">
										<h3 class="footer_widget_title text-white">Categorias</h3>
										 <?php if(count($catFotter) > 0){ ?>
										<ul class="ul_li_block">
										    <?php foreach ($catFotter as $cat) { ?>
											<li><a href="<?= base_url() ?>/tienda/categoria/<?= $cat['idcategoria'].'/'.$cat['ruta'] ?>"><?= $cat['nombre'] ?></a></li>
										    <?php } ?>
										</ul>
										 <?php } ?>
									</div>
								</div>
							</div>
						</div>

						<div class="col-lg-4 col-lmd-6 col-sm-6 col-xs-12">
							<div class="footer_widget sports_footer_contact clearfix">
								<h3 class="footer_widget_title text-white">Contacto</h3>
								<ul class="ul_li_block">
									<li>
										<span class="icon"><i class="fal fa-envelope"></i></span>
										<div class="content_wrap d-table">
											<p class="mb-0">+51 937 393 701</p>
											<p class="mb-0">info@intelligentimport.com</p>
										</div>
									</li>
									<li>
										<span class="icon"><i class="fal fa-map"></i></span>
										<div class="content_wrap d-table">
											<p class="mb-0">
												AVP la glorieta MZ A, lote 12 Callao
											</p>
										</div>
									</li>
								</ul>
							</div>
						</div>
						
					</div>
				</div>
			</div>

			<div class="container">
				<div class="footer_bottom">
					<div class="row align-items-center justify-content-lg-between">
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<p class="copyright_text mb-0">
								© Copyrights, 2024 <a href="https://grupocodware.com/" targer="_blank" class="author_link text-white">Grupo Codware</a>
							</p>
						</div>
						<div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
							<div class="payment_methods float-lg-right float-md-right">
								<img src="https://grupocodware.com/images/logo-2.webp" alt="image_not_found">
							</div>
						</div>
					</div>
				</div>
			</div>
		</footer>
	<!-- footer_section - end-->
	<script>
const base_url = "<?= base_url(); ?>";
const smony = "<?= SMONEY; ?>";
	</script>
	<script src="<?= media() ?>/tienda/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/animsition/js/animsition.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/bootstrap/js/popper.js"></script>
	<script src="<?= media() ?>/tienda/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/daterangepicker/moment.min.js"></script>
	<script src="<?= media() ?>/tienda/vendor/daterangepicker/daterangepicker.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/slick/slick.min.js"></script>
	<script src="<?= media() ?>/tienda/js/slick-custom.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/parallax100/parallax100.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/isotope/isotope.pkgd.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/sweetalert/sweetalert.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<!--===============================================================================================-->
	<script src="<?= media() ?>/tienda/js/main.js"></script>
	<script src="<?= media();?>/js/functions_admin.js"></script>
	<script src="<?= media() ?>/js/functions_login.js"></script>
	<script src="<?= media() ?>/tienda/js/functions.js"></script>

	<!-- fin -->
	<script src="<?= media() ?>/tiendacambio/js/jquery-3.5.1.min.js"></script>
	<script src="<?= media() ?>/tiendacambio/js/popper.min.js"></script>
	<script src="<?= media() ?>/tiendacambio/js/bootstrap.min.js"></script>

	<!-- mobile menu - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/mCustomScrollbar.js"></script>

	<!-- animation - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/parallaxie.js"></script>
	<script src="<?= media() ?>/tiendacambio/js/wow.min.js"></script>

	<!-- nice select - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/nice-select.min.js"></script>

	<!-- carousel - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/slick.min.js"></script>

	<!-- countdown timer - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/countdown.js"></script>

	<!-- popup images & videos - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/magnific-popup.min.js"></script>

	<!-- filtering & masonry layout - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/isotope.pkgd.min.js"></script>
	<script src="<?= media() ?>/tiendacambio/js/masonry.pkgd.min.js"></script>
	<script src="<?= media() ?>/tiendacambio/js/imagesloaded.pkgd.min.js"></script>

	<!-- jquery ui - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/jquery-ui.js"></script>

	<!-- custom - jquery include -->
	<script src="<?= media() ?>/tiendacambio/js/custom.js"></script>



	</body>

	</html>