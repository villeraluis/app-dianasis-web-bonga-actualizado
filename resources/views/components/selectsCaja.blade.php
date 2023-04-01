<label for="" class="label-custom"><b>Caja</b></label>
<div class="row">
    <div class="col-4 col-md-2">

        <select class="form-select form-select-sm select2-custom selectIdCaja col-12" name="selectIdCaja">
            <option selected value="">Todas</option>
            @foreach ($cajas as $caja)
                <option value="{{ $caja->CjaIdInCaja }}">{{ $caja->CjaIdInCaja }}
                </option>
            @endforeach

        </select>
    </div>

    <div class="col-8 col-md-10">
        <select class="form-select form-select-sm select2-custom selectNombreCaja col-12" name="selectNombreCaja">
            <option selected value="">Todas</option>
            @foreach ($cajas as $caja)
                <option value="{{ $caja->CjaIdInCaja }}">
                    {{ $caja->CjaIdInCaja . ' - ' . $caja->CjaStDescripcion }}
                </option>
            @endforeach

        </select>
    </div>

</div>

<script>
    $('.select2-custom').select2({
        theme: "bootstrap-5"
    });

    $('.selectIdCaja').on('change', function() {
        $(".selectNombreCaja").val($(this).val()).trigger('change.select2');
    });

    $('.selectNombreCaja').on('change', function() {
        $(".selectIdCaja").val($(this).val()).trigger('change.select2');
    });
</script>
