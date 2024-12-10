<?php 
headerTienda($data);
$arrProductos = $data['productos'];
 ?>

<!-- breadcrumb_section - start
			================================================== -->
<div class="container maxw_1600">
    <div class="f2_breadcrumb_nav_wrap mt-0 sec_ptb_50">
        <ul class="ce_breadcrumb_nav ul_li clearfix">
            <li><a href="<?= base_url(); ?>">Inicio</a></li>
            <li>Tienda</li>
        </ul>
    </div>
</div>
<!-- breadcrumb_section - end
			================================================== -->
<!-- product_section - start
			================================================== -->
<section class="product_section sec_ptb_10 clearfix">
    <div class="container maxw_1600">
        <div class="row justify-content-lg-between">
            <div class="col-lg-12 order-last">
                <div class="tab-content mb_50">
                    <div id="grid_layout" class="tab-pane active">

                        <ul class="electronic_product_columns ul_li has_4columns clearfix">
                            <?php
							if(count($arrProductos) > 0 ){ 
								for ($p=0; $p < count($arrProductos); $p++) { 
									$ruta = $arrProductos[$p]['ruta'];
									if(count($arrProductos[$p]['images']) > 0 ){
										$portada = $arrProductos[$p]['images'][0]['url_image'];
									}else{
										$portada = media().'/images/uploads/product.png';
									}
							?>
                            <li>
                                <div class="electronic_product_item">
                                    <ul class="product_label ul_li clearfix">
                                        <li>Disponible</li>
                                    </ul>
                                    <div class="item_image">
                                        <img style="max-height: 100%;" src="<?= $portada ?>" alt="image_not_found">
                                    </div>
                                    <div class="item_content">
                                        <span class="item_name"> <?= $arrProductos[$p]['categoria'] ?></span>
                                        <h3 class="item_title">
                                            <a
                                                href="<?= base_url().'/tienda/producto/'.$arrProductos[$p]['idproducto'].'/'.$ruta; ?>"><?= $arrProductos[$p]['nombre'] ?></a>
                                        </h3>
                                        <span class="item_price">
                                            <?= SMONEY.formatMoney($arrProductos[$p]['precio']); ?></span>
                                    </div>
                                </div>
                            </li>
                            <?php }

        }else{
        ?>
                            <p>No hay productos para mostrar <a href="<?= base_url() ?>/tienda"> Ver productos</a></p>
                            <?php } ?>

                        </ul>

                    </div>


                </div>

                <?php 
					if(count($data['productos']) > 0){
						$prevPagina = $data['pagina'] - 1;
						$nextPagina = $data['pagina'] + 1;
					?>
                <div class="flex-c-m flex-w w-full p-t-45">
                    <?php if($data['pagina'] > 1){ ?>
                    <a href="<?= base_url() ?>/tienda/page/<?= $prevPagina ?>"
                        class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                        <i class="fas fa-chevron-left"></i> &nbsp; Anterior
                    </a>&nbsp;&nbsp;
                    <?php } ?>
                    <?php if($data['pagina'] != $data['total_paginas']){ ?>
                    <a href="<?= base_url() ?>/tienda/page/<?= $nextPagina ?>"
                        class="flex-c-m stext-101 cl5 size-103 bg2 bor1 hov-btn1 p-lr-15 trans-04">
                        Siguiente &nbsp; <i class="fas fa-chevron-right"></i>
                    </a>
                    <?php } ?>
                </div>
                <?php 
					}
					?>

            </div>



        </div>
    </div>
</section>

<?php 
	footerTienda($data);
?>