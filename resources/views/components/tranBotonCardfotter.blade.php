<div class="card-footer card-fotter-custom  d-flex div-btn-action" role="button">
    <div class="flex-grow-1  text-end">
        <span id='textChevron'>Ocultar Parametros</span>
        <i class="rotate-element fa fa-chevron-down btn-action-div-toggle" aria-hidden="false"></i>
    </div>

</div>

<style>
    .rotate-element {
        transform: rotate(180deg);
    }

    .div-btn-action:hover {
        background: var(--grad-dianasis);
        color: rgb(255, 255, 255);
    }

</style>

<script>
    $(function() {
        $('.div-btn-action').on('click', (e) => {

            const elemento = $('.btn-action-div-toggle')
            const label = $('#textChevron')
            $('.div-toggle').toggle()

            elemento.toggleClass('rotate-element')


            if (elemento.hasClass('rotate-element')) {
                label.text('Ocultar Parametros')
            } else {
                label.text('Ver Parametros')
            }

        })

    })
</script>
