<div>

    <div class="border text-center p-1">

        
        
        <span role="button" class="btn btn-secondary btn-sm btn-n1" title="Ver Nivel 1 de la Tabla">1</span>
        <span role="button" class="btn btn-secondary btn-sm btn-n2" title="Ver Tabla Completa">2</span>
       <x-botonExportarEcxel/>


    </div>


    <div>
        <div class="table-responsive my-2 div-tabla div-tabla-scroll-y">

            <table class="table mt-4   table-hover table-sm tablaInformesCustom tablaInformesExport tabla-head-fijo" id="tablaAnalisctaEdades"
                style="width: 100%">

                <thead>
                    <tr>
                        <th scope="col" class="text-left" style="width: 3%">Cedula</th>
                        <th scope="col" class="text-left" style="">Descripción</th>
                        <th scope="col" class="text-center" style="width: 4%">Concepto</th>
                        <th scope="col" class="text-center" style="width: 4%">Fecha</th>
                        <th scope="col" class="text-center" style="width: 4%">Dias</th>
                        <th scope="col" class="text-center" style="width: 4%">vencimiento</th>
                        <th scope="col" class="pr-2 text-end" style="width: 7%">Total Deuda</th>
                        <th scope="col" class="pr-2 text-end" style="width: 8%">Por Vencer</th>
                        <th scope="col" class="pr-2 text-end" style="width: 7%">De 01 a 30</th>
                        <th scope="col" class="pr-2 text-end" style="width: 7%">De 31 a 60</th>
                        <th scope="col" class="pr-2 text-end" style="width: 7%">De 61 a 90</th>
                        <th scope="col" class="pr-2 text-end" style="width: 7%">De 91 a 180</th>
                        <th scope="col" class="pr-2 text-end" style="width: 7%">De 180 a 360</th>
                        <th scope="col" class="pr-2 text-end" style="width: 7%">Mas de 360</th>

                    </tr>
                </thead>

                <tbody>

                    @foreach ($datos as $dato)

                        @if ($dato['type'] == 'p-2')

                            <tr class="tr-totales" >

                                <td>{{ $dato['cedula'] }}</td>
                                <td>{{ $dato['descripción'] }}</td>
                                <td>{{ $dato['concepto'] }}</td>
                                <td>{{ $dato['fechaPrv'] }}</td>
                                <td>{{ $dato['cantDias'] }}</td>
                                <td>{{ $dato['vencimiento'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['totalDeuda'] }}</td>
                                <td class="pr-2 text-end"> {{ $dato['porVencer'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de1a30'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de31a60'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de61a90'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de91a180'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de181a360'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['masDe360'] }}</td>

                            </tr>

                        @elseif ($dato['type'] == 'p')

                            <tr class="pad {{ $dato['cedula'] }}" >

                                <td>{{ $dato['cedula'] }}</td>
                                <td> <span role="button" class="border span-simbolo">&nbsp+&nbsp</span>
                                    {{ $dato['descripción'] }}</td>
                                <td>{{ $dato['concepto'] }}</td>
                                <td>{{ $dato['fechaPrv'] }}</td>
                                <td>{{ $dato['cantDias'] }}</td>
                                <td>{{ $dato['vencimiento'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['totalDeuda'] }}</td>
                                <td class="pr-2 text-end"> {{ $dato['porVencer'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de1a30'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de31a60'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de61a90'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de91a180'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de181a360'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['masDe360'] }}</td>

                            </tr>


                        @elseif ($dato['type'] == 'h')

                            <tr class="movi {{ $dato['cedula'] }}" >
                                <td>{{ $dato['cedula'] }}</td>
                                <td>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp{{ $dato['descripción'] }}</td>
                                <td>{{ $dato['concepto'] }}</td>
                                <td>{{ $dato['fechaPrv'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['cantDias'] }}</td>
                                <td>{{ $dato['vencimiento'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['totalDeuda'] }}</td>
                                <td class="pr-2 text-end"> {{ $dato['porVencer'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de1a30'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de31a60'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de61a90'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de91a180'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['de181a360'] }}</td>
                                <td class=" pr-2 text-end">{{ $dato['masDe360'] }}</td>
                            </tr>


                        @endif

                    @endforeach



                </tbody>

            </table>


        </div>
    </div>



</div>




















<script>
    $(function() {

        $('.movi').hide()

        $('#tablaAnalisctaEdades>tbody>tr td:nth-child(2)>span').on('click', function(e) {

            e.preventDefault();
            const fila = $(this).parent().parent()
            const indexActual = fila[0].rowIndex
            const [type, cedula] = fila[0].className.split(' ')

            const span = $(this);

            if (type == 'pad') {

                $('#tablaAnalisctaEdades>tbody tr').each(function(index, element) {

                    if (element.rowIndex > indexActual) {
                        const [typeH, idH] = element.className.split(' ')

                        if (typeH === 'pad') {
                            return false
                        }

                        if (idH === cedula) {
                            if ($(this).is(':hidden')) {
                                span.html('&nbsp-&nbsp')
                                $(this, `.${cedula}`).show();
                            } else {
                                $(this, `.${cedula}`).hide();
                                span.html('&nbsp+&nbsp')
                                $(this).find('.span-simbolo').html('&nbsp+&nbsp')
                            }

                            $(`.vacio`).show();

                        }

                    }

                });
            }


        })

    })

    /* ######################## */


    $('.btn-n1').on('click', (e) => {

        $('.movi').hide()
        $('.span-simbolo,.sp-total').html('&nbsp+&nbsp')
    })

    $('.btn-n2').on('click', (e) => {
        
        $('.movi').show()
        $('.span-simbolo').html('&nbsp+&nbsp')
    })

  



    
</script>
