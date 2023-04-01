<div>

    <div class="border text-center p-1">




       {{--  <x-botonExportarEcxel /> --}}


    </div>
    <div class="table-responsive my-2 div-tabla div-tabla-ventas-oculto">
        <table class="table mt-4  display compact table-hover table-sm tablaInformesCustom tablaInformesExport"
            id="tablacargoCuentasPagar" style="width: 100%">

            <thead>
                <tr>
                    <th hidden></th>
                    <th scope="col" class="text-left" style="width: 5px">Consecutivo</th>
                    <th scope="col">No. Factura</th>
                    <th scope="col">Fecha</th>
                    <th scope="col" class="text-center" style="20%">Proveedor</th>
                    <th scope="col" class="text-center" style="20%">Descripción</th>
                    <th scope="col" class="text-center" style="width: 7%">Subtotal</th>
                    <th scope="col" class="text-center" style="width: 7%">Valor Iva</th>
                    <th scope="col" class="text-center" style="width: 7%">Total Factura</th>
                    <th scope="col" class="text-center" style="width: 7%">Vr. Anticipo</th>
                    <th scope="col" class="text-center" style="width: 7%">Vr. Retención</th>
                    <th scope="col" class="text-center" style="width: 10%">Vr.a Proveedores</th>
                    <th scope="col" class="text-center" style="width: 5%">Ver Det</th>

                </tr>
            </thead>

            <tbody>
                @php
                    $i = 1;
                    
                    $subtotal = 0;
                    $comInValorAnticipo = 0;
                    $valorIva = 0;
                    $totalFac = 0;
                    $totalRet = 0;
                    $totalProv = 0;
                    
                @endphp

                @foreach ($datos as $dato)
                    @php
                        $subtotal += $dato['ComInValor'];
                        $valorIva += $dato['ComInValorIva'];
                        $totalFac += $dato['totalfactura'];
                        $comInValorAnticipo += $dato['ComInValorAnticipo'];
                        $totalRet += $dato['ComInValorRetencion'];
                        $totalProv += $dato['totalProv'];
                        
                    @endphp


                @endforeach

                <tr class="tr-totales">
                    <th hidden></th>
                    <th scope="col"></th>
                    <th scope="col" class="text-center">Totales</th>

                    <th></th>
                    <th></th>
                    <th></th>
                    <th scope="col" class="text-end">
                        {{ esMoneda2dec($subtotal) }}</th>
                    <th scope="col" class="text-end">
                        {{ esMoneda2dec($valorIva) }}</th>
                    <th scope="col" class="text-end">
                        {{ esMoneda2dec($totalFac) }}</th>
                    <th scope="col" class="text-end">
                        {{ esMoneda2dec($comInValorAnticipo) }}</th>
                    <th scope="col" class="text-end">
                        {{ esMoneda2dec($totalRet) }}</th>
                    <th scope="col" class="text-end">
                        {{ esMoneda2dec($totalProv) }}</th>


                    <th></th>


                </tr>


                @foreach ($datos as $dato)

                    <tr>


                        <td hidden>{{ $dato['datos'] }}</td>
                        <td class="">{{ $dato['ComIdStDocumento'] }}</td>
                        <td>{{ $dato['ComIdStDocumentoSoporte'] }}</td>
                        <td>{{ $dato['ComDaFechaFactura'] }}</td>
                        <td class="text-left">{{ $dato['NombreProv'] }}</td>
                        <td class="text-left">{{ $dato['ComStDescripcion'] }}</td>
                        <td class="pr-2 text-end">{{ esMoneda2dec($dato['ComInValor']) }}</td>
                        <td class="pr-2 text-end">{{ esMoneda2dec($dato['ComInValorIva']) }}</td>
                        <td class="pr-2 text-end">{{ esMoneda2dec($dato['totalfactura']) }}</td>
                        <td class="pr-2 text-end">{{ esMoneda2dec($dato['ComInValorAnticipo']) }}</td>

                        <td class=" pr-2 text-end">{{ esMoneda2dec($dato['ComInValorRetencion']) }}</td>
                        <td class=" pr-2 text-end"><span
                                class="">{{ esMoneda2dec($dato['totalProv']) }}</span> </td>


                        <td class="text-center">
                            <x-botonVerDetallesLupa />
                        </td>


                    </tr>
                @endforeach




            </tbody>

        </table>


    </div>
</div>


<div class="modal fade" id="ModalDetalles" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">{{ session('empresaNombre') }}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <div class="row border mb-3">
                    <div class="col-12 col-md-4">

                        <div>Factura: <b> <span class="desFactura"></span></b></div>
                        <div>Fecha : <b> <span class="fechaFac"></span> </b></div>
                        <div>Proveedor: <b> <span class="clienteFact"></span></b></div>

                    </div>

                    <div class="col-12 col-md-4">

                        <div>Valor: <b><span class="valorfacv"></span></b></div>
                        <div>Vr. Iva: <b><span class="vrIva"></span> </b></div>
                        <div>Vr. Retefuente : <b><span class="vrRetefuente"></span></b></div>

                    </div>


                </div>

                <div class="row border" style="min-height: 100px">
                    <h6 class="col-12 mb-2 header-informe"><b>Detalle de la Compra -
                            {{ session('empresaNombre') }}</b>
                    </h6>


                    <div class="col-12 table-responsive">



                        <table class="table  table-hover table-sm tablaInformesCustom" id="tablaModalDetalles"
                            style="width:100%; ">
                            <thead>
                                <tr>
                                    <th scope="col">Cuenta</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col" class="text-center">Descripción</th>
                                    <th scope="col" class=" text-end">Valor Debito</th>
                                    <th scope="col" class=" text-end">Valor Credito</th>

                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>

                    </div>


                </div>


            </div>

        </div>
    </div>
</div>




<script>
    el()
    $(function() {
        $(".div-card-consulta,.divParamtros").prop("hidden", false);
    })

    function el() {


        const idTabla = '#tablacargoCuentasPagar',
            idModal = '#ModalDetalles',
            idTablaModal = '#tablaModalDetalles',
            tablaInforme = $(idTabla).find('tbody > tr'),
            datatableDatos = ftablaDatatables(idTabla);

        $(idTabla + ' tbody').on('click', '.ver-detalles', function(e) {

            const index = $(idTabla).DataTable().cell($(this).closest('td, li'))
                .index(),

                detalle = JSON.parse($(tablaInforme[index.row]).find('td').eq(0)
                    .text()),

                datoGen = detalle[0];

            $(idModal).modal('show');
            console.log(detalle)

            $('.desFactura').text(datoGen.ComIdStDocumentoSoporte);
            $('.fechaFac').text(datoGen.ComDaFechaFactura);
            $('.clienteFact').text(datoGen.CliStNombreCliente);
            $('.valorfacv').text(formatoMoneda(Number(datoGen.ComInValorFactura)));
            $('.vrIva').text(formatoMoneda(Number(datoGen.ComInValorIva)));
            $('.vrRetefuente').text(formatoMoneda(Number(datoGen.ComInValorRetencion)));

            let trHtml = ''

            for (datos of detalle) {


                const cuenta = `${datos.movcuen} ${datos.movscue} ${datos.movauxi} ${datos.movauxl}`,
                    nombre = datos.CarNomb,
                    descripcion = datos.movdesc,
                    vrDebito = (Number(datos.movvalr) >= 0) ? formatoMoneda(Number((datos.movvalr))) : '',
                    vrCredito = (Number(datos.movvalr) < 0) ? formatoMoneda(Number(datos.movvalr * (-1))) : ''

                trHtml += ` <tr>
                            <td>${cuenta}</td>
                            <td>${nombre}</td>
                            <td class=" text-left" style="white-space:nowrap;">${descripcion}</td>
                            <td class=" text-end">${vrDebito}</td>
                            <td class=" text-end">${vrCredito}</td>
                            
                        
                        </tr> `;

            }

            $(idTablaModal + '>tbody').empty().append(trHtml);


        })


    }
</script>
