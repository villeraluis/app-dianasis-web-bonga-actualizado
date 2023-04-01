
<style>
    #tablaEstadoResultados>tbody>tr>td {
        padding: 0px 5px !important;
    }
</style>
<div>

    <div class="border text-end p-1">

        @php
            $cump=0;
            if($datos['valor_meta']!=0){
                $cump=$datos['total_ventas']/$datos['valor_meta']*100;
            }
        @endphp
        <span class="label-custom ml-2"><b>Valor Meta :</b></span>
        <span class="border p-1 mx-2"><b>{{ esMoneda0dec($datos['valor_meta'],false)}}</b> </span>
        <span class="label-custom ml-2"><b>Cumplimiento:</b></span>
        <span class="border p-1 mx-2"><b>{{number_format($cump,2)}}</b> </span>
            
                
          
        

       
         <x-botonExportarEcxel />
      

        

    </div>

    <div class="border  mt-1 div-fondo-tabla">
        <div class="table-responsive  div-tabla-scroll-y " style="max-width: 1300px">
            <table
                class="table mt-4 table-bordered  table-hover table-sm tablaInformesCustom  tablaInformesExport tabla-head-fijo tabla-cols-fija"
                id="tablaEstadoResultados">

                <thead>
                    <tr>
                    
                        <th scope="col" class="text-center" colspan="2">Mes</th>
                        <th scope="col" class="text-center" colspan="3">VENTA DOMICILIO</th>
                        <th scope="col" class="text-center" colspan="3">VENTA MESAS</th>
                        <th scope="col" class="text-center" colspan="3">TOTAL VENTA DEL DÍA</th>
                        <th scope="col" class="text-center" rowspan="2">VENTA LICOR</th>


                    </tr>
                    <tr>

                        <th scope="col" class="text-left">Día</th>
                        <th scope="col" class="text-center" style="min-width: 100px">Dia Semana</th>

                        <th scope="col" class="text-center" style="min-width: 60px">Cant</th>
                        <th scope="col" class="text-center " style="min-width: 80px">Venta</th>
                        <th scope="col" class="text-center">Promedio</th>

                        <th scope="col" class="text-center">Cant</th>
                        <th scope="col" class="text-center">Venta</th>
                        <th scope="col" class="text-center">Promedio</th>

                        <th scope="col" class="text-center">Cant</th>
                        <th scope="col" class="text-center">Venta</th>
                        <th scope="col" class="text-center">Promedio</th>

                    </tr>
                </thead>

                <tbody>

                      @foreach ($datos['_collect'] as $dato)
                        @if ($dato['type'] == 'p1')
                            <tr class="tr-totales pad-1" role="button">
                              
                                
                                <td class="text-end">{{ $dato['n_dia'] }}</td>
                                <td>{{ $dato['nombre_dia'] }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_domicilio'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_mesa']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_mesa'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_mesa']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_diarias'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_licor'], false) }}</td>
                                



                            </tr>
                        @elseif ($dato['type'] == 'h1')
                            <tr class="movi">
                                
                                
                                <td class="text-end">{{ $dato['n_dia'] }}</td>
                                <td>{{ $dato['nombre_dia'] }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_domicilio'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_mesa']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_mesa'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_mesa']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_diarias'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_licor'], false) }}</td>
                                


                            </tr>
                        @endif
                    @endforeach




                </tbody>



            </table>


        </div>

    </div>



</div>

<script>
    

    $(".divConsultasHome,.divParamtros,.divBotonesEnviar,.divBtnVerTabla,.btnVerConsultas").prop(
        "hidden",
        false
    );



    $('#tablaEstadoResultados').DataTable({

        "paging": false,
        "ordering": false,
        "info": false,
        responsive: false,
        dom: "Bfrtilp",

        language: {
            sProcessing: "Procesando...",
            search: "Buscar:",
        },

    });
</script>
