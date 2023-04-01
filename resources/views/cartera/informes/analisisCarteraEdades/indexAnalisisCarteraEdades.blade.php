<div class=" p-1">
    <section class="row divSection1 mb-2">

        <div class="col-12 mb-2 header-informe">
            <b>Analisis De Cartera Por Edades - {{ session('empresaNombre') }}</b>
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

                            <x-inputFecha label='Fecha de Corte: ' />

                            <div class="col-12 col-md-5">
                                <x-selectsTerceros />
                            </div>

                            <x-selectUnCampo label="Conceptos de Cartera" idVal="CcaIdInConceptoCartera"
                                nameCom="selectConceptoCartera" name1="CcaIdInConceptoCartera" name2="CcaStDescripcion"
                                :datos=" $conCartera" />



                            <x-botonEnviarForm />

                        </form>

                    </div>

                </div>

            </div>

        </div>

    </section>

    <section class="row" id="sectionTablaInformes">

    </section>

    <x-modalNovedad />
</div>


<script>
    $(function() {
        controlBusquedas();

        $('.select2-custom').select2({
            theme: "bootstrap-5"
        });


        $('#formConsultaInformes').on('submit', function(e) {

            const _url = route('consulta.cartera.informes.analisisCarteraEdades');
            const data = $(this).serialize();
            postConsultas(_url, data, e);
            $(".divParamtros").prop("hidden", false);

        });


        $('#sectionTablaInformes').on('click', '.btnVerNovedad', () => {

            const data = JSON.parse($('#sectionTablaInformes .datosOpc').text())

            $('.modalNovedad').modal('show')

            let html = '';

            for (date of data) {
                html += `<tr>
                            <td ></td>
                            <td class="pr-2 text-center">${date.Comprobante}</td>
                            <td >${date.numero}</td>
                            <td >${date.Cliente}</td>
                            <td >${date.Fecha}</td>
                            <td >${date.ComprobanteDoc}</td>
                            <td >${date.ConsecutivoDoc}</td>
                            <td >${date.ConceptoCartera}</td>
                            <td class="pr-2 text-end">${date.vValor}</td>
                            <td >${date.Descri}</td>
                       </tr>`
            }

            const tabla = `<thead>
                            <tr>
                                <th scope="col">Item</th>
                                <th scope="col">Comprobante a Pagar</th>
                                <th scope="col">No. Factura</th>
                                <th scope="col">Cliente</th>
                                <th scope="col">Fecha</th>
                                <th scope="col">Comprobante</th>
                                <th scope="col">No. Recibo</th>
                                <th scope="col">Concepto</th>
                                <th scope="col" class="pr-2 text-end">Valor</th>
                                <th scope="col">Descripción</th>
                            </tr>
                        </thead>

                        <tbody>
                            ${html}
                        </tbody>`


            $('#tablaModalNovedades').empty().append(tabla)

        })



    })
</script>
