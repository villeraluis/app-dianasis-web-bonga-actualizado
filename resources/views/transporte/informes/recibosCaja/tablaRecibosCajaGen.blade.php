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

            <span role="button" class="btn btn-secondary btn-sm btn-consolidado active">Consolidado</span>

            <span role="button" class="btn btn-secondary btn-sm  btn-detallado "> Detallado</span>

            <button type="button" class="btn btn-danger btn-dange btn-sm btn-oculto-movil" data-bs-toggle="modal"
                data-bs-target="#modalBtnExport">
                Exportar
            </button>
        </div>

        <div class="col-12 col-md-3 div-imput-fil ">
            <x-inputFiltroTabla idTabla=tablaGenRecibosCaja />

        </div>



        <!-- Modal -->
        <div class="modal fade " id="modalBtnExport" tabindex="-1" aria-labelledby="modalBtnExportLabel"
            aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-body row ">

                        <span class="m-1 col-12 text-center">
                            <x-botonExportarEcxel classTablaExport='tablaInformesExportRes'
                                btnText='Exportar Consolidado' />
                        </span>

                        <span class="m-1 col-12 text-center">
                            <x-botonExportarEcxel classTablaExport='tablaInformesExportTot' btnText='Exportar Detallado'
                                noJs />
                        </span>

                    </div>

                </div>
            </div>
        </div>


    </div>

    <div class="border mt-1 div-tabla-consolidado" style="max-height: 140px; min-height: 140px;">
        <div class="table-responsive  " style="max-height: 140px;">


            <table
                class="table  table-hover table-sm tablaInformesCustom tablaInformesExportRes tabla-head-fijo tabla-cols-fija"
                id="tablaControlVehiculos" style="width: 600px; ">

                <thead>
                    <tr>

                        <th scope="col" class="text-nowrap ">Código</th>
                        <th scope="col" class="text-nowrap ">Descripcón</th>
                        <th scope="col" class="text-nowrap ">Valor</th>
                        <th scope="col" class="text-nowrap ">Vr. Anticipo</th>
                        <th scope="col" class="text-nowrap ">Vr. Total</th>
                    </tr>




                </thead>

                <tbody>

                    @php
                        
                        $tVrPlanilla = 0;
                        $tVrAportes = 0;
                        $tVrSobrante = 0;
                        $tVrFaltante = 0;
                        $tCarteraVieja = 0;
                        $tCarteraMes = 0;
                        $tVrControl1 = 0;
                        $tVrControl2 = 0;
                        $tVrControl3 = 0;
                        $tVrControl4 = 0;
                        $tVrSegSocial = 0;
                        $tVrPrestaciones = 0;
                        $tVrParafiscales = 0;
                        $tVrOtros = 0;
                        
                    @endphp






                    @foreach ($datos[1] as $dato)
                        <tr>

                            <td>{{ $dato['tCodigo'] }}</td>
                            <td>{{ $dato['tNombre'] }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tValor']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tAnticipo']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tTotal']) }}</td>
                    @endforeach




                </tbody>

            </table>




        </div>








    </div>



    <div class=" border mt-1 div-fondo-tabla div-tabla-detallado">
        <div class="table-responsive  div-tabla-scroll-y">

            <table
                class="table  table-hover table-sm tablaInformesCustom tablaInformesExportTot tabla-head-fijo tabla-cols-fija"
                id="tablaGenRecibosCaja" style="width: 100%;">

                <thead>
                    <tr>

                        <th hidden class="noExl"></th>
                        <th class="text-nowrap noExl">Ver Detalle</th>
                        <th scope="col" class="text-nowrap ">Número</th>
                        <th scope="col" class="text-nowrap ">Fecha</th>
                        <th scope="col" class="text-nowrap ">Cuadre</th>
                        <th scope="col" class="text-nowrap ">Agencia</th>
                        <th scope="col" class="text-nowrap ">Punto</th>
                        <th scope="col" class="text-nowrap ">Usuario</th>
                        <th class="text-nowrap">Vehiculo</th>
                        <th class="text-nowrap" style="min-width: 75px">Valor</th>
                        <th class="text-nowrap" style="min-width: 75px">Iva</th>
                        <th class="text-nowrap" style="min-width: 75px">Total</th>
                        <th class="text-nowrap" style="min-width: 75px">Vr. Anticipo PAQ</th>
                        <th class="text-nowrap" style="min-width: 75px">Vr. Plantilla</th>
                        <th class="text-nowrap" style="min-width: 75px">Vr.Comple. Pla</th>
                        <th class="text-nowrap" style="min-width: 75px">Vr.Aporte</th>
                        <th class="text-nowrap" style="min-width: 75px">Vr. Otros</th>
                        <th class="text-nowrap">Empresa</th>
                        <th class="text-nowrap">Ruta</th>
                        <th class="text-nowrap">Destino</th>
                        <th class="text-nowrap">Propietario</th>
                        <th class="text-nowrap">Conductor</th>
                        <th class="text-nowrap">Estado</th>

                    </tr>

                </thead>

                <tbody>

                    @php
                        
                        $tVrRecibo = 0;
                        $tVrIva = 0;
                        $tVrTotal = 0;
                        $tVrAnticipo = 0;
                        $tVrPlanilla = 0;
                        $tVrAporte = 0;
                        $tVrComplemento = 0;
                        $tvOtros = 0;
                        
                    @endphp



                    @foreach ($datos[0] as $dato)
                        @php
                            $tVrRecibo += $dato['tVrRecibo'];
                            $tVrIva += $dato['tVrIva'];
                            $tVrTotal += $dato['tVrTotal'];
                            $tVrAnticipo += $dato['tVrAnticipo'];
                            $tVrPlanilla += $dato['tVrPlanilla'];
                            $tVrAporte += $dato['tVrAporte'];
                            $tvOtros += $dato['tvOtros'];
                            $tVrComplemento += $dato['tVrComplemento'];
                            
                        @endphp
                    @endforeach

                    <tr class="tr-totales">
                        <td hidden class="noExl"></td>
                        <td class="text-center noExl"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>TOTALES</td>
                        <td class="text-end">{{ esmoneda0dec($tVrRecibo) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrIva) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrTotal) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrAnticipo) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrPlanilla) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrComplemento) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrAporte) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tvOtros) }}</td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>







                    @foreach ($datos[0] as $dato)
                        <tr>
                            <td hidden class="noExl"> <span
                                    class="tdatosFg">{{ $dato['tdatosFg'] }}</span> <span
                                    class="tdatosAportes">{{ $dato['tdatosAportes'] }}</span>
                                <span class="datoCom">{{ $dato['datoCom'] }}</span>
                            </td>
                            <td class="text-center noExl">
                                <x-bntVerdetallesLup />
                            </td>
                            <td>{{ $dato['Numero'] }}</td>
                            <td>{{ $dato['Fecha'] }}</td>
                            <td>{{ $dato['Cuadre'] }}</td>
                            <td>{{ $dato['Agencia'] }}</td>
                            <td>{{ $dato['Punto'] }}</td>
                            <td>{{ $dato['CodUsuario'] }}</td>
                            <td>{{ $dato['Vehiculo'] }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrRecibo']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrIva']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrTotal']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrAnticipo']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrPlanilla']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrComplemento']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrAporte']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tvOtros']) }}</td>
                            <td>{{ $dato['NomEmpVehi'] }}</td>
                            <td>{{ $dato['Ruta'] }}</td>
                            <td>{{ $dato['Destino'] }}</td>
                            <td>{{ $dato['Propie'] }}</td>
                            <td>{{ $dato['NomCon'] }}</td>
                            <td>{{ $dato['Estado'] }}</td>
                        </tr>
                    @endforeach

                </tbody>

            </table>




        </div>
    </div>






</div>

<div>
    <div class="modal fade" id="ModalDetalleRecibosCaja" data-bs-backdrop="static" data-bs-keyboard="false"
        tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="staticBackdropLabel">{{ session('empresaNombre') }}</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">

                    <div class="row border mb-3">
                        <div class="col-12 col-md-4">

                            <div>No Recibo: <b> <span class="modNro"></span></b></div>
                            <div>Fecha : <b> <span class="modfecha"></span> </b></div>
                            <div>Vehiculo: <b> <span class="modVehiculo"></span></b></div>
                            <div>Propietario: <b> <span class="modPropietario"></span></b></div>
                            <div>Conductor: <b> <span class="modConductor"></span></b></div>

                        </div>

                        <div class="col-12 col-md-4">

                            <div>Valor: <b><span class="modValor"></span> </b></div>
                            <div>Vr IVA: <b><span class="modIva"></span></b></div>
                            <div>TOTAL: <b><span class="modTotal"></span></b></div>

                        </div>



                    </div>


                    <div class="row border" style="min-height: 100px">
                        <h6 class="col-12 mb-2 header-informe"><b>
                                Detalle Recibo de Caja - {{ session('empresaNombre') }}</b>
                        </h6>

                        <span class="col-12 "><b>Planilla de Administración</b></span>

                        <div class="col-12 table-responsive">

                            <table class="table  table-hover table-sm tablaInformesCustom"
                                id="tablaDetRecCaTraPlanillaAdm" style="width:100%; ">
                                <thead>
                                    <tr>
                                        <th scope="col">Item</th>
                                        <th scope="col">Código</th>
                                        <th scope="col" class="text-center">Descripción</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col" class=" text-end">Valor</th>
                                        <th scope="col" class=" text-center">% IVA</th>
                                        <th scope="col" class=" text-end">Vr IVA</th>
                                        <th scope="col" class=" text-end">Valor Total</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {{-- contenido agregado co jquery js --}}
                                </tbody>
                            </table>

                        </div>

                        <span class="col-12 "><b>Aportes</b></span>

                        <div class="col-12 table-responsive">

                            <table class="table  table-hover table-sm tablaInformesCustom" id="tablaDetRecCaTraAportes"
                                style="width:100%; ">
                                <thead>
                                    <tr>
                                        <th scope="col">Item</th>
                                        <th scope="col">Codigo</th>
                                        <th scope="col" class="text-center">Descripción</th>
                                        <th scope="col">Cantidad</th>
                                        <th scope="col" class=" text-end">Valor</th>
                                        <th scope="col" class=" text-center">% IVA</th>
                                        <th scope="col" class=" text-end">Vr IVA</th>
                                        <th scope="col" class=" text-end">Valor Total</th>
                                    </tr>
                                </thead>
                                <tbody>

                                    {{-- contenido agregado co jquery js --}}
                                </tbody>
                            </table>

                        </div>








                    </div>

                    <div class="row border">
                        <div class="col-md-4 ms-auto">

                            {{-- <div class="form-group row mt-3">
                            <label for="inputEmail3" class="col-sm-6 col-form-label text-end">Valor Flete: </label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control form-control-sm valorFlete">
                            </div>
                        </div>
                        <div class="form-group row mt-1">
                            <label for="inputEmail3" class="col-sm-6 col-form-label text-end">Descuento
                                Financiero:</label>
                            <div class="col-sm-5">
                                <input type="text" class="form-control form-control-sm valorDescuentoFinanciero">
                            </div>
                        </div> --}}

                        </div>

                        <div class="col-md-6 ms-auto  divFootDetalleFacProductos" style="font-weight: bolder;">

                        </div>
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








        $('#tablaGenRecibosCaja tbody').on('click', '.ver-detalles', function(e) {


            const tdatosFg = JSON.parse($(this).parent().parent().find('td').eq(0).find('.tdatosFg')
                .text())

            const tdatosAportes = JSON.parse($(this).parent().parent().find('td').eq(0).find(
                '.tdatosAportes').text())

            const [datoPr, ] = (JSON.parse($(this).parent().parent().find('td').eq(0).find('.datoCom')
                .text())) //datos principales del registro

            console.log(tdatosFg)
            console.log(tdatosAportes)


            $('.modNro').text(datoPr.MvrIdStNumRecaudo)
            $('.modfecha').text(datoPr.RcdDaFecha)
            $('.modVehiculo').text(datoPr.RcdIdStPlaca)
            $('.modPropietario').text(datoPr.CliStNombreCliente)
            $('.modConductor').text(datoPr.NomPropietario)
            $('.modValor').text(datoPr.RcdInValorTotal)
            $('.modIva').text(datoPr.MvrInValorIva)
            $('.modTotal').text(datoPr.RcdInValorTotal)

            let html = ''

            for (datoFg of tdatosFg) {


                html += ` <tr>
                    <td>${datoFg.tItem}</td>
                    <td>${datoFg.tCodigo}</td>
                    <td class=" text-left" style="white-space:nowrap;">${datoFg.tNombre}</td>
                    <td></td>
                    <td class=" text-end">${datoFg.tValor}</td>
                    <td class=" text-end">${formatoMoneda(datoFg.tPorIva)}</td>
                    <td class=" text-end">${formatoMoneda(datoFg.tValorIva)}</td>
                    <td class=" text-end">${formatoMoneda(datoFg.tValorTotal)}</td>
                     
                </tr> `;

            }

            $('#tablaDetRecCaTraPlanillaAdm>tbody').empty().append(html);

            ////

            let html2 = ''

            for (datoFg of tdatosAportes) {


                html2 += ` <tr>
                    <td>${datoFg.tItem}</td>
                    <td>${datoFg.tCodigo}</td>
                    <td class=" text-left" style="white-space:nowrap;">${datoFg.tNombre}</td>
                    <td></td>
                    <td class=" text-end">${datoFg.tValor}</td>
                    <td class=" text-end">${formatoMoneda(datoFg.tPorIva)}</td>
                    <td class=" text-end">${formatoMoneda(datoFg.tValorIva)}</td>
                    <td class=" text-end">${formatoMoneda(datoFg.tValorTotal)}</td>
                     
                </tr> `;

            }

            $('#tablaDetRecCaTraAportes>tbody').empty().append(html2);






            $('#ModalDetalleRecibosCaja').modal('show');

        })





    })
</script>
