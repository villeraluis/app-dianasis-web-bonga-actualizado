<?php


function vParamTransporte($pos)
{
   $ar = [
      0 =>  'IDMARCAVEHI', //      'Parametros marca de vehiculo
      1 =>  'IDCLASEVEHI', //      'Parametros clase de vehiculo
      2 =>  'IDLINEASERV', //      'Parametros linea de servicio
      3 =>  'IDGRUPOCAPA', //      'Parametros grupo capacidad
      4 =>  'IDTIPOCOMBU', //      'Parametros tipo de combustible
      5 =>  'IDNIVELSERV', //      'Parametros nivel de servicio
      6 =>  'IDTIPOCONDU', //      'Parametros tipo de conductor
      7 =>  'IDTIPORECAU', //      'Parametros tipo de recaudo
      8 =>  'IDRECORRIDORUTA', //  'Parametros recorrido de ruta
      9 =>  'PLAINDIVIDUAL', //    'Parametros Id PLanilla Individual
      10 => 'PLAPAQUETE', //      'Parametros Id planilla Paquete
      11 => 'PLASEGURO', //       'Parametros Id Seguro
      12 => 'IDPROPIETARIOS', //  'Parametros tipo de terceros para propietarios
      13 => 'PLANILLAADM', //     'Parametros codigo tipo de recaudo por planilla
      14 => 'PLANILLAAPORTES', // 'Parametros codigo tipo de recaudo por Aportes
      15 => 'IDCAJARECAUDO', //   'Parametros codigo de la caja recaudo especial
      16 => 'IDRUTADESTINOS', //  'Parametros tabla de destino
      17 => 'IDCODNOVPLANI', //   'Parametros codigo tipo de novedades de planilla
      18 => 'DIACONTROLPAQ', //   'Parametros CONTROL PARA COMPRAR PAQUETE DE PLANILLA
      19 => 'IDEVAPLANILLA', //   'Parametros PARA IDENTIFICAR EVASION DE PLANILLA
      20 => 'APQ', //                                            'Parametros PARA IDENTIFICAR ANTICIPO DE PLANILLA
      21 => '15', //                                              'Parametros DIAS MAXIMOS PARA EXTENCION DE PLANILLA
      22 => 'CUENTAACUERDO', //   'parametros QUE CUENTA QUE CONTIENE LA CUENTA DE ACUERDOS DE PAGOS
      23 => 'DIASCONTROLMTO', //  'DIAS PARA CONTROL DE ALISTAMIENTO
      24 => 'SWBLOQUEOALMTO', //  'DIAS PARA CONTROL DE ALISTAMIENTO
      25 => 'CUENTAPUENTEPRO', // 'CUENTA QUE CONTIENE LA CUENTA PUENTE PARA CAMBIO DE PROPIETARIOS
      26 => 'SWCONTROLVELOCI', //  'SW CONTROL DE VELOCIDAD (0= NO BLOQUEA ; 1=BLOQUEA)
      27 => 'SWCONTROLTIEMPO', //  'SW CONTROL DE TIEMPO    (0= NO BLOQUEA ; 1=BLOQUEA)
      28 => 'PORABONOTIEMPO', //  '% DE ABONO CONTROL DE TIEMPO
      29 => 'PORABONOVELOCI', //  '% DE ABONO CONTROL DE VELOCIDAD
      30 => 'VALORMINUTO', //     'VALOR DEL MINUTO (PUNTO DE CONTROL)
      31 => 'VALORVELOCIDAD', //  'VALOR POR EXCESO DE VELOCIDAD
      32 => 'RECAUDOTIEMPO', //   'CONCEPTO DE RECAUDOS POR TIEMPO
      33 => 'RECAUDOVELOCI', //    'CONCEPTO DE REACUDO POR VELOCIDAD
      34 => 'CEDULAINGMECANI', //   'IDENTIFICACION DEL ING. MECANICO PARA ALISTAMIENTO
      35 => 'SWCONTROLMANTEN', //    'SW CONTROL DE MANTENIMIENTO (0= NO BLOQUEA (NOTIFICA) ; 1=BLOQUEA)
      36 => 'DOCPLADESPACHO', //    'CODIGO DE LA CLASE DE DOCUMENTO DE LAS PLANILLAS DE DESPACHO
      37 => 'DOCPLAOCASIONAL', //   'CODIGO DE LA CLASE DE DOCUMENTO DE LAS PLANILLAS DE DESPACHO PARA VIAJES OCASIONALES
      38 => 'IDCATEGORIACOND', //   'ID DE LA TABLA DE CATEGORIA DE CONDUCCIÓN}
      39 => 'DIASMANTENIMIEN', //   'DIAS DE MANTENIMIENTO
      40 => 'CTLAPORTEDIARIO', //   'CONTROLAR APORTES DIARIOS
      41 => 'DIAFECHAVENSEGU', //   'NOTIFICAR FECHA DE VENCIMIENTO DE LOS SEGURO CONTRACTUAL Y EXATRACONTRACTUAL
      42 => 'PORCENTAJEPRO', //     'PORCENTAJE DE PROPINA POR RECAUDOS DE MIUNTOS
      43 => 'PORCENTAJEADM', //     'PORCENTAJE DE ADM DE SOTRACOR POR REACUDOS DE MINUTOS
      44 => 'PORPROPINAADM', //     'PORCENTAJE DE PROPINA DEPENDIENDO DE ADMINISTRACION
      45 => 'PREPLAESPECIAL', //   'PREFIJO DE LA PLANILLA DE VIAJE ESPECIAL
      46 => 'CONTRATOSERVCIO', //   'CONTRATO DE SERVICIO DE TRANSPORTE
      47 => 'ENCUESTASERVIC', //   'ENCUESTA DE SATSIFACION
      48 => 'CTLFECHACONTRAN', //   'CONTROLAR FECHA DE CONTRATOS DE TRANSPORTE
      49 => 'RECAUDOCARTERA', //   'CODIGO DEL CONCEPTO DE RECAUDO DE CARTERA
      50 => 'SWCONTRATOSERV', //   'SW PARA CONTROLAR EL SERVICIO ESPECIAL CON CONTRATO(0 = NO, 1 = SI)
      51 => 'TIQUETEDEFAUL', //    'SW PARA CONTROLAR EL SERVICIO ESPECIAL CON CONTRATO(0 = NO, 1 = SI)
      52 => 'COVID19', //    'SW PARA IMPRIMIR MENSAJE DE COVID 19 EN TIQUETES
      53 => 'SWCONTRLCARTERA', //   'SW PARA CONTROLAR CARTERA POR INTERVALOR y CARTERA GENERAL
      54 => 'TOPECARTERA', //      'MONTO DE LA CARTERA POR INTERVALO
      55 => 'IDAPORTEDIARIO', //   'ID DEL CONCEPTO DE APORTE DIARIO
      56 => 'RECAUDOFRPPL', //     'ID DEL CONCEPTO DE FONDO DE REPOSICION PL
      57 => 'HABENCUESTA', //    'ACTIVAR PREGUNTA DE ENCUESTA EN DESPACHO 0=NO , 1=SI
      58 => 'PREGUNTENCUESTA', //  'DESCRIPCIÓN DE LA PREGUNTA
      59 => 'CTLAPORTEDIAANT', //  'CONTROLAR APORTES DIA ANTERIOR ANTES DE EMITIR CONCEPTOS DE PLANILLA
      60 => 'SERVIDORWEB', //  'RUTA DE SERVICIOS WEB - GENERAR PDF
   ];

   return  Obtener_Parametros($ar[$pos]);
}

function tranVParametros($pos)
{


   //'*** Nuevo enfoque de los comprobantes
   $ar = [
      0 => "IDORDENCOM",  //      'Comprobante de Orden de COMPRAS
      3 => "IDVENTAS",  //        'Comprobante Factura de ventas
      8 => "IDDEVVENTAS",  //     'Comprobante devoluciones en ventas
      12 => "IDNOTADEBCAR",  //   'Comprobante de Nota debito cartera
      10 => "IDRECIBOCAJA",  //   'Comprobante recibo de caja
      11 => "IDNOTACRECAR",  //   'Comprobante Nota credio cartera
      1 => "IDCOMPRAS",  //       'Comprobante compras de Inventario
      9 => "IDDEVCOMPRAS",  //    'Comprobante devoluciones en compras
      13 => "IDEGREBANCO",  //    'Comprobante egreso de banco
      14 => "IDEGRECAJA",  //     'Comprobante egreso de caja
      15 => "IDNOTACREPRO",  //   'Comprobante Nota credio Proveedores
      16 => "IDNOTADEBPRO",  //   'Comprobante Nota debito Proveedores
      25 => "IDINGREBANCO",  //   'Comprobante Ingreso Banco
      26 => "IDCAJAMENOR",  //    'Comprobante de caja menor
      2 => "IDAJUSTES",  //        'Comprobante Ajustes de Inventario
      36 => "IDADICIONACTIVO",  //'Comprobante de Adiciones a Activos Fijos
      37 => "IDAJUSTESACTIVO",  //'Comprobante de Ajuste0s a Activos Fijos
      38 => "IDTIQUETE",  //      'Comprobante del tiquete de ventas
      49 => "IDPRODUCCION",  //   'Comprobante del tiquete de produccion
      50 => "ORDPEDIDO",  //      'Comprobante de orden de pedido
      45 => "IDCAJAMINIBAR",  //  'Parametros para Recibo de Caja de MiniBar
      48 => "NOTACONTABLE",  //   'parametro de nota contable Para
      64 => "IDREMISIONES",  //   'Comprobante de Remisiones a clientes
      65 => "CAJAMENORPROVE",  // 'CONCEPTO DE CAJA MENOR PARA CRUZAR A PROVEEDORES
      66 => "INFCOSMAYORPRE",  // 'INFORMAR SI EL COSTO ES MAYOR AL PRECIO DE VENTA (0.NO, 1.SI)
      73 => "IDDCTOEQUIVALE",  // 'COMPROBANTE PARA DOCUMENTOS EQUIVALENTE A LA FACTURA

      //ARAMETROS PARA EL CONTROL DE PERIODOS ***
      67 => "SWPERCOMPRASVAR", //    'SW PARA CONTROLAR PERIODO EN COMPRAS VARIAS (0. SI - 1. NO)
      68 => "SWPERRECIBOCAJA", //    'SW PARA CONTROLAR PERIODO EN RECIBOS DE CAJA (0. SI - 1. NO)
      69 => "SWPERINGRESOBAN", //    'SW PARA CONTROLAR PERIODO EN INGRESOS A BANCO (0. SI - 1. NO)
      70 => "SWPEREGRESOCAJA", //    'SW PARA CONTROLAR PERIODO EN EGRESOS DE CAJA (0. SI - 1. NO)
      71 => "SWPEREGRESOBANC", //    'SW PARA CONTROLAR PERIODO EN EGRESOS DE BANCO (0. SI - 1. NO)
      72 => "CTARETEFUENTE", //    'CUENTA DE RETEFUENTE (Ej: 2365)
      74 => "SWCDA", //            'LA EMPRESA ES UN CDA (0.NO - 1.SI)
      75 => "BUSQUEDAPRODUCT", //  'SW VENTANA DE BUSQUEDA DE PRODUCTOS POR PALABRAS (0.NO - 1.SI)
      76 => "BOTONESPOS", //       'SW MOSTRAR BOTONES POS EN FORMULARIO PRINCIPAL (0.NO - 1.SI)
      77 => "CODIGOADMIS", //  'CODIGO DE ADMISTRACION PARA AIU
      78 => "CODIGOUTILIDAD", //  'CODIGO DE UTILIDAD PARA AIU
      79 => "CODIGOIMPREVIST", //  'CODIGO DE IMPREVISTO PARA AIU
      80 => "CODIGOFORVENTA", //   'CODIGO FORMULARIO DE VENTAS PARA BOTON VENTAS DEL MENU PRINCIPAL
      81 => "COMPVENTANOCONT", //  'CODIGO COMPROBANTE DE VENTA QUE NO CONTABILIZA (REMISION)
      82 => "RESPONSAFISCAL", //  'RESPONSABILIDAD FISCAL POR DEFECTO EN TERCEROS (R-99-PN)
      83 => "IDENTIFITRIBUT", //  'IDENTIFICADOR TRIBUTARIO POR DEFECTO EN TERCEROS (ZY)

      //'******************
      46 => "28", //                                              'Parametro TRASLADO DE CAJA PUNTOS DE RECAUDO
      39 => "IDCONPROVEEDOR", //  'Parametros de concepto de proveedores para compra de mercancia
      //'******************************************

      //'****** PARAMETROS PARA LA VENTA ************************
      // vParametrosVenta(0) = Obtener_Parametros("BODEGAVENTA", Empresa, 1)   'Parametros de ventas - Bodega
      40 => "PUNTOPRINCIPAL", //   'Parametros para el almacen principal
      //'**************************************
      41 => "IDPLANILLA", //       'Parametros para planillas de recaudo
      42 => "IDNOVEPLANILLA", //   'Parametros para novedades de planilla
      ///*************** */

      19 => "PLANILLAVEN", //    'Planilla del vendedores (empresa de ventas en rutas)
      20 => "BODEGAPRIN", //     'Bodega Principal
      23 => "CONSECHEQUE", //    'Aumenta consecutivo de cheque
      24 => "PLANOFACTURA", //   'Comprobante para importar facturas (no se utiliza)
      27 => "NITCOSTOINV", //    'Indica si se Utiliza el nit de la empresa para el inv y el costo en las ventas
      28 => "VENTACONTADO", //   'Indica si va llevar a cartera las ventas de contado (1- llevar a cartera)
      29 => "NITDIAN", //        'NIT DE LA DIAN
      43 => "MANEJAAIU", //   'Parametros de venta para empresas que manejan AIU por defecto 0:no maneja
      44 => "PORCENTAJECREE", //   'Parametros de porcentaje para autorretencion CREE
      47 => "SALDOCAJA", //    'parametro para buscar el saldo de caja
      51 => "INVNEGATIVO", //    'SE PUEDEN REALIZAR VENTAS SIN EXISTENCIA DE PRODUCTOS (0. NO, 1 SI)
      52 => "EDADMAXIMA", //    'EDAD MAXIMA PARA CONTRATACION
      53 => "CLAVECONTRATO", //    'CLAVE DE APROBACION DE CONTRATOS CON EDAD MAXIMA
      54 => "IMPOCONSUMO", //    'FACTURA IMPOCONSUMO (0.NO - 1.SI)
      55 => "PORCINTEREANUAL", //    'PORCENTAJE DE INETRESES ANUAL
      56 => "FECHACORTEPROVE", //    'FECHA CORTE MODULO PROVEEDORES PARA LISTADOS
      57 => "CANTDECIMALES", //      'NUMERO DECIMALES UTILIZADOS EN CANTIDADES DE INVENTARIO
      58 => "TIQUETETEMPORAL", //    'IMPRIMIR TIQUETE TEMPORAL EN VENTAS POS (1.NO, 0.SI)
      59 => "DESVENTAMINIBAR", //    'DESCRIPCION DE VENTAS MINIBAR
      60 => "LISTADEPRECIOS", //     'UTILIZAR LISTA DE PRECIOS (0 = NO , 1 = SI)
      61 => "CONTROLARCUPOCR", //    'CONTROLAR CUPO DE CREDITO (0 = NO , 1 = SI)
      62 => "BLOQPORCDESCVEN", //    'BLOQUEAR PORCENTAJE DESCUENTO EN VENTA (0.SI, 1.NO)
      63 => "HABFECHAFACORDE", //    'HABILITAR FECHA DE FACTURACIÓN DE ORDEN DE SERVICIOS
      84 => "IDCOTIZACIONES", //     'COMPROBANTE PARA COTIZACIONES
      85 => "SWSOBRETASATERP", //    'APLICA SOBRETASA TERPEL EN LAS COMPRAS DE INVENTARIO (0.NO, 1.SI)
      86 => "ENTIDADEPS", //         'APLICA PARA LA EMPRESAS DE EPS (0.NO, 1.SI)
      88 => "IMPRIMIRCARTERA", //    'IMPRIMIR CARTERA EN VENTAS (EN LA OBSERVACIÓN) (0.NO, 1.SI)
      89 => "HABRETENCIONES", //    'HABILITAR RETENCIONES EN LA INTREFAZ DE VENTAS (0.NO, 1.SI)
      90 => "DESCRICARTERA", //     'DESCRIPCIÓN DEL MENSAJE DE CARTERA A MOSTRAR EN LA FACRURA
      91 => "CUENTAANTICIPO", //     'CUENTA CONTABLE PARA ANTICIPOS DE CLIENTES
      92 => "IMBOLSAPLASTICA", //    'IMPUESTO DE BOLSA PLASTICA - CODIGO DEL PRODUCTO DE LA BOLSA
      93 => "DIASDOCDIAN", //        'NUMERO DE DIAS PARA REVISIÓN DE FACTURAS ELECTRONICAS
      94 => "IDCIERRERETEFU", //     'COMPROBANTE DE CIERRE CUENTAS DE RETEFUENTE
      95 => "CODIGOFORRECCA", //   'CODIGO FORMULARIO DE VENTAS PARA BOTON RECIBO CAJA DEL MENU PRINCIPAL
      96 => "CODIGOFORINGBA", //   'CODIGO FORMULARIO DE VENTAS PARA BOTON INGRESO BANCO DEL MENU PRINCIPAL
      97 => "CODIGOFOREGRCA", //   'CODIGO FORMULARIO DE VENTAS PARA BOTON EGRESO CAJA DEL MENU PRINCIPAL
      98 => "CODIGOFOREGRBA", //   'CODIGO FORMULARIO DE VENTAS PARA BOTON EGRESO BANCO DEL MENU PRINCIPAL
      99 => "REQORDENCOMPRA", //  'SOLICITA ORDEN DE COMPRAS EN LA VENTAS
      100 => "COBERTURAEPS", //  'COBERTURA ENTIDADES DE SALUD
      101 => "MODALIDADEPS", //  'MODALIDAD DE CONTRATO ENTIDADES DE SALUD
      102 => "FECFINFACTURA", //  'FECHA FINAL DE FACTURACION - ENTIDADES DE SALUD
      103 => "DIASCREDITOS", //  'DIAS PARA FACTURAS A CREDITO - ENTIDADES DE SALUD
      104 => "CODHORTIFRUTI", // 'CODIGO DE PARAMETRO TRIBUTARIO DE HORTICFRUTICULA
      105 => "SWINTERFDIAN", //  'SW MOSTAR INTERFAZ DIAN EN FRAS NO ELECTRONICAS (0.NO - 1.SI)
      106 => "SWCAMBIARVEND", // 'SW PUEDE CAMBIAR EL VENDEDOR EN VENTAS (0. NO, 1 SI)
      107 => "IDCLASEPRODUCTO", // 'PARAMETROS PARA LA CLASE DE PRODUCTOS DE EMPAQUES - PRODUCCION
      108 => "PRODUCNEGATIVO", //  'MANEJO DE INVENTARIO NEGATIVO EN PRODUCCION (0.NO - 1.SI)
      109 => "SWSUCURSALCLIE", // 'UTILIZAR SUCURSAL DE CLIENTES EN VENTAS (0.NO - 1.SI)
      110 => "RUTAERRORES", //   'RUTA PARA GENERACION DE ARCHIVO DE ERRORES
      111 => "CONCARNDBONGA", //  'CONCEPTO DE CARTERA PARA NOTA DEBITO AUTOMATICA BONGA
      112 => "IDCOMPCONBONGA", // 'COMPROBANTE CONTABLE BONGA PARA NOTA DEBITO AUTOMATICA
      113 => "IDNDAUTBONGA", //  'COMPROBANTE NOTA DEBITO CARTERA AUTOMATICA BONGA DESDE CONTABILIDAD
      114 => "PORCPROPINA", //  'PORCENTAJE DE PROPINA A COBRAR FRAS POS
      115 => "HABSALARIOBASL", //  'HABILITAR SALARIO BASE EM VACACIONES Y CESANTIAS
      116 => "VENTANAMAXIMI", //  'UTILIZAR VENTANAS MAXIMIZADAS (0.NO - 1.SI) DEFECTO 0.NO
      117 => "CUENTAANTPROV", //  'CUENTA CONTABLE PARA ANTICIPOS DE PROVEEDORES
      118 => "PYGEMPRESA", //  'PYG DE LA EMPRESA PARTICIPAR (CUENTAS DIFERENTES) (0.OTRAS EMPRESAS - 1.PARTICIPAR)
      119 => "HABPORRETENCION", //  'HABILITAR PORCENTAJE Y BASE DE RETENCION POR SERVICIOS EN LAS VENTAS (0=NO - 1=SI)
      120 => "DCTOSOPORTENUE", //  'UTILIZAR DOCUMENTO SOPORTE NUEVO (0=NO - 1=SI)
      121 => "HABVENDEDORES", //  'SW HABILITAR USUARIO COMO VENDEDOR EN LA INTERFAZ DE VENTAS (0=NO - 1=SI)
      122 => "HABDEVOLSINPROD", //  'SW HABILITAR DEVOLUCIONES SIN PRODUCTOS (0=NO - 1=SI)
      123 => "SWPROGRAMABONGA", //  'UTILIZAR PROGRAMAS BONGA (0.NO - 1.SI)


   ];

   if($pos== '46'){
      return ($ar[$pos]) ;
   }
  
   return Obtener_Parametros($ar[$pos]) ;
 
  
}

/* '*** Nuevo enfoque de los comprobantes
        vParametros(0) = Obtener_Parametros("IDORDENCOM", Empresa, 1)        'Comprobante de Orden de COMPRAS
        vParametros(3) = Obtener_Parametros("IDVENTAS", Empresa, 1)          'Comprobante Factura de ventas
        vParametros(8) = Obtener_Parametros("IDDEVVENTAS", Empresa, 1)       'Comprobante devoluciones en ventas
        vParametros(12) = Obtener_Parametros("IDNOTADEBCAR", Empresa, 1)     'Comprobante de Nota debito cartera
        vParametros(10) = Obtener_Parametros("IDRECIBOCAJA", Empresa, 1)     'Comprobante recibo de caja
        vParametros(11) = Obtener_Parametros("IDNOTACRECAR", Empresa, 1)     'Comprobante Nota credio cartera
        
        vParametros(1) = Obtener_Parametros("IDCOMPRAS", Empresa, 1)         'Comprobante compras de Inventario
        vParametros(9) = Obtener_Parametros("IDDEVCOMPRAS", Empresa, 1)      'Comprobante devoluciones en compras
        vParametros(13) = Obtener_Parametros("IDEGREBANCO", Empresa, 1)      'Comprobante egreso de banco
        vParametros(14) = Obtener_Parametros("IDEGRECAJA", Empresa, 1)       'Comprobante egreso de caja
        vParametros(15) = Obtener_Parametros("IDNOTACREPRO", Empresa, 1)     'Comprobante Nota credio Proveedores
        vParametros(16) = Obtener_Parametros("IDNOTADEBPRO", Empresa, 1)     'Comprobante Nota debito Proveedores
        vParametros(25) = Obtener_Parametros("IDINGREBANCO", Empresa, 1)     'Comprobante Ingreso Banco
        vParametros(26) = Obtener_Parametros("IDCAJAMENOR", Empresa, 1)      'Comprobante de caja menor
        vParametros(2) = Obtener_Parametros("IDAJUSTES", Empresa, 1)          'Comprobante Ajustes de Inventario
        vParametros(36) = Obtener_Parametros("IDADICIONACTIVO", Empresa, 1)  'Comprobante de Adiciones a Activos Fijos
        vParametros(37) = Obtener_Parametros("IDAJUSTESACTIVO", Empresa, 1)  'Comprobante de Ajuste0s a Activos Fijos
        vParametros(38) = Obtener_Parametros("IDTIQUETE", Empresa, 1)        'Comprobante del tiquete de ventas
        vParametros(49) = Obtener_Parametros("IDPRODUCCION", Empresa, 1)     'Comprobante del tiquete de produccion
        vParametros(50) = Obtener_Parametros("ORDPEDIDO", Empresa, 1)        'Comprobante de orden de pedido
        vParametros(45) = Obtener_Parametros("IDCAJAMINIBAR", Empresa, 1)    'Parametros para Recibo de Caja de MiniBar
        vParametros(48) = Obtener_Parametros("NOTACONTABLE", Empresa, 1)     'parametro de nota contable Para
        vParametros(64) = Obtener_Parametros("IDREMISIONES", Empresa, 1)     'Comprobante de Remisiones a clientes
        vParametros(65) = Obtener_Parametros("CAJAMENORPROVE", Empresa, 1)   'CONCEPTO DE CAJA MENOR PARA CRUZAR A PROVEEDORES
        vParametros(66) = Obtener_Parametros("INFCOSMAYORPRE", Empresa, 1)   'INFORMAR SI EL COSTO ES MAYOR AL PRECIO DE VENTA (0.NO, 1.SI)
        vParametros(73) = Obtener_Parametros("IDDCTOEQUIVALE", Empresa, 1)   'COMPROBANTE PARA DOCUMENTOS EQUIVALENTE A LA FACTURA
        
        '*PARAMETROS PARA EL CONTROL DE PERIODOS ***
        vParametros(67) = Obtener_Parametros("SWPERCOMPRASVAR", Empresa, 1)    'SW PARA CONTROLAR PERIODO EN COMPRAS VARIAS (0. SI - 1. NO)
        vParametros(68) = Obtener_Parametros("SWPERRECIBOCAJA", Empresa, 1)    'SW PARA CONTROLAR PERIODO EN RECIBOS DE CAJA (0. SI - 1. NO)
        vParametros(69) = Obtener_Parametros("SWPERINGRESOBAN", Empresa, 1)    'SW PARA CONTROLAR PERIODO EN INGRESOS A BANCO (0. SI - 1. NO)
        vParametros(70) = Obtener_Parametros("SWPEREGRESOCAJA", Empresa, 1)    'SW PARA CONTROLAR PERIODO EN EGRESOS DE CAJA (0. SI - 1. NO)
        vParametros(71) = Obtener_Parametros("SWPEREGRESOBANC", Empresa, 1)    'SW PARA CONTROLAR PERIODO EN EGRESOS DE BANCO (0. SI - 1. NO)
        
       '******************
        vParametros(72) = Obtener_Parametros("CTARETEFUENTE", Empresa, 1)    'CUENTA DE RETEFUENTE (Ej: 2365)
        vParametros(74) = Obtener_Parametros("SWCDA", Empresa, 1)            'LA EMPRESA ES UN CDA (0.NO - 1.SI)
        vParametros(75) = Obtener_Parametros("BUSQUEDAPRODUCT", Empresa, 1)  'SW VENTANA DE BUSQUEDA DE PRODUCTOS POR PALABRAS (0.NO - 1.SI)
        vParametros(76) = Obtener_Parametros("BOTONESPOS", Empresa, 1)       'SW MOSTRAR BOTONES POS EN FORMULARIO PRINCIPAL (0.NO - 1.SI)
        vParametros(77) = Obtener_Parametros("CODIGOADMIS", Empresa, 1)  'CODIGO DE ADMISTRACION PARA AIU
        vParametros(78) = Obtener_Parametros("CODIGOUTILIDAD", Empresa, 1)  'CODIGO DE UTILIDAD PARA AIU
        vParametros(79) = Obtener_Parametros("CODIGOIMPREVIST", Empresa, 1)  'CODIGO DE IMPREVISTO PARA AIU
        vParametros(80) = Obtener_Parametros("CODIGOFORVENTA", Empresa, 1)   'CODIGO FORMULARIO DE VENTAS PARA BOTON VENTAS DEL MENU PRINCIPAL
        vParametros(81) = Obtener_Parametros("COMPVENTANOCONT", Empresa, 1)  'CODIGO COMPROBANTE DE VENTA QUE NO CONTABILIZA (REMISION)
        vParametros(82) = Obtener_Parametros("RESPONSAFISCAL", Empresa, 1)  'RESPONSABILIDAD FISCAL POR DEFECTO EN TERCEROS (R-99-PN)
        vParametros(83) = Obtener_Parametros("IDENTIFITRIBUT", Empresa, 1)  'IDENTIFICADOR TRIBUTARIO POR DEFECTO EN TERCEROS (ZY)
        
       '******************
        vParametros(39) = Obtener_Parametros("IDCONPROVEEDOR", Empresa, 1)   'Parametros de concepto de proveedores para compra de mercancia
        vParametros(46) = "28"                                               'Parametro TRASLADO DE CAJA PUNTOS DE RECAUDO
       '******************************************
                                   
        '****** PARAMETROS PARA LA VENTA ************************
        vParametrosVenta(0) = Obtener_Parametros("BODEGAVENTA", Empresa, 1)   'Parametros de ventas - Bodega
        vParametros(40) = Obtener_Parametros("PUNTOPRINCIPAL", Empresa, 1)   'Parametros para el almacen principal
        '**************************************
                                   
        vParametros(19) = Obtener_Parametros("PLANILLAVEN", Empresa, 1)    'Planilla del vendedores (empresa de ventas en rutas)
        vParametros(20) = Obtener_Parametros("BODEGAPRIN", Empresa, 1)     'Bodega Principal
        vParametros(23) = Obtener_Parametros("CONSECHEQUE", Empresa, 1)    'Aumenta consecutivo de cheque
        vParametros(24) = Obtener_Parametros("PLANOFACTURA", Empresa, 1)   'Comprobante para importar facturas (no se utiliza)
        vParametros(27) = Obtener_Parametros("NITCOSTOINV", Empresa, 1)    'Indica si se Utiliza el nit de la empresa para el inv y el costo en las ventas
        vParametros(28) = Obtener_Parametros("VENTACONTADO", Empresa, 1)   'Indica si va llevar a cartera las ventas de contado (1- llevar a cartera)
        vParametros(29) = Obtener_Parametros("NITDIAN", Empresa, 1)        'NIT DE LA DIAN
        vParametros(43) = Obtener_Parametros("MANEJAAIU", Empresa, 1)   'Parametros de venta para empresas que manejan AIU por defecto 0:no maneja
        vParametros(44) = Obtener_Parametros("PORCENTAJECREE", Empresa, 1)   'Parametros de porcentaje para autorretencion CREE
        vParametros(47) = Obtener_Parametros("SALDOCAJA", Empresa, 1)    'parametro para buscar el saldo de caja
        vParametros(51) = Obtener_Parametros("INVNEGATIVO", Empresa, 1)    'SE PUEDEN REALIZAR VENTAS SIN EXISTENCIA DE PRODUCTOS (0. NO, 1 SI)
        vParametros(52) = Obtener_Parametros("EDADMAXIMA", Empresa, 1)    'EDAD MAXIMA PARA CONTRATACION
        vParametros(53) = Obtener_Parametros("CLAVECONTRATO", Empresa, 1)    'CLAVE DE APROBACION DE CONTRATOS CON EDAD MAXIMA
        vParametros(54) = Obtener_Parametros("IMPOCONSUMO", Empresa, 1)    'FACTURA IMPOCONSUMO (0.NO - 1.SI)
        vParametros(55) = Obtener_Parametros("PORCINTEREANUAL", Empresa, 1)    'PORCENTAJE DE INETRESES ANUAL
        vParametros(56) = Obtener_Parametros("FECHACORTEPROVE", Empresa, 1)    'FECHA CORTE MODULO PROVEEDORES PARA LISTADOS
        vParametros(57) = Obtener_Parametros("CANTDECIMALES", Empresa, 1)      'NUMERO DECIMALES UTILIZADOS EN CANTIDADES DE INVENTARIO
        vParametros(58) = Obtener_Parametros("TIQUETETEMPORAL", Empresa, 1)    'IMPRIMIR TIQUETE TEMPORAL EN VENTAS POS (1.NO, 0.SI)
        vParametros(59) = Obtener_Parametros("DESVENTAMINIBAR", Empresa, 1)    'DESCRIPCION DE VENTAS MINIBAR
        vParametros(60) = Obtener_Parametros("LISTADEPRECIOS", Empresa, 1)     'UTILIZAR LISTA DE PRECIOS (0 = NO , 1 = SI)
        vParametros(61) = Obtener_Parametros("CONTROLARCUPOCR", Empresa, 1)    'CONTROLAR CUPO DE CREDITO (0 = NO , 1 = SI)
        vParametros(62) = Obtener_Parametros("BLOQPORCDESCVEN", Empresa, 1)    'BLOQUEAR PORCENTAJE DESCUENTO EN VENTA (0.SI, 1.NO)
        vParametros(63) = Obtener_Parametros("HABFECHAFACORDE", Empresa, 1)    'HABILITAR FECHA DE FACTURACIÓN DE ORDEN DE SERVICIOS
        vParametros(84) = Obtener_Parametros("IDCOTIZACIONES", Empresa, 1)     'COMPROBANTE PARA COTIZACIONES
        vParametros(85) = Obtener_Parametros("SWSOBRETASATERP", Empresa, 1)    'APLICA SOBRETASA TERPEL EN LAS COMPRAS DE INVENTARIO (0.NO, 1.SI)
        vParametros(86) = Obtener_Parametros("ENTIDADEPS", Empresa, 1)         'APLICA PARA LA EMPRESAS DE EPS (0.NO, 1.SI)
        vParametros(88) = Obtener_Parametros("IMPRIMIRCARTERA", Empresa, 1)    'IMPRIMIR CARTERA EN VENTAS (EN LA OBSERVACIÓN) (0.NO, 1.SI)
        vParametros(89) = Obtener_Parametros("HABRETENCIONES", Empresa, 1)    'HABILITAR RETENCIONES EN LA INTREFAZ DE VENTAS (0.NO, 1.SI)
        vParametros(90) = Obtener_Parametros("DESCRICARTERA", Empresa, 1)     'DESCRIPCIÓN DEL MENSAJE DE CARTERA A MOSTRAR EN LA FACRURA
        vParametros(91) = Obtener_Parametros("CUENTAANTICIPO", Empresa, 1)     'CUENTA CONTABLE PARA ANTICIPOS DE CLIENTES
        vParametros(92) = Obtener_Parametros("IMBOLSAPLASTICA", Empresa, 1)    'IMPUESTO DE BOLSA PLASTICA - CODIGO DEL PRODUCTO DE LA BOLSA
        vParametros(93) = Obtener_Parametros("DIASDOCDIAN", Empresa, 1)        'NUMERO DE DIAS PARA REVISIÓN DE FACTURAS ELECTRONICAS
        vParametros(94) = Obtener_Parametros("IDCIERRERETEFU", Empresa, 1)     'COMPROBANTE DE CIERRE CUENTAS DE RETEFUENTE
        
        vParametros(95) = Obtener_Parametros("CODIGOFORRECCA", Empresa, 1)   'CODIGO FORMULARIO DE VENTAS PARA BOTON RECIBO CAJA DEL MENU PRINCIPAL
        vParametros(96) = Obtener_Parametros("CODIGOFORINGBA", Empresa, 1)   'CODIGO FORMULARIO DE VENTAS PARA BOTON INGRESO BANCO DEL MENU PRINCIPAL
        vParametros(97) = Obtener_Parametros("CODIGOFOREGRCA", Empresa, 1)   'CODIGO FORMULARIO DE VENTAS PARA BOTON EGRESO CAJA DEL MENU PRINCIPAL
        vParametros(98) = Obtener_Parametros("CODIGOFOREGRBA", Empresa, 1)   'CODIGO FORMULARIO DE VENTAS PARA BOTON EGRESO BANCO DEL MENU PRINCIPAL
        
        vParametros(99) = Obtener_Parametros("REQORDENCOMPRA", Empresa, 1)  'SOLICITA ORDEN DE COMPRAS EN LA VENTAS
        
        vParametros(100) = Obtener_Parametros("COBERTURAEPS", Empresa, 1)  'COBERTURA ENTIDADES DE SALUD
        vParametros(101) = Obtener_Parametros("MODALIDADEPS", Empresa, 1)  'MODALIDAD DE CONTRATO ENTIDADES DE SALUD
        vParametros(102) = Obtener_Parametros("FECFINFACTURA", Empresa, 1)  'FECHA FINAL DE FACTURACION - ENTIDADES DE SALUD
        vParametros(103) = Obtener_Parametros("DIASCREDITOS", Empresa, 1)  'DIAS PARA FACTURAS A CREDITO - ENTIDADES DE SALUD
        vParametros(104) = Obtener_Parametros("CODHORTIFRUTI", Empresa, 1) 'CODIGO DE PARAMETRO TRIBUTARIO DE HORTICFRUTICULA
        
        vParametros(105) = Obtener_Parametros("SWINTERFDIAN", Empresa, 1)  'SW MOSTAR INTERFAZ DIAN EN FRAS NO ELECTRONICAS (0.NO - 1.SI)
        vParametros(106) = Obtener_Parametros("SWCAMBIARVEND", Empresa, 1) 'SW PUEDE CAMBIAR EL VENDEDOR EN VENTAS (0. NO, 1 SI)
        vParametros(107) = Obtener_Parametros("IDCLASEPRODUCTO", Empresa, 1) 'PARAMETROS PARA LA CLASE DE PRODUCTOS DE EMPAQUES - PRODUCCION
        vParametros(108) = Obtener_Parametros("PRODUCNEGATIVO", Empresa, 1)  'MANEJO DE INVENTARIO NEGATIVO EN PRODUCCION (0.NO - 1.SI)
        vParametros(109) = Obtener_Parametros("SWSUCURSALCLIE", Empresa, 1) 'UTILIZAR SUCURSAL DE CLIENTES EN VENTAS (0.NO - 1.SI)
        vParametros(110) = Obtener_Parametros("RUTAERRORES", Empresa, 1)   'RUTA PARA GENERACION DE ARCHIVO DE ERRORES
        vParametros(111) = Obtener_Parametros("CONCARNDBONGA", Empresa, 1)  'CONCEPTO DE CARTERA PARA NOTA DEBITO AUTOMATICA BONGA
        vParametros(112) = Obtener_Parametros("IDCOMPCONBONGA", Empresa, 1) 'COMPROBANTE CONTABLE BONGA PARA NOTA DEBITO AUTOMATICA
        vParametros(113) = Obtener_Parametros("IDNDAUTBONGA", Empresa, 1)  'COMPROBANTE NOTA DEBITO CARTERA AUTOMATICA BONGA DESDE CONTABILIDAD
        
        vParametros(114) = Obtener_Parametros("PORCPROPINA", Empresa, 1)  'PORCENTAJE DE PROPINA A COBRAR FRAS POS
        vParametros(115) = Obtener_Parametros("HABSALARIOBASL", Empresa, 1)  'HABILITAR SALARIO BASE EM VACACIONES Y CESANTIAS
        vParametros(116) = Obtener_Parametros("VENTANAMAXIMI", Empresa, 1)  'UTILIZAR VENTANAS MAXIMIZADAS (0.NO - 1.SI) DEFECTO 0.NO
        vParametros(117) = Obtener_Parametros("CUENTAANTPROV", Empresa, 1)  'CUENTA CONTABLE PARA ANTICIPOS DE PROVEEDORES
        vParametros(118) = Obtener_Parametros("PYGEMPRESA", Empresa, 1)  'PYG DE LA EMPRESA PARTICIPAR (CUENTAS DIFERENTES) (0.OTRAS EMPRESAS - 1.PARTICIPAR)
        vParametros(119) = Obtener_Parametros("HABPORRETENCION", Empresa, 1)  'HABILITAR PORCENTAJE Y BASE DE RETENCION POR SERVICIOS EN LAS VENTAS (0=NO - 1=SI)
        vParametros(120) = Obtener_Parametros("DCTOSOPORTENUE", Empresa, 1)  'UTILIZAR DOCUMENTO SOPORTE NUEVO (0=NO - 1=SI)
        
        vParametros(121) = Obtener_Parametros("HABVENDEDORES", Empresa, 1)  'SW HABILITAR USUARIO COMO VENDEDOR EN LA INTERFAZ DE VENTAS (0=NO - 1=SI)
        vParametros(122) = Obtener_Parametros("HABDEVOLSINPROD", Empresa, 1)  'SW HABILITAR DEVOLUCIONES SIN PRODUCTOS (0=NO - 1=SI)
        vParametros(123) = Obtener_Parametros("SWPROGRAMABONGA", Empresa, 1)  'UTILIZAR PROGRAMAS BONGA (0.NO - 1.SI) */



function Obtener_Parametros($parametro)
{

   cambioBaseDatos();
   $empresa = session('Empresa');
   $sql = "SELECT ParStValor FROM PARAMETROS WHERE ParIdStEmpresa = '$empresa' AND ParIdStParametro = '$parametro' LIMIT 1";
   $dato = Illuminate\Support\Facades\DB::select($sql);
   return $dato[0]->ParStValor;
}


function vBloquearVehiculo()
{
   return Obtener_Parametros("BLOQUEOVEH"); //'Parametro Para bloqueo pagos de APORTES
}

function vPorcAbonoAportes()
{
   return Obtener_Parametros("PORABONOAPO"); //''Parametro Para % de ABONO A PAGO DE APORTES
}
