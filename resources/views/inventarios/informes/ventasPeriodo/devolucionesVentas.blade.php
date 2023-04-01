<div class="border p-2">
    <section class="row divSection1">

        <div class="col-12 mb-2 header-informe">
            <b>Devoluciones en Venta Por Periodos - {{ session('empresaNombre') }}</b>
        </div>

        <div class="col-12  col-xl-8 ">
            <form method="post" id="formConsultaInformes">
                @csrf
                <div class=" div-shadow card">

                    <div class="card-header card-header-custom">
                        <b>Parametros de la Consulta</b>
                    </div>

                    <div class=" card-body card-body-custom">

                        <div hidden class="row divParamtros">


                            <x-inputDosFechas />



                            <div class="col-12 col-md-8 campoOpcional">
                                
                                <x-selectsTerceros :terceros="$terceros" />

                            </div>

                            

                        </div>

                        <div class="row divControlVistaParam">

                            <x-divConsultasHome/>
                            
                            <div hidden class="row col-12    divBtnVerTabla justify-content-evenly">
                                <div class="col-12 col-md-3"><x-botonVerConsultas/></div>

                                <x-botonesTablaGrafico/>
                                                             
                            </div>

                        </div>

                    </div>

                </div>

            </form>

        </div>

        <div hidden class="col-12  col-xl-3 text-center m-1 divBotonesEnviar">



            <x-botonesEnviarForm />



        </div>


    </section>
    <section class="row" id="sectionTablaInformes">
    </section>
</div>




<script>
    controlBusquedas();

    /////////cambio de titulos en los componentes
    $('.tituloBotonHoy').text('Consultar Devoluciones Hoy');
    $('.imagenBotonHoy').prop('src', "{{ asset('vendor/img/devolucion_venta.png') }}");
    $('.tituloBtnBusquedaMes').text('Consultar Ventas de {{mesActual(date("n")) }}');
    $('.imgBtnBusquedaMes').prop('src', "{{ asset('vendor/img/devolucion_mes.png') }}");
    $('.LabelTipoTerceros').text('Proveedores');
    ///////////

    $('#formConsultaInformes').on('submit', function(e) {
       

        $('.btnVerGrafico').text("Ocultar Grafica");
        $(".btnVerTabla").text("Ver Tabla Informe");
        $('.btnVerConsultas').html(
                '<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>'
            );

        let _url = route('consulta.informe.devoluciones.ventas');

        let data = $(this).serialize();
        
        postConsultas(_url,data,e)
       
       
    });

</script>