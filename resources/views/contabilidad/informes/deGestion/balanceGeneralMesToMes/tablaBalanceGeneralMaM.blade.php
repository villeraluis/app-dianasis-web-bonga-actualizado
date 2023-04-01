
<div>
    <div class="border text-center p-1">



        <x-botonesNumeroNivel />

    </div>

    <div class="border mt-1 div-fondo-tabla">
        <div class="table-responsive  div-tabla-scroll-y">
            <table class="table  table-hover table-sm tablaInformesCustom tablaInformesExport tabla-head-fijo tabla-cols-fija"
                id="tablaBalanceGeneralMaM" style="min-width: 1400px">

                <thead>
                    <tr>

                        <th scope="col" class="text-left">Cuenta</th>
                        <th scope="col" class="text-center">Sub</th>
                        <th scope="col" class="text-center">Aux</th>
                        <th scope="col" class="text-center">Aux1</th>
                        <th scope="col" class="text-center">Descripción</th>
                        <th scope="col" class="text-center">Ene</th>
                        <th scope="col" class="text-center">Feb</th>
                        <th scope="col" class="text-center">Mar</th>
                        <th scope="col" class="text-center">Abr</th>
                        <th scope="col" class="text-center">May</th>
                        <th scope="col" class="text-center">Jun</th>
                        <th scope="col" class="text-center">Jul</th>
                        <th scope="col" class="text-center">Ago</th>
                        <th scope="col" class="text-center">Sep</th>
                        <th scope="col" class="text-center">Oct</th>
                        <th scope="col" class="text-center">Nov</th>
                        <th scope="col" class="text-center">Dic</th>

                    </tr>
                </thead>

                <tbody>

                    @foreach ($datos as $dato)
                        @if ($dato['type'] == 'vacio')

                            <tr class="vacio -00-00" role="button">
                                <td>{{ $dato['cuenta'] }}</td>
                                <td class="text-center">{{ $dato['subc'] }}</td>
                                <td class="text-center">{{ $dato['aux'] }}</td>
                                <td class="text-center">{{ $dato['aux1'] }}</td>
                                <td class=""> <a href="#"><span class="border">&nbsp
                                            &nbsp</span></a>
                                    {{ $dato['descripcion'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ene'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['feb'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['mar'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['abr'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['may'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jun'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jul'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ago'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['sep'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['oct'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['nov'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['dic'] }}</td>


                            </tr>

                        @elseif ($dato['type'] == 'n1')

                            <tr class="niv-1  {{ $dato['cuenta'] }}-00-00-00" role="button">
                                <td class="fijado1">{{ $dato['cuenta'] }}</td>
                                <td class="text-center">{{ $dato['subc'] }}</td>
                                <td class="text-center">{{ $dato['aux'] }}</td>
                                <td class="text-center">{{ $dato['aux1'] }}</td>
                                <td class=""> <a href="#"><span
                                            class="border ">&nbsp+&nbsp</span></a>
                                    {{ $dato['descripcion'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ene'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['feb'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['mar'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['abr'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['may'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jun'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jul'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ago'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['sep'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['oct'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['nov'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['dic'] }}</td>

                            </tr>

                        @elseif ($dato['type'] == 'p1')


                            <tr class="pad {{ $dato['cuenta'] }}-00-00-00" role="button">
                                <td>{{ $dato['cuenta'] }}</td>
                                <td class="text-center">{{ $dato['subc'] }}</td>
                                <td class="text-center">{{ $dato['aux'] }}</td>
                                <td class="text-center">{{ $dato['aux1'] }}</td>
                                <td class=""> <a href="#">&nbsp<span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>
                                    {{ $dato['descripcion'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ene'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['feb'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['mar'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['abr'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['may'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jun'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jul'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ago'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['sep'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['oct'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['nov'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['dic'] }}</td>


                            </tr>



                        @elseif ($dato['type'] == 'p2')

                            <tr class="pad-1 {{ $dato['cuenta'] . '-' . $dato['subc'] . '-' . $dato['aux'] . '-' . $dato['aux1'] }} "
                                role="button">
                                <td>{{ $dato['cuenta'] }}</td>
                                <td class="text-center">{{ $dato['subc'] }}</td>
                                <td class="text-center">{{ $dato['aux'] }}</td>
                                <td class="text-center">{{ $dato['aux1'] }}</td>
                                <td class=""> <a href="#">&nbsp&nbsp<span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>
                                    {{ $dato['descripcion'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ene'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['feb'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['mar'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['abr'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['may'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jun'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jul'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ago'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['sep'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['oct'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['nov'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['dic'] }}</td>

                            </tr>

                        @elseif ($dato['type'] == 'p3')


                            <tr class="pad-2 {{ $dato['cuenta'] . '-' . $dato['subc'] . '-' . $dato['aux'] . '-' . $dato['aux1'] }} "
                                role="button">
                                <td>{{ $dato['cuenta'] }}</td>
                                <td class="text-center">{{ $dato['subc'] }}</td>
                                <td class="text-center">{{ $dato['aux'] }}</td>
                                <td class="text-center">{{ $dato['aux1'] }}</td>
                                <td class=""> <a href="#">&nbsp&nbsp&nbsp<span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>
                                    {{ $dato['descripcion'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ene'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['feb'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['mar'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['abr'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['may'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jun'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jul'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ago'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['sep'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['oct'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['nov'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['dic'] }}</td>

                            </tr>

                        @elseif ($dato['type'] == 'p4')


                            <tr class="pad-3 {{ $dato['cuenta'] . '-' . $dato['subc'] . '-' . $dato['aux'] . '-' . $dato['aux1'] }}  "
                                role="button">
                                <td>{{ $dato['cuenta'] }}</td>
                                <td class="text-center">{{ $dato['subc'] }}</td>
                                <td class="text-center">{{ $dato['aux'] }}</td>
                                <td class="text-center">{{ $dato['aux1'] }}</td>
                                <td class=""> &nbsp&nbsp&nbsp&nbsp<a href="#"><span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>
                                    {{ $dato['descripcion'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ene'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['feb'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['mar'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['abr'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['may'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jun'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jul'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ago'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['sep'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['oct'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['nov'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['dic'] }}</td>
                            </tr>

                        @elseif ($dato['type'] == 'p5')

                            <tr class="pad5 " role="button">
                                <td>{{ $dato['cuenta'] }}</td>
                                <td class="text-center">{{ $dato['subc'] }}</td>
                                <td class="text-center">{{ $dato['aux'] }}</td>
                                <td class="text-center">{{ $dato['aux1'] }}</td>
                                <td class="">&nbsp&nbsp&nbsp&nbsp&nbsp <a href="#"><span
                                            class="border span-simbolo">&nbsp+&nbsp</span></a>
                                    {{ $dato['descripcion'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ene'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['feb'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['mar'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['abr'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['may'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jun'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jul'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ago'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['sep'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['oct'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['nov'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['dic'] }}</td>

                            </tr>

                        @elseif ($dato['type'] == 'h')

                            <tr class="movi {{ $dato['cuenta'] . '-' . $dato['subc'] . '-' . $dato['aux'] . '-' . $dato['aux1'] }}"
                                role="button">
                                <td>{{ $dato['cuenta'] }}</td>
                                <td class="text-center">{{ $dato['subc'] }}</td>
                                <td class="text-center">{{ $dato['aux'] }}</td>
                                <td class="text-center">{{ $dato['aux1'] }}</td>
                                <td class="">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp <a href="#"><span
                                            class="border">&nbsp-&nbsp</span></a>
                                    {{ $dato['descripcion'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ene'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['feb'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['mar'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['abr'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['may'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jun'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['jul'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['ago'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['sep'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['oct'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['nov'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['dic'] }}</td>

                            </tr>


                        @endif

                    @endforeach


                </tbody>



            </table>


        </div>
    </div>
</div>



<script>
    $('.pad-1,.pad-2,.pad-3,.pad-4,.pad-5,.movi').hide()

    $(".divConsultasHome,.divParamtros,.divBotonesEnviar,.divBtnVerTabla,.btnVerConsultas").prop(
        "hidden",
        false
    );




    $('#tablaBalanceGeneralMaM>tbody>tr td:nth-child(5)>a').on('click', function(e) {

        e.preventDefault();
        const fila = $(this).parent().parent()
        const indexActual = fila[0].rowIndex
        const [type, cartilla] = fila[0].className.split(' ')
        const [cuenta, subcu, axi1, auxil] = cartilla.split('-')
        const span = $(this).children();

        if (type == 'niv-1') {

            $('#tablaBalanceGeneralMaM>tbody tr').each(function(index, element) {

                if (element.rowIndex > indexActual) {
                    const [typeH, cartillaH] = element.className.split(' ')
                    const [cuentaH, subcuH, axi1H, auxilH] = cartillaH.split('-')

                    if (typeH === typeH === 'niv-1' || typeH === 'vacio') {
                        return false
                    }

                    const cuInt = parseInt(cuentaH)

                    if (subcuH === '00' && (cuInt % 100) == 0) {
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

                    if (subcuH === '00' && (cuInt % 100) != 0) {

                        $(this, `.${cartillaH}`).hide();
                        span.html('&nbsp+&nbsp')
                        $(this).find('.span-simbolo').html('&nbsp+&nbsp')
                    }



                    if (subcuH != '00') {

                        $(this, `.${cartillaH}`).hide();
                        $(this).find('.span-simbolo').html('&nbsp+&nbsp')


                    }


                }

            });
        }


        if (type == 'pad') {

            $('#tablaBalanceGeneralMaM>tbody tr').each(function(index, element) {

                const [typeH, cartillaH] = element.className.split(' ')
                const [cuentaH, subcuH, axi1H, auxilH] = cartillaH.split('-')

                if (element.rowIndex > indexActual) {

                    if (typeH == 'pad' || typeH == 'niv-1' || typeH == 'vacio') {
                        return false
                    }

                    if (subcuH == '00') {

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

        if (type == 'pad-1') {
            $('#tablaBalanceGeneralMaM>tbody tr').each(function(index, element) {

                const [typeH, cartillaH] = element.className.split(' ')
                const [cuentaH, subcuH, axi1H, auxilH] = cartillaH.split('-')

                if (element.rowIndex > indexActual) {


                    if (typeH == 'pad-1' || typeH == 'pad' || typeH == 'niv-1' || typeH == 'vacio') {
                        return false
                    }

                    if (axi1H == '00') {

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

        if (type == 'pad-2') {
            $('#tablaBalanceGeneralMaM>tbody tr').each(function(index, element) {

                const [typeH, cartillaH] = element.className.split(' ')
                const [cuentaH, subcuH, axi1H, auxilH] = cartillaH.split('-')

                if (element.rowIndex > indexActual) {


                    if (typeH == 'pad-2' || typeH == 'pad-1' || typeH == 'pad' || typeH == 'niv-1' ||
                        typeH == 'vacio') {
                        return false
                    }

                    if (auxilH == '00') {

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
                    if (auxilH != '00') {

                        $(this, `.${cartillaH}`).hide();
                        $(this).find('.span-simbolo').html('&nbsp+&nbsp')


                    }
                }
            });
        }


        if (type === 'pad-3') {

            $('#tablaBalanceGeneralMaM>tbody tr').each(function(index, element) {

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
</script>
