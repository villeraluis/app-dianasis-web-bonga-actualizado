<style>
    .tr-totales2>th,.tr-totales2>td {
   /*  width: 10%!important; */
    font-weight: bold!important;
    padding: 0px 0px!important;
    color:rgb(152, 36, 146)!important;
    background-color: #ffffff!important;

   
}

    #tablaEstadoResultados>tbody>tr>td {
        padding: 0px 5px !important;
    }
</style>
<div>

    

    <div class="border text-end p-1">

        <x-botonExportarEcxel />

    </div>

    <div class="border  mt-1 div-fondo-tabla">
        <div class="table-responsive  div-tabla-scroll-y " style="width: 100%">
            <table
                class="table mt-4 table-bordered  table-hover table-sm tablaInformesCustom  tablaInformesExport tabla-head-fijo tabla-cols-fija"
                id="tablaEstadoResultados">

                <thead>
                    <tr>
                        
                        <th scope="col" class="text-left" rowspan="2" >Punto de Venta</th>
                        <th scope="col" class="text-center" colspan="2">Mes</th>
                        <th scope="col" class="text-center" colspan="3">VENTA RAPPI</th>
                        <th scope="col" class="text-center" colspan="3">VENTA DOMICILIO</th>
                        <th scope="col" class="text-center" colspan="3">VENTA MESAS</th>
                        <th scope="col" class="text-center" colspan="3">VENTA AUTOSERVICIO</th>
                        <th scope="col" class="text-center" colspan="3">VENTA PARA LLEVAR</th>
                        <th scope="col" class="text-center" colspan="3">TOTAL VENTA DEL DÍA</th>
                        <th scope="col" class="text-center" rowspan="2">VENTA LICOR</th>
                        <th scope="col" class="text-center" rowspan="2">VALOR META</th>
                        <th scope="col" class="text-center" rowspan="2">%CUMP</th>

                    </tr>
                    <tr>

                        <th scope="col" class="text-left">Día</th>
                        <th scope="col" class="text-center" style="min-width: 100px">Dia Semana</th>

                        <th scope="col" class="text-center">Cant</th>
                        <th scope="col" class="text-center">Venta</th>
                        <th scope="col" class="text-center">Promedio</th>

                        <th scope="col" class="text-center">Cant</th>
                        <th scope="col" class="text-center">Venta</th>
                        <th scope="col" class="text-center">Promedio</th>

                        <th scope="col" class="text-center">Cant</th>
                        <th scope="col" class="text-center">Venta</th>
                        <th scope="col" class="text-center">Promedio</th>

                        <th scope="col" class="text-center">Cant</th>
                        <th scope="col" class="text-center">Venta</th>
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

                    @foreach ($datos as $dato)
                    @if ($dato['type'] == 'p0')
                            <tr class="tr-totales2 pad-1" role="button">
                              
                                <td><span class="border btnSpan">{{ $dato['nombre_punto_de_venta'] }}</td>
                                <td class="text-end">{{ $dato['n_dia'] }}</td>
                                <td>{{ $dato['nombre_dia'] }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_rappi']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_rappi'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_rappi']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_domicilio'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_mesa']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_mesa'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_mesa']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_autoservicio']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_autoservicio'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_autoservicio']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_para_llevar']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_para_llevar'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_para_llevar']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_diarias'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_licor'], false) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['valor_meta'], false) }}</td>
                                <td class="text-end"> {{ imprimirNumero($dato['cumplimiento']) }}</td>



                            </tr>
                        @elseif ($dato['type'] == 'p1')
                            <tr class="tr-totales pad-1" role="button">
                              
                                <td><span class="border btnSpan">&nbsp+&nbsp</span>{{ $dato['nombre_punto_de_venta'] }}</td>
                                <td class="text-end">{{ $dato['n_dia'] }}</td>
                                <td>{{ $dato['nombre_dia'] }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_rappi']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_rappi'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_rappi']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_domicilio'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_mesa']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_mesa'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_mesa']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_autoservicio']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_autoservicio'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_autoservicio']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_para_llevar']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_para_llevar'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_para_llevar']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_diarias'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_licor'], false) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['valor_meta'], false) }}</td>
                                <td class="text-end"> {{ imprimirNumero($dato['cumplimiento']) }}</td>



                            </tr>
                        @elseif ($dato['type'] == 'h1')
                            <tr class="movi">
                                
                                <td>&nbsp&nbsp&nbsp&nbsp&nbsp{{ $dato['nombre_punto_de_venta'] }}</td>
                                <td class="text-end">{{ $dato['n_dia'] }}</td>
                                <td>{{ $dato['nombre_dia'] }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_rappi']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_rappi'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_rappi']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_domicilio'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_domicilio']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_mesa']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_mesa'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_mesa']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_autoservicio']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_autoservicio'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_autoservicio']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_para_llevar']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_para_llevar'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_para_llevar']) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['cantidad_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_diarias'], false) }}</td>
                                <td class="text-end">{{ imprimirNumero($dato['promedio_ventas_diarias']) }}</td>
                                <td class="text-end">{{ esMoneda0dec($dato['total_ventas_licor'], false) }}</td>
                                <td ></td>
                                <td ></td>


                            </tr>
                        @endif
                    @endforeach




                </tbody>



            </table>


        </div>

    </div>



</div>

<script>
    $('.movi').hide()

    $(".divConsultasHome,.divParamtros,.divBotonesEnviar,.divBtnVerTabla,.btnVerConsultas").prop(
        "hidden",
        false
    );




    $('#tablaEstadoResultados>tbody>tr .btnSpan').on('click', function(e) {

        const fila = $(this).closest('tr')
        const indexActual = fila[0].rowIndex
        const btnSpan = $(this)
        

            $('#tablaEstadoResultados>tbody tr').each(function(index, element) {

                if (element.rowIndex > indexActual) {
                    
                    if ($(this).hasClass('pad-1')) {
                        return false
                    }

                    //mostrar
                    if ($(this).hasClass('movi')) {
                        $(this).toggle()
                        //colocar el simbolo - en el boton
                        if ($(this).is(':visible')) {
                            btnSpan.html('&nbsp-&nbsp')
                        } else {
                            btnSpan.html('&nbsp+&nbsp')
                        }
                    }


                }

            });
        



    });

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
