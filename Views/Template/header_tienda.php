<?php 
	$cantCarrito = 0;
	if(isset($_SESSION['arrCarrito']) and count($_SESSION['arrCarrito']) > 0){ 
		foreach($_SESSION['arrCarrito'] as $product) {
			$cantCarrito += $product['cantidad'];
		}
	}
	$tituloPreguntas = !empty(getInfoPage(PPREGUNTAS)) ? getInfoPage(PPREGUNTAS)['titulo'] : "";
	$infoPreguntas = !empty(getInfoPage(PPREGUNTAS)) ? getInfoPage(PPREGUNTAS)['contenido'] : "";
 ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <title><?= $data['page_tag']; ?></title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <?php 
		$nombreSitio = NOMBRE_EMPESA;
		$descripcion = DESCRIPCION;
		$nombreProducto = NOMBRE_EMPESA;
		$urlWeb = base_url();
		$urlImg = media()."/images/portada.png";
		if(!empty($data['producto'])){
			//$descripcion = $data['producto']['descripcion'];
			$descripcion = DESCRIPCION;
			$nombreProducto = $data['producto']['nombre'];
			$urlImg = $data['producto']['images'][0]['url_image'];
		}
	?>
    <meta property="og:locale" content='es_ES' />
    <meta property="og:type" content="website" />
    <meta property="og:site_name" content="<?= $nombreSitio; ?>" />
    <meta property="og:description" content="<?= $descripcion; ?>" />
    <meta property="og:title" content="<?= $nombreProducto; ?>" />
    <meta property="og:url" content="<?= $urlWeb; ?>" />
    <meta property="og:image" content="<?= $urlImg; ?>" />

    <!--===============================================================================================-->
    <link rel="icon" type="image/png" href="<?= media() ?>/tienda/images/favicon.ico" />

    <!-- fraimwork - css include -->
    <link rel="stylesheet" type="text/css" href="<?= media() ?>/tiendacambio/css/bootstrap.min.css">

    <!-- icon - css include -->
    <link rel="stylesheet" type="text/css" href="<?= media() ?>/tiendacambio/css/fontawesome.css">

    <!-- animation - css include -->
    <link rel="stylesheet" type="text/css" href="<?= media() ?>/tiendacambio/css/animate.css">

    <!-- nice select - css include -->
    <link rel="stylesheet" type="text/css" href="<?= media() ?>/tiendacambio/css/nice-select.css">

    <!-- carousel - css include -->
    <link rel="stylesheet" type="text/css" href="<?= media() ?>/tiendacambio/css/slick.css">
    <link rel="stylesheet" type="text/css" href="<?= media() ?>/tiendacambio/css/slick-theme.css">

    <!-- popup images & videos - css include -->
    <link rel="stylesheet" type="text/css" href="<?= media() ?>/tiendacambio/css/magnific-popup.css">

    <!-- custom - css include -->
    <link rel="stylesheet" type="text/css" href="<?= media() ?>/tiendacambio/css/style.css">
    <link rel="stylesheet" type="text/css" href="<?= media(); ?>/css/style.css">
</head>

<body class="home_electronic">
    <div id="divLoading">
        <div>
            <img src="<?= media(); ?>/images/loading.svg" alt="Loading">
        </div>
    </div>

    <!-- backtotop - start -->
    <div id="thetop"></div>
    <div class="backtotop bg_electronic_blue">
        <a href="#" class="scroll">
            <i class="far fa-arrow-up"></i>
        </a>
    </div>
    <!-- sidebar mobile menu & sidebar cart - start
================================================== -->
    <div class="sidebar-menu-wrapper">
        <!-- <div class="cart_sidebar">
            <button type="button" class="close_btn"><i class="fal fa-times"></i></button>

            <ul class="cart_items_list ul_li_block mb_30 clearfix">
                <li>
                    <div class="item_image">
                        <img src="assets/images/cart/img_01.jpg" alt="image_not_found">
                    </div>
                    <div class="item_content">
                        <h4 class="item_title">Yellow Blouse</h4>
                        <span class="item_price">$30.00</span>
                    </div>
                    <button type="button" class="remove_btn"><i class="fal fa-trash-alt"></i></button>
                </li>

            </ul>

            <ul class="total_price ul_li_block mb_30 clearfix">
                <li>
                    <span>Subtotal:</span>
                    <span>$90</span>
                </li>
                <li>
                    <span>Vat 5%:</span>
                    <span>$4.5</span>
                </li>
                <li>
                    <span>Discount 20%:</span>
                    <span>- $18.9</span>
                </li>
                <li>
                    <span>Total:</span>
                    <span>$75.6</span>
                </li>
            </ul>

            <ul class="btns_group ul_li_block clearfix">
                <li><a href="shop_cart.html">View Cart</a></li>
                <li><a href="shop_checkout.html">Checkout</a></li>
            </ul>
        </div> -->

        <div class="sidebar_mobile_menu">
            <button type="button" class="close_btn"><i class="fal fa-times"></i></button>

            <div class="msb_widget brand_logo text-center">
                <a href="index.html">
                    <img src="<?= media() ?>/tiendacambio/images/logo/logo_16_1x.png"
                        srcset="<?= media() ?>/tiendacambio/images/logo/logo_16_2x.png 2x" alt="logo_not_found">
                </a>
            </div>

            <div class="msb_widget mobile_menu_list clearfix">
                <h3 class="title_text mb_15 text-uppercase"><i class="far fa-bars mr-2"></i> Menu</h3>
                <ul class="ul_li_block clearfix">
                    <li><a href="<?= base_url(); ?>">Inicio</a></li>
                    <li><a href="<?= base_url(); ?>/nosotros">Nosotros</a></li>
                    <li><a href="<?= base_url(); ?>/tienda">Tienda</a></li>
                    <li><a href="<?= base_url(); ?>/contacto">Contacto</a></li>
                </ul>
            </div>

            <div class="user_info">
                <h3 class="title_text mb_30 text-uppercase"><i class="fas fa-user mr-2"></i> INFORMACIÓN DE USUARIO</h3>
                <ul class="settings_options ul_li_block clearfix">
                    <?php if(isset($_SESSION['login'])) { ?>
                    <li>
                        <a href="<?= base_url() ?>/dashboard" target="_blank" style="color:#ff2e1a !impoortant;">
                            <i class="fal fa-user-circle"></i>
                            <span>Mi cuenta</span>
                        </a>
                    </li>
                    <li>
                        <a href="<?= base_url() ?>/logout" style="color:#ff2e1a !impoortant;">
                            <i class="fal fa-sign-out-alt"></i>
                            <span>Salir</span>
                        </a>
                    </li>
                    <?php } else { ?>
                    <li>
                        <a href="<?= base_url() ?>/login" style="color:#ff2e1a !impoortant;">
                            <i class="fal fa-sign-in"></i>
                            <span>Iniciar Sesión</span>
                        </a>
                    </li>
                    <?php } ?>
                </ul>
            </div>

        </div>

        <div class="overlay"></div>
    </div>
    <!-- sidebar mobile menu & sidebar cart - end
================================================== -->
    <!-- header_section - start
		================================================== -->
    <header class="header_section electronic_header clearfix">
        <div class="header_advertisement">
            <img src="<?= media() ?>/images/promogif.gif" alt="image_not_found">
        </div>
        <div class="header_top clearfix">
            <div class="container maxw_1600">
                <div class="row align-items-center">
                    <div class="col-lg-3">
                        <div class="brand_logo">
                            <a class="brand_link" href="<?= base_url(); ?>">
                                <img src="<?= media() ?>/tiendacambio/images/logo/logo_16_1x.png"
                                    srcset="<?= media() ?>/tiendacambio/images/logo/logo_16_2x.png 2x"
                                    alt="logo_not_found">
                            </a>

                            <ul class="mh_action_btns ul_li clearfix">
                                <li>
                                    <button type="button" class="search_btn" data-toggle="collapse"
                                        data-target="#search_body_collapse" aria-expanded="false"
                                        aria-controls="search_body_collapse">
                                        <i class="fal fa-search"></i>
                                    </button>
                                </li>
                                <!-- <li>
                                    <button type="button" class="cart_btn">
                                        <i class="fal fa-shopping-cart"></i>
                                        <span class="btn_badge">2</span>
                                    </button>
                                </li> -->
                                <li><button type="button" class="mobile_menu_btn"><i class="far fa-bars"></i></button>
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <form method="get" action="<?= base_url() ?>/tienda/search">
                            <div class="medical_search_bar">
                                <div class="form_item">
                                    <input type="text" name="s" placeholder="Buscar...">
                                </div>
                                <!-- <div class="option_select">
                                    <select>
                                        <option data-display="All Category">Select A Option</option>
                                        <option value="1">Some option</option>
                                        <option value="2">Another option</option>
                                        <option value="3" disabled>A disabled option</option>
                                        <option value="4">Potato</option>
                                    </select>
                                </div> -->
                                <button type="submit" class="submit_btn zmdi-search" style="background-color: #ffc900 !important;"><i
                                        class="fal fa-search"></i></button>
                            </div>
                        </form>
                    </div>

                    <div class="col-lg-3">
                        <ul class="electronic_action_btns ul_li_right clearfix">
                            <li>
                                <div class="flex-container">
                                    <?php if(isset($_SESSION['login'])) { ?>
                                    <div>
                                        <a href="<?= base_url() ?>/dashboard" target="_blank">
                                            <i class="fa fa-user" aria-hidden="true" style="margin-right: 5px;"></i>
                                            <span>Mi cuenta</span>
                                        </a>
                                    </div>
                                    <div>
                                        <a href="<?= base_url() ?>/logout">
                                            <i class="fa fa-sign-out" aria-hidden="true" style="margin-right: 5px;"></i>
                                            <span>Salir</span>
                                        </a>
                                    </div>
                                    <?php } else { ?>
                                    <div>
                                        <a href="<?= base_url() ?>/login">
                                            <i class="fa fa-sign-in" aria-hidden="true" style="margin-right: 5px;"></i>
                                            <span>Iniciar Sesión</span>
                                        </a>
                                    </div>
                                    <?php } ?>
                                </div>
                            </li>
                            <style>
                            .flex-container {
                                display: flex;
                                justify-content: space-between;
                            }
                            </style>

                            <!-- <li>
                                <button type="button" class="cart_btn">
                                    <span class="counter">2</span>
                                    <i class="fas fa-shopping-cart"></i>
                                    <span>Cart</span>
                                </button>
                            </li> -->
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="search_body_collapse" class="search_body_collapse collapse">
            <div class="search_body">
                <div class="container-fluid prl_90">
                    <form method="get" action="<?= base_url() ?>/tienda/search">
                        <div class="form_item mb-0">
                            <input type="text" name="s" placeholder="Buscar...">
                            <button type="submit" class="submit_btn zmdi-search" style="background-color:#ff3221;"><i class="fal fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        <div class="header_bottom clearfix">
            <div class="container maxw_1600">
                <div class="row align-items-center">
                    <div class="col-lg-8">
                        <nav class="main_menu clearfix">
                            <ul class="ul_li text-uppercase clearfix">
                                <li><a href="<?= base_url(); ?>">Inicio</a></li>
                                <li><a href="<?= base_url(); ?>/nosotros">Nosotros</a></li>
                                <li><a href="<?= base_url(); ?>/tienda">Tienda</a></li>
                                <li><a href="<?= base_url(); ?>/contacto">Contacto</a></li>
                            </ul>
                        </nav>
                    </div>

                    <div class="col-lg-4 d-flex align-items-center justify-content-lg-end">
                        <div class="black_friday text-center">
                            <h3 class="text-uppercase" style="color:#ff3221 !important;">BLACK FRIDAY</h3>
                            <span>¡Consigue un 45% de descuento!</span>
                        </div>
                        <div class="">
                            <a class="custom_btn btn_sm" style="background-color:#25d366;"
                                href="https://wa.me/51937393701" target="_blank">
                                <i class="fab fa-whatsapp" style="margin-right: 8px;"></i> Contactar
                            </a>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- header_section - end