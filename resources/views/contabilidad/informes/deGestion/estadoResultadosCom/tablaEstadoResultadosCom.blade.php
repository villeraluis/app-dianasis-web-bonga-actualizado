<style>
    .niv-1>td,
    .pad>td {
        color: rgb(10, 77, 223) !important
    }

    .col-ac-actual {
        background-color: #44d36359 !important;
    }

    .col-ac-anterior {
        background-color: #d3864485 !important;
    }

</style>


<div>

    <div class="border text-center">

        <span role="button" class="btn btn-secondary btn-sm view-meses m-2">Meses</span>
        <x-botonesNumeroNivel />


    </div>



    <div class="border mt-1 div-fondo-tabla">
        <div class="table-responsive  div-tabla-scroll-y">


            <table class="table  table-hover table-sm tablaInformesCustom tablaInformesExport tabla-head-fijo tabla-cols-fija"
                id="tablaEstadoResultadosCom" style="width: 100%;">

                <thead>
                    <tr>

                        <th scope="col" rowspan="2" class="text-left" >Cuenta</th>
                        <th scope="col" rowspan="2" class="text-center" >Sub</th>
                        <th scope="col" rowspan="2" class="text-center" >Aux</th>
                        <th scope="col" rowspan="2" class="text-center" >Aux1</th>
                        <th scope="col" rowspan="2" class="text-center" >Descripción</th>

                        @for ($i = 1; $i <= $mes; $i++)
                            <th scope="col" colspan="2" class="text-center col-mes">{{ mesActual($i) }}</th>
                        @endfor

                        <th scope="col" colspan="2" class="text-center">Acumulado</th>
                        @for ($i = 1; $i <= $mes; $i++)
                            <th scope="col" colspan="2" class="text-center col-mes">{{ mesActual($i) }}</th>

                        @endfor
                        <th scope="col" colspan="2" class="text-center">Acumulado</th>
                        <th scope="col" class="text-center">Variación</th>
                        <th scope="col" class="text-center">Cump</th>
                    </tr>


                    <tr>

                       

                        @for ($i = 1; $i <= $mes; $i++)
                            <th class="col-mes text-center" scope="col">Actual</th>
                            <th class="col-mes text-center" scope="col">%</th>
                        @endfor

                        <th scope="col" class="text-center">Actual</th>
                        <th scope="col" class="text-center">%</th>
                        @for ($i = 1; $i <= $mes; $i++)
                            <th class="col-mes text-center" scope="col">Anterior</th>
                            <th class="col-mes text-center" scope="col">%</th>
                        @endfor
                        <th scope="col" class="text-center">Anterior</th>
                        <th scope="col" class="text-center">%</th>

                        <th scope="col" class="text-center">Absoluta</th>
                        <th scope="col" class="text-center">%</th>

                    </tr>

                </thead>

                <tbody>

                    @foreach ($datos as $dato)

                        @if ($dato['type'] == 'vacio')

                            <tr class="vacio -00-00" role="button">
                                <td> {{ $dato['cuenta'] }}</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#"><span
                                            class="border">&nbsp&nbsp</span></a>{{ $dato['descripcion'] }}
                                </td>
                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes">

                                    </td>


                                    <td class="col-mes">


                                    </td>
                                @endfor

                                <td class="col-ac-actual">

                                </td>


                                <td class="col-ac-actual">


                                </td>

                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes">

                                    </td>
                                    <td class="col-mes">


                                    </td>
                                @endfor

                                <td class="col-ac-anterior">



                                </td>
                                <td class="col-ac-anterior">



                                </td>


                                <td></td>
                                <td></td>
                            </tr>

                        @elseif($dato['type'] == 'total')

                            <tr class="niv-1 {{ $dato['cuenta'] }}-00-00-00" role="button">
                                <td class=" pr-2 text-end "> {{ $dato['cuenta'] }}</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#"><span class="border sp-total">&nbsp+&nbsp</span></a>
                                    {{ $dato['descripcion'] }}
                                </td>
                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-actual">
                                        @if (isset($dato['mesesActual'][$i]))
                                            {{ esMoneda2dec($dato['mesesActual'][$i]) }}

                                        @else
                                            {{ '' }}
                                        @endif
                                    </td>

                                    <td class="col-mes pr-2 text-end">
                                        @if (isset($dato['mesesActual'][$i]))
                                            {{ porcentaje($dato['acuActval'], $dato['acuActval']) }}

                                        @endif

                                    </td>

                                @endfor


                                <td class=" pr-2 text-end col-ac-actual">
                                    {{ esMoneda2dec($dato['acuActval']) }}
                                </td>

                                <td class=" pr-2 text-end col-ac-actual">
                                    {{ porcentaje($dato['acuActval'], $dato['acuActval']) }}

                                </td>

                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-anterior">
                                        @if (isset($dato['mesesAnterior'][$i]))
                                            {{ esMoneda2dec($dato['mesesAnterior'][$i]) }}
                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>
                                    <td class="col-mes pr-2 text-end">

                                        @if (isset($dato['mesesAnterior'][$i]))

                                            {{ porcentaje($dato['mesesAnterior'][$i], $dato['mesesAnterior'][$i]) }}

                                        @endif
                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ esMoneda2dec($dato['acuAntval']) }}

                                </td>
                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ porcentaje($dato['acuAntval'], $dato['acuAntval']) }}

                                </td>

                                <td class=" pr-2 text-end">{{ variacion($dato['acuActval'], $dato['acuAntval']) }}
                                </td>
                                <td class=" pr-2 text-end">
                                    @if (isset($dato['acuActval']) && isset($dato['acuAntval']))
                                        @if ($dato['acuActval'] != 0 && $dato['acuAntval'] != 0)
                                            {{ esMoneda2dec(($dato['acuActval'] / $dato['acuAntval']) * 100) }}
                                        @else
                                            .0
                                        @endif
                                    @else
                                        .0
                                    @endif
                                </td>
                            </tr>

                        @elseif($dato['type'] == 'p')

                            <tr class="pad {{ $dato['cuenta'] }}-00-00-00 " role="button">
                                <td class=" pr-2 text-end"> {{ $dato['cuenta'] }}</td>
                                <td></td>
                                <td></td>
                                <td></td>
                                <td><a href="#"><span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>{{ $dato['descripcion'] }}
                                </td>
                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-actual">
                                        @if (isset($dato['mesesActual'][$i]))
                                            {{ esMoneda2dec($dato['mesesActual'][$i]) }}

                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>


                                    <td class="col-mes pr-2 text-end">
                                        @if (isset($dato['acuActporc'][$i]))
                                            {{ $dato['acuActporc'][$i] }}
                                        @endif

                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-actual">
                                    {{ esMoneda2dec($dato['acuActval']) }}
                                </td>


                                <td class=" pr-2 text-end col-ac-actual">
                                    @if (isset($dato['acumPorAct']))
                                        {{ $dato['acumPorAct'] }}
                                    @endif

                                </td>

                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-anterior">
                                        @if (isset($dato['mesesAnterior'][$i]))
                                            {{ esMoneda2dec($dato['mesesAnterior'][$i]) }}
                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>
                                    <td class="col-mes pr-2 text-end">

                                        @if (isset($dato['mesesAnterior'][$i]))

                                            {{ porcentaje($dato['mesesAnterior'][$i], $dato['mesesAnterior'][$i]) }}

                                        @endif
                                    </td>
                                @endfor


                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ esMoneda2dec($dato['acuAntval']) }}

                                </td>
                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ porcentaje($dato['acuAntval'], $dato['acuAntval']) }}

                                </td>

                                <td class=" pr-2 text-end">{{ variacion($dato['acuActval'], $dato['acuAntval']) }}
                                </td>
                                <td class=" pr-2 text-end">
                                    @if (isset($dato['acuActval']) && isset($dato['acuAntval']))
                                        @if ($dato['acuActval'] != 0 && $dato['acuAntval'] != 0)
                                            {{ esMoneda2dec(($dato['acuActval'] / $dato['acuAntval']) * 100) }}
                                        @else
                                            .0
                                        @endif
                                    @else
                                        .0
                                    @endif
                                </td>
                            </tr>

                        @elseif($dato['type'] == 'p1')

                            <tr class="pad-1 {{ $dato['cuenta'] . '-' . $dato['subc'] . '-' . $dato['aux'] . '-' . $dato['aux1'] }}"
                                role="button">
                                <td class=" pr-2 text-end"> {{ $dato['cuenta'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['subc'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['aux'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['aux1'] }}</td>
                                <td><a href="#">&nbsp&nbsp<span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>{{ $dato['descripcion'] }}
                                </td>
                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-actual">
                                        @if (isset($dato['mesesActual'][$i]))
                                            {{ esMoneda2dec($dato['mesesActual'][$i]) }}

                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>


                                    <td class="col-mes pr-2 text-end">
                                        @if (isset($dato['acuActporc'][$i]))
                                            {{ $dato['acuActporc'][$i] }}
                                        @else
                                            {{ porcentaje(0, 0) }}
                                        @endif

                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-actual">
                                    {{ esMoneda2dec($dato['acuActval']) }}
                                </td>


                                <td class=" pr-2 text-end col-ac-actual">
                                    @if (isset($dato['acumPorAct']))
                                        {{ $dato['acumPorAct'] }}
                                    @endif

                                </td>

                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-anterior">
                                        @if (isset($dato['mesesAnterior'][$i]))
                                            {{ esMoneda2dec($dato['mesesAnterior'][$i]) }}
                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>
                                    <td class="col-mes pr-2 text-end">

                                        @if (isset($dato['mesesAnterior'][$i]))

                                            {{ porcentaje($dato['mesesAnterior'][$i], $dato['mesesAnterior'][$i]) }}

                                        @else
                                            {{ '' }}
                                        @endif
                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ esMoneda2dec($dato['acuAntval']) }}

                                </td>
                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ porcentaje($dato['acuAntval'], $dato['acuAntval']) }}

                                </td>


                                <td class=" pr-2 text-end">{{ variacion($dato['acuActval'], $dato['acuAntval']) }}
                                </td>
                                <td class=" pr-2 text-end">
                                    @if (isset($dato['acuActval']) && isset($dato['acuAntval']))
                                        @if ($dato['acuActval'] != 0 && $dato['acuAntval'] != 0)
                                            {{ esMoneda2dec(($dato['acuActval'] / $dato['acuAntval']) * 100) }}
                                        @else
                                            .0
                                        @endif
                                    @else
                                        .0
                                    @endif
                                </td>
                            </tr>

                        @elseif($dato['type'] == 'p2')

                            <tr class="pad-2 {{ $dato['cuenta'] . '-' . $dato['subc'] . '-' . $dato['aux'] . '-' . $dato['aux1'] }}"
                                role="button">
                                <td class=" pr-2 text-end"> {{ $dato['cuenta'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['subc'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['aux'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['aux1'] }}</td>
                                <td><a href="#">&nbsp&nbsp&nbsp&nbsp<span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>{{ $dato['descripcion'] }}
                                </td>
                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-actual">
                                        @if (isset($dato['mesesActual'][$i]))
                                            {{ esMoneda2dec($dato['mesesActual'][$i]) }}

                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>


                                    <td class="col-mes pr-2 text-end">
                                        @if (isset($dato['acuActporc'][$i]))
                                            {{ $dato['acuActporc'][$i] }}
                                        @else
                                            {{ porcentaje(0, 0) }}
                                        @endif

                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-actual">
                                    {{ esMoneda2dec($dato['acuActval']) }}
                                </td>


                                <td class=" pr-2 text-end col-ac-actual">
                                    @if (isset($dato['acumPorAct']))
                                        {{ $dato['acumPorAct'] }}
                                    @endif

                                </td>

                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-anterior">
                                        @if (isset($dato['mesesAnterior'][$i]))
                                            {{ esMoneda2dec($dato['mesesAnterior'][$i]) }}
                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>
                                    <td class="col-mes pr-2 text-end">

                                        @if (isset($dato['mesesAnterior'][$i]))

                                            {{ porcentaje($dato['mesesAnterior'][$i], $dato['mesesAnterior'][$i]) }}

                                        @else
                                            {{ '' }}
                                        @endif
                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ esMoneda2dec($dato['acuAntval']) }}

                                </td>
                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ porcentaje($dato['acuAntval'], $dato['acuAntval']) }}

                                </td>


                                <td class=" pr-2 text-end">{{ variacion($dato['acuActval'], $dato['acuAntval']) }}
                                </td>
                                <td class=" pr-2 text-end">
                                    @if (isset($dato['acuActval']) && isset($dato['acuAntval']))
                                        @if ($dato['acuActval'] != 0 && $dato['acuAntval'] != 0)
                                            {{ esMoneda2dec(($dato['acuActval'] / $dato['acuAntval']) * 100) }}
                                        @else
                                            .0
                                        @endif
                                    @else
                                        .0
                                    @endif







                                </td>
                            </tr>

                        @elseif($dato['type'] == 'p3')

                            <tr class="pad-3 {{ $dato['cuenta'] . '-' . $dato['subc'] . '-' . $dato['aux'] . '-' . $dato['aux1'] }}"
                                role="button">
                                <td class=" pr-2 text-end"> {{ $dato['cuenta'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['subc'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['aux'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['aux1'] }}</td>
                                <td class=""><a href="#">&nbsp&nbsp&nbsp&nbsp&nbsp<span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>{{ $dato['descripcion'] }}
                                </td>
                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-actual">
                                        @if (isset($dato['mesesActual'][$i]))
                                            {{ esMoneda2dec($dato['mesesActual'][$i]) }}

                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>


                                    <td class="col-mes pr-2 text-end">
                                        @if (isset($dato['acuActporc'][$i]))
                                            {{ $dato['acuActporc'][$i] }}
                                        @else
                                            {{ porcentaje(0, 0) }}
                                        @endif

                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-actual">
                                    {{ esMoneda2dec($dato['acuActval']) }}
                                </td>


                                <td class=" pr-2 text-end col-ac-actual">
                                    @if (isset($dato['acumPorAct']))
                                        {{ $dato['acumPorAct'] }}
                                    @endif

                                </td>

                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-anterior">
                                        @if (isset($dato['mesesAnterior'][$i]))
                                            {{ esMoneda2dec($dato['mesesAnterior'][$i]) }}
                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>
                                    <td class="col-mes pr-2 text-end">

                                        @if (isset($dato['mesesAnterior'][$i]))

                                            {{ porcentaje($dato['mesesAnterior'][$i], $dato['mesesAnterior'][$i]) }}

                                        @else
                                            {{ '' }}
                                        @endif
                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ esMoneda2dec($dato['acuAntval']) }}

                                </td>
                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ porcentaje($dato['acuAntval'], $dato['acuAntval']) }}

                                </td>


                                <td class=" pr-2 text-end">{{ variacion($dato['acuActval'], $dato['acuAntval']) }}
                                </td>
                                <td class=" pr-2 text-end">
                                    @if (isset($dato['acuActval']) && isset($dato['acuAntval']))
                                        @if ($dato['acuActval'] != 0 && $dato['acuAntval'] != 0)
                                            {{ esMoneda2dec(($dato['acuActval'] / $dato['acuAntval']) * 100) }}
                                        @else
                                            .0
                                        @endif
                                    @else
                                        .0
                                    @endif
                                </td>
                            </tr>


                        @elseif($dato['type'] == 'mov')

                            <tr class="movi {{ $dato['cuenta'] . '-' . $dato['subc'] . '-' . $dato['aux'] . '-' . $dato['aux1'] }}"
                                role="button">
                                <td class=" pr-2 text-end"> {{ $dato['cuenta'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['subc'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['aux'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['aux1'] }}</td>
                                <td><a href="#">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<span
                                            class="border">&nbsp-&nbsp</span></a>{{ $dato['descripcion'] }}
                                </td>
                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-actual">
                                        @if (isset($dato['mesesActual'][$i]))
                                            {{ esMoneda2dec($dato['mesesActual'][$i]) }}

                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>


                                    <td class="col-mes pr-2 text-end">
                                        @if (isset($dato['acuActporc'][$i]))
                                            {{ $dato['acuActporc'][$i] }}
                                        @else
                                            {{ porcentaje(0, 0) }}
                                        @endif

                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-actual">
                                    {{ esMoneda2dec($dato['acuActval']) }}
                                </td>


                                <td class=" pr-2 text-end col-ac-actual">
                                    @if (isset($dato['acumPorAct']))
                                        {{ $dato['acumPorAct'] }}
                                    @endif
                                </td>

                                @for ($i = 1; $i <= $mes; $i++)
                                    <td class="col-mes pr-2 text-end mes-anterior">
                                        @if (isset($dato['mesesAnterior'][$i]))
                                            {{ esMoneda2dec($dato['mesesAnterior'][$i]) }}
                                        @else
                                            {{ esMoneda2dec(0) }}
                                        @endif
                                    </td>
                                    <td class="col-mes pr-2 text-end">

                                        @if (isset($dato['mesesAnterior'][$i]))

                                            {{ porcentaje($dato['mesesAnterior'][$i], $dato['mesesAnterior'][$i]) }}

                                        @else
                                            {{ '' }}
                                        @endif
                                    </td>
                                @endfor

                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ esMoneda2dec($dato['acuAntval']) }}

                                </td>
                                <td class=" pr-2 text-end col-ac-anterior">

                                    {{ porcentaje($dato['acuAntval'], $dato['acuAntval']) }}

                                </td>


                                <td class=" pr-2 text-end">{{ variacion($dato['acuActval'], $dato['acuAntval']) }}
                                </td>
                                <td class=" pr-2 text-end">
                                    @if (isset($dato['acuActval']) && isset($dato['acuAntval']))
                                        @if ($dato['acuActval'] != 0 && $dato['acuAntval'] != 0)
                                            {{ esMoneda2dec(($dato['acuActval'] / $dato['acuAntval']) * 100) }}
                                        @else
                                            .0
                                        @endif
                                    @else
                                        .0
                                    @endif
                                </td>
                            </tr>


                        @endif

                    @endforeach

                </tbody>

            </table>

            <input type="hidden" class="inpCaMes" value="{{ $mes }}">


        </div>
    </div>

    @include('contabilidad.informes.deGestion.estadoResultadosCom.graficoEstadoResCom')

</div>



<script>
    $(".divParamtros").prop("hidden", false);


    $('.pad-1,.pad-2,.pad-3,.movi,.col-mes').hide()

    $('.view-meses').on('click', (e) => {
        e.preventDefault();
        $('.col-mes').toggle()
    })

    $('.btn-n1').on('click', (e) => {

        $('.pad-1,.pad-2,.pad-3,.movi').hide()
        $('.span-simbolo,.sp-total').html('&nbsp+&nbsp')
    })

    $('.btn-n2').on('click', (e) => {
        $('.pad-2,.pad-3,.movi').hide()
        $('.pad-1').show()
        $('.span-simbolo').html('&nbsp+&nbsp')
    })

    $('.btn-n3').on('click', (e) => {
        $('.pad-3,.movi').hide()
        $('.pad-1,.pad-2').show()
        $('.span-simbolo').html('&nbsp+&nbsp')
    })

    $('.btn-n4').on('click', (e) => {
        $('.pad-1,.pad-2,.pad-3,.movi').show()
        $('.span-simbolo').html('&nbsp-&nbsp')
    })


    $('#tablaEstadoResultadosCom>tbody>tr td:nth-child(5)>a').on('click', function(e) {

        e.preventDefault();
        const fila = $(this).parent().parent()
        const indexActual = fila[0].rowIndex
        const [type, cartilla] = fila[0].className.split(' ')
        const [cuenta, subcu, axi1, auxil] = cartilla.split('-')
        const span = $(this).children();

        if (type == 'pad' || type == 'niv-1') {

            $('#tablaEstadoResultadosCom>tbody tr').each(function(index, element) {

                if (element.rowIndex > indexActual) {
                    const [typeH, cartillaH] = element.className.split(' ')
                    const [cuentaH, subcuH, axi1H, auxilH] = cartillaH.split('-')

                    if (typeH === 'pad' || typeH === 'niv-1' || typeH === 'vacio') {
                        return false
                    }







                    if (subcuH === '00') {
                        if ($(this).is(':hidden')) {
                            span.html('&nbsp-&nbsp')
                            $(this, `.${cartillaH}`).show();
                        } else {
                            $(this, `.${cartillaH}`).hide();
                            span.html('&nbsp+&nbsp')
                            $(this).find('.span-simbolo').html('&nbsp+&nbsp')
                        }

                        $(`.vacio`).show();



                    }
                    if (subcuH != '00') {

                        $(this, `.${cartillaH}`).hide();
                        $(this).find('.span-simbolo').html('&nbsp+&nbsp')


                    }


                }

            });
        }


        if (type === 'pad-1') {

            $('#tablaEstadoResultadosCom>tbody tr').each(function(index, element) {

                const [typeH, cartillaH] = element.className.split(' ')
                const [cuentaH, subcuH, axi1H, auxilH] = cartillaH.split('-')

                if (element.rowIndex > indexActual) {

                    if (typeH == 'pad-1' || typeH == 'pad' || typeH == 'niv-1' || typeH == 'vacio') {
                        return false
                    }

                    if (axi1H === '00') {

                        if ($(this).is(':hidden')) {
                            span.html('&nbsp-&nbsp')

                            $(this, `.${cartillaH}`).show();
                        } else {
                            $(this, `.${cartillaH}`).hide();


                            span.html('&nbsp+&nbsp')
                            $(this).find('.span-simbolo').html('&nbsp+&nbsp')
                        }

                        $(`.vacio`).show();

                    }
                    if (axi1H != '00') {

                        $(this, `.${cartillaH}`).hide();
                        $(this).find('.span-simbolo').html('&nbsp+&nbsp')


                    }


                }

            });

        }


        if (type === 'pad-2') {

            $('#tablaEstadoResultadosCom>tbody tr').each(function(index, element) {

                const [typeH, cartillaH] = element.className.split(' ')
                const [cuentaH, subcuH, axi1H, auxilH] = cartillaH.split('-')

                if (element.rowIndex > indexActual) {

                    if (typeH == 'pad-2' || typeH == 'pad-1' || typeH == 'pad' || typeH == 'niv-1' ||
                        typeH == 'vacio') {
                        return false
                    }

                    if (auxilH === '00') {

                        if ($(this).is(':hidden')) {
                            $(this, `.${cartillaH}`).show();
                            span.html('&nbsp-&nbsp')
                        } else {
                            $(this, `.${cartillaH}`).hide();
                            span.html('&nbsp+&nbsp')
                            $(this).find('.span-simbolo').html('&nbsp+&nbsp')
                        }

                        $(`.vacio`).show();

                    }
                    if (auxilH != '00') {

                        $(this, `.${cartillaH}`).hide();


                    }


                }

            });

        }

        if (type === 'pad-3') {

            $('#tablaEstadoResultadosCom>tbody tr').each(function(index, element) {

                const [typeH, cartillaH] = element.className.split(' ')
                const [cuentaH, subcuH, axi1H, auxilH] = cartillaH.split('-')

                if (element.rowIndex > indexActual) {

                    if (typeH == 'pad-3' || typeH == 'pad-2' || typeH == 'pad-1' || typeH == 'pad' ||
                        typeH == 'niv-1' ||
                        typeH == 'vacio') {
                        return false
                    }

                    if (auxilH != '00') {

                        if ($(this).is(':hidden')) {
                            span.html('&nbsp-&nbsp')
                            $(this, `.${cartillaH}`).show();
                        } else {
                            $(this, `.${cartillaH}`).hide();
                            span.html('&nbsp+&nbsp')
                        }

                        $(`.vacio`).show();

                    }



                }

            });

        }

    })


    //###############control del grafico
</script>
