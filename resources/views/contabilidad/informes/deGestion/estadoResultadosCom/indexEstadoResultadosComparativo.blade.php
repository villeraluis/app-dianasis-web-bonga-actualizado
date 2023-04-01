<div class="p-1">
    <section class="row divSection1">

        <div class="col-12 mb-2 header-informe">
            <b>Estado de Resultados Comparativos- {{ session('empresaNombre') }}</b>
        </div>



        <div class="col-12 div-shadow card" style="max-width: 1000px">

            <div class="card-header card-header-custom">
                <b>Parametros de la Consulta</b>
            </div>

            <div class=" card-body card-body-custom">

                <form method="post" id="formConsultaInformes" class="row divParamtros">
                    @csrf


                    <x-inputYearMont :periodos="$periodos" />

                    <x-inputDosCampos label='Centro de Costo :' inId='idCentroCosto' inDesc='desCentroCosto'
                        styles="max-width:345px;flex-direction:column;align-content:flex-end;" />


                    <x-botonEnviarForm />


                </form>


            </div>
        </div>




    </section>




    <section class="row" id="sectionTablaInformes">


    </section>

    <section>
        <x-tranModalCodigoNombre idModal='modalCeCosto' idBtnTodos='todosCeCosto' classTabla='tranTablaCeCosto' />

    </section>
</div>

<script>
    $(function() {

        

        controlBusquedas();


        $('.select2-custom').select2({
            theme: "bootstrap-5"
        });


        $('#formConsultaInformes').on('submit', function(e) {



            let _url = route('consulta.contabilidad.informes.financiero.estado.resultadosComp');

            let data = $(this).serialize();
            postConsultas(_url, data, e);
            $(".divParamtros").prop("hidden", false);

        });


        $('#btnidCentroCosto,#desCentroCosto,#idCentroCosto').on('click', () => {

            const obj = {
                idModal: '#modalCeCosto',
                clasLink: 'linkTdCeCosto',
                linkClick: '.linkTdCeCosto',
                clasTabla: '.tranTablaCeCosto',
                rout: route('data.filtros.transporte.informes', ['ceCosto']),
                idVal: '#idCentroCosto',
                idescVal: '#desCentroCosto',
                allDatos: '#todosCeCosto',
                th1: 'CÓD',
                th2: 'NOMBRE DEL CENTRO',
                th3: 'CÓDIGO',
                th4: 'NOMBRE DEL SUBCENTRO',
                dato1: 'scecent',
                dato2: 'CenNomb',
                dato3: 'scecodi',
                dato4: 'scenomb',
                canCol: 4
            }

            const idModal = obj.idModal;
            const clasLink = obj.clasLink;
            const linkClick = obj.linkClick;
            const clasTabla = obj.clasTabla;
            const rout = obj.rout;
            const idVal = obj.idVal;
            const idescVal = obj.idescVal;
            const allDatos = obj.allDatos;
            const col = obj.canCol

            if ($.fn.DataTable.isDataTable(clasTabla)) {
                $(clasTabla).DataTable().destroy();
            }

            getBusquedas(rout).then(function(val) {
                $(idModal).modal("show");

                let td = ''
                for (i = 1; i <= col; i++) {
                    td += '<th scope="col">' + obj['th' + i] + ' </th>'
                }

                let html = `<thead><tr>${td}</tr></thead><tbody>`;

                for (dato of val) {
                    td = ''
                    for (i = 1; i <= col; i++) {
                        td +=
                            `<td class="${clasLink}" role="button">${dato[obj['dato'+i]]}</td>`
                    }
                    html += ` <tr> ${td}</tr>`;
                }
                html += " </tbody>";
                $(clasTabla).empty().append(html);



                ftablaDatatables(clasTabla);

                $(`${clasTabla} tbody`).on("click", linkClick, (e) => {
                    const id1 = $(e.currentTarget).parent().find("td").eq(0).html();
                    const id2 = $(e.currentTarget).parent().find("td").eq(2).html();
                    const nombres = $(e.currentTarget).parent().find("td").eq(3).html();

                    $(idVal).val(`${id1}${id2}`);
                    $(idescVal).val(nombres);
                    $(idModal).modal("hide");
                });

                $(allDatos).on("click", function(e) {
                    e.preventDefault();
                    $(idVal).val("");
                    $(idescVal).val("");
                    $(idModal).modal("hide");
                });
            });

        })




    })
</script>
