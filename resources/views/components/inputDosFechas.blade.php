
    <div class="col-6 col-md-3" >
        <label for="" class="label-custom"><b>Fecha Inicial:</b> </label>
        <input type="date" name="fechaInicial" 
            class="form-control form-control-sm fechaInicial" value="{{ date('Y-m-d') }}">
    </div>

    <div class="col-6 col-md-3">
        <label for="" class="label-custom"><b>Fecha Final:</b> </label>
        <input type="date" name="fechaFinal"
            class="form-control form-control-sm fechaFinal" value="{{ date('Y-m-d') }}">
    </div>



<input hidden type="date" value="{{ date('Y-m-d') }}" class="InputHidFechaActual">

<input  hidden type="date" class="inputInicioMes" value="{{ date('Y-m-01') }}">