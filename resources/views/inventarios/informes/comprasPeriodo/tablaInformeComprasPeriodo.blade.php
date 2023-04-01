

<div hidden class="table-responsive my-2 div-tabla div-tabla-ventas-oculto">
    <table class="table mt-4  display compact table-hover table-sm tablaInformesCustom" id="tablaInformeComprasPeriodo"
        style="width: 100%">

        <thead>
            <tr>
                <th hidden></th>
                <th scope="col" class="text-left" style="width: 5px">Num.</th>
                <th scope="col">Factura</th>
                <th scope="col">Fecha</th>
                <th scope="col" class="text-center" style="20%">Proveedor</th>
                <th scope="col" class="text-center" style="width: 7%">Subtotal</th>
                <th scope="col" class="text-center" style="width: 7%">Ipoconsumo</th>
                <th scope="col" class="text-center" style="width: 7%">Valor Iva</th>
                <th scope="col" class="text-center" style="width: 7%">Total Factura</th>
                <th scope="col" class="text-center" style="width: 7%">Vr. Retención</th>
                <th scope="col" class="text-center" style="width: 10%">Total a Pagar</th>
                <th scope="col" class="text-center" style="width: 5%">Forma de Pago</th>
                <th scope="col" class="text-center" style="width: 5%">IVA Asum.</th>
                <th scope="col" class="text-center" style="width: 5%">Rete. Asum.</th>
                <th scope="col" class="text-center" style="width: 5%">Estado</th>
                <th scope="col" class="text-center" style="width: 5%">Ver Det</th>



            </tr>
        </thead>

        <tbody>
            @php
                $i = 1;
                
                $subtotal = 0;
                $totImpo = 0;
                $valorIva = 0;
                $totalFac = 0;
                $totalRet = 0;
                $totalPag = 0;
                
            @endphp

            @foreach ($datos as $dato)
                @php
                    $subtotal += $dato['ComInValor'];
                    $totImpo += $dato['ComInValorImpoconsumo'];
                    $valorIva += $dato['ComInValorIva'];
                    $totalFac += $dato['totalfactura'];
                    $totalRet += $dato['ComInValorRetencion'];
                    $totalPag += $dato['totalApagar'];
                    
                @endphp


            @endforeach

            <tr class="tr-totales">
                <th hidden></th>
                <th scope="col"></th>
                <th scope="col" class="text-center">Totales</th>

                <th></th>
                <th></th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($subtotal) }}</th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($totImpo) }}</th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($valorIva) }}</th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($totalFac) }}</th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($totalRet) }}</th>
                <th scope="col" class="text-end">
                    {{ esMoneda2dec($totalPag) }}</th>

                <th></th>
                <th></th>
                <th></th>
                <th></th>
                <th></th>

            </tr>


            @foreach ($datos as $dato)

                <tr>

                    <td hidden>{{ $dato['datos'] }}</td>
                    <td class="text-end">{{ $dato['ComIdStDocumento'] }}</td>
                    <td>{{ $dato['ComIdStDocumentoSoporte'] }}</td>
                    <td>{{ $dato['ComDaFechaFactura'] }}</td>
                    <td class="text-left">{{ $dato['NombreProv'] }}</td>
                    <td class="pr-2 text-end">{{ esMoneda2dec($dato['ComInValor']) }}</td>
                    <td class="pr-2 text-end">{{ esMoneda2dec($dato['ComInValorImpoconsumo']) }}</td>
                    <td class="pr-2 text-end">{{ esMoneda2dec($dato['ComInValorIva']) }}</td>
                    <td class="pr-2 text-end">{{ esMoneda2dec($dato['totalfactura']) }}</td>
                    <td class=" pr-2 text-end">{{ esMoneda2dec($dato['ComInValorRetencion']) }}</td>
                    <td class=" pr-2 text-end"><span
                            class="">{{ esMoneda2dec($dato['totalApagar']) }}</span> </td>
                    <td class="text-center">{{ $dato['FpaStDescripcion'] }}</td>
                    <td class=" pr-2 text-center">{{ $dato['ComStIvaAsumido'] }}</td>
                    <td class=" pr-2 text-center">{{ $dato['ComStRetencionAsumida'] }}</td>
                    <td class=" pr-2 text-center">{{ $dato['ComStEstadoCompra'] }}</td>

                    <td class="text-center">


                        <a title="Ver Datalles Factura" href="" class="ver-detalles">
                            <svg xmlns="http://www.w3.org/2000/svg" width="10" height="10" fill="currentColor"
                                class="bi bi-search" viewBox="0 0 16 16">
                                <path
                                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
                            </svg>

                        </a>

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
                        <div>Factura: <b> <span class="desFactura"></span></b></div>
                        <div>Fecha : <b> <span class="fechaFac"></span> </b></div>
                        <div>Proveedor: <b> <span class="clienteFact"></span></b></div>
                    </div>


                    <div class="col-12 col-md-4">

                        <div>Forma Pago: <b><span class="formaPagoFacv"></span> </b></div>
                        <div>Bodega: <b><span class="Bodegafacv"></span></b></div>

                    </div>

                   

                </div>

                <div class="row border" style="min-height: 100px">
                    <h6 class="col-12 mb-2 header-informe"><b>Detalles Compras - {{ session('empresaNombre') }}</b>
                    </h6>


                    <div class="col-12 table-responsive">



                        <table class="table  table-hover table-sm tablaInformesCustom"
                            id="tablaModalInfoProductosVentas" style="width:100%; ">
                            <thead>
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Referencia</th>
                                    <th scope="col" class="text-center">Descripción</th>
                                    <th scope="col">Unidad</th>
                                    <th scope="col" class=" text-end">Cantidad</th>
                                    <th scope="col" class=" text-end">Costo</th>
                                    <th scope="col" class=" text-end">Subtotal</th>
                                    <th scope="col" class=" text-center">Ipoconsumo</th>
                                    <th scope="col" class=" text-center">% IVA</th>
                                    <th scope="col" class=" text-end">Vr IVA</th>
                                    <th scope="col" class=" text-end">Valor Total</th>
                                    <th scope="col" class=" text-end">IVA Mayor Valor</th>
                                </tr>
                            </thead>
                            <tbody>
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

@php
$datos2 = collect();
foreach ($datos as $dato) {
    $datos2->push([
        'fecha' => $dato['ComDaFechaFactura'],
        'valor' => $dato['totalApagar'],
    ]);
}

@endphp

<div>
    <textarea hidden name="" id="txtDatosComprasPeriodo" cols="30" rows="10">{{ $datos2 }}</textarea>

    <div class="container-fluid border divGrafico pt-4" style="position: relative">

        <x-botonesControlGrafico/>

        <canvas id="comprasPeriodoChart" width="400" height="400" style=" max-height: 500px"></canvas>

        
    </div>
</div>




<script>
    $(function() {

        const tablaInfVentasPeriodo = $('#tablaInformeComprasPeriodo').find('tbody > tr');
        const datatableDatos = ftablaDatatables('#tablaInformeComprasPeriodo');
        graficarBarrasHorizontal(
            '#txtDatosComprasPeriodo',
            '.fechaInicial',
            '.fechaFinal',
            'comprasPeriodoChart',
            datatableDatos,
            'Compra Diaria',
            3,
            'Grafico Resumen de Compras',
            'Numero de Facturas Realizadas: '
        )


        $('#tablaInformeComprasPeriodo tbody').on('click', '.ver-detalles', function(e) {
            e.preventDefault();
            const index = $('#tablaInformeComprasPeriodo').DataTable().cell($(this).closest('td, li'))
                .index();

            const detalleFactura = JSON.parse($(tablaInfVentasPeriodo[index.row]).find('td').eq(0)
                .text());





            $('#ModalmodalProductos').modal('show');


            const dat = detalleFactura[0];

            console.log(dat)

            const factura = dat.ComIdStDocumentoSoporte;
            const nombrecli = dat.CliStNombreCliente;
            const venDaFechaDoc = dat.ComDaFechaFactura;
            const formaPago = dat.FpaStDescripcion;
            const bodega = dat.BodStDescripcion;
            let valfete = dat.ComInValorFlete != null ? (parseFloat(dat.ComInValorFlete)) : (parseFloat(
                '0'));
            let retencion = dat.ComInValorRetencion != null ? (parseFloat(dat.ComInValorRetencion)) : (
                parseFloat(
                    '0.0'));
            let descuentoFina = dat.ComInValorDescuentoFinanciero != null ? (parseFloat(dat
                .ComInValorDescuentoFinanciero)) : (parseFloat('0.0'));
            let valorAnticipo = dat.ComInValorAnticipo != null ? (parseFloat(dat.ComInValorAnticipo)) :
                (parseFloat(
                    '0.0'));

            $('.desFactura').text(factura);
            $('.fechaFac').text(venDaFechaDoc);
            $('.clienteFact').text(nombrecli);
            $('.formaPagoFacv').text(formaPago);
            $('.Bodegafacv').text(bodega);
            $('.valorFlete').val(formatoMoneda(valfete));
            $('.valorDescuentoFinanciero').val(descuentoFina);



            let trHtml = '';
            let subtotalGen = 0;
            let descuentoGen = 0;
            let ivaGen = 0.0;
            let impoGen = 0;




            for (datos of detalleFactura) {


                const codigo = datos.McoIdInProducto,
                    referencia = datos.ProStReferencia,
                    desProducto = datos.ProStDescripcion,
                    unidad = datos.PreStAbreviatura,
                    cantidad = parseFloat(datos.McoInCantidad),
                    costo = parseFloat(datos.McoInCosto),
                    subtotal = (parseFloat(datos.McoInCosto) * parseFloat(datos.McoInCantidad)),
                    valorImpo = datos.McoInValorImpoconsumo != null ? (parseFloat(datos
                        .McoInValorImpoconsumo)) : (
                        parseFloat('0.0')),
                    vrDscto = datos.McoInDescuento != null ? (parseFloat(datos.McoInDescuento)) : (
                        parseFloat(
                            '0.0')),
                    porOtDesc = datos.McoInPorOtroDescuento != null ? (datos.McoInPorOtroDescuento) : (
                        '0.0'),
                    valOtDescuento = datos.McoInOtrosDescuento != null ? (parseFloat(datos
                        .McoInOtrosDescuento)) : (
                        parseFloat('0.0')),
                    pocenIva = datos.McoInPorcentajeIva != null ? (datos.McoInPorcentajeIva) : (
                        ('.00')),
                    valorIva = datos.McoInValorIva != null ? (parseFloat(datos.McoInValorIva)) : (
                        parseFloat(
                            '0.0')),
                    total = subtotal + valorIva + valorImpo + vrDscto,
                    ivaMayor = datos.McoStIvaMayorValor != null ? (datos.McoStIvaMayorValor) : (
                        (''))

                subtotalGen += subtotal;
                descuentoGen += vrDscto;
                impoGen += valorImpo;
                ivaGen += valorIva;


                trHtml += ` <tr>
                    <td>${codigo}</td>
                    <td>${referencia}</td>
                    <td class=" text-left" style="white-space:nowrap;">${desProducto}</td>
                    <td>${unidad}</td>
                    <td class=" text-end">${cantidad}</td>
                    <td class=" text-end">${formatoMoneda(costo)}</td>
                    <td class=" text-end">${formatoMoneda(subtotal)}</td>
                    <td class=" text-end">${formatoMoneda(valorImpo)}</td>
                    <td class=" text-end">${pocenIva}</td>
                    <td class=" text-end">${formatoMoneda(valorIva)}</td> 
                    <td class=" text-end">${formatoMoneda(total)}</td> 
                   
                    <td class=" text-end">${ivaMayor}</td>
                     
                   
                </tr> `;

            }


            let totalGeneral = (subtotalGen + ivaGen + impoGen) - (descuentoGen)

            let htmlFoot = `<div><table>
                    <tr>
                        <td>Subtotal :</td>
                        <td class=" text-end">${formatoMoneda((subtotalGen).toFixed(2))}</td>
                    </tr>
                    <tr>
                        <td>Ipoconsumo :</td>
                        <td class=" text-end">${formatoMoneda(descuentoGen.toFixed(2))}</td>
                    </tr>

                    <tr>
                        <td>Valor IVA :</td>
                        <td class=" text-end">${formatoMoneda((ivaGen).toFixed(2))}</td>
                    </tr>

                    <tr>
                        <td>Total Factura :</td>
                        <td class=" text-end">${formatoMoneda(parseFloat(totalGeneral))}</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td class=" text-end"><hr style="margin: 0rem 0"> </td>
                    </tr>
                    <tr>
                        <td>Valor Retención :</td>
                        <td class=" text-end">${formatoMoneda(parseFloat(retencion))}</td>
                    </tr>
                   
                    <tr>
                        <td>Neto a Pagar : </td>
                        <td class=" text-end">${formatoMoneda(totalGeneral-(retencion +descuentoFina+valorAnticipo))}</td>
                    </tr>

                </table>`;

            $('.divFootDetalleFacProductos').empty().append(htmlFoot)

            $('#tablaModalInfoProductosVentas>tbody').empty().append(trHtml);








        })



      




    })
</script>
