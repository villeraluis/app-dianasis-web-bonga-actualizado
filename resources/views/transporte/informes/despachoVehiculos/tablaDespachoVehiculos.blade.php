<style>
    #tablaControlVehiculos .color-red>td {
        background-color: #f7ac9d85;

    }


    .div-btn-fil-tabla {
        display: flex;
        flex-direction: column;
        justify-content: space-between
    }


    .div-imput-fil {
        margin: 5px 0 0px 0;
    }

    @media (min-width: 768px) {

        .div-btn-fil-tabla {
            display: flex;
            flex-direction: row
        }


        .div-imput-fil {
            margin: 0 0 0 0;
        }

        .div-btns-export {
            flex-grow: 1;
            /* default 0 */
        }

    }

</style>



<div class="mt-2">

    <div class="div-btn-fil-tabla border ">

        <div class=" div-btns-export  text-center div-imput-fil">

            <x-botonExportarEcxel classTablaExport='ablaInformesExportTot' btnText='Exportar ' />
        </div>

        <div class="col-12 col-md-3 div-imput-fil ">
            <x-inputFiltroTabla idTabla=tablaDespachoveiculos />
        </div>
    </div>

    <div class=" border mt-1 div-fondo-tabla ">
        <div class="table-responsive  div-tabla-scroll-y">

            <table
                class="table  table-hover table-sm tablaInformesCustom tablaInformesExportTot tabla-head-fijo tabla-cols-fija"
                id="tablaDespachoveiculos" style="width: 100%;">

                <thead>
                    <tr>
                        <th hidden></th>
                        <th class="text-nowrap noExl">Ver Detalle</th>
                        <th class="text-nowrap ">Item</th>
                        <th class="text-nowrap ">numero</th>
                        <th class="text-nowrap ">Fecha</th>
                        <th class="text-nowrap ">Agencia</th>
                        <th class="text-nowrap ">Punto</th>
                        <th class="text-nowrap ">Usuario</th>
                        <th class="text-nowrap ">Vehiculo</th>
                        <th class="text-nowrap ">Empresa Vehiculo</th>
                        <th class="text-nowrap ">Propietario</th>
                        <th class="text-nowrap ">Conductor</th>
                        <th class="text-nowrap ">Ruta</th>
                        <th class="text-nowrap ">Recorrido</th>
                        <th class="text-nowrap ">FechaSalida</th>
                        <th class="text-nowrap ">FechaRegreso</th>
                        <th class="text-nowrap ">Tipo Planilla</th>
                        <th class="text-nowrap ">No. Planilla</th>
                        <th class="text-nowrap ">Ovserbación</th>
                        <th class="text-nowrap ">Planilla</th>
                        <th class="text-nowrap ">Aportes</th>
                        <th class="text-nowrap ">TarjetaOperacion</th>
                        <th class="text-nowrap ">SeguroObligatorio</th>
                        <th class="text-nowrap ">Tecnicomecanica</th>
                        <th class="text-nowrap ">SeguroContractual</th>
                        <th class="text-nowrap ">SeguroTodoRiesgo</th>
                        <th class="text-nowrap ">SeguroExtraContractual</th>
                        <th class="text-nowrap ">PasadoJudicial</th>
                        <th class="text-nowrap ">LicenciaConduccion</th>
                        <th class="text-nowrap ">Carnet</th>
                        <th class="text-nowrap ">Contigencia</th>
                        <th class="text-nowrap ">revisa Contgencia</th>
                        <th class="text-nowrap ">No. Alcolemia</th>
                        <th class="text-nowrap ">vr. Alcolemia</th>
                        <th class="text-nowrap ">Estado</th>
                        <th class="text-nowrap ">Celular</th>
                        <th class="text-nowrap ">Encuesta</th>
                        <th class="text-nowrap ">Req. Aporte Diario</th>
                        <th class="text-nowrap ">Valor Aporte Diario</th>
                        <th class="text-nowrap ">Control Cartera Cero</th>
                        <th class="text-nowrap ">Hora Aporte</th>
                        <th class="text-nowrap ">VBo. Contigencia</th>
                        <th class="text-nowrap ">VBo. usuario</th>
                        <th class="text-nowrap ">VBo. FechaHora</th>



                    </tr>
                </thead>
                <style>
                    #tablaDespachoveiculos .yel>td {
                        background-color: #f8fc197c;
                
                    }
                    #tablaDespachoveiculos .blu>td {
                        background-color: #00c3ffa1;
                
                    }
                    #tablaDespachoveiculos .red>td {
                        background-color: #e90303a9;
                
                    }
                   
                
                </style>

                <tbody>

                    @foreach ($datos as $dato)
                        <tr  class="{{$dato['color']}}">
                            <td hidden>{{ $dato['CodVehi'] .'+' .$dato['DesVehi'] .'+' .$dato['Destino'] .'+' .$dato['Fecha'] .'+' .$dato['vContigencia'] }}
                            </td>

                            <td class="text-center noExl">
                                <x-bntVerdetallesLup />
                            </td>

                            <td class="d-flex justify-content-between"
                                style="background-color: rgb(245, 189, 136); min-width: 50px!important">
                                <span>
                                    {{ $dato['Item'] }}
                                </span>
                                <span role="button" class="verAnulacionVe" title="Anulación de Despacho de vehículos ">
                                    <x-btnAddOpconesTabla xy=15 />
                                </span>
                            </td>


                            </td>
                            <td>{{ $dato['numero'] }}</td>
                            <td>{{ $dato['Fecha'] }}</td>
                            <td>{{ $dato['Agencia'] }}</td>
                            <td>{{ $dato['Punto'] }}</td>
                            <td>{{ $dato['CodUsuario'] }}</td>
                            <td>{{ $dato['Vehiculo'] }}</td>
                            <td>{{ $dato['NomEmpVehi'] }}</td>
                            <td>{{ $dato['Propie'] }}</td>
                            <td>{{ $dato['NomCon'] }}</td>
                            <td>{{ $dato['Ruta'] }}</td>
                            <td>{{ $dato['Tipo'] }}</td>
                            <td>{{ $dato['FechaSalida'] }}</td>
                            <td>{{ $dato['FechaRegreso'] }}</td>
                            <td>{{ $dato['tTipoPlanilla'] }}</td>
                            <td>{{ $dato['NumPlanilla'] }}</td>
                            <td>{{ $dato['Observacion'] }}</td>{{--  --}}
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['PagoPlanilla'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['PagoAportes'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['TarjetaOperacion'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['SeguroObligatorio'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['Tecnicomecanica'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['SeguroContractual'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['SeguroTodoRiesgo'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['SeguroExtraContractual'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['PasadoJudicial'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['LicenciaConduccion'] == '1') checked @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['Carnet'] == '1') checked @endif>
                            </td>

                            <td class="d-flex justify-content-between" style="background-color: rgb(245, 189, 136)">

                                <span>
                                    {{ $dato['vContigencia'] }}
                                </span>

                                @if ($dato['vContigencia'] == 1)
                                    <span role="button" class="vervalidarDesCont">
                                        <x-btnAddOpconesTabla xy=15 />
                                    </span>
                                @endif

                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['VBrevisaContg'] == '1') checked @endif>
                            </td>

                            <td>{{ $dato['vNumAlcolemia'] }}</td>
                            <td>{{ $dato['vValorAlcolemia'] }}</td>
                            <td>{{ $dato['tEstado'] }}</td>
                            <td>{{ $dato['TelefonoConductor'] }}</td>
                            <td>{{ $dato['RespuestaEncuesta'] }}</td>

                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['ReqAporteDiario'] == '1') checked @endif>
                            </td>
                            <td class="text-end">{{ esmoneda0dec($dato['vValorAporteDiario']) }}</td>

                            <td><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['vReqCarteraCero'] == '1') checked @endif>
                            </td>
                            <td>{{ $dato['tvHoraAporte'] }}</td>
                            <td>{{ $dato['VBcontigencia'] }}</td>
                            <td>{{ $dato['VBusuario'] }}</td>
                            <td>{{ $dato['VBFechaHora'] }}</td>

                        </tr>
                    @endforeach




                </tbody>

            </table>




        </div>
    </div>

</div>

<div>
    <div class="modal fade" id="ModalDetalle1DespachoVehiculos" data-bs-backdrop="static" data-bs-keyboard="false"
        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">{{ session('empresaNombre') }}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <div class="row border mb-3 pb-2">
                        <div class="col-12 col-md-4">
                            <b>Placa Vehículo</b>
                            <div class="border"><b class="modPlacaVeh" style="font-size: 20px"></b> </div>

                        </div>

                        <div class="col-12 col-md-8">
                            <div>Punto de Recaudo: <b><span class="modPuntoR"></span> </b></div>
                            <div>Número del Despacho: <b><span class="modNumDes"></span></b></div>

                        </div>

                    </div>


                    <div class="row border mb-2" style="min-height: 100px">
                        <h6 class="col-12 mb-2 header-informe"><b>
                                Información del Vehículo </b>
                        </h6>
                        <x-tranInputUnCampo label='Codigo' inId='idCodigo' inDesc='desCodigo' />
                        <x-tranInputUnCampo label='Descripción' inId='idDescrip' inDesc='desDescrip' />
                        <x-tranInputUnCampo label='Propietario' inId='idPropietario' inDesc='desPropietario' />

                    </div>

                    <div class="row border pt-2">

                        <x-tranInputUnCampo label='Conductor' inId='idConductor' inDesc='desConductor' />
                        <x-tranInputUnCampo label='Destino' inId='idDestino' inDesc='desDestino' />
                        <x-tranInputUnCampo label='Ruta' inId='idRuta' inDesc='desRuta' />
                        <x-tranInputUnCampo label='Recorrido' inId='idRecorrido' inDesc='desRecorrido' />
                        <x-tranInputUnCampo label='Salida' inId='idSalida' inDesc='desSalida' />
                        <x-tranInputUnCampo label='Regreso' inId='idRegreso' inDesc='desRegreso' />

                    </div>

                </div>

            </div>
        </div>
    </div>

    <div class="modal fade" id="ModalDetalle2DespachoVehiculos" data-bs-backdrop="static" data-bs-keyboard="false"
        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">{{ session('empresaNombre') }}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">



                    <div class="row border mb-3 pb-2">
                        <h6 class="col-12 mb-2 header-informe"><b>
                                Anulación Despacho Vehículos</b>
                        </h6>

                        <div class="col-12 col-md-4">
                            <b>No Despacho</b>
                            <div class="border"><b class="modNumDes" style="font-size: 20px"></b> </div>
                        </div>

                        <div class="col-12 col-md-8">
                            <div>Fecha de Despacho: <b><span class="fechadespacho2"></span></b></div>
                            <div>Punto de Recaudo: <b><span class="modPuntoR"></span></b></div>

                        </div>

                    </div>


                    <div class="row border mb-2" style="min-height: 100px">


                        <h6 class="col-12 mb-2 header-informe"><b>
                                Información del Vehículo </b>
                        </h6>

                        <div class="col-12 col-md-4">
                            <b>Placa Vehículo</b>
                            <div class="border"><b class="modPlacaVeh" style="font-size: 20px"></b> </div>
                        </div>

                        <div class="col-12 col-md-8">
                            <x-tranInputUnCampo label='Codigo' inId='idCodigo2' inDesc='desCodigo' />
                            <x-tranInputUnCampo label='Descripción' inId='idDescrip2 inDesc=' desDescrip' />
                            <x-tranInputUnCampo label='Propietario' inId='idPropietario2' inDesc='desPropietario' />

                        </div>


                    </div>

                    <div class="row  pt-2">

                        <div class="col-12 col-md-6">
                            <x-tranInputUnCampo label='Conductor' inId='idConductor2' inDesc='desConductor' />
                            <x-tranInputUnCampo label='Destino' inId='idDestino2' inDesc='desDestino' />

                        </div>

                        <div class="col-12 col-md-6">
                            <x-tranInputUnCampo label='Ruta' inId='idRuta2' inDesc='desRuta' />
                            <x-tranInputUnCampo label='Recorrido' inId='idRecorrido2' inDesc='desRecorrido' />
                        </div>

                    </div>


                    <div class="row border div-contingencia ">

                        <span class="col-12 mb-2 header-informe"><b>
                                Validación de Despacho por Contingencia </b>
                        </span>

                        <div class="col-12  d-flex  align-items-end">

                            <div class="row col-12  d-flex ">

                                <label for="" class="label-custom col-3 col-md-2"><b> Validar Despacho</b> </label>

                                <div class="col-2  mb-1">
                                    <select class="form-select form-select-sm" name="tipoPlantilla" aria-label="">
                                        <option value="0">SI</option>
                                        <option value="1">NO</option>

                                    </select>

                                </div>

                            </div>



                        </div>



                        <x-tranInputUnCampo label='Observaciones' inId='idObservaciones' inDesc='desObservaciones'
                            noread />


                    </div>



                </div>

            </div>
        </div>
    </div>
</div>



<style>
    .col-cus-1-fija {
        width: 20px !important;
        position: -webkit-sticky;
        position: sticky;
        left: 0;
        z-index: 9;
        background-color: var(--color-body) !important;
    }

    .col-cus-2-fija {
        width: 30px !important;
        position: -webkit-sticky;
        position: sticky;
        left: 20px;
        z-index: 9;
        background-color: var(--color-body) !important;
    }

    .oculta-div {

        display: none;


    }

</style>





<script>
    $(function() {










        $('#tablaDespachoveiculos tbody').on('click', '.ver-detalles', function(e) {


            $('#ModalDetalle1DespachoVehiculos').modal('show')


            const placa = ($(this).parent().parent().find('td').eq(8).text())
            const punto = ($(this).parent().parent().find('td').eq(6).text())
            const numero = $(this).parent().parent().find('td').eq(3).text()
            const propietario = ($(this).parent().parent().find('td').eq(10).text())
            const conductor = $(this).parent().parent().find('td').eq(11)
                .text()
            const ruta = $(this).parent().parent().find('td').eq(12)
                .text()
            const recorrido = $(this).parent().parent().find('td').eq(13)
                .text()
            const salida = $(this).parent().parent().find('td').eq(14)
                .text()
            const regreso = $(this).parent().parent().find('td').eq(15)
                .text()

            const [codigo, descripcion, destino, ] = ($(this).parent().parent().find('td').eq(0)
                .text()).split('+')


            $('.modPlacaVeh').text(placa)
            $('.modPuntoR').text(punto)
            $('.modNumDes').text(numero)
            $('#idCodigo').val(codigo)
            $('#idDescrip').val(descripcion)
            $('#idPropietario').val(propietario)
            $('#idConductor').val(conductor)
            $('#idDestino').val(destino)
            $('#idRuta').val(ruta)
            $('#idRecorrido').val(recorrido)
            $('#idSalida').val(salida)
            $('#idRegreso').val(regreso)



        })



        $('#tablaDespachoveiculos tbody').on('click', '.verAnulacionVe', function(e) {
            $('.div-contingencia').prop('hidden', true)

            $('#ModalDetalle2DespachoVehiculos').modal('show')


            const placa = ($(this).parent().parent().find('td').eq(8).text())
            const punto = ($(this).parent().parent().find('td').eq(6).text())
            const numero = $(this).parent().parent().find('td').eq(3).text()
            const propietario = ($(this).parent().parent().find('td').eq(10).text())
            const conductor = $(this).parent().parent().find('td').eq(11)
                .text()
            const ruta = $(this).parent().parent().find('td').eq(12)
                .text()
            const recorrido = $(this).parent().parent().find('td').eq(13)
                .text()
            const salida = $(this).parent().parent().find('td').eq(14)
                .text()
            const regreso = $(this).parent().parent().find('td').eq(15)
                .text()

            const [codigo, descripcion, destino, fecha] = ($(this).parent().parent().find('td').eq(0)
                .text()).split('+')


            $('.fechadespacho2').text(fecha)
            $('.modPlacaVeh').text(placa)
            $('.modPuntoR').text(punto)
            $('.modNumDes').text(numero)
            $('#idCodigo2').val(codigo)
            $('#idDescrip2').val(descripcion)
            $('#idPropietario2').val(propietario)
            $('#idConductor2').val(conductor)
            $('#idDestino2').val(destino)
            $('#idRuta2').val(ruta)
            $('#idRecorrido2').val(recorrido)




        })


        $('#tablaDespachoveiculos tbody').on('click', '.vervalidarDesCont', function(e) {


            const [codigo, descripcion, destino, fecha, contingencia] = ($(this).parent().parent().find(
                    'td').eq(0)
                .text()).split('+')


            if (contingencia == 1) {
                $('#ModalDetalle2DespachoVehiculos').modal('show')

                const placa = ($(this).parent().parent().find('td').eq(8).text())
                const punto = ($(this).parent().parent().find('td').eq(6).text())
                const numero = $(this).parent().parent().find('td').eq(3).text()
                const propietario = ($(this).parent().parent().find('td').eq(10).text())
                const conductor = $(this).parent().parent().find('td').eq(11)
                    .text()
                const ruta = $(this).parent().parent().find('td').eq(12)
                    .text()
                const recorrido = $(this).parent().parent().find('td').eq(13)
                    .text()
                const salida = $(this).parent().parent().find('td').eq(14)
                    .text()
                const regreso = $(this).parent().parent().find('td').eq(15)
                    .text()




                $('.fechadespacho2').text(fecha)
                $('.modPlacaVeh').text(placa)
                $('.modPuntoR').text(punto)
                $('.modNumDes').text(numero)
                $('#idCodigo2').val(codigo)
                $('#idDescrip2').val(descripcion)
                $('#idPropietario2').val(propietario)
                $('#idConductor2').val(conductor)
                $('#idDestino2').val(destino)
                $('#idRuta2').val(ruta)
                $('#idRecorrido2').val(recorrido)





                $('.div-contingencia').prop('hidden', false)

            }









        })





    })
</script>
