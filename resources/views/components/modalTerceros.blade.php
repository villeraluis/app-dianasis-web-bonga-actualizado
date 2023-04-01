<div class="modal fade" id="ModalTerceros" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-md">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Lista Terceros - {{ session('empresaNombre') }}
                </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="col-12    ">
                    <a class="btn btn-sm btn-primary" href="#" id="linkTodosTerceros">Todos</a>
                </div>

                <div class="row border pt-2 mt-1" style="min-height: 100px">

                    <div class="col-12 table-responsive">
                        <table class="table  table-hover table-sm  tablaInformesCustom" id="tablaModalInfoTerceros"
                            style="width:100%">

                            <thead>

                                <tr>
                                    <th scope="col">Nombres</th>
                                    <th scope="col">Cedula O Nit</th>

                                </tr>

                            </thead>
                            
                            <tbody>

                                @foreach ($terceros as $tercero)

                                    <tr>
                                        <td class="linkTdTercero">{{ $tercero->CliStNombreCliente }}</td>
                                        <td class="linkTdTercero">{{ $tercero->clinit }} </td>
                                    </tr>

                                @endforeach
                            </tbody>
                        </table>

                    </div>







                </div>








            </div>

        </div>
    </div>
</div>
<style>
    .linkTdTercero:hover {

        cursor: pointer;

    }

    #linkTodosTerceros {
        border-radius: 0px !important;
        --bs-gutter-x: 0px !important;
        color: #fff;
        background-color: var(--colDianasis);
        border-color: var(--colDianasis);
    }

    #linkTodosTerceros:hover {
      
        background-color: var(--colDianasis);
        border-color: var(--colDianasis);
    }



</style>

<script>

    tablaDatos = $('#tablaModalInfoTerceros').find('tbody > tr');
    dtatable = ftablaDatatables('#tablaModalInfoTerceros');


    $('#tablaModalInfoTerceros tbody').on('click', '.linkTdTercero', function(e) {

        e.preventDefault();
        let nombres = $(this).parent().find('td').eq(0).html();
        let idf = $(this).parent().find('td').eq(1).html();

        $('#idTercero').val(idf);
        $('#nombresTercero').val(nombres);
        $('#ModalTerceros').modal('hide');

    });


    $('#linkTodosTerceros').on('click', function(e) {
        e.preventDefault();
        $('#nombresTercero,#idTercero').val('');
        $('#ModalTerceros').modal('hide');

    })

</script>