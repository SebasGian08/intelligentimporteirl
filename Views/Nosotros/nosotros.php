<?php 
headerTienda($data);
//$banner = media()."/tienda/images/bg-01.jpg";
 $banner = $data['page']['portada'];
 $idpagina = $data['page']['idpost'];
 ?>
 <script>
 	document.querySelector('header').classList.add('header-v4');
 </script>
<!-- Content page -->
<!-- blog_section - end
			================================================== -->
			<section class="blog_section mb_50 clearfix">
        <div class="container maxw_1600">
            <div class="electronic_section_title clearfix">
                <h2 class="title_text mb-0" data-bg-color="#ffe7e7">
                    <span data-bg-color="#edb5b5"><i class="fal fa-plug"></i></span> <strong>Sobre</strong> Nosotros.
                </h2>
            </div>

           <div class="electronic_content_container">
                <div class="electronic_blog_listlayout">
                    <div class="row align-items-center justify-content-lg-between">
                        <div class="col-lg-7">
                            <div class="item_image">
                                <img src="<?= media() ?>/tiendacambio/images/blog/electronic/img_01.jpg"
                                    alt="image_not_found">
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="item_content">
                                <h3 class="item_title mb_30">
                                    Nuestra Misión
                                </h3>
                                <p class="mb_30" style="text-align:justify;">
                                    Ofrecer una amplia gama de productos y accesorios de alta calidad que satisfagan las necesidades y deseos de nuestros clientes. Nos comprometemos a brindar una experiencia de compra excepcional, basada en la honestidad, la integridad y el respeto, asegurando la satisfacción total de nuestros clientes a través de un servicio al cliente personalizado y eficiente.
                                </p>
                                <a class="custom_btn btn_sm bg_electronic_blue" href="https://wa.me/51937393701!">Contáctanos</a>
                            </div>
                        </div>
                    </div>
                </div> 

                <div class="electronic_blog_listlayout">
                    <div class="row align-items-center justify-content-lg-between">
                        <div class="col-lg-7 order-last">
                            <div class="item_image">
                                <img src="<?= media() ?>/tiendacambio/images/blog/electronic/img_02.jpg"
                                    alt="image_not_found">
                            </div>
                        </div>
                        <div class="col-lg-5">
                            <div class="item_content">
                                <h3 class="item_title mb_30">
                                    Nuestra Visión
                                </h3>
                                <p class="mb_30" style="text-align:justify;">
                                    Ser la empresa líder en la venta de productos y accesorios, reconocida por nuestra amplia variedad, innovación constante y excelencia en el servicio al cliente. Nos esforzamos por ofrecer soluciones de alta calidad que enriquezcan la vida de nuestros clientes, anticipando sus necesidades y superando sus expectativas.
                                </p>
                                <a class="custom_btn btn_sm bg_electronic_blue" href="https://wa.me/51937393701!">Contáctanos</a>
                            </div>
                        </div>
                    </div>
                </div> 

            </div>
        </div>
    </section>
    <!-- blog_section - end

<?php 
	

	footerTienda($data);
?>