<style>
    #tablaControlVehiculos .color-red>td {
        background-color: #f7ac9d85;

    }
    

</style>

<section class="my-1 ">



    <ul class="nav nav-tabs row text-center">
        <li class="nav-item col-6">
            <span class="nav-link active" id="infoMes" role="button">Información Mensual</span>
        </li>
        <li class="nav-item col-6 ">
            <span class="nav-link" id="infoYear" role="button">Información Anual</span>
        </li>

    </ul>
</section>

<div class="mt-2">

    <div class="d-flex border ">



        <div class="flex-grow-1 text-center">
            <span role="button" class="btn mx-2 btn-danger btn-dange btn-sm btn-vf-fija-col"
                title="Fijar Columnas">F</span>

            <x-botonExportarEcxel />
        </div>


        <div class="col-12 col-md-3 ">
            <x-inputFiltroTabla idTabla=tablaControlVehiculos />

        </div>






    </div>



    <div class="border mt-1 div-fondo-tabla">
        <div class="table-responsive  div-tabla-scroll-y">


            <table
                class="table  table-hover table-sm tablaInformesCustom tablaInformesExport tabla-head-fijo tabla-cols-fija"
                id="tablaControlVehiculos" style="width: 100%;">

                <thead>
                    <tr>

                        <th scope="col" class="text-nowrap ">No.</th>
                        <th scope="col" class="text-nowrap ">Placa</th>
                        <th scope="col" class="text-nowrap ">Propietario</th>
                        <th scope="col" class="text-nowrap ">Estado</th>
                        <th scope="col" class="text-nowrap ">Empresa</th>
                        <th scope="col" class="text-nowrap ">Vr. Planilla</th>
                        <th class="text-nowrap">Vr.Aportes</th>
                        <th class="text-nowrap">Vr. Sobrante</th>
                        <th class="text-nowrap">Vr. Cartera</th>
                        <th class="text-nowrap">Saldo Cartera 2016</th>
                        <th class="text-nowrap">Vr. Cartera Filtro</th>
                        <th class="text-nowrap">Vr. control Uno</th>
                        <th class="text-nowrap">Vr. control Dos</th>
                        <th class="text-nowrap">Vr. control Tres</th>
                        <th class="text-nowrap">Vr. control Cuatro</th>
                        <th class="text-nowrap">Vr. Seg. Social</th>
                        <th class="text-nowrap">Vr. Prestaciones</th>
                        <th class="text-nowrap">Vr. Parafiscales</th>
                        <th class="text-nowrap">Vr. Otros Aportes</th>
                        <th class="text-nowrap">Paq. Planilla</th>
                        <th class="text-nowrap">Fondo Repos.</th>
                        <th class="text-nowrap">Dia 1</th>
                        <th class="text-nowrap">Dia 2</th>
                        <th class="text-nowrap">Dia 3</th>
                        <th class="text-nowrap">Dia 4</th>
                        <th class="text-nowrap">Dia 5</th>
                        <th class="text-nowrap">Dia 6</th>
                        <th class="text-nowrap">Dia 7</th>
                        <th class="text-nowrap">Dia 8</th>
                        <th class="text-nowrap">Dia 9</th>
                        <th class="text-nowrap">Dia 10</th>
                        <th class="text-nowrap">Dia 11</th>
                        <th class="text-nowrap">Dia 12</th>
                        <th class="text-nowrap">Dia 13</th>
                        <th class="text-nowrap">Dia 14</th>
                        <th class="text-nowrap">Dia 15</th>
                        <th class="text-nowrap">Dia 16</th>
                        <th class="text-nowrap">Dia 17</th>
                        <th class="text-nowrap">Dia 18</th>
                        <th class="text-nowrap">Dia 19</th>
                        <th class="text-nowrap">Dia 20</th>
                        <th class="text-nowrap">Dia 21</th>
                        <th class="text-nowrap">Dia 22</th>
                        <th class="text-nowrap">Dia 23</th>
                        <th class="text-nowrap">Dia 24</th>
                        <th class="text-nowrap">Dia 25</th>
                        <th class="text-nowrap">Dia 26</th>
                        <th class="text-nowrap">Dia 27</th>
                        <th class="text-nowrap">Dia 28</th>
                        <th class="text-nowrap">Dia 29</th>
                        <th class="text-nowrap">Dia 30</th>
                        <th class="text-nowrap">Dia 31</th>




                    </tr>




                </thead>

                <tbody>

                    @php
                        
                        $tVrPlanilla = 0;
                        $tVrAportes = 0;
                        $tVrSobrante = 0;
                        $tVrFaltante = 0;
                        $tCarteraVieja = 0;
                        $tCarteraMes = 0;
                        $tVrControl1 = 0;
                        $tVrControl2 = 0;
                        $tVrControl3 = 0;
                        $tVrControl4 = 0;
                        $tVrSegSocial = 0;
                        $tVrPrestaciones = 0;
                        $tVrParafiscales = 0;
                        $tVrOtros = 0;
                        
                    @endphp

                    @foreach ($datos as $dato)
                        @php
                            $tVrPlanilla += $dato['tVrPlanilla'];
                            $tVrAportes += $dato['tVrAportes'];
                            $tVrSobrante += $dato['tVrSobrante'];
                            $tVrFaltante += $dato['tVrFaltante'];
                            $tCarteraVieja += $dato['tCarteraVieja'];
                            $tCarteraMes += $dato['tCarteraMes'];
                            $tVrControl1 += $dato['tVrControl1'];
                            $tVrControl2 += $dato['tVrControl2'];
                            $tVrControl3 += $dato['tVrControl3'];
                            $tVrControl4 += $dato['tVrControl4'];
                            $tVrSegSocial += $dato['tVrSegSocial'];
                            $tVrPrestaciones += $dato['tVrPrestaciones'];
                            $tVrParafiscales += $dato['tVrParafiscales'];
                            $tVrOtros += $dato['tVrOtros'];
                        @endphp
                    @endforeach

                    <tr class="tr-totales">

                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td>Totales</td>
                        <td class="text-end">{{ esmoneda0dec($tVrPlanilla) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrAportes) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrSobrante) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrFaltante) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tCarteraVieja) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tCarteraMes) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrControl1) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrControl2) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrControl3) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrControl4) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrSegSocial) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrPrestaciones) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrParafiscales) }}</td>
                        <td class="text-end">{{ esmoneda0dec($tVrOtros) }}</td>
                        <td></td>
                        <td></td>
                        <td> </td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                        <td></td>
                    </tr>


                    @foreach ($datos as $dato)
                        <tr @if ($dato['color'] == 'r') class="color-red" @endif>

                            <td>{{ $dato['numero'] }}</td>
                            <td>{{ $dato['tPlaca'] }}</td>
                            <td>{{ $dato['tPropietario'] }}</td>
                            <td>{{ $dato['tEstadoVeh'] }}</td>
                            <td>{{ $dato['tIDempresa'] }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrPlanilla']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrAportes']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrSobrante']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrFaltante']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tCarteraVieja']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tCarteraMes']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrControl1']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrControl2']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrControl3']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrControl4']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrSegSocial']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrPrestaciones']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrParafiscales']) }}</td>
                            <td class="text-end">{{ esmoneda0dec($dato['tVrOtros']) }}</td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tPaquePlanilla'] == '1') checked  @endif></td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tFondoReposicion'] == '1') checked  @endif></td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia1'] == '1') checked  @endif> </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia2'] == '1') checked  @endif></td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia3'] == '1') checked  @endif></td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia4'] == '1') checked  @endif></td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia5'] == '1') checked  @endif></td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia6'] == '1') checked  @endif></td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia7'] == '1') checked  @endif></td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia8'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia9'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia10'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia11'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia12'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia13'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia14'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia15'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia16'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia17'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia18'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia19'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia20'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia21'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia22'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia23'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia24'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia25'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia26'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia27'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia28'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia29'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia30'] == '1') checked  @endif>
                            </td>
                            <td><input class="form-check-input" disabled type="checkbox" @if ($dato['tDia31'] == '1') checked  @endif>
                            </td>
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
        left: 20px;
        z-index: 9;
        background-color: var(--color-body) !important;
    }

</style>





<script>
    $('.btn-vf-fija-col').on('click', (e) => {

        $('.btn-vf-fija-col').text($('.btn-vf-fija-col').text() == 'F' ? 'V' : 'F')

        $('.tabla-cols-fija tbody tr>td:nth-child(1),.tabla-cols-fija thead tr>th:nth-child(1)').toggleClass(
            'col-cus-1-fija');
        $('.tabla-cols-fija tbody tr>td:nth-child(2),.tabla-cols-fija thead tr>th:nth-child(2)').toggleClass(
            'col-cus-2-fija');
        $('.tabla-cols-fija tbody tr>td:nth-child(3),.tabla-cols-fija thead tr>th:nth-child(3)').toggleClass(
            'col-cus-3-fija');

    })











    //###############control del grafico
</script>
