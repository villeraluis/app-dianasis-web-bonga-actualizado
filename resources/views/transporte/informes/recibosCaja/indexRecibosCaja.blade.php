<div class="p-1">
    <section class="row divSection1">

        <div class="col-12 mb-2 header-informe">
            <b>Recibos de Caja- {{ session('empresaNombre') }}</b>
        </div>



        <div class="col-12 div-shadow card" style="max-width: 1000px">


            <div class="card-header card-header-custom div-toggle">
                <b>Parametros de la Consulta</b>
            </div>

            <div class=" card-body card-body-custom div-toggle">

                <form method="post" id="formConsultaInformes" class="">
                    @csrf

                    <div class="row">

                        <x-tranInputDosFechas label='Rango de Fechas ' />

                        <div class="col-12 col-md-6 d-flex  align-items-end">

                            <label for="" class="label-custom col-3 col-md-2 mb-2"><b>Placa </b> </label>


                            <div class="row col-6 col-md-5 ">

                                <div class=" mb-1 ">
                                    <input type="text" class="form-control form-control-sm" name="idPlaca" id="idPlaca">
                                </div>

                            </div>
                        </div>


                    </div>


                    <div class="row">
                        <x-tranInputDosCampos label='Responsable ' inId='idResponsable' inDesc='desResponsable' />
                        <x-tranInputDosCampos label='Agencia' inId='idAgencia' inDesc='desAgencia' />
                    </div>

                    <div class="row">
                        <x-tranInputDosCampos label='Pto.Recaudo' inId='idPuntrecaudo' inDesc='desPuntrecaudo' />
                        <x-tranInputDosCampos label='Conceptos ' inId='idConceptos' inDesc='desConceptos' />
                    </div>


                    <div class="row">
                        <x-tranInputDosCampos label='Conductores' inId='idConductores' inDesc='desConductores' />
                        <x-botonEnviarForm wiHe='25' />

                    </div>


                    <input hidden type="text" name="typeCon" id="typeCon" value="General">

                </form>


            </div>

            <x-tranBotonCardfotter />






        </div>




    </section>


    <style>
        .nav-link {
            font-size: 15px;
        }

    </style>


    <section class="my-1 ">

        {{-- <ul class="nav nav-tabs row text-center">
            <li class="nav-item col-6 col-md-2 ">
                <span class="nav-link active" id="infoGeneral" role="button"><small>General</small> </span>
            </li>
              <li class="nav-item col-6 col-md-2 ">
                <span class="nav-link" id="infoRecaudosGps" role="button"><small>Consolidado</small> </span>
            </li>
           <li class="nav-item col-6 col-md-2 ">
                <span class="nav-link" id="infoRecaudosMinutos" role="button"><small>Recaudos Minutos</small>
                </span>
            </li>
            <li class="nav-item col-6 col-md-2 ">
                <span class="nav-link" id="infoRecaudosVel" role="button"><small> Recaudos
                        Velocidad</small></span>
            </li>
            <li class="nav-item col-6 col-md-2 ">
                <span class="nav-link" id="infoRecaudosUsuGps" role="button"><small>Recaudos Por Usuarios
                        Gps</small></span>
            </li>
            <li class="nav-item col-6 col-md-1 ">
                <span class="nav-link" id="infoMediosPagos" role="button"><small>Medios Pagos</small> </span>
            </li>
            <li class="nav-item col-6 col-md-1">
                <span class="nav-link" id="infoRecaudosCartera" role="button"><small>Recaudos Cartera</small>
                </span>
            </li> 

        </ul> --}}
    </section>



    <section class="row" id="sectionTablaInformes">




    </section>

    <section>

        <x-tranModalCodigoNombre classTabla='tranTablaResponsable' idModal='modalResponsable'
            idBtnTodos='AllResponsable' />
        <x-tranModalCodigoNombre classTabla='tranTablaAgencia' idModal='modalAgencias' idBtnTodos='AllAgencias' />
        <x-tranModalCodigoNombre classTabla='tranTablaPuntos' idModal='modalPuntos' idBtnTodos='AllPuntos' />
        <x-tranModalCodigoNombre classTabla='tranTablaConceptos' idModal='modalConceptos' idBtnTodos='AllConceptos' />
        <x-tranModalCodigoNombre classTabla='tranTablaConductores' idModal='modalCConductores'
            idBtnTodos='AllConductores' />


    </section>
</div>



<script>
    $(function() {

        controlBusquedas();

        $('#sectionTablaInformes').on('click', '.btn-detallado', function(e) {

            $('.div-tabla-detallado').toggleClass('oculta-div')

            $(e.currentTarget).toggleClass('active')

        }).on('click', '.btn-consolidado', function(e) {

            $('.div-tabla-consolidado').toggleClass('oculta-div')
            $(e.currentTarget).toggleClass('active')

        })


        $('#btnidResponsable').on('click', () => {

            const obj = {
                idModal: '#modalResponsable',
                clasLink: 'linkTdTercero',
                linkClick: '.linkTdTercero',
                clasTabla: '.tranTablaResponsable',
                rout: route('data.filtros.transporte.informes', ['resposables']),
                idVal: '#idResponsable',
                idescVal: '#desResponsable',
                allDatos: '#AllResponsable',
                th1: 'CEDULA',
                th2: 'NOMBRES',
                dato1: 'UsuIdStNitCliente',
                dato2: 'CliStNombreCliente',
                canCol: 2
            }

            generatablaCodigoNombre(obj)


        })

        $('#btnidAgencia').on('click', () => {

            const obj = {
                idModal: '#modalAgencias',
                clasLink: 'linkTdAgencia',
                linkClick: '.linkTdAgencia',
                clasTabla: '.tranTablaAgencia',
                rout: route('data.filtros.transporte.informes', ['agencia']),
                idVal: '#idAgencia',
                idescVal: '#desAgencia',
                allDatos: '#AllAgencias',
                th1: 'CODIGO',
                th2: 'NOMBRE',
                dato1: 'AgeIdStAgencia',
                dato2: 'AgeStDescripcion',
                canCol: 2
            }

            generatablaCodigoNombre(obj)

        })



        $('#btnidConceptos').on('click', () => {

            const obj = {
                idModal: '#modalConceptos',
                clasLink: 'linkTdConceptos',
                linkClick: '.linkTdConceptos',
                clasTabla: '.tranTablaConceptos',
                rout: route('data.filtros.transporte.informes', ['conceptos']),
                idVal: '#idConceptos',
                idescVal: '#desConceptos',
                allDatos: '#AllConceptos',
                th1: 'CODIGO',
                th2: 'NOMBRE',
                dato1: 'CrdIdStConceptoRecaudo',
                dato2: 'CrdStDescripcion',
                canCol: 2
            }

            generatablaCodigoNombre(obj)


        })


        $('#btnidPuntrecaudo').on('click', () => {

            const agencia = $('#idAgencia').val()

            if (agencia != '') {

                const obj = {
                    idModal: '#modalPuntos',
                    clasLink: 'linkTdPtRec',
                    linkClick: '.linkTdPtRec',
                    clasTabla: '.tranTablaPuntos',
                    rout: route('data.filtros.transporte.informes', ['puntosRec',
                        agencia
                    ]),
                    idVal: '#idPuntrecaudo',
                    idescVal: '#desPuntrecaudo',
                    allDatos: '#AllPuntos',
                    th1: 'CODIGO',
                    th2: 'NOMBRE',
                    dato1: 'PtrIdStPuntoRecaudo',
                    dato2: 'PtrStDescripcion',
                    canCol: 2
                }

                generatablaCodigoNombre(obj)


            } else {
                alert('POR FAVOR SELECCIONAR UNA AGENCIA')
            }

        })


    

        $('#btnidConductores').on('click', () => {

            const placa = $('#idPlaca').val()
            const idModal = '#modalCConductores'
            const clasLink = 'linkTdConductores'
            const linkClick = '.linkTdConductores'
            const clasTabla = '.tranTablaConductores'
            const rout = route('data.filtros.transporte.informes', ['conductores', placa])
            const idVal = '#idConductores'
            const idescVal = '#desConductores'
            const allDatos = '#AllConductores'



            if ($.fn.DataTable.isDataTable(clasTabla)) {
                $(clasTabla).DataTable().destroy();
            }

            getBusquedas(rout).then(function(val) {
                $(idModal).modal('show');


                let html = ` <thead>
                    <tr>
                        <th scope="col">CODIGO</th>
                        <th scope="col">NOMBRE</th>
                    </tr>
                    </thead>
                    <tbody>`;

                for (dato of val) {

                    html += ` <tr>
                                <td class="${clasLink}" role="button">${dato.VcdIdStConductor}</td>
                                <td class="${clasLink}"  role="button">${dato.CliStNombreCliente} </td>
                            </tr>`

                }

                html += ' </tbody>';


                $(clasTabla).empty().append(html)
                const tablaDatos = $(clasTabla).find('tbody > tr');
                const dtatableRes = ftablaDatatables(clasTabla);

                $(`${clasTabla} tbody`).on('click', linkClick, (e) => {

                    const idf = $(e.currentTarget).parent().find('td').eq(0)
                        .html();
                    const nombres = $(e.currentTarget).parent().find('td').eq(1)
                        .html();

                    $(idVal).val(idf);
                    $(idescVal).val(nombres);
                    $(idModal).modal('hide');
                })

                $(allDatos).on('click', function(e) {
                    e.preventDefault();
                    $(idVal).val('');
                    $(idescVal).val('')
                    $(idModal).modal('hide')
                })

            });


        })


        $('#infoGeneral,.botonEnviarForm').on('click', () => {

            $('#typeCon').val('General')
            $('.div-btn-action').trigger('click')

            $('#formConsultaInformes').submit()

        })

        $('#infoRecaudosGps').on('click', () => {

            $('#typeCon').val('RecaudosGps')
            $('#formConsultaInformes').submit()

        })

        $('#infoRecaudosMinutos').on('click', () => {

            $('#typeCon').val('RecaudosMinutos')
            $('#formConsultaInformes').submit()

        })




        $('#formConsultaInformes').on('submit', function(e) {

            let _url = route('consulta.transporte.informes.RecibosCaja');

            let data = $(this).serialize();
            postConsultas(_url, data, e);
            $(".divParamtros").prop("hidden", false);


        });





    })
</script>
