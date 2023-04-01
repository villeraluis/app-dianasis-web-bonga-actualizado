<div class=" p-1">
    <section class="row divSection1 mb-2">

        <div class="col-12 mb-2 header-informe">
            <b>Egresos De Bancos- {{ session('empresaNombre') }}</b>
        </div>


        <div class="col-12 contenedor-card">

            <div class="item-1-cont " style="max-width:950px;">

                <div class="card div-shadow  div-card-consulta">

                    <div class="card-header card-header-custom">
                        <b>Parametros de la Consulta</b>
                    </div>

                    <div class=" card-body card-body-custom">

                        <div class="divControlVistaParam">

                            <x-divConsultasHome />


                        </div>


                        <form method="post" id="formConsultaInformes">
                            @csrf
                            <div hidden class=" divParamtros">

                                <div class="row col-12 col-md-11">
                                    <x-inputDosFechas />

                                    <div class="col-12 col-md-6">
                                        <x-selectsTerceros />
                                    </div>

                                    <div class="col-12 col-md-6 ">
                                        <x-selectsComprobantes :comprobantes="$comprobantes" />
                                    </div>

                                </div>



                            </div>





                        </form>

                    </div>

                </div>


                <div hidden class="row divBtnVerTabla" style="max-width:450px;">

                    <div class="d-flex justify-content-evenly">

                        <x-botonVerConsultas />

                        <x-botonVerTabla />

                        <x-botonVerGrafico />

                    </div>


                </div>

            </div>


            <div hidden class="item-2-cont text-center mx-1 divBotonesEnviar">

                <x-botonesEnviarForm />

            </div>


        </div>





    </section>

    <section class="row" id="sectionTablaInformes">

    </section>
</div>



<script>
    $(document).ready(function() {
        controlBusquedas();

        /////////cambio de titulos en los componentes
        $('.tituloBotonHoy').text('Consultar Egresos Hoy');
        $('.imagenBotonHoy').prop('src', "{{ asset('vendor/img/egresos1.png') }}").prop('style',
            'width: 38%');
        $('.tituloBtnBusquedaMes').text('Consultar Egresos de {{ mesActual(date('n')) }}');
        $('.imgBtnBusquedaMes').prop('src', "{{ asset('vendor/img/egresos1.png') }}").prop('style',
            'width: 45%');
        $('.LabelTipoTerceros').text('Proveedores');
        ///////////



        
        $('.select2-custom').select2({
            theme: "bootstrap-5"
        });


        $('#formConsultaInformes').on('submit', function(e) {
            $('.btnVerGrafico').text("Ocultar Grafica");
            $(".btnVerTabla").text("Ver Tabla Informe");

            $('.btnVerConsultas').html('<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>');

            let _url = route('consulta.tesoreria.informes.informeEgresosBancos');

            let data = $(this).serialize();
            postConsultas(_url, data, e);
            $(".divParamtros").prop("hidden", false);

        });


    })
</script>
