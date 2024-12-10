<?php 
headerTienda($data);
$banner = $data['page']['portada'];
$idpagina = $data['page']['idpost'];

 ?>
<script>
document.querySelector('header').classList.add('header-v4');
</script>
<!-- Title page -->
<!-- breadcrumb_section - start
			================================================== -->
<section class="breadcrumb_section text-white text-center text-uppercase d-flex align-items-end clearfix"
    data-background="<?= media() ?>/tiendacambio/images/breadcrumb/bg_01.jpg">
    <div class="overlay" data-bg-color="#1d1d1d"></div>
    <div class="container">
        <h1 class="page_title text-white">Contacto</h1>
        <ul class="breadcrumb_nav ul_li_center clearfix">
            <li><a href="#!">Inicio</a></li>
            <li>Contacto</li>
        </ul>
    </div>
</section>
<!-- breadcrumb_section - end
			================================================== -->


<!-- map_section - start
			================================================== -->
<!-- <div class="map_section clearfix">
    <div id="mapBox" data-lat="40.701083" data-lon="-74.1522848" data-zoom="12"
        data-info="PO Box CT16122 Collins Street West, Victoria 8007, Australia." data-mlat="40.701083"
        data-mlon="-74.1522848">
    </div>
</div> -->
<!-- map_section - end
			================================================== -->


<!-- main_contact_section - start
			================================================== -->
<section class="main_contact_section sec_ptb_100 clearfix">
    <div class="container">
        <div class="row justify-content-lg-between">

            <div class="col-lg-5">
                <div class="main_contact_content">
                    <h3 class="title_text mb_15">Datos de la empresa</h3>
                    <p class="mb_50" style="text-align:justify;">
                        Si tienes una duda, o necesitas información, completa el formulario, nos comunicaremos lo más
                        rápido posible!.
                    </p>
                    <ul class="main_contact_info ul_li_block clearfix">
                        <!-- <li>
                            <span class="icon">
                                <i class="fal fa-map-marked-alt"></i>
                            </span>
                            <p class="mb-0">
                                75 South Park Avenue, Melbourne, Australia
                            </p>
                        </li> -->
                        <li>
                            <span class="icon">
                                <i class="fal fa-phone-volume"></i>
                            </span>
                            <p class="mb-0">937 393 701 </p>
                        </li>
                        <li>
                            <span class="icon">
                                <i class="fal fa-paper-plane"></i>
                            </span>
                            <p class="mb-0">info@intelligentimport.com</p>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="col-lg-7">
                <div class="main_contact_form">
                    <h3 class="title_text mb_30">Formulario de Contacto</h3>
                    <form id="frmContacto">
                        <div class="row">
                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="form_item">
                                    <input type="text" id="nombreContacto" name="nombreContacto"
                                        placeholder="Nombre y Apellido Completo">
                                </div>
                            </div>

                            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                <div class="form_item">
                                    <input type="email" id="emailContacto" name="emailContacto"
                                        placeholder="Correo electrónico">
                                </div>
                            </div>
                        </div>

                        <div class="form_item">
                            <textarea id="mensaje" name="mensaje" placeholder="Mensaje"></textarea>
                        </div>
                        <button
                            class="custom_btn bg_default_red text-uppercase flex-c-m stext-101 cl0 size-121 bg3 bor1 hov-btn3 p-lr-15 trans-04 pointer">
                            Enviar
                        </button>
                    </form>
                </div>
            </div>

        </div>
    </div>
</section>
<!-- main_contact_section - end
			================================================== -->



<?php 

	footerTienda($data);
?>