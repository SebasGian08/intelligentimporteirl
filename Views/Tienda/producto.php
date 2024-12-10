<?php 
headerTienda($data);
$arrProducto = $data['producto'];
$arrProductos = $data['productos'];
$arrImages = $arrProducto['images']; 
$rutacategoria = $arrProducto['categoriaid'].'/'.$arrProducto['ruta_categoria'];
$urlShared = base_url()."/tienda/producto/".$arrProducto['idproducto']."/".$arrProducto['ruta'];
 ?>
<!-- breadcrumb_section - start
			================================================== -->
<div class="container maxw_1600">
    <div class="f2_breadcrumb_nav_wrap mt-0 sec_ptb_50">
        <ul class="ce_breadcrumb_nav ul_li clearfix">
            <li><a href="<?= base_url(); ?>">Inicio</a></li>
            <li><a href="<?= base_url().'/tienda/categoria/'.$rutacategoria; ?>"><?= $arrProducto['categoria'] ?></a>
            </li>
            <li><?= $arrProducto['nombre'] ?></li>
        </ul>
    </div>
</div>
<!-- breadcrumb_section - end
			================================================== -->

<!-- electronic_details - start
			================================================== -->
<section class="electronic_details clearfix">
    <div class="container maxw_1600">
        <div class="row mb_50 justify-content-lg-between">
            <div class="col-lg-5">
                <div class="details_image mb_30 position-relative">
                    <div class="tab-content">
                        <?php 
            if(!empty($arrImages)){
                for ($img=0; $img < count($arrImages) ; $img++) { 
                    ?>
                        <div id="di_tab_<?php echo $img + 1; ?>"
                            class="tab-pane <?php echo ($img === 0) ? 'active' : ''; ?>">
                            <div class="image_wrap">
                                <img src="<?php echo $arrImages[$img]['url_image']; ?>" alt="image_not_found">
                            </div>
                        </div>
                        <?php 
                }
            } 
            ?>
                    </div>
                    <ul class="nav ul_li clearfix" role="tablist">
                        <?php 
            if(!empty($arrImages)){
                for ($img=0; $img < count($arrImages) ; $img++) { 
                    ?>
                        <li>
                            <a <?php echo ($img === 0) ? 'class="active"' : ''; ?> data-toggle="tab"
                                href="#di_tab_<?php echo $img + 1; ?>">
                                <img src="<?php echo $arrImages[$img]['url_image']; ?>" alt="image_not_found">
                            </a>
                        </li>
                        <?php 
                }
            } 
            ?>
                    </ul>
                </div>
            </div>


            <div class="col-lg-7">
                <div class="details_content">
                    <div class="d-flex align-items-center justify-content-between mb_15">

                        <span class="instock_text">Disponibilidad: <strong data-text-color="#5bb300">
                                <?= $arrProducto['stock']; ?> stock</strong></span>
                    </div>
                    <h2 class="item_title mb_15"><?= $arrProducto['nombre']; ?></h2>
                    <div class="rating_review_wrap d-flex align-items-center clearfix">
                        <ul class="rating_star ul_li">
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                            <li><i class="fas fa-star"></i></li>
                        </ul>
                        <button type="button" class="add_review_btn">Calificación 5</button>
                    </div>
                    <hr>
                    <p class="mb-2">
                        <?php if(!empty($arrProducto['descripcion'])): ?>
                        <?= $arrProducto['descripcion']; ?>
                        <?php else: ?>
                    <p>No hay descripción para este producto.</p>
                    <?php endif; ?>
                    </p>
                    <span
                        class="item_price mb_15 d-flex align-items-center"><strong><?= SMONEY.formatMoney($arrProducto['precio']); ?></strong>
                    </span>
                    <ul class="btns_group ul_li mb_15 clearfix">
                        <!-- <li>
                            <div class="quantity_input">
                                <form action="#">
                                    <input class="input_number" type="text" value="1">
                                    <span class="input_number_decrement">–</span>
                                    <span class="input_number_increment">+</span>
                                </form>
                            </div>
                        </li> -->
                        <li>
                            <a class="custom_btn bg_electronic_blue"
                                href="https://api.whatsapp.com/send?phone=+51937393701&text= Deseo una cotización de <?= $arrProducto['nombre'].' '.$urlShared ?>"><i
                                    class="fas fa-fa-whatsapp"></i>Cotizar por WhatsApp</a>
                        </li>
                        <li>
                            <ul class="post_share ul_li clearfix">
                                <li><a href="#!" data-text-color="#405aa6"
                                        onclick="window.open('https://www.facebook.com/sharer/sharer.php?u=<?= $urlShared; ?> &t=<?= $arrProducto['nombre'] ?>','ventanacompartir', 'toolbar=0, status=0, width=650, height=450');"><span><i
                                                class="fab fa-facebook-square mr-1"></i> Share</span>
                                        <small>100</small></a></li>
                                <li><a href="https://twitter.com/intent/tweet?text=<?= $arrProducto['nombre'] ?>&url=<?= $urlShared; ?>&hashtags=<?= SHAREDHASH; ?>"
                                        data-text-color="#00acee"><span><i class="fab fa-twitter-square mr-1"></i>
                                            Tweet</span>
                                        <small>58</small></a></li>

                            </ul>
                        </li>
                    </ul>
                    <div class="row align-items-center">
                        <div class="col-lg-5">
                            <div class="product_category_list d-flex align-items-center clearfix">
                                <h4 class="list_title">Categoria:</h4>
                                <ul class="ul_li clearfix">
                                    <li><a
                                            href="<?= base_url().'/tienda/categoria/'.$rutacategoria; ?>"><?= $arrProducto['categoria'] ?></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
</section>



<!-- product_section - start
			================================================== -->
<section class="product_section sec_ptb_100 clearfix">
    <div class="container maxw_1600">
        <div class="electronic_related_products position-relative">
            <h2 class="title_text mb_30">Productos Relacionados</h2>
            <div class="slideshow5_slider row" data-slick='{"dots": false}'>
                <?php 
    if(!empty($arrProductos)){
        foreach ($arrProductos as $producto) { 
            if(count($producto['images']) > 0 ){
                $portada = $producto['images'][0]['url_image'];
            }else{
                $portada = media().'/images/uploads/product.png';
            }
            $ruta = $producto['ruta']; // Asegúrate de tener la variable $ruta definida
    ?>
                <div class="item col">
                    <div class="electronic_product_item">
                        <ul class="product_label ul_li clearfix">
                            <li>Disponible</li>
                        </ul>
                        <div class="item_image">
                            <img style="max-height: 100%;" src="<?= $portada; ?>" alt="image_not_found">
                        </div>
                        <div class="item_content">
                            <span class="item_name"><?= $producto['categoria'] ?></span>
                            <h3 class="item_title">
                                <a
                                    href="<?= base_url().'/tienda/producto/'.$producto['idproducto'].'/'.$ruta; ?>"><?= $producto['nombre']; ?></a>
                            </h3>
                            <span class="item_price"><?= SMONEY.formatMoney($producto['precio']); ?></span>
                        </div>
                    </div>
                </div>
                <?php 
        }
    }   
    ?>
            </div>

            <div class="carousel_nav">
                <button type="button" class="left_arrow5"><i class="fal fa-angle-left"></i></button>
                <button type="button" class="right_arrow5"><i class="fal fa-angle-right"></i></button>
            </div>
        </div>
    </div>
</section>
<section class="feature_section electronic_feature_carousel mb_50 clearfix">
				<div class="slideshow1_slider clearfix" data-slick='{"arrows": false}'>
					<div class="item" data-background="<?= media() ?>/tiendacambio/images/backgrounds/bg_12.jpg">
						<div class="container maxw_1600">
							<div class="row align-items-center justify-content-lg-between">
								<div class="col-lg-7">
									<div class="item_image">
										<img src="<?= media() ?>/tiendacambio/images/feature/electronic/img_01.png" alt="image_not_found">
									</div>
								</div>

								<div class="col-lg-5">
									<div class="item_content">
										<!-- <span class="item_price">
											<strong>£99.00</strong>
											<i>ALL-NEW-SPORT</i>
										</span> -->
										<div class="item_type">
											<span>
												<i>Todas las herramientas</i>
												<small>Disponibles</small>
											</span>
										</div>
										<h3 class="item_title text-white">
											SOMOS TU MEJOR OPCIÓN
										</h3>
										<a href="<?= base_url(); ?>/tienda" class="custom_btn bg_white">Ver Productos</a>
									</div>
								</div>
							</div>
						</div>
					</div>

					
				</div>
			</section>
<!-- product_section - end
			================================================== -->

<?php 
	footerTienda($data);
?>