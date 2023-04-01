<div class=" p-1">
    <section class="row divSection1 mb-2">

        <div class="col-12 mb-2 header-informe">
            <b>Balance General Comparativo- {{ session('empresaNombre') }}</b>
        </div>



        <div class="col-12 div-shadow card" style="max-width: 1000px">

            <div class="card-header card-header-custom">
                <b>Parametros de la Consulta</b>
            </div>

            <div class=" card-body card-body-custom">

                <form method="post" id="formConsultaInformes" class="row divParamtros">
                    @csrf


                    <x-inputYearMont :periodos="$periodos" />



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
    /////////cambio de titulos en los componentes
    $('.tituloBotonHoy').text('Consultar Compras Hoy');
    $('.imagenBotonHoy').prop('src', "{{ asset('vendor/img/informes_compras_hoy.jpg') }}").prop('style',
        'width: 38%');
    $('.tituloBtnBusquedaMes').text('Consultar Ventas de {{ mesActual(date('n')) }}');
    $('.imgBtnBusquedaMes').prop('src', "{{ asset('vendor/img/compras_mes.png') }}").prop('style', 'width: 45%');
    $('.LabelTipoTerceros').text('Proveedores');
    ///////////

    controlBusquedas();

    $('.select2-custom').select2({
        theme: "bootstrap-5"
    });


    $('#formConsultaInformes').on('submit', function(e) {

        let _url = route('consulta.contabilidad.informes.financiero.estado.BalanceGeneralComp');

        let data = $(this).serialize();
        postConsultas(_url, data, e);
        $(".divParamtros").prop("hidden", false);

    });
</script>
