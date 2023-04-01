<div class="col-12 col-md-6 d-flex mb-1 align-items-end">

    <label for="" class="label-custom col-3 col-md-2"><b> {{ $label }}</b> </label>

    <div class="row d-inline-flex">

        <div class=" col-6  ">
            <label for="" class="label-custom"><b>Fecha Inicial:</b> </label>
            <input type="date" name="fechaInicial" class="form-control form-control-sm fechaInicial"
                value="{{ date('Y-m-d') }}">
        </div>

        <div class="col-6  ">

           
                <label for="" class="label-custom"><b>Fecha Final:</b> </label>
                <input type="date" name="fechaFinal"
                    class="form-control form-control-sm fechaFinal" value="{{ date('Y-m-d') }}">
           

        </div>





    </div>
</div>
