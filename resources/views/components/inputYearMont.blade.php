<div class="col-6 col-md-2">
    <label for="" class="label-custom"><b>año :</b> </label>
    <input type="hidden" id="idInputYearActual" value="{{ date('Y') }}" />
    <select class=" form-select form-select-sm selectYear  select2-custom" name="selectYear">

        @if (isset($isArray))
           @foreach ($periodos as $idx => $periodo)
                <option value="{{ $periodo }}" selected>{{ $periodo }}</option>
            @endforeach
        @else
            @foreach ($periodos as $idx => $periodo)
                <option value="{{ $periodo->PerAno }}" selected>{{ $periodo->PerAno }}</option>
            @endforeach
        @endif




    </select>



</div>
<div class="col-6 col-md-2">
    <label for="" class="label-custom"><b>Mes :</b> </label>
    <input type="hidden" id="idInputMesActual" value="{{ date('n') }}" />

    <select class="form-select form-select-sm  selectMesClass select2-custom col-2" name="selectMes">
        <option value="1">Enero</option>
        <option value="2">Febrero</option>
        <option value="3">Marzo</option>
        <option value="4">Abril</option>
        <option value="5">Mayo</option>
        <option value="6">Junio</option>
        <option value="7">Julio</option>
        <option value="8">Agosto</option>
        <option value="9">Septiembre</option>
        <option value="10">Octubre</option>
        <option value="11">Noviembre</option>
        <option value="12">Diciembre</option>

    </select>

</div>

<script>
    $('.selectMesClass').val($('#idInputMesActual').val()).trigger('change.select2');
    $('.selectYear').val($('#idInputYearActual').val()).trigger('change.select2');
</script>
