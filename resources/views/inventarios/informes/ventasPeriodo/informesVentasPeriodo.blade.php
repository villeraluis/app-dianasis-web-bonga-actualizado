<div class=" p-2 ">
    <section class="row divSection1 mb-2">

        <h6 class="col-12 mb-2 header-informe">
            <b>Ventas por Periodo - {{ session('empresaNombre') }}</b>
        </h6>

        <div class="col-12 contenedor-card">

            <div class="item-1-cont " style="max-width:950px;">

                

                <div class="card div-shadow div-card-consulta">

                    <div class="card-header card-header-custom">
                        <b>Parametros de la Consulta</b>
                    </div>

                    <div class=" card-body card-body-custom">


                        <div class="divControlVistaParam">

                            <x-divConsultasHome />

                           

                        </div>

                        <form method="post" id="formConsultaInformes">
                            @csrf
                            <x-divParametrosComunes :formaPagos="$formaPagos"
                                :comprobantes="$comprobantes" />

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

            <div hidden class="item-2-cont text-center mx-1 divBotonesEnviar  " >

                <x-botonesEnviarForm />

            </div>


           


        </div>

    </section>
    <section class="row" id="sectionTablaInformes">
    </section>
</div>







<script>
    controlBusquedas();

    $('#formConsultaInformes').on('submit', function(e) {

        $('.btnVerGrafico').text("Ocultar Grafica");
        $(".btnVerTabla").text("Ver Tabla Informe");
        $('.btnVerConsultas').html(
            '<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>'
        );


        let _url = route('consulta.informe.ventas.periodo');

        let data = $(this).serialize();

        postConsultas(_url, data, e)

    });
</script>
