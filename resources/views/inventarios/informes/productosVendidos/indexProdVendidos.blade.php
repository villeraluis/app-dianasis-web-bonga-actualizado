<div class="border p-2">
    <section class="row divSection1">

        <h6 class="col-12 mb-2 header-informe">
            <b>Listado de Productos Vendidos - {{ session('empresaNombre') }}</b>
        </h6>


        <div class="col-12 contenedor-card">

            <div class="item-1-cont " style="max-width:1050px;">

                <div class="card div-shadow">

                    <div class="card-header card-header-custom">
                        <b>Parametros de la Consulta</b>
                    </div>

                    <div class=" card-body card-body-custom">


                        <div class="divControlVistaParam">

                            <x-divConsultasHome />

                            <div hidden class="col-12   divBtnVerTabla justify-content-evenly">
                                <div class="col-12 col-md-4">
                                    <x-botonVerConsultas />
                                </div>

                                <x-botonesTablaGrafico />
                            </div>

                        </div>

                        <form method="post" id="formConsultaInformes">
                            @csrf


                            <div hidden class="divParamtros">

                                <div class="row">
                                    <x-inputDosFechas />


                                </div>

                                <div class="row">

                                    <div class="col-12 col-md-6 campoOpcional">

                                       

                                    </div>


                                    <div class="col-12 col-md-6 campoOpcional">
                                        <x-selectsComprobantes :comprobantes="$comprobantes" />
                                    </div>

                                </div>

                                <div class="row">

                                    <div class="col-12 col-md-6 campoOpcional">

                                         <x-selectsTerceros :terceros="$terceros" /> 

                                    </div>

                                    <div class="col-12 col-md-6 campoOpcional">
                                        <x-selectBodegas :formaPagos="$formaPagos" />
                                    </div>

                                </div>

                                <div class="row">

                                    <div class="col-12 col-md-6 campoOpcional">

                                        <x-selectClaseProductos :formaPagos="$formaPagos" />
    
                                    </div>

                                    <div class="col-12 col-md-6 campoOpcional">
                                        <x-selectsLineaSublineaProductos :comprobantes="$comprobantes" />
                                    </div>

                                </div>






                               

                               

                                <div class="col-12 col-md-6 campoOpcional">
                                    <x-selectMarcaProducto :formaPagos="$formaPagos" />
                                </div>

                                

                            </div>



                        </form>


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
    /////////cambio de titulos en los componentes
    $('.tituloBotonHoy').text('Consultar Productos Hoy');
    $('.imagenBotonHoy').prop('src', "{{ asset('vendor/img/productos2.png') }}");
    $('.tituloBtnBusquedaMes').text('Consultar Productos {{ mesActual(date('n')) }}');
    $('.imgBtnBusquedaMes').prop('src', "{{ asset('vendor/img/productos_mes.png') }}").prop('style', 'width: 30%');
    $('.LabelTipoTerceros').text('Vendedor');
    ///////////
    controlBusquedas();
    $('#formConsultaInformes').on('submit', function(e) {


        $('.btnVerGrafico').text("Ocultar Grafica");
        $(".btnVerTabla").text("Ver Tabla Informe");
        $('.btnVerConsultas').html(
            '<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>'
        );

        let _url = route('consulta.informe.productos.vendidos');

        let data = $(this).serialize();

        postConsultas(_url, data, e)


    });
</script>
