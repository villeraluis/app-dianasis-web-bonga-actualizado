<div class='alert {{ $tipo }} m-2 col-11 text-center' role='alert'>
    {!! $msg !!}

    <div hidden class="datosOpc">

        @if (isset($datos))
            {{$datos}}
    
        @endif
    
    </div>
</div>




