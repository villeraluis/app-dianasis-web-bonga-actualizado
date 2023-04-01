<?php

namespace App\Http\Controllers\transporte\informes;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use stdClass;

class ListadoVehiculosController extends Controller
{


    public function viewListadoVehiculo()
    {

        //return $this->conMarca();

        return view('transporte.informes.listadoVehiculos.indexListadoVehiculo');
    }


    public function infListadoVehiculo(Request $request)

    {


        $datos = $this->consultaListadoVehiculo($request);

        //return $datos;


        if ($datos == null) {
            return "<div class='alert alert-primary m-2 col-11 text-center' role='alert'>
             No hay datos para Mostrar. 
          </div>";
        }


        return view('transporte.informes.listadoVehiculos.tablaListadoVehiculo', compact('datos'));
    }


    public function vFiltros($request)
    {

        $strFiltro = '';
        $idPlaca = $request->idPlaca;
        $idCentroCosto = $request->idCentroCosto;
        $idMarca = $request->idMarca;
        $idClase = $request->idClase;
        $idCapacidad = $request->idCapacidad;
        $idLinea = $request->idLinea;
        $idNivel = $request->idNivel;
        $idCombustible = $request->idCombustible;

        if ($idPlaca != null) {
            $strFiltro =  "$strFiltro  AND VehIdStPlaca LIKE '$idPlaca%'";
        }

        if ($idCentroCosto != null) {
            // X = Mid(PlaCentroCosto.Text,): Y = Mid(PlaCentroCosto.Text, )
            $x = substr("$idCentroCosto", 0, 2);
            $y = substr("$idCentroCosto", 2, 6);
            $strFiltro =  "$strFiltro   AND VehIdStCentroCosto ='$x' AND VehIdStSubcentroCosto = '$y'";
        }

        if ($idMarca != null) {
            $par0 = vParamTransporte(0);
            $strFiltro =  "$strFiltro   AND VehIdStMarcaVehiculo ='$idMarca'  AND VehIdStTablaMarca = '$par0'";
        }
        if ($idClase != null) {
            $vpar1 = vParamTransporte(1);
            $strFiltro =  "$strFiltro  AND VehIdStClaseVehiculo ='$idClase' AND VehIdStTablaClase = '$vpar1'";
        }
        if ($idCapacidad != null) {

            $par3 = vParamTransporte(3);
            $strFiltro =  "$strFiltro  AND VehIdStGrupoCapacidad ='$idCapacidad'  AND VehIdStTablaGrupoCapacidad = '$par3'";
        }
        if ($idLinea != null) {
            $par2 = vParamTransporte(2);
            $strFiltro =  "$strFiltro   AND VehIdStLineaServicio ='$idLinea' ' AND VehIdStTablaLineaServicio = '$par2'";
        }
        if ($idNivel != null) {
            $par5 = vParamTransporte(5);
            $strFiltro =  "$strFiltro   AND VehIdStNivelServicio ='$idNivel'  AND VehIdStTablaNivelServicio = '$par5'";
        }

        if ($idCombustible != null) {
            $par4 = vParamTransporte(4);
            $strFiltro =  "$strFiltro   AND VehIdStTipoCombustible ='$idCombustible'  AND VehIdStTablaTipoCombustible = '$par4'";
        }

        return  $strFiltro;
    }



    public function consultaListadoVehiculo($request)
    {
        cambioBaseDatos();
        $empresa = session('Empresa');
        $vFiltro = $this->vFiltros($request);
        $idPropietario = $request->idPropietario;
        //return $vFiltro;

        $sqlI = "SELECT A.*,B.TmaStDescripcionUna AS Clase,C.TmaStDescripcionUna AS Combustible,D.TmaStDescripcionUna AS Linea,E.TmaStDescripcionUna AS Capacidad,
          F.TmaStDescripcionUna AS Nivel,G.TmaStDescripcionUna AS Marca,H.*,I.CliStNombreCliente,J.*,K.CliStNombreCliente AS Propietario,S.CduStNumeroLicencia,S.CduIdStCategoriaLicencia,R.OtrStNombre,R.OtrStJuridiscion 
          FROM TRANVEHICULOS A 
          INNER JOIN TRANMAESTROS B ON (A.VehIdStClaseVehiculo= B.TmaIdStCodigo AND A.VehIdStTablaClase=B.TmaIdInTransTablas) 
          INNER JOIN TRANMAESTROS C ON (A.VehIdStTipoCombustible= C.TmaIdStCodigo AND A.VehIdStTablaTipoCombustible=C.TmaIdInTransTablas) 
          INNER JOIN TRANMAESTROS D ON (A.VehIdStLineaServicio= D.TmaIdStCodigo AND A.VehIdStTablaLineaServicio=D.TmaIdInTransTablas) 
          INNER JOIN TRANMAESTROS E ON (A.VehIdStGrupoCapacidad= E.TmaIdStCodigo AND A.VehIdStTablaGrupoCapacidad=E.TmaIdInTransTablas) 
          INNER JOIN TRANMAESTROS F ON (A.VehIdStNivelServicio= F.TmaIdStCodigo AND A.VehIdStTablaNivelServicio=F.TmaIdInTransTablas) 
          INNER JOIN TRANMAESTROS G ON (A.VehIdStMarcaVehiculo= G.TmaIdStCodigo AND A.VehIdStTablaMarca=G.TmaIdInTransTablas) 
          LEFT OUTER JOIN TRANORGANISMOTRANSITO R ON (A.VehIdInOrganismoTransito= R.OtrIdInOrganismo) 
          LEFT OUTER JOIN TRANVEHICULOCONDUCTOR H ON (A.VehIdStEmpresa = H.VcdIdStEmpresa AND A.VehIdStPlaca=H.VcdIdStPlacaVehiculo) 
          LEFT OUTER JOIN CLIENTES I ON (H.VcdIdStEmpresa = I.CliEmpr AND H.VcdIdStConductor = I.CliNit) 
          LEFT OUTER JOIN TRANCONDUCTORES S ON (H.VcdIdStEmpresa = S.CduIdStEmpresa AND H.VcdIdStConductor=S.CduIdStConductor)";

        if ($idPropietario != null) {
            $sql = $sqlI . " INNER JOIN TRANVEHICULOPROPIETARIOS J ON (A.VehIdStEmpresa = J.VpoIdStEmpresa AND A.VehIdStPlaca=J.VpoIdStPlacaVehiculo AND J.VpoIdStPropietario = '$idPropietario') 
            INNER JOIN CLIENTES K ON (J.VpoIdStEmpresa = K.CliEmpr AND J.VpoIdStPropietario = K.CliNit) 
            WHERE (A.VehIdStEmpresa = '$empresa'  $vFiltro ) ORDER BY VehIdStPlaca";
        } else {

            $sql = $sqlI . " LEFT OUTER JOIN TRANVEHICULOPROPIETARIOS J ON (A.VehIdStEmpresa = J.VpoIdStEmpresa AND A.VehIdStPlaca=J.VpoIdStPlacaVehiculo) 
            LEFT OUTER JOIN CLIENTES K ON (J.VpoIdStEmpresa = K.CliEmpr AND J.VpoIdStPropietario = K.CliNit) 
            WHERE (A.VehIdStEmpresa = '$empresa' $vFiltro ) 
            ORDER BY VehIdStPlaca";
        }

        $datos = DB::select($sql);



        $datostemp = [];
        $datRow1 = [];
        $posArr = null;
        $vColConductor = [];
        $vColPropietario = [];
        $tFGconductores = [];
        $tFGPropietarios = [];


        foreach ($datos as  $dato) {

            $v1 =  $dato->VehIdStPlaca;
            $existe = in_array($v1, $datostemp);




            if (!$existe) {


                $tFGconductores = [];
                $tFGPropietarios = [];

                if ($dato->VcdIdStConductor != null) {

                    $x1 = $dato->VehIdStPlaca . "-" . $dato->VcdIdStConductor;


                    if (!in_array($x1, $vColConductor)) {
                        array_push($tFGconductores, [
                            'Cedula' => $dato->VcdIdStConductor,
                            'Nombre' => $dato->CliStNombreCliente,
                            'Estado' => $dato->VcdStEstado,
                            'Principal' => $dato->VcdStPrincipal,
                            'Placa' => $dato->VehIdStPlaca,
                        ]);

                        array_push($vColConductor, $x1);
                    }
                }

                if ($dato->VpoIdStPropietario != null) {

                    $x1 = $dato->VehIdStPlaca . "-" . $dato->VpoIdStPropietario;

                    if (!in_array($x1,  $vColPropietario)) {

                        array_push($tFGPropietarios, [
                            'Cedula' => $dato->VpoIdStPropietario,
                            'Nombre' => $dato->Propietario,
                            'Estado' => $dato->VpoStEstado,
                            'Porcentaje' => $dato->VpoInPorParticipacion,
                            'Principal' => $dato->VpoStPrincipal,
                            'ResponRunt' => $dato->VpoStResponsableRunt,
                            'Placa' => $dato->VehIdStPlaca,
                        ]);

                        array_push($vColPropietario, $x1);
                    }
                }



                $tHoraAporte = '';


                $tNomConductor = '';
                $tCedulaConductor = '';
                $tLicencia = '';
                $tCategoria = '';
                $tCedulaPropietraio = '';
                $tNomPropietario = '';
                $tNombrePropRunt = '';
                $tCedulaPropRunt = '';
                $posArr = count($datRow1);


                if ($dato->VehDtHoraMinimaAporte != null) {
                    $tHoraAporte = $dato->VehDtHoraMinimaAporte;
                }


                if ($dato->VcdStPrincipal = "1") {
                    $tNomConductor = $dato->CliStNombreCliente;
                    $tCedulaConductor = $dato->VcdIdStConductor;
                    $tLicencia = $dato->CduStNumeroLicencia;
                    $tCategoria = $dato->CduIdStCategoriaLicencia;
                }



                if ($dato->VpoStPrincipal = "1") {
                    $tNomPropietario = $dato->Propietario;
                    $tCedulaPropietraio = $dato->VpoIdStPropietario;
                }



                if ($dato->VpoStResponsableRunt = "1") {
                    $tNombrePropRunt = $dato->Propietario;
                    $tCedulaPropRunt = $dato->VpoIdStPropietario;
                }


                array_push($datRow1, [

                    'NoRegs' => $posArr + 1,
                    'Placa' => $dato->VehIdStPlaca,
                    'NumeroInt' => $dato->VehIdInNumero,
                    'Descripcion' => $dato->VehStDescripcion,
                    'Clase' => $dato->Clase,
                    'TipoCombustible' => $dato->Combustible,
                    'LineaServicio' => $dato->Linea,
                    'Capacidad' => $dato->Capacidad,
                    'NivelServicio' => $dato->Nivel,
                    'Marca' => $dato->Marca,
                    'FondoMulta' => $dato->VehStSwFondoMultas,
                    'AyudaMutua' => $dato->VehStSwAyudaMutua,
                    'Estado' => $dato->VehStEstado,
                    'vBloqueoDespacho' => $dato->VehStBloquearDespacho,
                    'NoPuestos' => $dato->VehInNumeroPuestos,
                    'NoContrato' => $dato->VehIdStNumeroContrato,
                    'FechaAfiliacion' => $dato->VehDaFechaAfiliacion,
                    'FechaRetiro' => $dato->VehDaFechaRetiro,
                    'TarjetaOperacion' => $dato->VehStTarjetaOperacion,
                    'FecvenTarjetaOper' => $dato->VehDaFechaVenTarjeta,
                    'ReqTarjetaOper' => $dato->VehSwReqTarjeta,
                    'SegObligatorio' => $dato->VehStSeguroObligatorio,
                    'FecvenSegOblig' => $dato->VehDaFechaVenSeguro,
                    'ReqSeguroObli' => $dato->VehSwReqSeguro,
                    'CertificadoTm' => $dato->VehStCertificadoTM,
                    'FecvenCerTm' => $dato->VehDaFechaVenCertificadoTM,
                    'ReqCertificadoTm' => $dato->VehSwReqCertificadoTM,
                    'CertificadoTmBimestral' => $dato->VehStCertificadoTMBimestral,
                    'FecvenCerTmBimestral' => $dato->VehDaFechaVenCerTMBBimestral,
                    'ReqCertificadoTmBimestral' => $dato->VehSwReqCerTMBBimestral,
                    'SeguroContractual' => $dato->VehStSeguroContratual,
                    'FecvenSegContratual' => $dato->VehDaFechaVenSeguroContratual,
                    'ReqSegContratual' => $dato->VehSwReqSeguroContratual,
                    'SegExtraContratual' => $dato->VehStSeguroExtraContratual,
                    'FecvenSegExtraContratual' => $dato->VehDaFechaVenSegExtraCon,
                    'ReqSegExtraContratual' => $dato->VehStSwReqSegExtraCon,
                    'SeguroTodoRiesgo' => $dato->VehStSeguroTodoRiesgo,
                    'FecvenSegTodoRiesgo' => $dato->VehDaFechaVenSeguroTR,
                    'FecvenExtintor' => $dato->VehDaFechaVenExtintor,
                    'ReqSegTodoRiesgo' => $dato->VehStSwReqSeguroTR,
                    'NoChasis' => $dato->VehStNumeroChasis,
                    'NoMotor' => $dato->VehStNumeroMotor,
                    'Modelo' => $dato->VehInModeloVehiculo,
                    'FondoAccidente' => $dato->VehInVrFondoAccidente,
                    'ContijenciaJudicial' => $dato->VehInVrContijenciaJudicial,
                    'FondoReposicion' => $dato->VehInVrFondoReposicion,
                    'CentroCosto' => $dato->VehIdStCentroCosto,
                    'SubcentroCosto' => $dato->VehIdStSubcentroCosto,
                    'OrganismoTransito' => $dato->OtrStNombre,
                    'IdOrganismo' => $dato->OtrStJuridiscion,
                    'AporDiarioParametro' => $dato->VehStControlarAportesDiarios,
                    'AporteDiaAnterior' => $dato->VehStControlarAporteDiaAnterior,
                    'AporteDiario' => $dato->VehInVrAporteDiario,
                    'AporteDiarioCero' => $dato->VehInVrFondoReposicion,
                    'HoraAporte' => $tHoraAporte,
                    'MostrarControles' => $dato->VehStMostrarAportesControles,
                    'SoliAporteDiario' => $dato->VehStRequiereAportesDiarios,
                    'NomConductor' => $tNomConductor,
                    'CedulaConductor' => $tCedulaConductor,
                    'Licencia' => $tLicencia,
                    'Categoria' => $tCategoria,
                    'CedulaPropietraio' => $tCedulaPropietraio,
                    'NomPropietario' => $tNomPropietario,
                    'NombrePropRunt' => $tNombrePropRunt,
                    'CedulaPropRunt' => $tCedulaPropRunt,
                    'tFGconductores' => collect($tFGconductores),
                    'tFGPropietarios' => collect($tFGPropietarios)

                ]);

                array_push($datostemp, $v1);
            } else {

                if ($dato->VcdIdStConductor != null) {

                    $x1 = $dato->VehIdStPlaca . "-" . $dato->VcdIdStConductor;

                    if (!in_array($x1, $vColConductor)) {
                        array_push($tFGconductores, [
                            'Cedula' => $dato->VcdIdStConductor,
                            'Nombre' => $dato->CliStNombreCliente,
                            'Estado' => $dato->VcdStEstado,
                            'Principal' => $dato->VcdStPrincipal,
                            'Placa' => $dato->VehIdStPlaca,
                        ]);

                        array_push($vColConductor, $x1);
                    }
                }

                if ($dato->VpoIdStPropietario != null) {

                    $x1 = $dato->VehIdStPlaca . "-" . $dato->VpoIdStPropietario;

                    if (!in_array($x1,  $vColPropietario)) {

                        array_push($tFGPropietarios, [
                            'Cedula' => $dato->VpoIdStPropietario,
                            'Nombre' => $dato->Propietario,
                            'Estado' => $dato->VpoStEstado,
                            'Porcentaje' => $dato->VpoInPorParticipacion,
                            'Principal' => $dato->VpoStPrincipal,
                            'ResponRunt' => $dato->VpoStResponsableRunt,
                            'Placa' => $dato->VehIdStPlaca,
                        ]);

                        array_push($vColPropietario, $x1);
                    }
                }


                $datRow1[$posArr]['tFGconductores'] = collect($tFGconductores);
                $datRow1[$posArr]['tFGPropietarios'] = collect($tFGPropietarios);



                if ($dato->VcdStPrincipal = "1") {
                    $datRow1[$posArr]['NomConductor'] = $dato->CliStNombreCliente;
                    $datRow1[$posArr]['CedulaConductor'] = $dato->VcdIdStConductor;
                }

                if ($dato->VpoStPrincipal = "1") {
                    $datRow1[$posArr]['NomPropietario'] = $dato->Propietario;
                    $datRow1[$posArr]['CedulaPropietraio'] = $dato->VpoIdStPropietario;
                }

                if ($dato->VpoStResponsableRunt = "1") {
                    $datRow1[$posArr]['NombrePropRunt'] = $dato->Propietario;
                    $datRow1[$posArr]['CedulaPropRunt'] = $dato->VpoIdStPropietario;
                }
            }
        }

        return $datRow1;
    }
}
