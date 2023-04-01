<div class=" p-1">
    <section class="row divSection1 mb-2">

        <div class="col-12 mb-2 header-informe">
            <b>Analisis De Cartera Por Cliente - {{ session('empresaNombre') }}</b>
        </div>

        <div class="col-12 contenedor-card">

            <div class="item-1-cont " style="max-width:950px;">

                <div class="card div-shadow  div-card-consulta">

                    <div class="card-header card-header-custom">
                        <b>Parametros de la Consulta</b>
                    </div>

                    <div class=" card-body card-body-custom">

                        <form method="post" id="formConsultaInformes" class="row">
                            @csrf

                            <x-inputDosFechas />

                            <div class="col-12 col-md-6">
                                <x-selectsTerceros label="Clientes"/>
                            </div>

                            <x-selectUnCampo label="Conceptos de Cartera" idVal="CcaIdInConceptoCartera" nameCom="selectConceptoCartera"
                                name1="CcaIdInConceptoCartera" name2="CcaStDescripcion" :datos=" $conCartera"/>
                               
                            
                            <x-botonEnviarForm />
                           
                        </form>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <section class="row" id="sectionTablaInformes">

    </section>
</div>


<script>
    $(document).ready(function() {
        controlBusquedas();
        
      

        $('.select2-custom').select2({
            theme: "bootstrap-5"
        });


        $('#formConsultaInformes').on('submit', function(e) {

            $('.btnVerGrafico').text("Ocultar Grafica");
            $(".btnVerTabla").text("Ver Tabla Informe");
            $('.btnVerConsultas').html('<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>');
            const _url = route('consulta.cartera.informes.analisis.cartera.cliente');
            const data = $(this).serialize();
            postConsultas(_url, data, e);
            

        });


    })
</script>
