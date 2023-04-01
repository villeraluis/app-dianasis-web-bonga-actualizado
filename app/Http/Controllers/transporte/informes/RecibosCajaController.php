<?php

namespace App\Http\Controllers\transporte\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use PhpParser\ErrorHandler\Collecting;

class RecibosCajaController extends Controller
{
    public function viewRecibosCaja()
    {
        //return $this->conMarca();

        return view('transporte.informes.recibosCaja.indexRecibosCaja');
    }


    public function infRecibosCaja(Request $request)
    {

        if ($request->typeCon == 'General') {

            $datos = $this->consultaRecibosCaja($request);

            if ($datos == 'placaNoExiste') {

                return "<div class='alert alert-danger m-2 col-11 text-center' role='alert'>
                La placa Digitada No existe 
             </div>";
            }

            if ($datos[0] == null && $datos[1] == null) {
                return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
                 No hay datos para Mostrar. 
              </div>";
            }
            return view('transporte.informes.recibosCaja.tablaRecibosCajaGen', compact('datos'));
        }

        if ($request->typeCon == 'RecaudosGps') {
            $datos = $this->consultaRecibosCaja($request);

            return  $datos;
        }
    }




    public function consultaRecibosCaja($request)
    {

        cambioBaseDatos();
        $empresa = session('Empresa');
        $idConceptos = $request->idConceptos;
        $vFiltroConcepto = ($idConceptos != null) ? " AND B.MvrIdStConceptoRecaudo ='$idConceptos' " : '';
        $fechaIn = $request->fechaInicial;
        $fechaFin = $request->fechaFinal;
        $vFiltro = $this->vFiltros($request);
        $vParametros10 = tranVParametros(10);

        if ($vFiltro == 'placaNoExiste') {
            return $datos[0] = 'placaNoExiste';
        }


        if ($request->typeCon == 'General') {

            $sql = "SELECT A.*,B.*,C.CrdStDescripcion, C.CrdIdInTipoRecaudo, D.AgeStDescripcion, E.CliStNombreCliente,
                    F.CliStNombreCliente AS NomPropietario, 
                    G.empsigl, H.VehIdInNumero, I.Munnomb,R.RtpStDescripcion  FROM TRANRECAUDOS A 
                    INNER JOIN TRANMOVRECAUDOS B ON (A.RcdIdStEmpresa = B.MvrIdStEmpresa AND A.RcdIdStNumRecaudo = B.MvrIdStNumRecaudo $vFiltroConcepto) 
                    INNER JOIN TRANCONCEPTOSRECAUDOS C ON (B.MvrIdStEmpresaVehiculo = C.CrdIdStEmpresa AND B.MvrIdStConceptoRecaudo = C.CrdIdStConceptoRecaudo) 
                    INNER JOIN TRANAGENCIAS D ON (A.RcdIdStEmpresaVehiculo = D.AgeIdStEmpresa AND A.RcdIdStAgencia = D.AgeIdStAgencia) 
                    INNER JOIN CLIENTES E ON (A.RcdIdStEmpresaVehiculo = E.cliempr AND A.RcdIdStPropietario = E.clinit) 
                    LEFT OUTER JOIN CLIENTES F ON (A.RcdIdStEmpresaVehiculo = F.cliempr AND A.RcdIdStConductor = F.clinit) 
                    LEFT OUTER JOIN TRANRUTASTRANSPORTE R ON (A.RcdIdStEmpresaVehiculo = R.RtpIdStEmpresa AND A.RcdIdInRuta = R.RtpIdInRuta) 
                    INNER JOIN EMPRESAS G ON (A.RcdIdStEmpresaVehiculo = G.empcodi) 
                    INNER JOIN TRANVEHICULOS H ON (A.RcdIdStEmpresaVehiculo = H.VehIdStEmpresa AND A.RcdIdStPlaca = H.VehIdStPlaca) 
                    LEFT OUTER JOIN MUNICIPIO I ON (A.RcdIdInPaisDestino = I.Munpais AND A.RcdIdInDptoDestino = I.Mundpto AND A.RcdIdInMunicipioDestino = I.Muncodi) 
                    WHERE (A.RcdIdStEmpresa = '$empresa' AND A.RcdIdStComprobante = '$vParametros10' AND RcdDaFecha 
                    BETWEEN '$fechaIn' AND '$fechaFin' $vFiltro) ORDER BY RcdDaFecha,RcdIdStNumRecaudo,MvrInItem";

            $datos = DB::select($sql);

            $datRow1 = [];
            $tFGdatos = [];
            $tFGaportes = [];
            $tFGagrupado = [];
            $tAgrtemp = [];
            $posArr = null;
            $datosOut = [];
            $tA = '';
            $vaparam10 = vParamTransporte(10);

            foreach ($datos as $idx => $dato) {

                //datos del detalle

                $tItem = $dato->MvrInItem;
                $tFactura = $dato->MvrIdStNumRecaudo;
                $tCodigo = $dato->MvrIdStConceptoRecaudo;
                $tNombre = $dato->CrdStDescripcion;
                $tTipoConcepto = $dato->CrdIdInTipoRecaudo;
                $tPorIva = 0;

                if ($dato->RcdStEstado == "A") {
                    $tValor = floatval($dato->MvrInValorTotal) - floatval($dato->MvrInValorIva);
                    $tValorIva = floatval($dato->MvrInValorIva);
                    $tValorTotal = floatval($dato->MvrInValorTotal);
                } else {
                    $tValor = 0;
                    $tValorIva = 0;
                    $tValorTotal = 0;
                }
                //end


                if ($tA != $dato->RcdIdStNumRecaudo) {

                    $tA = $dato->RcdIdStNumRecaudo;
                    ///
                    $tEstado = '';

                    if ($dato->RcdIdStNumManual != null || $dato->RcdIdStNumManual != '') {
                        $tEstado = "Recibo Manual No: " . $dato->RcdIdStNumManual;
                    }

                    if ($dato->RcdStEstado == "A") {

                        $tVrConceptos = $dato->MvrInValorTotal;
                        $tVrRecibo = $dato->RcdInValorTotal;
                        $tVrIva = 0;
                        $tVrTotal = $dato->RcdInValorTotal;
                        $tVrAporte = $dato->RcdInValorAportado;
                        $tVrPlanilla = $dato->RcdInValorPlanilla;
                        $tVrAnticipo = $dato->RcdInValorAnticipo;
                        $tVrComplemento = 0;
                        // '------ codigo nuevo para el complemento de planilla ----------------------------
                        if ($dato->MvrIdStConceptoRecaudo == "CPL") {
                            $tVrComplemento = floatval($tVrComplemento) + floatval($dato->MvrInValorTotal);
                            $tvOtros = floatval($tVrTotal) - floatval($tVrPlanilla) - floatval($tVrAporte) - $tVrComplemento;
                        } else {

                            $tvOtros = floatval($tVrTotal)  - floatval($tVrPlanilla) - floatval($tVrAporte);
                            $tVrComplemento = 0;
                        }
                        ////

                    } else {
                        $tVrRecibo = 0;
                        $tVrIva = 0;
                        $tVrTotal = 0;
                        $tVrAporte = 0;
                        $tVrPlanilla = 0;
                        $tVrAnticipo = 0;
                        $tVrComplemento = 0;
                        $tvOtros = 0;
                        $tEstado = "*** RECIBO ANULADO ***";
                    }


                    $tFGdatos = [];
                    $tFGaportes = [];

                    if ($dato->CrdIdInTipoRecaudo == "001") {

                        array_push($tFGdatos, [

                            'tItem' => $tItem,
                            'tFactura' => $tFactura,
                            'tCodigo' => $tCodigo,
                            'tNombre' => $tNombre,
                            'tTipoConcepto' => $tTipoConcepto,
                            'tPorIva' => $tPorIva,
                            'tValor' => $tValor,
                            'tValorIva' => $tValorIva,
                            'tValorTotal' => $tValorTotal,

                        ]);
                    } else {
                        array_push($tFGaportes, [

                            'tItem' => $tItem,
                            'tFactura' => $tFactura,
                            'tCodigo' => $tCodigo,
                            'tNombre' => $tNombre,
                            'tTipoConcepto' => $tTipoConcepto,
                            'tPorIva' => $tPorIva,
                            'tValor' => $tValor,
                            'tValorIva' => $tValorIva,
                            'tValorTotal' => $tValorTotal,

                        ]);
                    }


                    $posArr = count($datRow1); //contamos la posicion del array solo funciona si esta ordenado
                    array_push($datRow1, [
                        'tdatosFg' => collect($tFGdatos),
                        'tdatosAportes' => collect($tFGaportes),
                        'datoCom' => collect([$dato]),
                        'Vehiculo' => $dato->RcdIdStPlaca,
                        'Fecha' => $dato->RcdDaFecha,
                        'Cuadre' => $dato->RcdIdStConsecutivoDia,
                        'Numero' => $dato->RcdIdStNumRecaudo,
                        'Agencia' => $dato->AgeStDescripcion,
                        'Punto' => $dato->RcdIdStPuntoRecaudo,
                        'CodUsuario' => $dato->RcdStUsuario,
                        'Propie' => $dato->CliStNombreCliente,
                        'NomCon' => $dato->NomPropietario,
                        'CedCon' => $dato->RcdIdStConductor,
                        'CodEmpVehi' => $dato->RcdIdStEmpresaVehiculo,
                        'NomEmpVehi' => $dato->empsigl,
                        'CodVehi' => $dato->VehIdInNumero,
                        'Destino' => $dato->Munnomb,
                        'Ruta' => $dato->RtpStDescripcion,
                        'CedulaProp' => $dato->RcdIdStPropietario,
                        'Hora' => $dato->RcdFechaHoraRegistro,
                        'Estado' => $tEstado,
                        'tVrRecibo' => $tVrRecibo,
                        'tVrIva' => $tVrIva,
                        'tVrTotal' => $tVrTotal,
                        'tVrAporte' => $tVrAporte,
                        'tVrPlanilla' => $tVrPlanilla,
                        'tVrAnticipo' => $tVrAnticipo,
                        'tVrComplemento' => $tVrComplemento,
                        'tvOtros' => $tvOtros,
                        'tVrConceptos' => $tVrConceptos,

                    ]);
                } else {

                    if ($dato->CrdIdInTipoRecaudo == "001") {

                        array_push($tFGdatos, [

                            'tItem' => $tItem,
                            'tFactura' => $tFactura,
                            'tCodigo' => $tCodigo,
                            'tNombre' => $tNombre,
                            'tTipoConcepto' => $tTipoConcepto,
                            'tPorIva' => $tPorIva,
                            'tValor' => $tValor,
                            'tValorIva' => $tValorIva,
                            'tValorTotal' => $tValorTotal,

                        ]);
                    } else {
                        array_push($tFGaportes, [

                            'tItem' => $tItem,
                            'tFactura' => $tFactura,
                            'tCodigo' => $tCodigo,
                            'tNombre' => $tNombre,
                            'tTipoConcepto' => $tTipoConcepto,
                            'tPorIva' => $tPorIva,
                            'tValor' => $tValor,
                            'tValorIva' => $tValorIva,
                            'tValorTotal' => $tValorTotal,

                        ]);
                    }


                    $datRow1[$posArr]['tdatosFg'] = collect($tFGdatos);
                    $datRow1[$posArr]['tdatosAportes'] = collect($tFGaportes);
                }


                ///////llena la tabla pequeña de la nab general


                if ($dato->RcdStEstado == "A") {

                    $tX = $dato->MvrIdStConceptoRecaudo;

                    $existe = in_array($tX,  $tAgrtemp);

                    if (!$existe) {

                        $tAnticipo = '';
                        $tTotal = '';

                        if ($dato->MvrIdStConceptoRecaudo ==  $vaparam10) {
                            $tAnticipo = $dato->RcdInValorAnticipo;
                            $tTotal = floatval($dato->MvrInValorTotal) - floatval($dato->RcdInValorAnticipo);
                        } else {
                            $tTotal = floatval($dato->MvrInValorTotal);
                        }

                        array_push($tFGagrupado, [
                            'tCodigo' => $dato->MvrIdStConceptoRecaudo,
                            'tNombre' => $dato->CrdStDescripcion,
                            'tValor' => $dato->MvrInValorTotal,
                            'tAnticipo' => $tAnticipo,
                            'tTotal' => $tTotal,
                        ]);

                        array_push($tAgrtemp, $tX);
                    } else {

                        foreach ($tFGagrupado as $idx => $dat) {
                            if ($dat['tCodigo'] == $dato->MvrIdStConceptoRecaudo) {
                                $tFGagrupado[$idx]['tValor'] += $dato->MvrInValorTotal;
                                if ($dato->MvrIdStConceptoRecaudo ==  $vaparam10) {
                                    $total = $dato->MvrInValorTotal - $dato->RcdInValorAnticipo;
                                    $tFGagrupado[$idx]['tAnticipo'] += $dato->RcdInValorAnticipo;
                                    $tFGagrupado[$idx]['tTotal'] += $total;
                                } else {
                                    $tFGagrupado[$idx]['tTotal'] += $dato->MvrInValorTotal;
                                }
                            }
                        }
                    }
                }

                //end

            }




            $datosOut[0] = $datRow1;
            $datosOut[1] = $tFGagrupado;


            return $datosOut;
        }



        if ($request->typeCon == 'RecaudosGps') {

            $sql = "SELECT A.*,B.*,E.CliStNombreCliente AS NomPropietario,G.empsigl,K.empsigl AS NombreEmpresaVehiculo,M.CliStNombreCliente AS NombrePropietarioVehiculo 
            FROM TRANRECAUDOS A 
            INNER JOIN TRANABONOSCONTROLGPS B ON (A.RcdIdStEmpresa = B.AgpIdStEmpresa AND A.RcdIdStNumRecaudo = B.AgpIdStNumRecaudo) 
            INNER JOIN EMPRESAS K ON (B.AgpIdStEmpresaVehiculo = K.empcodi) 
            INNER JOIN CLIENTES M ON (B.AgpIdStEmpresaVehiculo = M.cliempr AND B.AgpIdStPropietario = M.clinit) 
            LEFT OUTER JOIN CLIENTES E ON (B.AgpIdStEmpresaVehiculoPagar = E.cliempr AND B.AgpIdStPropietarioPagar = E.clinit) 
            LEFT OUTER JOIN EMPRESAS G ON (B.AgpIdStEmpresaVehiculoPagar = G.empcodi) 
            WHERE (A.RcdIdStEmpresa = '$empresa' AND A.RcdIdStComprobante = '$vParametros10' AND RcdStEstado= 'A' AND  
            RcdDaFecha BETWEEN '$fechaIn' AND '$fechaFin' $vFiltro) ORDER BY RcdDaFecha,RcdIdStNumRecaudo";

            $datos = DB::select($sql);



            $datRow1 = [];

            foreach ($datos as $dato) {

                array_push($datRow1, [
                    'Numero' => $dato->RcdIdStNumRecaudo,
                    'Fecha' => $dato->RcdDaFecha,
                    'Agencia' => $dato->RcdIdStAgencia,
                    'Punto' => $dato->RcdIdStPuntoRecaudo,
                    'EmpresaRecibe' => $dato->empsigl,
                    'PlacaRecibe' => $dato->AgpIdStVehiculoPagar,
                    'ClienteRecibe' => $dato->NomPropietario,
                    'PropietarioRecibe' => $dato->AgpIdStPropietarioPagar,
                    'VrMInutos' => $dato->AgpInValorTiempo,
                    'VrVelocidad' => $dato->AgpInValorVelocidad,
                    'Vehiculo' => $dato->RcdIdStPlaca,
                    'Propie' => $dato->RcdIdStPropietario,
                    'vResponsable' => $dato->RcdStUsuario,
                    'EmpresaVehiculo' => $dato->NombreEmpresaVehiculo,
                    'NombrePropVehiculo' => $dato->NombrePropietarioVehiculo,
                    'IDEmpresaRecibe' => $dato->AgpIdStEmpresaVehiculoPagar,

                ]);
            }
            return  $datRow1;
        }
    }






    public function vFiltros($request)
    {

        $strFiltro = '';
        $idPlaca = $request->idPlaca;
        $idResponsable = $request->idResponsable;
        $idAgencia = $request->idAgencia;
        $idPuntrecaudo = $request->idPuntrecaudo;
        $idConductores = $request->idConductores;
        $vEmpresaVehiculo =  $this->empresaVehiculo($idPlaca);

        if ($idPlaca != null) {

            if ($vEmpresaVehiculo != null) {
                $strFiltro =  "$strFiltro   AND A.RcdIdStEmpresaVehiculo='$vEmpresaVehiculo'  AND A.RcdIdStPlaca = '$idPlaca'";
            } else {
                return 'placaNoExiste';
            }
        }

        if ($idResponsable != null) {
            $strFiltro =  "$strFiltro   AND RcdStUsuario ='$idResponsable'";
        }

        if ($idAgencia != null) {

            $strFiltro =  "$strFiltro   AND RcdIdStAgencia ='$idAgencia'";
        }
        if ($idPuntrecaudo != null) {

            $strFiltro =  "$strFiltro   AND RcdIdStPuntoRecaudo ='$idPuntrecaudo' ";
        }

        if ($idConductores != null) {

            $strFiltro =  "$strFiltro    AND A.RcdIdStConductor ='$idConductores'";
        }

        return  $strFiltro;
    }



    function empresaVehiculo($placa)
    {
        cambioBaseDatos();
        $sql = "SELECT VehIdStEmpresa,VehStDescripcion,VehStEstado FROM TRANVEHICULOS WHERE VehIdStPlaca= '$placa'";
        $datos = DB::select($sql);

        if ($datos != null) {
            return $datos[0]->VehIdStEmpresa;

            if ($datos[0]->VehStEstado == 0) {
                return null;
            } else {
            }
        }
        return null;
    }
}
