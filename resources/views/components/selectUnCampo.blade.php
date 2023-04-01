<div class='col-12 col-md-3'>

    <label for="" class="label-custom "><b>{{ $label }}</b></label>
    <select class="form-select form-select-sm  selectFormaPago select2-custom" 
    @if (isset($nameCom))
        name= "{{ $nameCom }}"
    @else
        name= "selectUnComponete"
    @endif >

        <option selected value="">Todos</option>
        @foreach ($datos as $dato)
            <option value="{{ $dato->$idVal }}">
                {{ $dato->$name1 . ' - ' . $dato->$name2 }}
            </option>
        @endforeach
    </select>
</div>


<script>
    $('.select2-custom').select2({
        theme: "bootstrap-5"
    });
</script>
