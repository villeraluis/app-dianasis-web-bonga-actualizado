<li class="nav-item dropdown shadow  ">
    <a class="nav-link dropdown-toggle a-link-empresa" href="#" id="navbarDropdown" role="button"
        data-bs-toggle="dropdown" aria-expanded="false">
        <b>Seleccione Otra Empresa</b>
    </a>
    <ul class="dropdown-menu dropdown-menu-end" style="top: auto;" aria-labelledby="navbarDropdown">
        @foreach (selectCambioEmpresa() as $idx => $desc)

            <li><a class="dropdown-item " href="{{ route('otra.empresa', $idx) }}"><b><small>{{ $desc }}</small>
                    </b></a></li>

        @endforeach




    </ul>
</li>
