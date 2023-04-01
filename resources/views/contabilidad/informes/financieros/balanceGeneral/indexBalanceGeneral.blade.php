<div class="p-1">
    <section class="row divSection1 mb-2">

        <div class="col-12 mb-2 header-informe">
            <b>Balance General - {{ session('empresaNombre') }}</b>
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
                        <div class="form-check form-check-inline ">
                            <input class="form-check-input" type="checkbox" value="1" name="checkSaldo">
                            <label class="form-check-label" for="checkSaldo">Saldos Iniciales en
                                Cero</label>
                        </div>
                    </div>

                    
                    <x-botonEnviarForm />
                    

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

        $('.btnVerGrafico').text("Ocultar Grafica");
        $(".btnVerTabla").text("Ver Tabla Informe");

        $('.btnVerConsultas').html('<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>');

        let _url = route('consulta.contabilidad.informes.financiero.contBalanceGeneral');

        let data = $(this).serialize();
        postConsultas(_url, data, e);

    });
</script>
