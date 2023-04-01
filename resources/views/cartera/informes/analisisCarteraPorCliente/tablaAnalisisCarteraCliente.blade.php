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
                        <th scope="col" class="text-left" style="">Descripción</th>
                        <th scope="col" class="text-left" style="">Sucursal</th>
                        <th scope="col" class="" >Concepto</th>
                        <th scope="col" class="" style="width: 3%">Fecha</th>
                        <th scope="col" class="text-end" >Saldo Anterior</th>
                        <th scope="col" class="text-end" >Valor Debito</th>
                        <th scope="col" class="text-end" >Valor Credito</th>
                        <th scope="col" class="pr-2 text-end" >Nuevo Saldo</th>
                        
                    </tr>
                </thead>

                <tbody>

                     @foreach ($datos as $dato)

                        @if ($dato['type'] == 'p')

                            <tr class="" >
                          
                                <td>{{ $dato['dDescrip'] }}</td>
                                <td>{{ $dato['sucursal'] }}</td>
                                <td >{{ $dato['dConcepto'] }}</td>
                                <td>{{ $dato['dFecha'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['saldoAnte'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['dDebitos'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['dvCreditos'] }}</td>
                                <td class="pr-2 text-end">{{ $dato['nuevoSaldo'] }}</td>
                                

                            </tr>

                       
                        @endif

                    @endforeach 



                </tbody>

            </table>


        </div>
    </div>



</div>



