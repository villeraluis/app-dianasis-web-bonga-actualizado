<div class="row">
    <div class="col-12 col-md-6 ">
        <label for="" class="label-custom"><b>Linea de Productos</b> </label>
        


            <select class="form-select select2-custom form-select-sm selectLineaProducto " name="selectLineaProducto">
                <option selected value="">Todos</option>

                @foreach ($comprobantes as $comprobante)
                    <option value="{{ $comprobante->comcodi }}">
                        {{ $comprobante->comcodi }}
                    </option>
                @endforeach

            </select>
      

    </div>
    <div class="col-12 col-md-6">

        <label for="" class="label-custom"><b>Sublinea de Productos</b> </label>
        <select class="form-select select2-custom form-select-sm selectSublineaProducto" name="selectSublineaProducto">
            <option selected value="">Todos</option>

            @foreach ($comprobantes as $comprobante)
                <option value="{{ $comprobante->comcodi }}">
                    {{ $comprobante->comcodi . ' - ' . $comprobante->comnomb }}
                </option>
            @endforeach

        </select>
    </div>

</div>




<script>
    $('.select2-custom').select2({
        theme: "bootstrap-5"
    });

    $('.selectIdComprobante').on('change', function() {
        $(".selectNombreComprobante").val($(this).val()).trigger('change.select2');
    });

    $('.selectNombreComprobante').on('change', function() {
        $(".selectIdComprobante").val($(this).val()).trigger('change.select2');
    });
</script>
