<div class="modal fade modalTranCodigoNombre" id="{{$idModal}}" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
    aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content ">
            <div class="modal-header">
                <h5 class="modal-title" id="staticBackdropLabel">Listado - {{ session('empresaNombre') }}
                </h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

                <div class="col-12 ">
                    <a class="btn btn-sm btn-primary" href="#" id="{{$idBtnTodos}}">Todos</a>
                </div>
               

                <div class="row border pt-2 mt-1" style="min-height: 100px">

                    <div class="col-12 table-responsive">
                        <table class="table  table-hover table-sm  tablaInformesCustom tablaModalTranCodigoNombre {{$classTabla}}" 
                            style="width:100%">

                            

                            
                        </table>

                    </div>

                </div>

            </div>

        </div>
    </div>
</div>