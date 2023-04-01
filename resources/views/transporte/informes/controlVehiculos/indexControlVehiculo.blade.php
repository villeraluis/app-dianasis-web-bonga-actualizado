<div class="p-1">
    <section class="row divSection1">

        <div class="col-12 mb-2 header-informe ">
            <b>Control Vehiculos- {{ session('empresaNombre') }}</b>
        </div>



        <div class="col-12 div-shadow card " style="max-width: 1000px">

            <div class="card-header card-header-custom div-toggle">
                <b>Parametros de la Consulta</b>
            </div>

            <div class=" card-body card-body-custom div-toggle">

                <form method="post" id="formConsultaInformes" class="row ">
                    @csrf

                    <x-inputYearMont :periodos="$periodos" />


                    <x-botonEnviarForm />


                </form>


            </div>

            <x-tranBotonCardfotter/>
        </div>




    </section>






    <section class="row" id="sectionTablaInformes">




    </section>
</div>

<script>
    $(function() {



        controlBusquedas();
        let tipoCon = 'm'





        $('#sectionTablaInformes').on('click', '#infoMes', () => {
            tipoCon = 'm'
            $('#infoMes').addClass('active')
            $('#infoYear').removeClass('active')
            $('#formConsultaInformes').submit()


        })

        $('.botonEnviarForm').on('click', (e) => {

            $('.div-btn-action').trigger('click')
            $('#infoMes').addClass('active')
            $('#infoYear').removeClass('active')

        })


        $('#sectionTablaInformes').on('click', '#infoYear', () => {
            tipoCon = 'y'
            $('#infoYear').addClass('active')
            $('#infoMes').removeClass('active')
            $('#formConsultaInformes').submit()


        })



        $('.select2-custom').select2({
            theme: "bootstrap-5"
        });



        $('#formConsultaInformes').on('submit', function(e) {

            let _url = route('consulta.transporte.informes.controlVehiculos', tipoCon);


            tipoCon = 'm'

            let data = $(this).serialize();
            postConsultas(_url, data, e);
            $(".divParamtros").prop("hidden", false);

        });

    })
</script>
