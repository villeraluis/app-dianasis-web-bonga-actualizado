<div class="col-12 col-md-1 mt-2 flex-grow-1  text-end">
    <button class="btn btn-light  botonEnviarForm" data-bs-toggle="tooltip" data-bs-placement="top"
        title="Realizar Busqueda">

        <span class="lupaBtnBuscar">
            <svg xmlns="http://www.w3.org/2000/svg"  
            @if (isset($wiHe))
            width="{{$wiHe}}" height="{{$wiHe}}"
            @else
            width="36" height="36"
            @endif
             fill="#b70002" class="bi bi-search "
                viewBox="0 0 16 16">
                <path
                    d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
            </svg>

        </span>
    </button>

</div>
