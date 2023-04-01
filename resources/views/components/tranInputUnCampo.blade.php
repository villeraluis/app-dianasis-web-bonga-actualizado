<div class="row col-12  d-flex ">

    <label for="" class="label-custom col-3 col-md-2"><b> {{ $label }}</b> </label>

    <div class="col-9 flex-grow-1 mb-1">
        <input type="text" class="form-control form-control-sm" name="{{ $inId }}" id="{{ $inId }}"

        @if (!isset($noread))
          readonly   
        @endif
            >
    </div>

</div>
