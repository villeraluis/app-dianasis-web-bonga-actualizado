<style>
    #tablaControlVehiculos .color-red>td {
        background-color: #f7ac9d85;

    }

</style>

<section class="my-1 ">

    <ul class="nav nav-tabs row text-center">
        <li class="nav-item col-6">
            <span class="nav-link " id="infoMes" role="button">Información Mensual</span>
        </li>
        <li class="nav-item col-6 ">
            <span class="nav-link active" id="infoYear" role="button">Información Anual</span>
        </li>

    </ul>
</section>

<div class="mt-2">

    <div class="d-flex  border ">



        <div class="flex-grow-1 text-center">
            <span role="button" class="btn mx-2 btn-danger btn-dange btn-sm btn-vf-fija-col"
                title="Fijar Columnas">F</span>

            <x-botonExportarEcxel />
        </div>


        <div class="col-12 col-md-3  ">
            <x-inputFiltroTabla idTabla=tablaControlVehiculosY />

        </div>






    </div>



    <div class="border mt-1 div-fondo-tabla">
        <div class="table-responsive  div-tabla-scroll-y">


            <table
                class="table  table-hover table-sm tablaInformesCustom tablaInformesExport tabla-head-fijo tabla-cols-fija"
                id="tablaControlVehiculosY" style="width: 100%;">

                <thead>
                    <tr>

                        <th scope="col" rowspan="2" class="text-nowrap ">No.</th>
                        <th scope="col" rowspan="2" class="text-nowrap ">Placa</th>
                        <th scope="col" rowspan="2" class="text-nowrap ">Cedula</th>
                        <th scope="col" rowspan="2" class="text-nowrap ">Propietario</th>
                        <th scope="col" rowspan="2" class="text-nowrap ">Estado</th>
                        <th scope="col" rowspan="2" class="text-nowrap ">Empresa</th>
                        <th scope="col" colspan="13" class="text-nowrap  text-center">Vr. Planillas</th>
                        <th class="text-nowrap text-center" colspan="13">Vr.Aportes</th>

                    </tr>
                    <tr>


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
        left: 21px;
        z-index: 9;
        background-color: var(--color-body) !important;
    }

    .col-cus-3-fija {
        width: 30px !important;
        position: -webkit-sticky;
        position: sticky;
        left: 72px;
        z-index: 9;
        background-color: var(--color-body) !important;
    }

    .col-cus-4-fija {
        width: 102px !important;
        position: -webkit-sticky;
        position: sticky;
        left: 152px;
        z-index: 9;
        background-color: var(--color-body) !important;
    }

</style>





<script>

    $(function() {

        $('.btn-vf-fija-col').on('click', (e) => {

            $('.btn-vf-fija-col').text($('.btn-vf-fija-col').text() == 'F' ? 'V' : 'F')

            $('.tabla-cols-fija tbody tr>td:nth-child(1),.tabla-cols-fija thead tr>th:nth-child(1)')
                .toggleClass(
                    'col-cus-1-fija');
            $('.tabla-cols-fija tbody tr>td:nth-child(2),.tabla-cols-fija thead tr>th:nth-child(2)')
                .toggleClass(
                    'col-cus-2-fija');
            $('.tabla-cols-fija tbody tr>td:nth-child(3),.tabla-cols-fija thead tr>th:nth-child(3)')
                .toggleClass(
                    'col-cus-3-fija');
            $('.tabla-cols-fija tbody tr>td:nth-child(4),.tabla-cols-fija thead tr>th:nth-child(4)')
                .toggleClass(
                    'col-cus-4-fija');

        })




    })

    /*    var table = $('#tablaControlVehiculosY').DataTable( {
           scrollY:        "50vh",
           scrollX:        true,
           scrollCollapse: true,
           paging:         false,
           info: false,
           fixedColumns:   {
               left: 1,
              
           }
       } );
    */
    /* $('#tablaControlVehiculosY').DataTable({

        paging: false,
        info: false,
        aaSorting: [],
        language: {
            zeroRecords: "No se encontraron resultados",
            sProcessing: "Procesando...",
            search: "Buscar:",
        },
        responsive: false,

    });
 */


</script>
