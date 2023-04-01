<span role="button" class="btn btn-danger  btn-dange btn-sm btn-exportar-ecxel" 
@if (isset($classTablaExport))
    data-seltabla=".{{ $classTablaExport }}"
@else
    data-seltabla=".tablaInformesExport"
    @endif title="Exportar a Excel">

    @if (isset($btnText))
        {{ $btnText }}
    @else
        Exportar
    @endif

</span>

@if (!isset($noJs))
    <script>
        $(function() {

            $('.btn-exportar-ecxel').on('click', (e) => {

                let titulo = ($('.header-informe>b').text().split('-'))[0].trim()
                let clasTabla = e.target.getAttribute('data-seltabla')
                exportarEcxel(clasTabla, titulo)

            })

        })
    </script>
@endif
