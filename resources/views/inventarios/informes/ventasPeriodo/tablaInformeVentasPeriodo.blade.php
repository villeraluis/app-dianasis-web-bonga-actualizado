<div hidden class="table-responsive my-2 div-tabla div-tabla-ventas-oculto">
    <table class="table mt-4   table-hover table-sm tablaInformesCustom" id="tablaInformeVentasPeriodo"
        style="width: 100%">



        <thead>
            <tr>
                <th hidden></th>
                <th scope="col" class="text-left" style="width: 3%">Numero</th>
                <th scope="col" class="text-center" style="width: 4%">Pref</th>
                <th scope="col" class="text-left" style="width: 3%">Factura</th>
                <th scope="col" class="text-center" style="width: 8%">Fecha</th>
                <th scope="col" class="text-center" style="">Cliente</th>
                <th scope="col" class="text-center" style="width: 7%">Subtotal</th>
                <th scope="col" class="text-center" style="width: 7%">Descuento</th>
                <th scope="col" class="text-center" style="width: 7%">Ipoconsumo</th>
                <th scope="col" class="text-center" style="width: 7%">Valor IVA</th>
                <th scope="col" class="text-center" style="width: 7%">Total Factura</th>
                <th scope="col" class="text-center" style="width: 10%">Forma De Pago</th>
                <th scope="col" class="text-center" style="width: 5%">Estado</th>
                <th scope="col" class="text-center" style="">Centro de Costo</th>
                <th scope="col" class="text-center" style="width: 8%">Ver Detalle</th>


            </tr>
        </thead>

        <tbody>
            @php
                $i = 1;
               
                
                $subtotal = 0;
                $descuento = 0;
                $impoconsumo = 0;
                $totalFac = 0;
                $valIVA = 0;
                
            @endphp

            @foreach ($datos as $dato)
                @php
                    $subtotal += $dato['subtotalFac'];
                    $descuento += $dato['descuento'];
                    $impoconsumo += $dato['impoconsumo'];
                    $totalFac += $dato['totalfactura'];
                    $valIVA += $dato['valIVA'];
                   
                    
                @endphp


            @endforeach

            <tr class="tr-totales">
                <th hidden></th>
                <th scope="col"></th>
                <th scope="col" class="text-center">Totales</th>
                <td></td>
                <td></td>
                <td></td>
                <th class="text-end"> {{esmoneda2dec($subtotal)}}</th>
                <th  class="text-end" >{{ esmoneda2dec($descuento) }}</th>
                <td class="text-end" >{{ esmoneda2dec($impoconsumo) }}</td>
                <td class="text-end" >{{ esmoneda2dec($valIVA) }}</td>
                <td class="text-end" >{{ esmoneda2dec($totalFac) }}</td>
                <td></td>
                <td></td>
                <td></td>
                <td></td>
            </tr>






            @foreach ($datos as $dato)

               



                <tr>
                    <td hidden>{{ $dato['datos'] }}</td>
                    <td>{{ $dato['VenIdInDocumento'] }}</td>
                    <td class="text-center">{{ $dato['VenStPrefijoNumeracion'] }}</td>
                    <td>{{ $dato['VenInFactura'] }}</td>
                    <td class="text-center">{{ $dato['VenDaFechaDoc'] }}</td>
                    <td class="">{{ $dato['NombreCli'] }}</td>
                    <td class="text-end">{{ esmoneda2dec($dato['subtotalFac']) }} </td>
                    <td class="text-end">{{ esmoneda2dec($dato['descuento']) }} </td>
                    <td class="text-end">{{ esmoneda2dec($dato['impoconsumo']) }} </td>
                    <td class="text-end">{{ esmoneda2dec($dato['valIVA']) }} </td>
                    <td class=" pr-2 text-end">{{ esmoneda2dec($dato['totalfactura']) }}</td>
                    <td class="text-center">{{ $dato['FpaStDescripcion'] }}</td>
                    <td class="text-center">{{ $dato['estado'] }}</td>
                    <td class="">{{ $dato['scenomb'] }}</td>




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
                        <div>Cliente: <b> <span class="clienteFact"></span></b></div>
                    </div>


                    <div class="col-12 col-md-4">

                        <div>Forma Pago: <b><span class="formaPagoFacv"></span> </b></div>
                        <div>Bodega: <b><span class="Bodegafacv"></span></b></div>

                    </div>

                    <div class="col-12 col-md-4">
                        <button hidden type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cerrar</button>
                        <button hidden type="button" class="btn btn-primary">Imprimir Pdf</button>


                    </div>

                </div>

                <div class="row border" style="min-height: 100px">


                    <div class="col-12 table-responsive">
                        <h6 class="col-12 mb-2 header-informe"><b>Detalle De Ventas -
                                {{ session('empresaNombre') }}</b>
                        </h6>
                        <table class="table  table-hover table-sm  tablaInformesCustom"
                            id="tablaModalInfoProductosVentas" style="width:100%">
                            <thead>
                                <tr>
                                    <th scope="col">Codigo</th>
                                    <th scope="col">Referencia</th>
                                    <th scope="col" style="width:25%" class="text-center">Descripción</th>
                                    <th scope="col">Unidad</th>
                                    <th scope="col">Cantidad</th>
                                    <th scope="col">Precio</th>
                                    <th scope="col">Subtotal</th>
                                    <th scope="col">% Dscto</th>
                                    <th scope="col">vrDscto</th>
                                    <th scope="col">% INC</th>
                                    <th scope="col">Impoconsumo</th>
                                    <th scope="col">% IVA</th>
                                    <th scope="col">Vr IVA</th>
                                    <th scope="col">Valor Total</th>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>

                    </div>







                </div>

                <div class="row border">

                    <div class="col-md-6 ms-auto  divFootDetalleFacProductos" style="font-weight: bolder;">
                        <div>Subtotal : <span class="subtotalFac"></span></div>
                        <div>Descuento : <span class="descuentoFacv"></span></div>
                        <div>Impoconsumo : <span class="impoconsumoFacv"></span></div>
                        <div>Valor IVA :<span class="valorIvaFacv"></span></div>
                        <div>Valor Propina : <span class="propinafacv"></span></div>
                        <div>Otros descuentos : <span class="otrosDescuentosfacv"></span></div>
                        <div>Neto a Pagar : <span class="netoPagar"></span></div>
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
        'fecha' => $dato['VenDaFechaDoc'],
        'valor' => $dato['totalfactura'],
    ]);
}

@endphp



<div>
    <textarea hidden name="" id="dataVentas">{{ $datos2 }}</textarea>

    <div class="container-fluid border divGrafico pt-4" style="position: relative">

        <x-botonesControlGrafico />

        <canvas id="ventasPeriodoChart" width="400" height="400" style=" max-height: 500px"></canvas>
    </div>




    {{-- <div class="border mt-3 p-2">
        <p>
            <b>Dia con Mas Ventas:</b> <span class="fechaMasventa"></span> se Realizaron <span
                class="cantidadMasVenta"></span> Facturas
            Con Valor Total de <span class="valorTotalMasVenta"></span>
        </p>



    </div>

    <div class="border mt-3 p-2">
        <p>
            <b> Dia con Menos Ventas:</b> <span class="fechaMenosventa"></span> se Realizaron <span
                class="cantidadMenosVenta"></span> Facturas
            Con Valor Total de <span class="valorTotalMenosVenta"></span>
        </p>



    </div> --}}

</div>



<script>
    $(function() {

        const tablaInfVentasPeriodo = $('#tablaInformeVentasPeriodo').find('tbody > tr');

        const datatableDatos = ftablaDatatables('#tablaInformeVentasPeriodo');
        graficarBarrasHorizontal(
            '#dataVentas',
            '.fechaInicial',
            '.fechaFinal',
            'ventasPeriodoChart',
            datatableDatos,
            'Venta Diaria',
            4,
            'Grafico Resumen de Ventas',
            'Numero de Facturas Realizadas:  '
        )

        $('#tablaInformeVentasPeriodo tbody').on('click', '.ver-detalles', function(e) {
            e.preventDefault();
            let index = $('#tablaInformeVentasPeriodo').DataTable().cell($(this).closest('td, li'))
                .index();

            let detalleFactura = JSON.parse($(tablaInfVentasPeriodo[index.row]).find('td').eq(0)
                .html());


            $('#ModalmodalProductos').modal('show');


            let dat = detalleFactura[0];

            let factura = dat.VenStPrefijoNumeracion + '   ' + dat.VenInFactura;
            let nombrecli = dat.CliStNombreCliente;
            let venDaFechaDoc = dat.VenDaFechaDoc;
            let formaPago = dat.FpaStDescripcion;
            let bodega = dat.BodStDescripcion;

            $('.desFactura').text(factura);
            $('.fechaFac').text(venDaFechaDoc);
            $('.clienteFact').text(nombrecli);
            $('.formaPagoFacv').text(formaPago);
            $('.Bodegafacv').text(bodega);

            let reteiva = parseFloat(dat.MveInValorReteiva);
            let reteFuente = parseFloat(dat.MveInValorRetefuente);

            let trHtml = '';
            let subtotalGen = 0;
            let descuentoGen = 0;
            let ivaGen = 0.0;
            let impoGen = 0;

            for (datos of detalleFactura) {


                let codigo = datos.MveIdInProducto;
                let referencia = datos.ProStReferencia;
                let desProducto = datos.MveStDescripcion;
                let unidad = datos.PreStAbreviatura;
                let cantidad = datos.MveInCantidad;
                let precio = parseFloat(datos.MveInPrecio);
                let subtotal = (parseFloat(datos.MveInValor) + parseFloat(datos.MveInDescuento)) - (
                    parseFloat(datos
                        .MveInValorIva) + parseFloat(datos.MveInValorImpoconsumo));
                let porcentajeDescto = datos.MveInPorcentajeDescuento;
                let vrDscto = parseFloat(datos.MveInDescuento);
                let inc = datos.MveInPorcentajeImpoconsumo;
                let valorImpo = parseFloat(datos.MveInValorImpoconsumo);
                let pocenIva = datos.MveInPorcentajeIva;
                let valorIva = parseFloat(datos.MveInValorIva);
                let total = datos.MveInValor;

                subtotalGen += subtotal;
                descuentoGen += vrDscto;
                impoGen += valorImpo;
                ivaGen += valorIva;


                trHtml += ` <tr>
                        <td>${codigo}</td>
                        <td>${referencia}</td>
                        <td class="" style="white-space:nowrap;">${desProducto}</td>
                        <td class=" text-end">${unidad}</td>
                        <td class=" text-end">${cantidad}</td>
                        <td class=" text-end">${formatoMoneda(precio)}</td>
                        <td class=" text-end">${formatoMoneda(subtotal)}</td>
                        <td class=" text-end">${porcentajeDescto}</td>
                        <td class=" text-end">${formatoMoneda(vrDscto)}</td>
                        <td class=" text-end">${inc}</td>
                        <td class=" text-end">${formatoMoneda(valorImpo)}</td>
                        <td class=" text-end">${pocenIva}</td>
                        <td class=" text-end">${formatoMoneda(valorIva)}</td>
                        
                        <td class=" text-end">${formatoMoneda(total)}</td>
                    </tr> `;


            }
            let totalFac = (parseFloat(dat.VenInValor) + ivaGen + impoGen);

            let totalGeneral = (parseFloat(dat.VenInValor) + ivaGen + impoGen + dat.VenInValorPropina) -
                (
                    descuentoGen + reteFuente + reteiva);


            let htmlFoot = `<div><table class="table table-hover table-sm">
                        <tr>
                            <td>Subtotal :</td>
                            <td class=" text-end">${formatoMoneda((subtotalGen).toFixed(2))}</td>
                        </tr>
                        <tr>
                            <td>Descuento :</td>
                            <td class=" text-end">${formatoMoneda(descuentoGen.toFixed(2))}</td>
                        </tr>
                        <tr>
                            <td>Impoconsumo :</td>
                            <td class=" text-end">${formatoMoneda(impoGen.toFixed(2))}</td>
                        </tr>
                        <tr>
                            <td>Valor IVA :</td>
                            <td class=" text-end">${formatoMoneda((ivaGen).toFixed(2))}</td>
                        </tr>
                        <tr style="color: rgb(11, 11, 134)">
                            <td>Total Factura :</td>
                            <td class=" text-end">${formatoMoneda((totalFac))}</td>
                        </tr>
                        
                        <tr>
                            <td>Valor ReteFuenete : </td>
                            <td class=" text-end">${formatoMoneda(reteFuente)}</td>
                        </tr>
                        <tr>
                            <td>Valor Reteiva : </td>
                            <td class=" text-end">${formatoMoneda(reteiva)}</td>
                        </tr>
                        

                        <tr>
                            <td>Propina Sugerida:</td>
                            <td class=" text-end">${formatoMoneda(parseFloat(dat.VenInValorPropina))}</td>
                        </tr>
                        <tr style="color: rgb(11, 11, 134)">
                            <td>Neto a Pagar : </td>
                            <td class=" text-end">${formatoMoneda(totalGeneral)}</td>
                        </tr>

                        



                    </table>`;


            $('#tablaModalInfoProductosVentas>tbody').empty().append(trHtml);
            $('.divFootDetalleFacProductos').empty().append(htmlFoot)







        })


    })
</script>
