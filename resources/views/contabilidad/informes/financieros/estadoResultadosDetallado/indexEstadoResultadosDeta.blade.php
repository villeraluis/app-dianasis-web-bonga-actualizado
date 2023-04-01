<div class="p-1">
    <section class="row divSection1 mb-2">

        <div class="col-12 mb-2 header-informe">
            <b>Estado de Resultados - {{ session('empresaNombre') }}</b>
        </div>

        <div class="col-12 div-shadow card" style="max-width: 1000px">

            <div class="card-header card-header-custom">
                <b>Parametros de la Consulta</b>
            </div>

            <div class=" card-body card-body-custom">


                <form method="post" id="formConsultaInformes" class="row divParamtros">
                    @csrf

                        <x-inputYearMont :periodos="$periodos" />

                        <div class="col-auto pt-4">
                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="rdDcumulado" id="acumulado" value="0"
                                    checked>
                                <label class="form-check-label" for="acumulado">acumulado</label>
                            </div>

                            <div class="form-check form-check-inline">
                                <input class="form-check-input" type="radio" name="rdDcumulado" id="mes" value="1">
                                <label class="form-check-label" for="mes">mes</label>
                            </div>

                        </div>



                        <div class="col-auto mt-2 flex-grow-1 text-end">

                            <x-botonEnviarForm />

                        </div>


                   
                </form>







            </div>
        </div>

    </section>


    <section class="row" id="sectionTablaInformes">


    </section>
</div>

<script>
    controlBusquedas();

    $('.select2-custom').select2({
        theme: "bootstrap-5"
    });


    $('#formConsultaInformes').on('submit', function(e) {


        $('.btnVerConsultas').html('<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>');

        let _url = route('consulta.contabilidad.informes.financiero.estado.resultados');

        let data = $(this).serialize();
        postConsultas(_url, data, e);

    });
</script>
