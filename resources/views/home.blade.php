<div class="" style="min-width: 360px">

    <div class="">
        @include('partials.navbar')
    </div>

    <div class="wrapper ">
        @include('partials.sidebar')
    </div>

    <div id="content" class="">


        <div id="contenido" class="p-1 ml-2  mt-2">

            @if (isset($contenido))
                {!! $contenido !!}

            @endif



        </div>

    </div>

</div>


<script>
    //window.history.pushState(null, null, 'home-informes');

    /*  $('.link-recargar').on('click', function(e) {
         e.preventDefault();
         cargandoAjax();

         let _url = route('vista.informes.home');

         $.ajax({
             url: _url,
             type: 'GET',
             data: null,
             success: function(response) {

                 $('#contenido').empty();
                 $('#contenido').append(response);


             }

         });
     }) */

    $(function() {
        $('#example').DataTable({
            'treeGrid': {
                'left': 10,
                'expandIcon': '<span>+<\/span>',
                'collapseIcon': '<span>-<\/span>'
            }
        });


        $('.link-menu-p').on('click', (e) => {

            e.preventDefault();
            let rout = e.target.getAttribute('data-route')

            if (!rout) {
                const _url = e.currentTarget.href
                getVistas((_url), 'GET', e);

            } else {

                getVistas(route(rout), 'GET', e);
            }


        })




    });




    $('.informeDevolComprasPeriodo').on('click', function(e) {
        getVistas(route('vista.informe.devoluciones.compras.periodo'), 'GET', e);
    });



    $('.informeDevolVentasPeriodo').on('click', function(e) {
        getVistas(route('vista.informe.devoluciones.ventas.periodo'), 'GET', e);
    });

    $('.informeProductosVendidos').on('click', function(e) {

        getVistas(route('vista.informe.productos.vendidos'), 'GET', e);

    });


    $('.informeProductosComprados').on('click', function(e) {

        getVistas(route('vista.informe.productos.comprados'), 'GET', e);

    });


    $('.listadoProductos').on('click', function(e) {
        getVistas(route('vista.lista.productos'), 'GET', e);
    });


    $('.listadoMaestros').on('click', function(e) {
        getVistas(route('vista.lista.maestros'), 'GET', e);
    });
</script>
