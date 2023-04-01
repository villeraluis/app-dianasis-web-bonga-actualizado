<div class="border p-2">
    <section class="row divSection1">

        <div class="col-12 mb-2 header-informe">
            <b>Listado de Productos</b>
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


                            <x-inputDosFechas/>


                            <div class="col-12 col-md-8 campoOpcional">
                               
                                <x-selectsTerceros  :terceros="$terceros" />
                            </div>
                            <div class="col-12 col-md-4 campoOpcional">
                                <x-selectFormaPago  :formaPagos="$formaPagos" />
                            </div>

                            <div class="col-12 col-md-8 campoOpcional">
                                <x-selectsComprobantes :comprobantes="$comprobantes"/>
                            </div>



                        </div>


                        <div class="row divControlVistaParam">




                            <div class="row col-12  text-center divBtnVerTabla text-center">

                                <div class="col-12 col-md-4"> <x-botonVerConsultas/></div>




                            </div>

                        </div>

                    </div>

                </div>

            </form>

        </div>

        <div class="col-12  col-xl-3 text-center m-1 divBotonesEnviar">

            <x-botonesEnviarForm/>

        </div>
    </section>
    <section class="row" id="sectionTablaInformes">
        @include('contenido.listaProductos.tablaListaProductos')
    </section>
</div>






<script>
    controlBusquedas();

    $('#formConsultaInformes').on('submit', function(e) {
        e.preventDefault();
        $('.btnVerConsultas').html(
            '<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>'
        );
        let data = $(this).serialize();
        let _url = route('consulta.lista.productos');
        
        cargandoAjax();

        $.ajax({
            url:  _url,
            type: 'POST',
            data: data,
            success: function(response) {

               

                $('#sectionTablaInformes').empty().append(response);
   

            },
            error: function(err) {
                $('.spinnerCargando').prop('hidden', true);
                $('.lupaBtnBuscar').prop('hidden', false);
                alert(err)
            }

        });


    });
</script>
