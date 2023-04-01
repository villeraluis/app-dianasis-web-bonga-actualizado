<label for="" class="label-custom"><b>Clase de Productos</b></label>
<select class="form-select form-select-sm  selectClaseProductos select2-custom" name="selectClaseProductos">
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