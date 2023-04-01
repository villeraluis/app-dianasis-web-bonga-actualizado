<div hidden class="table-responsive-sm my-2 div-tabla div-tabla-ventas-oculto">
    <table class="table mt-4   dt-responsive table-hover table-sm tablaInformesCustom" id="tablaInformeProductosVendidos"
        style="width: 100%">

        <thead>
            <tr>

                <th scope="col" class="text-left" style="width: 1%">Codigo</th>
                <th scope="col" class="text-center" style="width: 4%">Referencia</th>
                <th scope="col" class="text-center" style="width: 5%">Bodega</th>
                <th scope="col" class="text-center" style="width: 25%">Descripción</th>
                <th scope="col" class="text-center" style="width: 2%">Unidad</th>
                <th scope="col" class="text-end" style="width: 1%">Cantidad</th>
                <th scope="col" class="text-center" style="width: 10%">Costo Uni</th>
                <th scope="col" class="text-center" style="width: 8%">Costo Total</th>
                <th scope="col" class="text-center" style="width: 5%">Vr Venta Unit</th>
                <th scope="col" class="text-center" style="width: 8%">Vr Venta Total</th>
                <th scope="col" class="text-center" style="width: 2%">Cat Devolucion</th>
                <th scope="col" class="text-center" style="width: 5%">Vr Devolucion</th>
                <th scope="col" class="text-center" style="width: 8%">Costo Dev</th>
                <th scope="col" class="text-center" style="width: 10%">Utilidad Bruta</th>


            </tr>
        </thead>

        <tbody>
            @php
                $i = 1;
                $totalCosto = 0;
                $totValor = 0;
                $totCostDev = 0;
                $totVrDev = 0;
                $totUtilidad = 0;
            @endphp
            @foreach ($datos as $dato)

                @php
                    $totalCosto += $dato['TotalCosto'];
                    $totValor += $dato['ValorVentaTot'];
                    $totCostDev += $dato['costoDevolucion'];
                    $totVrDev += $dato['valorDevolucion'];
                    $totUtilidad += $dato['utilidadBruta'];
                @endphp

                <tr>

                    <td>{{ $dato['MveIdInProducto'] }}</td>
                    <td class="text-center">{{ $dato['ProStReferencia'] }}</td>
                    <td class="text-end">{{ $dato['VenIdInBodega'] }}</td>
                    <td class="" style="width: 25%">{{ $dato['MveStDescripcion'] }}</td>
                    <td class="">{{ $dato['PreStAbreviatura'] }}</td>
                    <td class="text-end">{{ esMoneda2dec($dato['TotalCantidad']) }}</td>
                    <td class="text-end">{{ esMoneda2dec($dato['costoUnitario']) }}</td>
                    <td class="text-end">{{ esMoneda2dec($dato['TotalCosto']) }}</td>
                    <td class="text-end">{{ esMoneda2dec($dato['ValorUnitario']) }}</td>
                    <td class="text-end">{{ esMoneda2dec($dato['ValorVentaTot']) }}</td>
                    <td class="text-center">
                        @if ($dato['cantidadDevolucion'] > 0)
                            {{ esMoneda2dec($dato['cantidadDevolucion']) }}
                        @endif
                    </td>
                    <td class="text-end">
                        @if ($dato['costoDevolucion'] > 0)
                            {{ esMoneda2dec($dato['costoDevolucion']) }}
                        @endif
                    </td>
                    <td class="text-end">
                        @if ($dato['valorDevolucion'])
                            {{ esMoneda2dec($dato['valorDevolucion']) }}
                        @endif
                    </td>
                    <td class="text-end">{{ esMoneda2dec($dato['utilidadBruta']) }}</td>

                </tr>
            @endforeach
            <tr>

                <th scope="col"></th>
                <td></td>
                <td></td>
                <th scope="col">Totales</th>
                <th></th>
                <th scope="col" class="text-end" style="width: 10%;padding: 0px 0px; "></th>
                <td></td>
                <th scope="col" class="text-end">{{ esMoneda2dec($totalCosto) }}</th>
                <td></td>
                <th scope="col" class="text-end">{{ esMoneda2dec($totValor) }}</th>
                <td></td>
                <th scope="col" class="text-end">{{ esMoneda2dec($totVrDev) }}</th>
                <th scope="col" class="text-end">{{ esMoneda2dec($totCostDev) }}</th>
                <th scope="col" class="text-end">{{ esMoneda2dec($totUtilidad) }}</th>
            </tr>




        </tbody>

    </table>


</div>

@php
     $datos2 = collect();
     foreach ($datos as $dato){
          $datos2->push([
               'MveStDescripcion' => $dato['MveStDescripcion'],
               'ValorVentaTot' => $dato['ValorVentaTot'],
               'TotalCantidad' => $dato['TotalCantidad'],
           ]);

     }
    
@endphp


<div>
    <textarea hidden name="" id="txtDatosProductosVendidos" cols="30" rows="10">{{ $datos2 }}</textarea>

    <div class="container-fluid border divGrafico">
        @include('contenido.productosVendidos.graficoProductosVendidos')

        <div class="text-center">
            <button class="btn btn-danger btn-sm btn-dange resetZoomChart">Ver Tamaño Original</button>
        </div>
    </div>
</div>





<script>
    datatableDatos= ftablaDatatables('#tablaInformeProductosVendidos');
</script>
