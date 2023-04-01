<div class="table-responsive-sm mt-4 div-tabla div-tabla-ventas-oculto">
    <table class="table mt-4   dt-responsive table-hover table-sm tablaInformesCustom" id="tablaListaProductos"
        style="width: 100%">

        <thead>
            <tr>

                <th scope="col" class="text-left" style="width: 1%">Codigo</th>
                <th scope="col" class="text-center" style="width: 4%">Referencia</th>
                <th scope="col" class="text-center" style="width: 25%">Descripción</th>
                <th scope="col" class="text-center" style="width: 2%">Presentación</th>
                <th scope="col" class="text-end" style="width: 1%">Costo</th>
                <th scope="col" class="text-center" style="width: 10%">Precio</th>
                <th scope="col" class="text-center" style="width: 8%">Clase</th>
                <th scope="col" class="text-center" style="width: 5%">Linea </th>
                <th scope="col" class="text-center" style="width: 8%">Sublinea</th>
                <th scope="col" class="text-center" style="width: 2%">Marca</th>



            </tr>
        </thead>

        <tbody>
            @if (isset($datos))


                @foreach ($datos as $dato)



                    <tr>

                        <td>{{ $dato->ProIdInProducto }}</td>
                        <td class="text-center">{{ $dato->ProStReferencia }}</td>
                        <td class="">{{ $dato->ProStDescripcion }}</td>
                        <td class="text-end" style="width: 25%"></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>


                    </tr>
                @endforeach
                {{-- <tr>

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
            </tr> --}}



            @endif
        </tbody>

    </table>


</div>
<script>
    ftablaDatatables('#tablaListaProductos');
</script>
