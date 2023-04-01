<div hidden class="table-responsive my-2 div-tabla div-tabla-ventas-oculto">
    <table class="table mt-4   table-hover table-sm tablaInformesCustom" id="tablaInformeEgresoBancos"
        style="width: 100%">



        <thead>

            <tr>
                <th hidden></th>
                <th scope="col" class="text-left" style="width: 3%">Numero</th>
                <th scope="col" class="text-left" style="width: 3%">Comprobante</th>
                <th scope="col" class="text-center" style="width: 4%">Fecha</th>
                <th scope="col" class="text-left" style="width: 3%">Proveedor</th>
                <th scope="col" class="text-center" style="width: 8%">Descripcion</th>
                <th scope="col" class="text-center" style="">Valor</th>
                <th scope="col" class="text-center" style="width: 7%">Retefuente</th>
                <th scope="col" class="text-center" style="width: 7%">Descuento</th>
                <th scope="col" class="text-center" style="width: 7%">Exedentes</th>
                <th scope="col" class="text-center" style="width: 7%">Tot. Egresos</th>
                <th scope="col" class="text-center" style="width: 7%">Bancos</th>
                <th scope="col" class="text-center" style="width: 10%">ctaBanc</th>
                <th scope="col" class="text-center" style="width: 5%"># Cheque</th>
                <th scope="col" class="text-center" style="">Estado</th>
                <th scope="col" class="text-center" style="">FechaElab</th>
                <th scope="col" class="text-center" style="width: 8%">Ver Detalle</th>


            </tr>
        </thead>

        <tbody>
            @php
                $i = 1;
                $pprInValor = 0;
                $pprInRetefuente = 0;
                $pprInDescuento = 0;
                $pprInExcedentes = 0;
                $totalEgreso = 0;
                
            @endphp

            @foreach ($datos as $dato)
                @php
                    $pprInValor += $dato['PprInValor'];
                    $pprInRetefuente += $dato['PprInRetefuente'];
                    $pprInDescuento += $dato['PprInDescuento'];
                    $pprInExcedentes += $dato['PprInExcedentes'];
                    $totalEgreso += $dato['totalEgreso'];
                    
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
                    {{ esMoneda2dec($pprInValor) }}</th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($pprInRetefuente) }}</th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($pprInDescuento) }}</th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($pprInExcedentes) }}</th>
                <th scope="col" class="text-end "><span
                        class="ms-2">{{ esMoneda2dec($totalEgreso) }}</span>
                </th>

                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>


            </tr>

            @foreach ($datos as $dato)


                <tr>
                    <td hidden>{{ $dato['datos'] }}</td>
                    <td>{{ $dato['PprIdInDocumento'] }}</td>
                    <td>{{ $dato['comnomb'] }}</td>
                    <td>{{ $dato['PprDaFechaPago'] }}</td>
                    <td>{{ $dato['CliStNombreCliente'] }}</td>
                    <td>{{ $dato['PprStDescripcion'] }}</td>
                    <td class="text-end">{{ esMoneda2dec($dato['PprInValor']) }} </td>
                    <td class="text-end">{{ esMoneda2dec($dato['PprInRetefuente']) }} </td>
                    <td class="text-end">{{ esMoneda2dec($dato['PprInDescuento']) }} </td>
                    <td class="text-end">{{ esMoneda2dec($dato['PprInExcedentes']) }} </td>
                    <td class=" pr-2 text-end">{{ esMoneda2dec($dato['totalEgreso']) }}</td>
                    <td class="text-center">{{ $dato['BanStDescripcion'] }}</td>
                    <td class="text-center">{{ $dato['CbaStDescripcion'] }}</td>
                    <td class="text-end">{{ $dato['PprInNumeroCheque'] }}</td>
                    <td class="text-center">{{ $dato['PprStEstadoPago'] }}</td>
                    <td class="">{{ $dato['PprDtFechaHora'] }}</td>



                    <td class="text-center">


                        <span role="button" title="Ver Datalles Egresos" class="ver-detalles">
                            <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor"
                                class="bi bi-search" viewBox="0 0 16 16">
                                <path
                                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                            </svg>

                        </span>

                    </td>

                </tr>
            @endforeach


        </tbody>

    </table>


</div>


<div class="modal fade" id="ModalmodalProductos" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
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
                        <div>No Egreso: <b> <span class="noEgreso"></span></b></div>
                        <div>Fecha : <b> <span class="fechaE"></span> </b></div>
                        <div>Proveedor: <b> <span class="proveedor"></span></b></div>
                        <div>Ben Cheque : <b> <span class="BenCheq"></span> </b></div>
                    </div>


                    <div class="col-12 col-md-4">
                        <div>Valor: <b><span class="Valor"></span></b></div>
                        <div>Vr. Descuento: <b><span class="vrDescuento"></span> </b></div>
                        <div>Vr. Retefuente : <b><span class="vRetefuente"></span></b></div>
                        <div>Vr. Excedentes: <b><span class="vrExcedentes"></span></b></div>

                    </div>

                    <div class="col-12 col-md-4">

                        <div>TOTAL EGRESO: <b><span class="totEgreso"></span></b></div>


                    </div>

                </div>

                <div class="row border" style="min-height: 100px">

                    <h6 class="col-12 mb-2 header-informe"><b>Detalle Egreso de Bancos -
                            {{ session('empresaNombre') }}</b>
                    </h6>
                    <div class="col-12 table-responsive" style="max-height: 300px; overflow:auto">

                        <table class="table  table-hover table-sm  tablaInformesCustom tabla-head-fijo"
                            id="tablaModalInfoProductosVentas" style="width:100%">
                            <thead>
                                <tr>
                                    <th scope="col">Cuenta</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col" style="width:25%" class="text-center">Descripción</th>
                                    <th scope="col" class="text-end">Valor Debito</th>
                                    <th scope="col" class="text-end">Valor Credito</th>

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
@php
$datos2 = collect();
foreach ($datos as $dato) {
    $datos2->push([
        'fecha' => $dato['PprDaFechaPago'],
        'valor' => $dato['PprInValor'],
    ]);
}

@endphp






<div>
    <textarea hidden name="" id="dataEgBancos">{{ $datos2 }}</textarea>

    <div class="container-fluid border divGrafico pt-4" style="position: relative">

        <x-botonesControlGrafico />

        <canvas id="EgresosbancosChart" width="400" height="400" style=" max-height: 500px"></canvas>
    </div>





</div>



<script>
    $(function() {



        const tablaInfEgresoBancos = $('#tablaInformeEgresoBancos').find('tbody > tr');

        const datatableDatos = ftablaDatatables('#tablaInformeEgresoBancos');

        graficarBarrasHorizontal(
            '#dataEgBancos',
            '.fechaInicial',
            '.fechaFinal',
            'EgresosbancosChart',
            datatableDatos,
            'Egresos De Bancos',
            3,
            'Gráfico Egresos de Bancos',
            'Número Egresos del día: '
        )

        $('#tablaInformeEgresoBancos tbody').on('click', '.ver-detalles', function() {

            const index = $('#tablaInformeEgresoBancos').DataTable().cell($(this).closest('td, li'))
                .index();

            const detalleFactura = JSON.parse($(tablaInfEgresoBancos[index.row]).find('td').eq(0)
                .text());

            $('#ModalmodalProductos').modal('show')

            const dat = detalleFactura[0]

            console.log(detalleFactura)

            let pprInValor = Number(dat.PprInValor),
                pprInExcedentes = Number(dat.PprInExcedentes),
                pprInDescuento = Number(dat.PprInDescuento),
                pprInRetefuente = Number(dat.PprInRetefuente),
                total = (pprInValor + pprInExcedentes) - (pprInDescuento + pprInRetefuente)


            $('.noEgreso').text(dat.PprIdInDocumento);
            $('.fechaE').text(dat.PprDaFechaPago);
            $('.proveedor').text(dat.CliStNombreCliente);
            $('.BenCheq').text(dat.PprStNombreCheque);
            $('.Valor').text(formatoMoneda(pprInValor));
            $('.vrDescuento').text(formatoMoneda(pprInDescuento));
            $('.vRetefuente').text(formatoMoneda(pprInRetefuente));
            $('.vrExcedentes').text(formatoMoneda(pprInExcedentes));
            $('.totEgreso').text(formatoMoneda(total))

            let trHtml = '';




            for (datos of detalleFactura) {

                const cuenta = `${datos.movcuen}  ${datos.movscue} ${datos.movauxi} ${datos.movauxl}`,
                    nombre = datos.CarNomb,
                    descripcion = datos.movdesc,
                    vrDebito = (datos.movvalr >= 0) ? formatoMoneda(datos.movvalr) : '',
                    vrCredito = (datos.movvalr < 0) ? formatoMoneda(datos.movvalr * (-1)) : ''


                trHtml += ` <tr>
                    <td>${cuenta}</td>
                    <td>${nombre}</td>
                    <td class="" style="white-space:nowrap;">${descripcion}</td>
                    <td class=" text-end">  ${vrDebito}</td>
                    <td class=" text-end">${vrCredito}</td>
                    
                </tr> `;


            }


            $('#tablaModalInfoProductosVentas>tbody').empty().append(trHtml);



        })

    })
</script>
