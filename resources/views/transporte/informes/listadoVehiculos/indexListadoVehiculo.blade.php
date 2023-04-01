<div class="p-1">
    <section class="row divSection1">

        <div class="col-12 mb-2 header-informe">
            <b>Listado Vehiculos- {{ session('empresaNombre') }}</b>
        </div>



        <div class="col-12 div-shadow card" style="max-width: 1000px">

            <div class="card-header card-header-custom div-toggle">
                <b>Parametros de la Consulta</b>
            </div>

            <div class=" card-body card-body-custom div-toggle">

                <form method="post" id="formConsultaInformes" class="">
                    @csrf

                    <div class="row">
                        <div class="col-12 col-md-6 d-flex  align-items-end">

                            <label for="" class="label-custom col-3 col-md-2 mb-2"><b>Placa </b> </label>


                            <div class="row col-6 col-md-5 ">

                                <div class=" mb-1 ">
                                    <input type="text" class="form-control form-control-sm" name="idPlaca" id="idPlaca">
                                </div>

                            </div>
                        </div>

                        <x-tranInputDosCampos label='C. Costo :' inId='idCentroCosto' inDesc='desCentroCosto' />

                    </div>


                    <div class="row">
                        <x-tranInputDosCampos label='Marca :' inId='idMarca' inDesc='desMarca' />
                        <x-tranInputDosCampos label='Clase :' inId='idClase' inDesc='desClase' />
                    </div>

                    <div class="row">

                        <x-tranInputDosCampos label='Capacidad :' inId='idCapacidad' inDesc='desCapacidad' />
                        <x-tranInputDosCampos label='Linea :' inId='idLinea' inDesc='desLinea' />

                    </div>


                    <div class="row">

                        <x-tranInputDosCampos label='Nivel :' inId='idNivel' inDesc='desNivel' />
                        <x-tranInputDosCampos label='Propietario :' inId='idPropietario' inDesc='desPropietario' />

                    </div>

                    <div class="row">

                        <x-tranInputDosCampos label='Combustible :' inId='idCombustible' inDesc='desCombustible' />
                        <x-botonEnviarForm wiHe='25' />

                    </div>

                </form>


            </div>

            <x-tranBotonCardfotter />
        </div>




    </section>


    <section>

        <x-tranModalCodigoNombre idModal='modalCeCosto' idBtnTodos='todosCeCosto' classTabla='tranTablaCeCosto' />
        <x-tranModalCodigoNombre idModal='modalMarcas' idBtnTodos='todosMarca' classTabla='tranTablaMarcas' />
        <x-tranModalCodigoNombre idModal='modalClase' idBtnTodos='todosClase' classTabla='tranTablaClase' />
        <x-tranModalCodigoNombre idModal='modalCapacidad' idBtnTodos='todosCapacidad' classTabla='tranTablaCapacidad' />
        <x-tranModalCodigoNombre idModal='modalLinea' idBtnTodos='todosLinea' classTabla='tranTablaLinea' />
        <x-tranModalCodigoNombre idModal='modalNivel' idBtnTodos='todosNivel' classTabla='tranTablaNivel' />
        <x-tranModalCodigoNombre idModal='modalPropietario' idBtnTodos='todosPropietario'
            classTabla='tranTablaPropietario' />
        <x-tranModalCodigoNombre idModal='modalCombustible' idBtnTodos='todosCombustible'
            classTabla='tranTablaCombustible' />



    </section>


    <section class="row" id="sectionTablaInformes">

    </section>
</div>

<script>
    $(function() {

        controlBusquedas();

        $('#btnidCentroCosto').on('click', () => {

            /* $.ajax({
                type: 'GET',
                url: 'http://174.138.109.29:8082/api/devices',
                    data: {},
                crossDomain: true,
                beforeSend: function(xhr) {
                    xhr.setRequestHeader('Authorization', 'Basic ' + btoa(unescape(
                            encodeURIComponent('antoniomovilla@dianasis.com:123456')
                            )))
                },

                success: function (response) {

                    console.log(response)
                }

            }); */

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



        $('#btnidMarca').on('click', () => {
            const obj = {
                idModal: '#modalMarcas',
                clasLink: 'linkTdMarcas',
                linkClick: '.linkTdMarcas',
                clasTabla: '.tranTablaMarcas',
                rout: route('data.filtros.transporte.informes', ['marcas']),
                idVal: '#idMarca',
                idescVal: '#desMarca',
                allDatos: '#todosMarca',
                th1: 'CÓDIGO',
                th2: 'NOMBRE',
                dato1: 'TmaIdStCodigo',
                dato2: 'TmaStDescripcionUna',
                canCol: 2
            }

            generatablaCodigoNombre(obj)

        })


        $('#btnidClase').on('click', () => {

            const obj = {
                idModal: '#modalClase',
                clasLink: 'linkTdClase',
                linkClick: '.linkTdClase',
                clasTabla: '.tranTablaClase',
                rout: route('data.filtros.transporte.informes', ['clases']),
                idVal: '#idClase',
                idescVal: '#desClase',
                allDatos: '#todosClase',
                th1: 'CÓDIGO',
                th2: 'NOMBRE',
                dato1: 'TmaIdStCodigo',
                dato2: 'TmaStDescripcionUna',
                canCol: 2
            }

            generatablaCodigoNombre(obj)



        })



        $('#btnidCapacidad').on('click', () => {
           
            const obj = {
                idModal: '#modalCapacidad',
                clasLink: 'linkTdCapacidad',
                linkClick: '.linkTdCapacidad',
                clasTabla: '.tranTablaCapacidad',
                rout: route('data.filtros.transporte.informes', ['capacidad']),
                idVal: '#idCapacidad',
                idescVal: '#desCapacidad',
                allDatos: '#todosCapacidad',
                th1: 'CÓDIGO',
                th2: 'NOMBRE',
                dato1: 'TmaIdStCodigo',
                dato2: 'TmaStDescripcionUna',
                canCol: 2
            }

            generatablaCodigoNombre(obj)


        })

        $('#btnidLinea').on('click', () => {
         
            const obj = {
                idModal: '#modalLinea',
                clasLink: 'linkTdLinea',
                linkClick: '.linkTdLinea',
                clasTabla: '.tranTablaLinea',
                rout: route('data.filtros.transporte.informes', ['linea']),
                idVal: '#idLinea',
                idescVal: '#desLinea',
                allDatos: '#todosLinea',
                th1: 'CÓDIGO',
                th2: 'NOMBRE',
                dato1: 'TmaIdStCodigo',
                dato2: 'TmaStDescripcionUna',
                canCol: 2
            }

            generatablaCodigoNombre(obj)


        })

        $('#btnidNivel').on('click', () => {
            
            const obj = {
                idModal: '#modalNivel',
                clasLink: 'linkTdNivel',
                linkClick: '.linkTdNivel',
                clasTabla: '.tranTablaNivel',
                rout: route('data.filtros.transporte.informes', ['nivel']),
                idVal: '#idNivel',
                idescVal: '#desNivel',
                allDatos: '#todostodosNivel',
                th1: 'CÓDIGO',
                th2: 'NOMBRE',
                dato1: 'TmaIdStCodigo',
                dato2: 'TmaStDescripcionUna',
                canCol: 2
            }

            generatablaCodigoNombre(obj)


        })

        $('#btnidPropietario').on('click', () => {
           
            const obj = {
                idModal: '#modalPropietario',
                clasLink: 'linkTdPropietario',
                linkClick: '.linkTdPropietario',
                clasTabla: '.tranTablaPropietario',
                rout: route('data.filtros.transporte.informes', ['propietario']),
                idVal: '#idPropietario',
                idescVal: '#desPropietario',
                allDatos: '#todosPropietario',
                th1: 'CÓDIGO',
                th2: 'NOMBRE',
                dato1: 'TmaIdStCodigo',
                dato2: 'TmaStDescripcionUna',
                canCol: 2
            }

            generatablaCodigoNombre(obj)

        })

        $('#btnidCombustible').on('click', () => {
            
            const obj = {
                idModal: '#modalCombustible',
                clasLink: 'linkTdCombustible',
                linkClick: '.linkTdCombustible',
                clasTabla: '.tranTablaCombustible',
                rout: route('data.filtros.transporte.informes', ['combustible']),
                idVal: '#idCombustible',
                idescVal: '#desCombustible',
                allDatos: '#todosCombustible',
                th1: 'CÓDIGO',
                th2: 'NOMBRE',
                dato1: 'TmaIdStCodigo',
                dato2: 'TmaStDescripcionUna',
                canCol: 2
            }

            generatablaCodigoNombre(obj)

            
        })






        $('.botonEnviarForm').on('click', () => {
            $('.div-btn-action').trigger('click')
        })


        $('#formConsultaInformes').on('submit', function(e) {

            let _url = route('consulta.transporte.informes.listadoVehiculos');

            let data = $(this).serialize();
            postConsultas(_url, data, e);
            $(".divParamtros").prop("hidden", false);

        });





    })
</script>
