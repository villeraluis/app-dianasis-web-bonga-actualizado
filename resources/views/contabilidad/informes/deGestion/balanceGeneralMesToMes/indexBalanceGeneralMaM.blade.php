<div class="p-1">
    <section class="row divSection1 mb-2">

        <div class="col-12 mb-2 header-informe">
            <b>Balance General Mes a Mes - {{ session('empresaNombre') }}</b>
        </div>

        <div class="col-12 div-shadow card" style="max-width: 1000px">

            <div class="card-header card-header-custom">
                <b>Parametros de la Consulta</b>
            </div>

            <div class=" card-body card-body-custom">

                <form method="post" id="formConsultaInformes" class="row ">
                    @csrf

                    <div class="col-auto col-md-2">
                        <label for="" class="label-custom"><b>año :</b> </label>
                        <input type="hidden" id="idInputYearActual" value="{{date('Y')}}"/>
                        <select class=" form-select form-select-sm selectYear  select2-custom" name="selectYear">
                            @foreach ($periodos as $idx=>$periodo)
                           
                                <option value="{{ $periodo->PerAno }}" selected>{{ $periodo->PerAno }}</option>
                           
                           
                            @endforeach
                        </select>

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

    $(function(){
        $('.selectYear').val($('#idInputYearActual').val()).trigger('change.select2');

    })
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

        let _url = route('consulta.contabilidad.informes.gestion.BalanceGeneralMaM');

        let data = $(this).serialize();
        postConsultas(_url, data, e);
        $(".divParamtros").prop("hidden", false);

    });
</script>
