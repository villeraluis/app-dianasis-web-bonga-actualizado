<?php

namespace App\Http\Controllers\transporte\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class DespachoVehiculosController extends Controller
{
    public function viewDespachoVehiculo()
    {
        //return $this->conMarca();

        return view('transporte.informes.despachoVehiculos.indexdespachoVehiculos');
    }



    public function infDespachoVehiculo(Request $request)
    {

        $datos = $this->consultaDespachoVehiculo($request);


       


        if ($datos == 'placaNoExiste') {

            return "<div class='alert alert-danger m-2 col-11 text-center' role='alert'>
            La placa Digitada No existe 
         </div>";
        }

        if ($datos == null) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
                 No hay datos para Mostrar. 
              </div>";
        }

        return view('transporte.informes.despachoVehiculos.tablaDespachoVehiculos', compact('datos'));
    }


    public function consultaDespachoVehiculo($request)
    {

        cambioBaseDatos();
        $empresa = session('Empresa');

        $fechaIn = $request->fechaInicial;
        $fechaFin = $request->fechaFinal;
        $vFiltro = $this->vFiltros($request);

        if ($vFiltro == 'placaNoExiste') {
            return $datos[0] = 'placaNoExiste';
        }





        $sql = "SELECT A.*,D.AgeStDescripcion,E.CliStNombreCliente,F.CliStNombreCliente AS NomConductor, 
        G.empsigl,H.VehIdInNumero,H.VehStDescripcion,H.VehInVrAporteDiario,H.VehStRequiereAportesDiarios,H.VehStControlarAporteDiarioCartera,
        H.VehDtHoraMinimaAporte,I.Munnomb, J.TmaStDescripcionUna, K.RtpStDescripcion, M.CliStNombreCliente AS NomUsuario,X.TvpStEstado,X.TvpFechaHora,X.TvpStUsuario,P.PtrStValidarContigencia  
        FROM TRANPLANILLADESPACHO A 
        INNER JOIN TRANAGENCIAS D ON (A.PdoIdStEmpresa = D.AgeIdStEmpresa AND A.PdoIdStAgencia = D.AgeIdStAgencia) 
        INNER JOIN TRANPUNTORECAUDOS P ON (A.PdoIdStEmpresa = P.PtrIdStEmpresa AND A.PdoIdStAgencia = P.PtrIdStAgencia AND A.PdoIdStPuntoRecaudo = P.PtrIdStPuntoRecaudo) 
        LEFT OUTER JOIN CLIENTES E ON (A.PdoIdStEmpresaVehiculo = E.cliempr AND A.PdoIdStPropietario = E.clinit) 
        LEFT OUTER JOIN CLIENTES F ON (A.PdoIdStEmpresaVehiculo = F.cliempr AND A.PdoIdStConductor = F.clinit) 
        INNER JOIN EMPRESAS G ON (A.PdoIdStEmpresaVehiculo = G.empcodi) 
        INNER JOIN TRANVEHICULOS H ON (A.PdoIdStEmpresaVehiculo = H.VehIdStEmpresa AND A.PdoIdStPlaca = H.VehIdStPlaca) 
        INNER JOIN MUNICIPIO I ON (A.PdoIdInPaisDestino = I.Munpais AND A.PdoIdInDptoDestino = I.Mundpto AND A.PdoIdInMunicipioDestino = I.Muncodi) 
        INNER JOIN TRANMAESTROS J ON (A.PdoIdStTablaRecorrido = J.TmaIdInTransTablas AND A.PdoIdStRecorrido = J.TmaIdStCodigo) 
        INNER JOIN TRANRUTASTRANSPORTE K ON (A.PdoIdStEmpresaVehiculo = K.RtpIdStEmpresa AND A.PdoIdInRuta = K.RtpIdInRuta) 
        INNER JOIN GENTUSUARIOS L ON (A.PdoStUsuario = L.UsuStIdUsuario) 
        LEFT OUTER JOIN CLIENTES M ON (A.PdoIdStEmpresa = M.cliempr AND L.UsuIdStNitCliente = M.clinit) 
        LEFT OUTER JOIN TRANVALIDARPLANILLACONTIGENCIA X ON (A.PdoIdStEmpresa = X.TvpIdStEmpresa AND A.PdoIdStNumDespacho = X.TvpIdStNumDespacho) 
        WHERE (A.PdoIdStEmpresa = '$empresa' AND PdoDaFecha BETWEEN '$fechaIn' AND '$fechaFin' $vFiltro) ORDER BY PdoIdStNumDespacho";





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
        $item = 1;

        foreach ($datos as $idx => $dato) {

            if ($tA != $dato->PdoIdStNumDespacho) {
                $tTipoPlanilla = '';
                $tvHoraAporte = '';
                $tEstado = '';
                $tEstado = '';

                if ($dato->PdoStTipoPlanilla == '0') {
                    $tTipoPlanilla = "Planilla Normal";
                } else {
                    $tTipoPlanilla = "Planilla Contingencia";
                }

                if ($dato->VehDtHoraMinimaAporte != '') {

                    $tvHoraAporte = $dato->VehDtHoraMinimaAporte;
                }

                if ($dato->PdoStEstado == 'A') {
                    $tEstado = "ACTIVO";
                } else {
                    $tEstado = "*** DESPACHO ANULADO ***";
                }

                $vAnoPlanilla = date("Y", strtotime($dato->PdoDaFecha));
                $vMesPlanilla = (date("n", strtotime($dato->PdoDaFecha)));
                $vDiaPlanilla = (date("j", strtotime($dato->PdoDaFecha)));
                $PagoPlanilla = $dato->PdoStPlanillaAdm;
                $color = '';


                if ($dato->PdoStTipoPlanilla == 1) {
                    $vCampo = "CovStDia" . $vDiaPlanilla;
                    $CodEmpVehi = $dato->PdoIdStEmpresaVehiculo;
                    $Vehiculo = $dato->PdoIdStPlaca;
                    $sql1 = "SELECT CovStPaquetePlanilla, $vCampo  As DiaPago 
                            FROM TRANCONTROLVEHICULOS 
                            WHERE CovIdStEmpresa ='$CodEmpVehi' AND CovIdStPlaca ='$Vehiculo' AND 
                            CovInAno=$vAnoPlanilla AND CovInMes=$vMesPlanilla";
                    $datosP = DB::select($sql1);
                    if ($datosP != null) {

                        $CovStPaquetePlanilla = $datosP[0]->CovStPaquetePlanilla;
                        $DiaPago = $datosP[0]->DiaPago;
                        if ($PagoPlanilla == 1) {
                            if ($CovStPaquetePlanilla == 1) {
                                $color = 'yel';
                            }
                        } else {
                            if ($DiaPago == 1) {

                                $color = 'blu';
                            } else {
                                $color = 'red';
                            }
                        }
                    }
                }

                array_push($datRow1, [
                    'color' => $color,
                    'Item' => $item++,
                    'Vehiculo' => $dato->PdoIdStPlaca,
                    'Fecha' => $dato->PdoDaFecha,
                    'vAnoPlanilla' => $vAnoPlanilla,
                    'vMesPlanilla' => $vMesPlanilla,
                    'vDiaPlanilla' => $vDiaPlanilla,
                    'numero' => $dato->PdoIdStNumDespacho,
                    'Agencia' => $dato->AgeStDescripcion,
                    'Punto' => $dato->PdoIdStPuntoRecaudo,
                    'vCodAgencia' => $dato->PdoIdStAgencia,
                    'CodUsuario' => $dato->NomUsuario,
                    'Propie' => $dato->CliStNombreCliente,
                    'NomCon' => $dato->NomConductor,
                    'CedCon' => $dato->PdoIdStConductor,
                    'CodEmpVehi' => $dato->PdoIdStEmpresaVehiculo,
                    'NomEmpVehi' => $dato->empsigl,
                    'CodVehi' => $dato->VehIdInNumero,
                    'DesVehi' => $dato->VehStDescripcion,
                    'Destino' => $dato->Munnomb,
                    'Ruta' => $dato->RtpStDescripcion,
                    'Tipo' => $dato->TmaStDescripcionUna,
                    'FechaSalida' => $dato->PdoFechaHoraSalida,
                    'FechaRegreso' => $dato->PdoFechaHoraRegreso,
                    'FechaOrden' => $dato->PdoFechaHoraSalida,
                    'Observacion' => $dato->PdoStObservacion,
                    'NumPlanilla' => $dato->PdoStNumeroPlanilla,
                    'TarjetaOperacion' => $dato->PdoStSwTarjetaOperacion,
                    'SeguroContractual' => $dato->PdoStSwSeguroContractual,
                    'SeguroExtraContractual' => $dato->PdoStSwSeguroExtracontractual,
                    'SeguroObligatorio' => $dato->PdoStSwSeguroObligatorio,
                    'SeguroTodoRiesgo' => $dato->PdoStSwSeguroTodoRiesgo,
                    'Tecnicomecanica' => $dato->PdoStSwTecnomecanica,
                    'PagoAportes' => $dato->PdoStAportes,
                    'PagoPlanilla' =>  $PagoPlanilla,
                    'PasadoJudicial' => $dato->PdoStSwPasadoJudicial,
                    'LicenciaConduccion' => $dato->PdoStSwLicenciaConduccion,
                    'Carnet' => $dato->PdoStSwCarnet,
                    'vContigencia' => $dato->PdoStTipoPlanilla,
                    'vValorAlcolemia' => $dato->PdoInValorAlcolemia,
                    'vNumAlcolemia' => $dato->PdoStNumAlcolemia,
                    'ReqAporteDiario' => $dato->VehStRequiereAportesDiarios,
                    'vValorAporteDiario' => $dato->VehInVrAporteDiario,
                    'vReqCarteraCero' => $dato->VehStControlarAporteDiarioCartera,
                    'TelefonoConductor' => $dato->PdoStTelefonoConductor,
                    'RespuestaEncuesta' => $dato->PdoStRespuestaEncuesta,
                    'VBcontigencia' => $dato->TvpStEstado,
                    'VBFechaHora' => $dato->TvpFechaHora,
                    'VBusuario' => $dato->TvpStUsuario,
                    'VBrevisaContg' => $dato->PtrStValidarContigencia,
                    'tTipoPlanilla' => $tTipoPlanilla,
                    'tvHoraAporte' => $tvHoraAporte,
                    'tEstado' => $tEstado,
                    'tEstado' => $tEstado,

                ]);
            }

            $tA = $dato->PdoIdStNumDespacho;
        }



        return  $datRow1;
    }



    public function vFiltros($request)
    {

        $strFiltro = '';
        $idPlaca = $request->idPlaca;
        $idResponsable = $request->idResponsable;
        $idAgencia = $request->idAgencia;
        $idPuntrecaudo = $request->idPuntrecaudo;
        $vEmpresaVehiculo = $this->empresaVehiculo($idPlaca);
        $optPlanilla = $request->tipoPlantilla;



        if ($idPlaca != null) {
            if ($vEmpresaVehiculo != null) {
                $strFiltro =  "$strFiltro   AND A.PdoIdStEmpresaVehiculo='$vEmpresaVehiculo'  AND A.PdoIdStPlaca = '$idPlaca'";
            } else {
                return 'placaNoExiste';
            }
        }



        if ($idResponsable != null) {
            $strFiltro =  "$strFiltro   AND PdoStUsuario ='$idResponsable'";
        }


        if ($idAgencia != null) {
            $strFiltro =  "$strFiltro   AND PdoIdStAgencia ='$idAgencia'";
        }


        if ($idPuntrecaudo != null) {
            $strFiltro =  "$strFiltro   AND PdoIdStPuntoRecaudo ='$idPuntrecaudo' ";
        }


        if ($optPlanilla != null) {
            if ($optPlanilla != 2 && $optPlanilla != 3) {
                $strFiltro =  "$strFiltro   AND PdoStTipoPlanilla = '$optPlanilla' ";
            }
        }

        return  $strFiltro;
    }


    function empresaVehiculo($placa)
    {
        cambioBaseDatos();

        $sql = "SELECT VehIdStEmpresa,VehStDescripcion FROM TRANVEHICULOS WHERE VehIdStPlaca= '$placa' AND VehStEstado = '0'";


        $datos = DB::select($sql);
        if ($datos != null) {
            return $datos[0]->VehIdStEmpresa;
        }
        return null;
    }
}
  /*   public function Buscar_PagosPlanillas($dato=[]){

     

                     
                                              
                     
                     If Buscar_Res(rdoRs, Sql) = BDOk Then
                        If Trim(.TextMatrix(i, Datos.PagoPlanilla)) = "1" Then 'pago la planilla verificar si es por paquete de planilla
                             If Val(rdoRs!CovStPaquetePlanilla) = 1 Then
                                  .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbYellow
                             End If
                        Else
                             '----- verificar el pago de planilla
                             If Val(rdoRs!DiaPago) = 1 Then
                                  .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbBlue
                             Else
                                 .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbRed
                             End If
                             
                        End If
                     End If
              End If
     

    }
   */






   /* 
Private Sub Buscar_PagosAportes()
        On Error GoTo SAlida
        Dim vColAportes As New Collection, vColControlVehDespacho As New Collection
                
        FGaportes.Rows = 1
        Sql = "SELECT A.RcdIdStPlaca,A.RcdDaFecha,B.MvrInValorTotal FROM TRANRECAUDOS A " & _
              "INNER JOIN TRANMOVRECAUDOS B ON (A.RcdIdStEmpresa = B.MvrIdStEmpresa AND A.RcdIdStNumRecaudo = B.MvrIdStNumRecaudo) " & _
              "INNER JOIN TRANCONCEPTOSRECAUDOS C ON (B.MvrIdStEmpresaVehiculo = C.CrdIdStEmpresa AND B.MvrIdStConceptoRecaudo = C.CrdIdStConceptoRecaudo AND CrdIdInTipoRecaudo = '002') " & _
              "WHERE (A.RcdIdStEmpresa = '" & Empresa & "' AND A.RcdIdStComprobante = '" & vParametros(10) & "' AND " & _
                  "RcdDaFecha BETWEEN '" & Format(DTfechaI.value, FormatoFecha) & "' AND '" & Format(DTfechaF.value, FormatoFecha) & "') "
        If Buscar_Res(rdoRs, Sql) = BDOk Then
            While Not rdoRs.EOF
                  S = Trim("" & rdoRs!RcdIdStPlaca) & Format(rdoRs!RcdDaFecha, "dd-mm-yyyy")
                  M = "-1"
                  On Error Resume Next
                  M = vColAportes(S)
                  If M = "-1" Then
                        FGaportes.AddItem ""
                        FGaportes.TextMatrix(FGaportes.Rows - 1, 0) = Trim("" & rdoRs!RcdIdStPlaca)
                        FGaportes.TextMatrix(FGaportes.Rows - 1, 1) = Format(rdoRs!RcdDaFecha, "dd-mm-yyyy")
                        FGaportes.TextMatrix(FGaportes.Rows - 1, 2) = Val("" & rdoRs!MvrInValorTotal)
                        vColAportes.Add FGaportes.Rows - 1, S
                  Else
                        FGaportes.TextMatrix(M, 2) = Val(FGaportes.TextMatrix(M, 2)) + Val("" & rdoRs!MvrInValorTotal)
                  End If
                  rdoRs.MoveNext
            Wend
        End If
                    
        FGcontrolAporte.Rows = 1

        With FGcontrolAporte
             S1 = Year(Me.DTfechaF.value): s2 = Month(Me.DTfechaF.value)
             Sql = "SELECT CovIdStEmpresa,CovIdStPlaca,CovInControlUno,CovInControlDos,CovInControlTres,CovInControlCuatro,CovInValorFaltante,CovInValorAportes,CovInValorSobrante " & _
                   "FROM TRANCONTROLVEHICULOS WHERE CovInAno = " & S1 & " AND CovInMes = " & s2
             If Buscar_Res(rdoRs, Sql) = BDOk Then
                While Not rdoRs.EOF
                      M1 = Val("" & rdoRs!CovInValorAportes) + Val("" & rdoRs!CovInValorSobrante)
                      M2 = Val("" & rdoRs!CovInControlCuatro) + Val("" & rdoRs!CovInValorFaltante)
                      If M1 >= M2 Then
                             .AddItem ""
                             .TextMatrix(.Rows - 1, ctAporte.vehiculoc) = Trim("" & rdoRs!CovIdStPlaca)
                             .TextMatrix(.Rows - 1, ctAporte.empresac) = Trim("" & rdoRs!CovIdStEmpresa)
                             .TextMatrix(.Rows - 1, ctAporte.Aportadoc) = Val("" & rdoRs!CovInValorAportes)
                             .TextMatrix(.Rows - 1, ctAporte.sobrantec) = Val("" & rdoRs!CovInValorSobrante)
                             .TextMatrix(.Rows - 1, ctAporte.caterac) = Val("" & rdoRs!CovInValorSobrante)
                             .TextMatrix(.Rows - 1, ctAporte.control4) = Val("" & rdoRs!CovInControlCuatro)
                             
                             Gy = Trim("" & rdoRs!CovIdStEmpresa) & "-" & Trim("" & rdoRs!CovIdStPlaca)
                             
                             vColControlVehDespacho.Add .Rows - 1, Gy
                      End If
                      rdoRs.MoveNext
                Wend
             End If
        End With
                    
                    
                    
        With FGdespachos
             For i = 1 To .Rows - 1
                   If Trim(.TextMatrix(i, Datos.Fecha)) <> Empty And Trim(.TextMatrix(i, Datos.Vehiculo)) <> Empty Then
                         S = Trim(.TextMatrix(i, Datos.Vehiculo)) & Trim(.TextMatrix(i, Datos.Fecha))
                         M = "-1"
                         On Error Resume Next
                         M = vColAportes(S)
                         If M <> "-1" Then
                               .TextMatrix(i, Datos.vValorAporte) = Val(FGaportes.TextMatrix(M, 2))
                         End If
                         
                         If Val(.TextMatrix(i, Datos.vValorAporte)) = 0 And Val(.TextMatrix(i, Datos.vValorAporteDiario)) > 0 And Val(.TextMatrix(i, Datos.ReqAporteDiario)) = 1 Then
                              .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = vbRed
                         Else
                             If Val(.TextMatrix(i, Datos.vValorAporte)) = 0 And Val(.TextMatrix(i, Datos.vValorAporteDiario)) = 0 Then
                                  .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = &HFFFF80
                             End If
                         End If
                         
                         If Val(.TextMatrix(i, Datos.vReqCarteraCero)) = 1 Then
                                sr = Trim(.TextMatrix(i, Datos.CodEmpVehi)) & "-" & Trim(.TextMatrix(i, Datos.Vehiculo))
                                M = "-1"
                                On Error Resume Next
                                M = vColControlVehDespacho(sr)
                                If M <> "-1" Then
                                      .Cell(flexcpBackColor, i, 0, i, .Cols - 1) = &H80C0FF
                                End If
                         End If
                   End If
             Next i
        End With
        Exit Sub
SAlida: Call MensajeAdministrador
End Sub
} */
