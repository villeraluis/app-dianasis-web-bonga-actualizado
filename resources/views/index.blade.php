@include('partials.header')

<body >
    <div class="modal-progres"></div>
   

    @include('home')

    @include('partials.footer')
</body>

</html>

<script>




    $(document).ready(function() {
       
        $('#btn-activa-menu').on('click', function() {

             if ($(' #content,#divSidebar,.div-sidebar').hasClass('active')) {

                $(' #content,#divSidebar,.div-sidebar').removeClass('active');
                $(this).removeClass('close').addClass('normal');

            } else {
                $(this).removeClass('normal').addClass('close');
                $(' #content,#divSidebar,.div-sidebar').addClass('active');
            } 

        });

        $('.item-click-menu:first').parent().addClass('menu-activo');
    });

   

    $('.item-primer-nivel').on('click', function(e) {

        $('.item-primer-nivel').removeClass('menu-activo');
        $(this).addClass('menu-activo');

        e.preventDefault();


        if ($(this).siblings().is(":hidden")) {

            $(this).siblings().prop('hidden', false);
            $('span', this).html('&nbsp-&nbsp');

        } else {

            $(this).siblings().prop('hidden', true);
            $('span', this).html('&nbsp+&nbsp');
        }

    });


    $('.item-click-menu').on('click', function(event) {

        event.preventDefault();
        $('.item-click-menu').parent().removeClass('menu-activo');
        $(this).parent().addClass('menu-activo');

        let clasesNivel1 = $(this).attr('class').split(/\s+/);
        let claseBuscada = clasesNivel1[0].split('-');
        let claseF = claseBuscada[2];



        let claseNivel2 = '.menu-nivel2-' + claseF;
        $('.div-menu-2').prop('hidden', true);
        if ($(claseNivel2).is(":hidden")) {
            $(claseNivel2).prop('hidden', false);

        } else {
            $(claseNivel2).prop('hidden', true);
        }


    });


    
</script>
