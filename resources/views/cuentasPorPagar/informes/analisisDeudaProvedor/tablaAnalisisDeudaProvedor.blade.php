<div>

    <div class="border text-center p-1">

        
        
        
        <x-botonExportarEcxel/>


    </div>


    <div>
        <div class="table-responsive my-2 div-tabla div-tabla-scroll-y">

            <table class="table mt-4   table-hover table-sm tablaInformesCustom tablaInformesExport tabla-head-fijo" id="tablaAnalisctaEdades"
                style="max-width: 1000px">

                <thead>
                    <tr>
                        <th scope="col" class="text-left" style="">Nombre</th>
                        <th scope="col" class="text-left" style="width: 3%">Fecha</th>
                        <th scope="col" class="text-end" >Concepto</th>
                        <th scope="col" class="text-end" >Saldo Anterior</th>
                        <th scope="col" class="text-end" >Valor Credito</th>
                        <th scope="col" class="text-end" >Valor Debito</th>
                        <th scope="col" class="pr-2 text-end" >Nuevo Saldo</th>
                        
                    </tr>
                </thead>

                <tbody>

                    @foreach ($datos as $dato)

                        @if ($dato['type'] == 'p')

                            <tr class="" >

                                <td>{{ $dato['dDescri'] }}</td>
                                <td>{{ $dato['dFecha'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['dConcepto'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['dTotal'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['dvCreditos'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['dDebitos'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['vSaldo'] }}</td>
                                

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
