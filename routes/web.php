<?php

use App\Http\Controllers\cartera\informes\AnalisisCarteraEdadesController;
use App\Http\Controllers\cartera\informes\AnalisisCarteraPorClienteController;
use App\Http\Controllers\contabilidad\informes\deGestion\BalanceGeneralComparativoController;
use App\Http\Controllers\contabilidad\informes\deGestion\BalanceGeneralMesaMesController;
use App\Http\Controllers\contabilidad\informes\deGestion\EstadoResultadosComparativoController;
use App\Http\Controllers\contabilidad\informes\financieros\BalanceGeneralController;
use App\Http\Controllers\contabilidad\informes\financieros\EstadoResultadosController;
use App\Http\Controllers\Controller;
use App\Http\Controllers\cuentasPorPagar\informes\AnalisisCtaPagarEdadesController;
use App\Http\Controllers\cuentasPorPagar\informes\AnalisisDeudaProvedorController;
use App\Http\Controllers\cuentasPorPagar\informes\CargoCuentasPagarController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\InformeProductosVendidosController;
use App\Http\Controllers\inventarios\informes\InformeVentasController;
use App\Http\Controllers\inventarios\informes\InformeComprasController;
use App\Http\Controllers\inventarios\informes\InformeVentasDiaAndPvController;
use App\Http\Controllers\inventarios\informes\InformeVentasDiaDePvController;
use App\Http\Controllers\MaestrosCotroller;
use App\Http\Controllers\ProductosController;
use App\Http\Controllers\tesoreria\informes\EgresosBancosController;
use App\Http\Controllers\transporte\informes\ControlVehiculosController;
use App\Http\Controllers\transporte\informes\DespachoVehiculosController;
use App\Http\Controllers\transporte\informes\ListadoVehiculosController;
use App\Http\Controllers\transporte\informes\RecibosCajaController;
use Illuminate\Support\Facades\Route;

//////################
############rutas de login

Route::get('/login', function () {
    return view('login.login');
})->name('login');

/////
Route::post('/login', [LoginController::class, 'login'])->name('dianasis.login')->middleware('authCustom');

Route::get('logout', function () {
    session()->flush();
})->name('logout')->middleware('authCustom');

Route::get('/', function () {
    return view('login.login');
})->name('login');

Route::get('empresa/{idEmpresa}', [Controller::class, 'cargaEmpresa'])->name('otra.empresa')->middleware('authCustom');


Route::post('/login/validate', [InformeVentasController::class, 'consultaInforme'])->name('user.empresa.login');

/* OBTENER TERCEROS */
Route::get('informacion-terceros/get-terceros', [Controller::class, 'getTerceros'])->name('info.get.nombres.terceros');

////////////home

Route::get('/informes/home', [Controller::class, 'vistaHome'])->name('vista.informes.home')->middleware('authCustom');
;

//////////####informes de ventas
Route::get('informes/ventas-periodo', [InformeVentasController::class, 'viewVentaPeriodos'])->name('vista.informe.ventas.periodo');
Route::post('/consulta/informes/ventas-periodo', [InformeVentasController::class, 'viewConsultaInforme'])->name('consulta.informe.ventas.periodo');
Route::get('informes/devoluciones-ventas-periodo', [InformeVentasController::class, 'viewDevolucionesVentaPeriodos'])->name('vista.informe.devoluciones.ventas.periodo');
Route::post('/consulta/informes/devoluciones-ventas-periodo', [InformeVentasController::class, 'viewConsultaDevolucionesVentas'])->name('consulta.informe.devoluciones.ventas');

/*  */
/*  */
/* Modulo Inventarios */
Route::prefix('inventarios')->group(function () {
    //////informe de compras
    Route::get('informes/compras-periodo', [InformeComprasController::class, 'viewCompraPeriodos'])->name('vista.informe.compras.periodo');
    Route::post('/consulta/informes/compras-periodo', [InformeComprasController::class, 'viewConsultaInformeCompras'])->name('consulta.informe.compras.periodo');

    //////informe de ventas por dia y punto de venta
    Route::get('informes/ventas-dia-y-pv', [InformeVentasDiaAndPvController::class, 'viewVentasDiaAndPV'])->name('vista.informe.ventas.diaypv');
    Route::post('/consulta/informes/ventas-dia-y-pv', [InformeVentasDiaAndPvController::class, 'viewConsultaInforme'])->name('consulta.informe.ventas.diaypv');

    //////informe de ventas por dia de un punto de venta
    //////informe de ventas por dia y punto de venta
    Route::get('informes/ventas-dia-de-un-pv', [InformeVentasDiaDePvController::class, 'viewVentasDiaDePV'])->name('vista.informe.ventas.diaydepv');
    Route::post('/consulta/informes/ventas-dia-de-un-pv', [InformeVentasDiaDePvController::class, 'viewConsultaInforme'])->name('consulta.informe.ventas.diaydepv');
});


/*  */

Route::get('/consulta/informes/devoluciones-compras-periodo', [InformeComprasController::class, 'viewDevolucionesCompraPeriodos'])->name('vista.informe.devoluciones.compras.periodo');
Route::post('/consulta/informes/devoluciones-compras-periodo', [InformeComprasController::class, 'viewConsultaDevolucionesCompras'])->name('consulta.informe.devoluciones.compras');



/////informe de productos
Route::get('/informes/productos-vendidos', [InformeProductosVendidosController::class, 'viewIndexProductosVendidos'])->name('vista.informe.productos.vendidos');
Route::post('/consulta/informes/productos/vendidos', [InformeProductosVendidosController::class, 'InformeProV'])->name('consulta.informe.productos.vendidos');



/////

///////listado de productos

Route::get('/view-listado-productos', [ProductosController::class, 'viewProductos'])->name('vista.lista.productos');
Route::post('/consulta-productos', [ProductosController::class, 'ConsultaListaProductos'])->name('consulta.lista.productos');
Route::get('/informes/productos-comprados', [ProductosController::class, 'viewIndexProductosComprados'])->name('vista.informe.productos.comprados');
Route::post('/consulta/informes/productos-comprados', [ProductosController::class, 'InformeProComprados'])->name('consulta.informe.productos.comprados');



/////////lista Maestros

Route::get('/view-listado-maestros', [MaestrosCotroller::class, 'viewMaestros'])->name('vista.lista.maestros');


/* #############modulo Cartera################*/
/* CARTERA POR EDADES */
Route::get('/view-cartera-informes-analisis-por-edades', [AnalisisCarteraEdadesController::class, 'viewInformeAnalisisCarteraEdades'])->name('vista.informe.anailis.cartera.edades');

Route::post('/consulta/cartera-informes-analisis-por-edades', [AnalisisCarteraEdadesController::class, 'infAnalisisCarteraEdades'])->name('consulta.cartera.informes.analisisCarteraEdades');


/* cartera por clientes */
Route::get('/view-cartera-informes-analisis-por-cliente', [AnalisisCarteraPorClienteController::class, 'viewInformeAnalisisCarteraCliente'])->name('vista.informe.anailis.cartera.cliente');

Route::post('/consulta/cartera-informes-analisis-por-cliente', [AnalisisCarteraPorClienteController::class, 'infAnalisisCarteraCliente'])->name('consulta.cartera.informes.analisis.cartera.cliente');





/* modulo contabilidad  */

/*############## financieros */
/* estado de resultados */
Route::get('/view-contabilidad-informes-finacieros-estado-resultados', [EstadoResultadosController::class, 'viewEstadoResultados'])->name('vista.contabilidad.informes.contEstadoResultados');
Route::post('/consulta/contabilidad-informes-finacieros-estado-resultados', [EstadoResultadosController::class, 'infEstadoResultados'])->name('consulta.contabilidad.informes.financiero.estado.resultados');
/* balance general */
Route::get('/view-contabilidad-informes-finacieros-balance-general', [BalanceGeneralController::class,'viewBalanceGeneral'])->name('vista.contabilidad.informes.contBalanceGeneral');
Route::post('/consulta/contabilidad-informes-finacieros-balance-general', [BalanceGeneralController::class,'infBalanceGeneral'])->name('consulta.contabilidad.informes.financiero.contBalanceGeneral');




/*############# de gestion */
/* resultados Comparativos */

Route::get('/view-contabilidad-informes-gestion-estado-resultados-compa', [EstadoResultadosComparativoController::class, 'viewEstadoResultadosCom'])->name('vista.contabilidad.informes.contEstadoResultadosComp');

Route::post('/consulta/contabilidad-informes-gestion-estado-resultados-compa', [EstadoResultadosComparativoController::class, 'infEstadoResultadosCom'])->name('consulta.contabilidad.informes.financiero.estado.resultadosComp');

/* balance general comparativo */

Route::get('/view-contabilidad-informes-gestion-balance-general-compa', [BalanceGeneralComparativoController::class, 'viewBalanceGeneralCom'])->name('vista.contabilidad.informes.contBalanceGeneralComp');

Route::post('/consulta/contabilidad-informes-gestion-balance-general-compa', [BalanceGeneralComparativoController::class, 'infBalanceGeneralCom'])->name('consulta.contabilidad.informes.financiero.estado.BalanceGeneralComp');

/* balance genral mes a mes */

Route::get('/view-contabilidad-informes-gestion-balance-general-mes-a-mes', [BalanceGeneralMesaMesController::class, 'viewBalanceGeneralMaM'])->name('vista.contabilidad.informes.contBalanceGeneralMaM');

Route::post('/consulta/contabilidad-informes-gestion-balance-general-mes-a-mes', [BalanceGeneralMesaMesController::class, 'infBalanceGeneralMaM'])->name('consulta.contabilidad.informes.gestion.BalanceGeneralMaM');

/*############## Modulo Cuentas por pagar */
/*  */
Route::get('/view-cuentas-por-pagar-informes-analisis-por-edades', [AnalisisCtaPagarEdadesController::class, 'viewInformeAnalisisCtPaEdades'])->name('vista.cuentasPagar.informes.analisisCuentasPagar');
Route::post('/consulta/cuentas-por-pagar-informes-analisis-por-edades', [AnalisisCtaPagarEdadesController::class, 'infAnalisisCtPaEdades'])->name('consulta.cuentasPagar.informes.analisisCuentasPagar');

/*  */
Route::get('/view-cuentas-por-pagar-informes-cargo-cuentas-pagar', [CargoCuentasPagarController::class, 'viewInformeCargoCuentasPagar'])->name('vista.cuentasPagar.informes.cargoCuentasPagar');
Route::post('/consulta/cuentas-por-pagar-informes-cargo-cuentas-pagar', [CargoCuentasPagarController::class, 'infCargoCuentasPagar'])->name('consulta.cuentasPagar.informes.cargoCuentasPagar');

/*  */

Route::get('/view-cuentas-por-pagar-informes-analisis-deuda-proveedor', [AnalisisDeudaProvedorController::class, 'viewInformeAnalisisDeudaProvedor'])->name('vista.cuentasPagar.informes.analisisDeudaProvedor');
Route::post('/consulta/cuentas-por-pagar-informes-analisis-deuda-proveedor', [AnalisisDeudaProvedorController::class, 'infAnalisisDeudaProvedor'])->name('consulta.cuentasPagar.informes.analisisDeudaProvedor');







/*############## modulo tesoreria */
Route::get('/view-tesoreria-informes-egresos-de-bancos', [EgresosBancosController::class, 'viewinformeEgresosBancos'])->name('vista.tesoreria.informes.informeEgresosBancos');
Route::post('/consulta/tesoreria-informes-egresos-de-bancos', [EgresosBancosController::class, 'infEgresosBancos'])->name('consulta.tesoreria.informes.informeEgresosBancos');


/* ############Modulo transporte */


#############
//esta ruta es general para buscar elementos de filtros

Route::get('/data-filtros-transporte-informes/{type}/{data?}', [Controller::class, 'dataBuscarFiltros'])->name('data.filtros.transporte.informes');


##########
/* control vehiculos */

Route::get('/view-transporte-informes-control-vehiculos', [ControlVehiculosController::class, 'viewControlVehiculo'])->name('vista.transporte.informes.controlVehiculos');

Route::post('/consulta/transporte-informes-control-vehiculos/{c}', [ControlVehiculosController::class, 'infControlVehiculo'])->name('consulta.transporte.informes.controlVehiculos');


/* listado Vehiculos */

Route::get('/view-transporte-informes-listado-vehiculos', [ListadoVehiculosController::class, 'viewListadoVehiculo'])->name('vista.transporte.informes.listadoVehiculos');

Route::post('/consulta/transporte-informes-listado-vehiculos/', [ListadoVehiculosController::class, 'infListadoVehiculo'])->name('consulta.transporte.informes.listadoVehiculos');


/* despacho vehiculos */

Route::get('/view-transporte-informes-despacho-vehiculos', [DespachoVehiculosController::class, 'viewDespachoVehiculo'])->name('vista.transporte.informes.despachoVehiculos');

Route::post('/consulta/transporte-informes-despacho-vehiculos/', [DespachoVehiculosController::class, 'infDespachoVehiculo'])->name('consulta.transporte.informes.despachoVehiculos');


/* recibos caja */

Route::get('/view-transporte-informes-recibos-caja', [RecibosCajaController::class, 'viewRecibosCaja'])->name('vista.transporte.informes.RecibosCaja');

Route::post('/consulta/transporte-informes-recibos-caja/', [RecibosCajaController::class, 'infRecibosCaja'])->name('consulta.transporte.informes.RecibosCaja');
