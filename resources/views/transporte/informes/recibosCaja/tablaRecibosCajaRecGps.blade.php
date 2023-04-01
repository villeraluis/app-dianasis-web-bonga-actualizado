<div class="mt-2">

    <div class="border text-center">

        <span role="button" class="btn btn-danger btn-dange btn-sm btn-vf-fija-col" title="Fijar Columnas">F</span>
        <x-botonExportarEcxel />

    </div>


    <div class="border mt-1 div-fondo-tabla">
        <div class="table-responsive  div-tabla-scroll-y">

            <table
                class="table  table-hover table-sm tablaInformesCustom tablaInformesExport tabla-head-fijo tabla-cols-fija"
                id="tablaControlVehiculosY" style="width: 100%;">

                <thead>
                   
                    <tr>
                        <th class="text-nowrap">Numero Recibo</th>
                        <th class="text-nowrap">Fecha</th>
                        <th class="text-nowrap">Agencia</th>
                        <th class="text-nowrap">Punto</th>
                        <th class="text-nowrap">Placa</th>
                        <th class="text-nowrap">Empresa Vehículo</th>
                        <th class="text-nowrap">Propietario</th>
                        <th class="text-nowrap">Nombre Propietario</th>
                        <th class="text-nowrap">Cedula Recibe</th>
                        <th class="text-nowrap">Propietario Recibe</th>
                        <th class="text-nowrap">Empresa Recibe</th>
                        <th class="text-nowrap">Pla</th>
                        <th class="text-nowrap">Acumulado</th>
                        <th class="text-nowrap">Ene</th>
                        <th class="text-nowrap">Feb</th>
                        <th class="text-nowrap">Mar</th>
                        <th class="text-nowrap">Abr</th>
                        <th class="text-nowrap">May</th>
                        <th class="text-nowrap">Jun</th>
                        <th class="text-nowrap">Jul</th>
                        <th class="text-nowrap">Ago</th>
                        <th class="text-nowrap">Sep</th>
                        <th class="text-nowrap">Oct</th>
                        <th class="text-nowrap">Nov</th>
                        <th class="text-nowrap">Dic</th>
                        <th class="text-nowrap">Acumulado </th>
                    </tr>

                </thead>
                @php
                    $tPlanillaAc = 0;
                    $tAportesAc = 0;
                    $tPlanillaMes = array_fill(1, 12, 0);
                    $tAportesMes = array_fill(1, 12, 0);
                @endphp

                <tbody>
                    @foreach ($datos as $dato)
                        @php
                            $tPlanillaAc += $dato['acumPla'];
                            $tAportesAc += $dato['acumAportes'];
                            
                            for ($i = 1; $i <= 12; $i++) {
                                $tPlanillaMes[$i] += $dato['tVrPlanilla'][$i];
                            }
                            for ($i = 1; $i <= 12; $i++) {
                                $tAportesMes[$i] += $dato['tVrAportes'][$i];
                            }
                            
                        @endphp

                    @endforeach

                    <tr class="tr-totales">

                        <td></td>
                        <td></td>
                        <td class="text-end"></td>
                        <td></td>
                        <td></td>
                        <td>Totales</td>

                        @foreach ($tPlanillaMes as $item)
                            <td class="text-end">{{ esmoneda0dec($item) }}</td>

                        @endforeach

                        <td class="text-end">{{ esmoneda0dec($tPlanillaAc) }}</td>

                        @foreach ($tAportesMes as $item)
                            <td class="text-end">{{ esmoneda0dec($item) }}</td>

                        @endforeach

                        <td class="text-end">{{ esmoneda0dec($tAportesAc) }}</td>

                    </tr>

                    @foreach ($datos as $dato)
                        <tr>

                            <td>{{ $dato['numero'] }}</td>
                            <td>{{ $dato['tPlaca'] }}</td>
                            <td class="text-end">{{ $dato['tCedulaProp'] }}</td>
                            <td>{{ $dato['tPropietario'] }}</td>
                            <td>{{ $dato['tEstadoVeh'] }}</td>
                            <td>{{ $dato['tIDempresa'] }}</td>

                            @foreach ($dato['tVrPlanilla'] as $idx => $val)
                                <td class="text-end" style="background-color: rgba(154, 193, 226, 0.603)">
                                    {{ esmoneda2dec($val) }}</td>
                            @endforeach

                            <td class="text-end">{{ esmoneda2dec($dato['acumPla']) }}</td>

                            @foreach ($dato['tVrAportes'] as $idx => $val)
                                <td class="text-end" style="background-color: rgba(166, 226, 184, 0.603)">
                                    {{ esmoneda2dec($val) }}</td>
                            @endforeach

                            <td class="text-end">{{ esmoneda2dec($dato['acumAportes']) }}</td>

                        </tr>

                    @endforeach



                </tbody>

            </table>




        </div>
    </div>



</div>











<script>

    $(function() {





    })

    //###############control del grafico
</script>
