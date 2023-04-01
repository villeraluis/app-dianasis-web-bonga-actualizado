<label for="" class="label-custom"><b>Marca</b></label>
<select class="form-select form-select-sm  selectMarcaProducto select2-custom" name="selectMarcaProducto">
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