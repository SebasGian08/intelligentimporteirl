<?php 
	/*const BASE_URL = "http://localhost/intelligent_import"; */
	const BASE_URL = "https://intelligentimporteirl.com/"; 

	//Zona horaria
	date_default_timezone_set('America/Lima');

	//Datos de conexión a Base de Datos
	const DB_HOST = "localhost";
	const DB_NAME = "intellig_usuario";
    const DB_USER = "intellig_basededatos";
    const DB_PASSWORD = "{5_?a1QZy847";
	const DB_CHARSET = "utf8";

	//Para envío de correo
	const ENVIRONMENT = 1; // Local: 0, Produccón: 1;

	//Deliminadores decimal y millar Ej. 24,1989.00
	const SPD = ".";
	const SPM = ",";

	//Simbolo de moneda
	const SMONEY = "S/ ";
	const CURRENCY = "SOL";

	//Api PayPal
	//SANDBOX PAYPAL
	const URLPAYPAL = "https://api-m.sandbox.paypal.com";
	const IDCLIENTE = "";
	const SECRET = "";
	//LIVE PAYPAL
	//const URLPAYPAL = "https://api-m.paypal.com";
	//const IDCLIENTE = "";
	//const SECRET = "";

	//Datos envio de correo
	const NOMBRE_REMITENTE = "Tienda Virtual";
	const EMAIL_REMITENTE = "no-reply@empresa.com";
	const NOMBRE_EMPESA = "Tienda Virtual";
	const WEB_EMPRESA = "Licoreria.com";

	const DESCRIPCION = "Tienda Virtual";
	const SHAREDHASH = "Tienda Virtual";

	//Datos Empresa
	const DIRECCION = "Tienda Online";
	const TELEMPRESA = "+51925499717";
	const WHATSAPP = "+51925499717";
	const EMAIL_EMPRESA = "ventas@empresa.com";
	const EMAIL_PEDIDOS = "ventas@empresa.com"; 
	const EMAIL_SUSCRIPCION = "ventas@empresa.com";
	const EMAIL_CONTACTO = "ventas@empresa.com";

	const CAT_SLIDER = "1,2,3";
	const CAT_CATEGORIAS = "4,5,6,7,8,9,10,11,12,13,14";
	const CAT_BANNER = "15,16,17";
	const CAT_FOOTER = "7,8,9,10";

	//Datos para Encriptar / Desencriptar
	const KEY = 'abelosh';
	const METHODENCRIPT = "AES-128-ECB";

	//Envío
	const COSTOENVIO = 5;

	//Módulos
	const MDASHBOARD = 1;
	const MUSUARIOS = 2;
	const MCLIENTES = 3;
	const MPRODUCTOS = 4;
	const MPEDIDOS = 5;
	const MCATEGORIAS = 6;
	const MSUSCRIPTORES = 7;
	const MDCONTACTOS = 8;
	const MDPAGINAS = 9;

	//Páginas
	const PINICIO = 1;
	const PTIENDA = 2;
	const PCARRITO = 3;
	const PNOSOTROS = 4;
	const PCONTACTO = 5;
	const PPREGUNTAS = 6;
	const PTERMINOS = 7;
	const PSUCURSALES = 8;
	const PERROR = 9;

	//Roles
	const RADMINISTRADOR = 1;
	const RSUPERVISOR = 2;
	const RCLIENTES = 3;

	const STATUS = array('Completo','Aprobado','Cancelado','Reembolsado','Pendiente','Entregado');

	//Productos por página
	const CANTPORDHOME = 10;
	const PROPORPAGINA = 32;
	const PROCATEGORIA = 32;
	const PROBUSCAR = 32;

	//REDES SOCIALES
	const FACEBOOK = "https://www.facebook.com/profile.php?id=61560998158784";
	const INSTAGRAM = "https://www.instagram.com/ismcmineriajye_eirl/";