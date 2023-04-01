<span role="button" class="btn btn-danger btn-dange btn-sm btn-vf-fija-col" title="Fijar Columnas de Cuentas">F</span>
<span role="button" class="btn btn-secondary btn-sm btn-n1" title="Ver Nivel 1 de la Tabla">1</span>
<span role="button" class="btn btn-secondary btn-sm btn-n2" title="Ver Nivel 2 de la Tabla">2</span>
<span role="button" class="btn btn-secondary btn-sm btn-n3" title="Ver Nivel 3 de la Tabla">3</span>
<span role="button" class="btn btn-secondary btn-sm btn-n4" title="Ver Tabla Completa">4</span>
<x-botonExportarEcxel/>

<script>
    $('.btn-n1').on('click', (e) => {

        $('.pad-1,.pad-2,.pad-3,.movi').hide()
        $('.span-simbolo,.sp-total').html('&nbsp+&nbsp')
    })

    $('.btn-n2').on('click', (e) => {
        $('.pad-2,.pad-3,.movi').hide()
        $('.pad-1').show()
        $('.span-simbolo').html('&nbsp+&nbsp')
    })

    $('.btn-n3').on('click', (e) => {
        $('.pad-3,.movi').hide()
        $('.pad-1,.pad-2').show()
        $('.span-simbolo').html('&nbsp+&nbsp')
    })

    $('.btn-n4').on('click', (e) => {
        $('.pad-1,.pad-2,.pad-3,.movi').show()
        $('.span-simbolo').html('&nbsp-&nbsp')
    })

    $('.btn-vf-fija-col').on('click', (e) => {

        $('.btn-vf-fija-col').text($('.btn-vf-fija-col').text() == 'F' ? 'V' : 'F')
        $('.tabla-cols-fija tbody tr>td:nth-child(1),.tabla-cols-fija thead tr>th:nth-child(1)').toggleClass(
            'col-cus-1-fija');
        $('.tabla-cols-fija tbody tr>td:nth-child(2),.tabla-cols-fija thead tr>th:nth-child(2)').toggleClass(
            'col-cus-2-fija');
        $('.tabla-cols-fija tbody tr>td:nth-child(3),.tabla-cols-fija thead tr>th:nth-child(3)').toggleClass(
            'col-cus-3-fija');
        $('.tabla-cols-fija tbody tr>td:nth-child(4),.tabla-cols-fija thead tr>th:nth-child(4)').toggleClass(
            'col-cus-4-fija');
        $('.tabla-cols-fija tbody tr>td:nth-child(5),.tabla-cols-fija thead tr>th:nth-child(5)').toggleClass(
            'col-cus-5-fija');

    })








   
</script>
