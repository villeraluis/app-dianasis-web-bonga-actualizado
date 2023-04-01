<label for="" class="label-custom"><b>Bodega</b></label>
<select class="form-select form-select-sm  selectBodega select2-custom" name="selectBodega">
    <option selected value="">Todos</option>
    @foreach ($formaPagos as $formapago)
        <option value="{{ $formapago->FpaStDescripcion }}">
            {{ $formapago->FpaIdInFormaPago . ' - ' . $formapago->FpaStDescripcion }}
        </option>
    @endforeach
</select>

<script>
    $('.select2-custom').select2({
        theme: "bootstrap-5"
    });

    
</script>