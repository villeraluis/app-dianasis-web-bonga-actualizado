<div class="col-6 col-md-3">
    <label for="" class="label-custom "><b class="label-una-fecha">
            @if (isset($label))
                {{ $label }}
            @else
                Fecha Inicial:
            @endif
        </b> </label>
    <input type="date" name="fecha" class="form-control form-control-sm fecha" value="{{ date('Y-m-d') }}">
</div>
