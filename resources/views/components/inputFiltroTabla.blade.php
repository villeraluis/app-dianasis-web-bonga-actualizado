<input id="inputSearch" class="form-control  form-control-sm" data-tabla="{{ $idTabla }}" type="text"
     placeholder="Filtrar Termino" style="border-radius: 0px;">


<script>
    $('#inputSearch').on('keyup', function(e) {

        const idTabla = $('#inputSearch').attr('data-tabla')
        filtroTabla(idTabla, 'inputSearch')
    })
</script>

