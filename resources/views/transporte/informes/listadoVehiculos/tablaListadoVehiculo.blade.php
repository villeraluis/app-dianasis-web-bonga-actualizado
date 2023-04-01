<style>
    #tablaListadoVehiculos .color-red>td {
        background-color: #f7ac9d85;

    }

</style>


<div class="mt-2">



    <div class="d-flex border ">

        <div class="flex-grow-1 text-center">
           
            <x-botonExportarEcxel />
        </div>


        <div class="col-12 col-md-3 ">
            <x-inputFiltroTabla idTabla=tablaListadoVehiculos/>

        </div>


    </div>



    <div class="border mt-1 div-fondo-tabla">

        <div class="div-cont-tablaListadoVehiculos table-responsive  div-tabla-scroll-y  ">



            <table
                class="table  table-hover table-sm tablaInformesCustom tablaInformesExport tabla-head-fijo tabla-cols-fija order-table"
                id="tablaListadoVehiculos" style="width: 100%;">


                <thead>
                    <tr class="">
                        <th hidden class="noExl"></th>
                        <th hidden class="noExl"></th>
                        <th rowspan="2" class="text-nowrap ">No.</th>
                        <th rowspan="2" class="text-nowrap ">Placa</th>
                        <th rowspan="2" class="text-nowrap ">Numero</th>
                        <th rowspan="2" class="text-nowrap ">Decripción</th>
                        <th rowspan="2" class="text-nowrap ">Clase</th>
                        <th rowspan="2" class="text-nowrap ">Marca</th>
                        <th rowspan="2" class="text-nowrap">No. Chasis</th>
                        <th class="text-nowrap text-center">Tipo</th>
                        <th class="text-nowrap text-center">Linea</th>
                        <th rowspan="2" class="text-nowrap text-center">No. Motor</th>
                        <th rowspan="2" class="text-nowrap">No. puestos</th>
                        <th rowspan="2" class="text-nowrap">Modelo</th>
                        <th rowspan="2" class="text-nowrap">Capacidad</th>
                        <th class="text-nowrap text-center">Nivel</th>
                        <th rowspan="2" class="text-nowrap">No. Contrato</th>
                        <th colspan="2" class="text-nowrap text-center">Fondo</th>
                        <th class="text-nowrap text-center">Fecha</th>
                        <th rowspan="2" class="text-nowrap">Estado</th>
                        <th class="text-nowrap text-center">Centro </th>
                        <th class="text-nowrap text-center">Subcentro </th>
                        <th class="text-nowrap text-center">Bloqueado </th>
                        <th class="text-nowrap text-center">Tarjeta </th>
                        <th class="text-nowrap text-center">Fecha vencimiento </th>
                        <th class="text-nowrap text-center">Requiere </th>
                        <th rowspan="2" class="text-nowrap">Seguro Obligatorio</th>

                        <th class="text-nowrap text-center">Fecha Vencimiento </th>
                        <th class="text-nowrap text-center">Requiere </th>
                        <th class="text-nowrap text-center">Certificado </th>
                        <th class="text-nowrap text-center">Fecha Vencimiento </th>
                        <th class="text-nowrap text-center">Requerido </th>
                        <th class="text-nowrap text-center">Seguro </th>
                        <th class="text-nowrap text-center">Fecha Vencimiento </th>
                        <th class="text-nowrap text-center">Requerido </th>
                        <th class="text-nowrap text-center">Seguro </th>
                        <th class="text-nowrap text-center">Fecha vencimiento </th>
                        <th class="text-nowrap text-center">Requerido </th>
                        <th class="text-nowrap text-center">Seguro </th>
                        <th class="text-nowrap text-center">Fecha vencimiento </th>
                        <th class="text-nowrap text-center">Requerido </th>
                        <th class="text-nowrap text-center">Certificado </th>
                        <th class="text-nowrap text-center">Fecha Vecimiento </th>
                        <th class="text-nowrap text-center">Requerido </th>
                        <th class="text-nowrap text-center">Fecha </th>
                        <th class="text-nowrap text-center">Valor </th>
                        <th class="text-nowrap text-center">Fondo </th>
                        <th class="text-nowrap text-center">Contingencia </th>
                        <th class="text-nowrap text-center">Fecha </th>
                        <th class="text-nowrap text-center">Cedula </th>
                        <th rowspan="2" class="text-nowrap text-center">Propietario Principal</th>
                        <th class="text-nowrap text-center">Cedula </th>
                        <th rowspan="2" class="text-nowrap text-center">Propietario Runt</th>
                        <th class="text-nowrap text-center">Cedula </th>
                        <th rowspan="2" class="text-nowrap text-center">Conductor Principal</th>

                        <th colspan="2" class="text-nowrap text-center">Licencia Conducción </th>

                        <th colspan="2" class="text-nowrap text-center">Organismo de Transito </th>

                        <th colspan="4" class="text-nowrap text-center">Aporte Diario </th>

                        <th class="text-nowrap text-center">Controlar Aportes</th>
                        <th class="text-nowrap text-center">Aporte Diario </th>
                        <th class="text-nowrap text-center">Mostrar </th>
                    </tr>

                    <tr>
                        <th hidden class="noExl"></th>
                        <th hidden class="noExl"></th>
                        <th class="text-nowrap text-center">Combustible</th>
                        <th class="text-nowrap text-center">Servicio</th>
                        <th class="text-nowrap text-center">Servicio</th>
                        <th class="text-nowrap">Ayuda</th>
                        <th class="text-nowrap">Multa</th>
                        <th class="text-nowrap">Afiliación</th>
                        <th class="text-nowrap text-center">Costos</th>
                        <th class="text-nowrap text-center">Costos</th>

                        <th class="text-nowrap text-center">Para Despacho</th>



                        <th class="text-nowrap text-center">Operación</th>
                        <th class="text-nowrap text-center">Tarjeta Operación</th>
                        <th class="text-nowrap text-center">Tarjeta Operación</th>


                        <th class="text-nowrap text-center">Seguro Obligatorio</th>
                        <th class="text-nowrap text-center">Seguro Obligatorio</th>
                        <th class="text-nowrap text-center">Tecnicomecanica</th>
                        <th class="text-nowrap text-center">Tecnicomecanica</th>
                        <th class="text-nowrap text-center">Tecnicomecanica </th>
                        <th class="text-nowrap text-center">Contractual</th>
                        <th class="text-nowrap text-center">Seguro Contractual</th>
                        <th class="text-nowrap text-center">Contractual</th>
                        <th class="text-nowrap text-center">Todo Riesgo</th>
                        <th class="text-nowrap text-center">Todo Riesgo</th>
                        <th class="text-nowrap text-center">Todo Riesgo</th>
                        <th class="text-nowrap text-center">Extracontractual</th>
                        <th class="text-nowrap text-center">Extracontractual</th>
                        <th class="text-nowrap text-center">Extracontractual</th>
                        <th class="text-nowrap text-center">CDA/CEA Bimestral</th>
                        <th class="text-nowrap text-center">CDA/CEA Bimestral</th>
                        <th class="text-nowrap text-center">CDA/CEA Bimestral</th>
                        <th class="text-nowrap text-center">Extintor</th>
                        <th class="text-nowrap text-center">Fondo Acidente</th>
                        <th class="text-nowrap text-center">Fondo Reposisión</th>
                        <th class="text-nowrap text-center">Contingencia Judicial</th>
                        <th class="text-nowrap text-center">Retiro</th>
                        <th class="text-nowrap text-center">Propietario</th>

                        <th class="text-nowrap text-center">Propietario Runt</th>

                        <th class="text-nowrap text-center">Conductor</th>

                        <th class="text-nowrap text-center">Numero</th>
                        <th class="text-nowrap text-center">Categoría</th>
                        <th class="text-nowrap text-center">Nombre</th>
                        <th class="text-nowrap text-center">Jurisdicción</th>
                        <th class="text-nowrap text-center">Solicita</th>
                        <th class="text-nowrap text-center">Valor</th>
                        <th class="text-nowrap text-center">Hora</th>
                        <th class="text-nowrap text-center">Cartera Cero</th>
                        <th class="text-nowrap text-center">Día Anterior</th>
                        <th class="text-nowrap text-center">Por Parametros</th>
                        <th class="text-nowrap text-center">Controles</th>
                    </tr>




                </thead>


                <tbody>


                    @foreach ($datos as $dato)
                        <tr style="cursor: pointer" class="trListadoVehiculo">
                            <td hidden class="noExl">{{ $dato['tFGconductores'] }}</td>
                            <td hidden class="noExl">{{ $dato['tFGPropietarios'] }}</td>

                            <td class="text-end">{{ $dato['NoRegs'] }}</td>
                            <td>{{ $dato['Placa'] }}</td>
                            <td class="text-end">{{ $dato['NumeroInt'] }}</td>
                            <td>{{ $dato['Descripcion'] }}</td>
                            <td>{{ $dato['Clase'] }}</td>
                            <td>{{ $dato['Marca'] }}</td>
                            <td>{{ $dato['NoChasis'] }}</td>
                            <td>{{ $dato['TipoCombustible'] }}</td>
                            <td>{{ $dato['LineaServicio'] }}</td>
                            <td>{{ $dato['NoMotor'] }}</td>
                            <td class="text-end">{{ $dato['NoPuestos'] }}</td>
                            <td>{{ $dato['Modelo'] }}</td>
                            <td>{{ $dato['Capacidad'] }}</td>
                            <td>{{ $dato['NivelServicio'] }}</td>
                            <td class="text-end">{{ $dato['NoContrato'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['AyudaMutua'] == '1') checked  @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['FondoMulta'] == '1') checked  @endif>
                            </td>
                            <td>{{ $dato['FechaAfiliacion'] }}</td>
                            <td>{{ $dato['Estado'] }}</td>
                            <td>{{ $dato['CentroCosto'] }}</td>
                            <td>{{ $dato['SubcentroCosto'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['vBloqueoDespacho'] == '1') checked  @endif>
                            </td>
                            <td>{{ $dato['TarjetaOperacion'] }}</td>
                            <td>{{ $dato['FecvenTarjetaOper'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['ReqTarjetaOper'] == '1') checked  @endif>
                            </td>
                            <td>{{ $dato['SegObligatorio'] }}</td>
                            <td>{{ $dato['FecvenSegOblig'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['ReqSeguroObli'] == '1') checked  @endif>
                            </td>
                            <td>{{ $dato['CertificadoTm'] }}</td>
                            <td>{{ $dato['FecvenCerTm'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['ReqCertificadoTm'] == '1') checked  @endif>
                            </td>

                            <td>{{ $dato['SeguroContractual'] }}</td>
                            <td>{{ $dato['FecvenSegContratual'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['ReqSegContratual'] == '1') checked  @endif>
                            </td>

                            <td>{{ $dato['SeguroTodoRiesgo'] }}</td>
                            <td>{{ $dato['FecvenSegTodoRiesgo'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['ReqSegTodoRiesgo'] == '1') checked  @endif>
                            </td>

                            <td>{{ $dato['SegExtraContratual'] }}</td>
                            <td>{{ $dato['FecvenSegExtraContratual'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['ReqSegExtraContratual'] == '1') checked  @endif>
                            </td>

                            <td>{{ $dato['CertificadoTmBimestral'] }}</td>
                            <td>{{ $dato['FecvenCerTmBimestral'] }}</td>
                            <td>{{ $dato['ReqCertificadoTmBimestral'] }}</td>
                            <td>{{ $dato['FecvenExtintor'] }}</td>
                            <td class="text-end">{{ $dato['FondoAccidente'] }}</td>
                            <td class="text-end">{{ $dato['FondoReposicion'] }}</td>
                            <td class="text-end">{{ $dato['ContijenciaJudicial'] }}</td>
                            <td>{{ $dato['FechaRetiro'] }}</td>
                            <td class="text-end">{{ $dato['CedulaPropietraio'] }}</td>
                            <td>{{ $dato['NomPropietario'] }}</td>
                            <td class="text-end">{{ $dato['CedulaPropRunt'] }}</td>
                            <td>{{ $dato['NombrePropRunt'] }}</td>
                            <td class="text-end">{{ $dato['CedulaConductor'] }}</td>
                            <td>{{ $dato['NomConductor'] }}</td>
                            <td class="text-end">{{ $dato['Licencia'] }}</td>
                            <td>{{ $dato['Categoria'] }}</td>
                            <td>{{ $dato['OrganismoTransito'] }}</td>
                            <td>{{ $dato['IdOrganismo'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['SoliAporteDiario'] == '1') checked  @endif>
                            </td>

                            <td class="text-end">{{ $dato['AporteDiario'] }}</td>
                            <td>{{ $dato['HoraAporte'] }}</td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['AporteDiarioCero'] == '1') checked  @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['AporteDiaAnterior'] == '1') checked  @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['AporDiarioParametro'] == '1') checked  @endif>
                            </td>
                            <td class="text-center"><input class="form-check-input" disabled type="checkbox"
                                    @if ($dato['MostrarControles'] == '1') checked  @endif>
                            </td>


                        </tr>
                    @endforeach



                </tbody>


            </table>

        </div>


    </div>



    <div class="row border mt-1" style="max-height: 140px; min-height: 140px;">


        <div class="col-12 col-md-6 ">
            <div class="table-responsive  border">

                <table class="table  table-hover table-sm tablaInformesCustom  tabla-head-fijo " id="tFGPropietarios"
                    style="width: 600px; ">

                    <thead>
                        <tr>
                            <th scope="col" class="text-nowrap ">Identificación</th>
                            <th scope="col" class="text-nowrap ">Nombres Del Propietario</th>
                            <th scope="col" class="text-nowrap ">Porcentaje</th>
                            <th scope="col" class="text-nowrap ">Estado</th>
                            <th scope="col" class="text-nowrap ">Principal</th>
                            <th scope="col" class="text-nowrap ">Resp. Runt</th>
                            <th scope="col" class="text-nowrap ">Placa</th>
                        </tr>




                    </thead>

                    <tbody>

                    </tbody>

                </table>


            </div>


        </div>

        <div class="col-12 col-md-6">
            <div class="table-responsive  border ">


                <table class="table  table-hover table-sm tablaInformesCustom  tabla-head-fijo " id="tFGconductores"
                    style="width: 600px; ">

                    <thead>

                        <tr>
                            <th scope="col" class="text-nowrap ">Identificación</th>
                            <th scope="col" class="text-nowrap ">Nombres Del Conductor</th>
                            <th scope="col" class="text-nowrap ">Estado</th>
                            <th scope="col" class="text-nowrap ">Principal</th>
                            <th scope="col" class="text-nowrap ">Placa</th>
                        </tr>

                    </thead>

                    <tbody>





                    </tbody>

                </table>




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

</style>


{{-- <script type="text/javascript">
    (function(document) {
        'use strict';

        var LightTableFilter = (function(Arr) {

            var _input;

            function _onInputEvent(e) {
                _input = e.target;
                var tables = document.getElementsByClassName(_input.getAttribute('data-table'));
                Arr.forEach.call(tables, function(table) {
                    Arr.forEach.call(table.tBodies, function(tbody) {
                        Arr.forEach.call(tbody.rows, _filter);
                    });
                });
            }

            function _filter(row) {
                var text = row.textContent.toLowerCase(),
                    val = _input.value.toLowerCase();
                row.style.display = text.indexOf(val) === -1 ? 'none' : 'table-row';
            }

            return {
                init: function() {
                    var inputs = document.getElementsByClassName('light-table-filter');
                    Arr.forEach.call(inputs, function(input) {
                        input.oninput = _onInputEvent;
                    });
                }
            };
        })(Array.prototype);

        document.addEventListener('readystatechange', function() {
            if (document.readyState === 'complete') {
                LightTableFilter.init();
            }
        });

    })(document);
</script> --}}





<script>
    $(function() {

        $('.div-fondo-tabla').height($('.div-cont-tablaListadoVehiculos').height())


        $('.trListadoVehiculo').on('click', (e) => {
            const col1Tabla = 0
            const col2Tabla = 1

            const tFGconductores = JSON.parse($($(e.currentTarget).children()[col1Tabla]).text())
            const tFGPropietarios = JSON.parse($($(e.currentTarget).children()[col2Tabla]).text())

            let htmlCon = ''
            let htmProp = ''

            for (conductor of tFGconductores) {
                const check = (conductor.Principal == '1') ? 'checked' : ''
                htmlCon += `<tr>
                        <td>${conductor.Cedula}</td>
                        <td>${conductor.Nombre}</td>
                        <td>${conductor.Estado}</td>
                        <td> <input class="form-check-input" disabled type="checkbox"  ${check}> </td>
                        <td> ${conductor.Placa}</td>
                    </tr>`
            }

            for (propietario of tFGPropietarios) {
                const check1 = (propietario.Principal == '1') ? 'checked' : ''
                const check2 = (propietario.ResponRunt == '1') ? 'checked' : ''
                htmProp += `<tr>
                        <td>${propietario.Cedula}</td>
                        <td>${propietario.Nombre}</td>
                        <td>${propietario.Porcentaje}</td>
                        <td>${propietario.Estado}</td>
                        <td><input class="form-check-input" disabled type="checkbox"  ${check1}></td>
                        <td><input class="form-check-input" disabled type="checkbox"  ${check2}></td>
                        <td>${propietario.Placa}</td>
                    </tr>`
            }

            $('#tFGconductores>tbody').empty().append(htmlCon)
            $('#tFGPropietarios>tbody').empty().append(htmProp)

        })





    })















    //###############control del grafico
</script>
