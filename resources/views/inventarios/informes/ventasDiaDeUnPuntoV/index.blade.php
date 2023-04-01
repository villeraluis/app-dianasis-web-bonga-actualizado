<div class="p-1">
    <section class="row divSection1 mb-2">

        <div class="col-12 mb-2 header-informe">
            <b>Ventas por Día de Un Punto de Venta </b>
        </div>

        <div class="col-12 div-shadow card" style="max-width: 1000px">

            <div class="card-header card-header-custom">
                <b>Parametros de la Consulta</b>
            </div>

            <div class=" card-body card-body-custom">

                <form method="post" id="formConsultaInformes" class="row divParamtros">
                    @csrf

                    <x-inputYearMont :periodos="$yearSelect" isArray />

                    <x-inputDosCampos label='Punto de Venta :' inId='idInPuntoVenta' inDesc='desPuntoVenta'
                        styles="max-width:500px;flex-direction:column;align-content:flex-end;" />

                    <x-botonEnviarForm />

                </form>

            </div>
        </div>

    </section>


    <section class="row" id="sectionTablaInformes">


    </section>

    <section>
        <x-tranModalCodigoNombre idModal='modalPuntosVenta' idBtnTodos='todosPuntosVenta'
            classTabla='tranTablaPuntosVenta' />
        
    </section>
</div>

<script>
    $(function() {

        controlBusquedas();

        $('.select2-custom').select2({
            theme: "bootstrap-5"
        });


        $('#formConsultaInformes').on('submit', function(e) {


            $('.btnVerConsultas').html('<i class="fas fa-arrow-left"></i> <span> Ver Consultas</span>');

            let _url = route('consulta.informe.ventas.diaydepv');

            let data = $(this).serialize();
            postConsultas(_url, data, e);

        });

        $('#btnidInPuntoVenta,#desPuntoVenta,#idInPuntoVenta').on('click', () => {

            const obj = {
                idModal: '#modalPuntosVenta',
                clasLink: 'linkTdPuntosVenta',
                linkClick: '.linkTdPuntosVenta',
                clasTabla: '.tranTablaPuntosVenta',
                rout: route('data.filtros.transporte.informes', ['puntosventassrv']),
                idVal: '#idInPuntoVenta',
                idescVal: '#desPuntoVenta',
                allDatos: '#todosPuntosVenta',
                th1: 'CÓD',
                th2: 'NOMBRE DEL GRUPO',
                dato1: 'PveIdInPuntoVenta',
                dato2: 'PveStNombre',
                canCol: 2
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
                    const id = $(e.currentTarget).parent().find("td").eq(0).html();
                    const nombres = $(e.currentTarget).parent().find("td").eq(1).html();

                    $(idVal).val(`${id}`);
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

        $('#btnidAgencia,#desAgencia,#idAgencia').on('click', () => {

            const obj = {
                idModal: '#modalAgencias',
                clasLink: 'linkTdAgencias',
                linkClick: '.linkTdAgencias',
                clasTabla: '.tablaAgencias',
                rout: route('data.filtros.transporte.informes', ['agenciaventassrv']),
                idVal: '#idAgencia',
                idescVal: '#desAgencia',
                allDatos: '#todosAgencia',
                th1: 'CÓD',
                th2: 'NOMBRE EMPRESA',
                dato1: 'gmpcodi',
                dato2: 'gmpnomb',
                canCol: 2
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
                    const id = $(e.currentTarget).parent().find("td").eq(0).html();
                    const nombres = $(e.currentTarget).parent().find("td").eq(1).html();

                    $(idVal).val(`${id}`);
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
