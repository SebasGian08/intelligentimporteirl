<?php 
headerTienda($data);
$arrProductos = $data['productos'];
 ?>
<!-- product_section - start
			================================================== -->
<section class="product_section sec_ptb_100 clearfix">
    <div class="container maxw_1600">
        <div class="row justify-content-lg-between">

            <div class="col-lg-12 order-last">

                <div class="tab-content mb_50">
                    <div id="grid_layout" class="tab-pane active">
                        <ul class="electronic_product_columns ul_li has_4columns clearfix">
                            <?php 
                            if(!empty($arrProductos)){
                                for ($p=0; $p < count($arrProductos); $p++) { 
                                    $ruta = $arrProductos[$p]['ruta'];
                                    if(count($arrProductos[$p]['images']) > 0 ){
                                        $portada = $arrProductos[$p]['images'][0]['url_image'];
                                    } else {
                                        $portada = media().'/images/uploads/product.png';
                                    }
                            ?>
                            <li>
                                <div class="electronic_product_item">
                                    <ul class="product_label ul_li clearfix">
                                        <li>Disponible</li>
                                    </ul>
                                    <div class="item_image">
                                        <img style="max-height: 100%;" src="<?php echo $portada; ?>"
                                            alt="Product Image">
                                    </div>
                                    <div class="item_content">
                                        <span class="item_name"><?php echo $arrProductos[$p]['categoria']; ?></span>
                                        <h3 class="item_title">
                                            <a
                                                href="<?php echo base_url().'/tienda/producto/'.$arrProductos[$p]['idproducto'].'/'.$ruta; ?>">
                                                <?php echo $arrProductos[$p]['nombre']; ?>
                                            </a>
                                        </h3>
                                        <span class="item_price">
                                            <?= SMONEY.formatMoney($arrProductos[$p]['precio']); ?>
                                        </span>
                                    </div>
                                </div>
                            </li>
                            <?php 
                            }
                            } else {
                                echo "<p>No hay productos para mostrar <a href='".base_url()."/tienda'>Ver productos</a></p>";
                            } 
                            ?>
                        </ul>
                    </div>
                </div>

                <div class="abtn_wrap text-center mb_50">
                    <?php 
    if (count($data['productos']) > 0) {
        $prevPagina = $data['pagina'] - 1;
        $nextPagina = $data['pagina'] + 1;
    ?>
                    <div class="flex-c-m flex-w w-full p-t-45">
                        <?php if ($data['pagina'] > 1) { ?>
                        <a href="<?= base_url() ?>/tienda/categoria/<?= $data['infoCategoria']['idcategoria'].'/'.$data['infoCategoria']['ruta'].'/'.$prevPagina ?>"
                            class="custom_btn btn_border border_electronic">
                            <i class="fas fa-chevron-left"></i> &nbsp; Anterior
                        </a>&nbsp;&nbsp;
                        <?php } ?>
                        <?php if ($data['pagina'] != $data['total_paginas']) { ?>
                        <a href="<?= base_url() ?>/tienda/categoria/<?= $data['infoCategoria']['idcategoria'].'/'.$data['infoCategoria']['ruta'].'/'.$nextPagina ?>"
                            class="custom_btn btn_border border_electronic">
                            <?php if ($data['pagina'] > 1) { ?>
                            <span>Siguiente &nbsp; <i class="fas fa-chevron-right"></i></span>
                            <?php } else { ?>
                            <span>Cargar más</span>
                            <?php } ?>
                        </a>
                        <?php } ?>
                    </div>
                    <?php 
    }
    ?>
                </div>



            </div>
        </div>
    </div>
</section>


<?php 
	footerTienda($data);
?>