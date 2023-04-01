<label for="" class="label-custom"><b>Comprobante</b></label>
<div class="row">
    <div class="col-4 col-md-2">


        <select class="form-select select2-custom form-select-sm selectIdComprobante " name="selectIdComprobante">
            <option selected value="">Todos</option>

            @foreach ($comprobantes as $comprobante)
                <option value="{{ $comprobante->comcodi }}">
                    {{ $comprobante->comcodi }}
                </option>
            @endforeach

        </select>
    </div>

    <div class="col-8 col-md-10">
        <select class="form-select select2-custom form-select-sm selectNombreComprobante"
            name="selectNombreComprobante">
            <option selected value="">Todos</option>

            @foreach ($comprobantes as $comprobante)
                <option value="{{ strval ($comprobante->comcodi) }}">
                    {{ strval($comprobante->comcodi) . ' - ' . $comprobante->comnomb }}
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
