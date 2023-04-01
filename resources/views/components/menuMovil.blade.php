<ul class="accordion-menu ">

    @if (opcionesMenuActivas('Informes de Transporte'))
        <li>
            <div class="dropdownlink">
                <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor" class="bi bi-journal-album" viewBox="0 0 16 16">
                    <path d="M5.5 4a.5.5 0 0 0-.5.5v5a.5.5 0 0 0 .5.5h5a.5.5 0 0 0 .5-.5v-5a.5.5 0 0 0-.5-.5h-5zm1 7a.5.5 0 0 0 0 1h3a.5.5 0 0 0 0-1h-3z"/>
                    <path d="M3 0h10a2 2 0 0 1 2 2v12a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2v-1h1v1a1 1 0 0 0 1 1h10a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1v1H1V2a2 2 0 0 1 2-2z"/>
                    <path d="M1 5v-.5a.5.5 0 0 1 1 0V5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V8h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0v.5h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1z"/>
                  </svg>
                Informes de Transporte

                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
            <ul class="submenuItems">
                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.transporte.informes.listadoVehiculos'>Vehiculos</a></li>

                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.transporte.informes.despachoVehiculos'>Despacho de Vehiculos</a></li>

                <li><a href="" class="link-final link-menu-p" data-route='vista.transporte.informes.RecibosCaja'>Recibos
                        de Caja</a></li>

                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.transporte.informes.controlVehiculos'>Control de Vehiculos</a></li>


            </ul>
        </li>


        <li>
            <div class="dropdownlink">
                <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor"
                    class="bi bi-calendar2-week" viewBox="0 0 16 16">
                    <path
                        d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z" />
                    <path
                        d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4zM11 7.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
                </svg>
                Informes de Tesorería

                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
            <ul class="submenuItems">
                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.tesoreria.informes.informeCuadreCajaPuntosRecaudo'>Cuadre de Caja Puntos Recaudo</a></li>
            </ul>
        </li>


    @endif



    @if (opcionesMenuActivas('Informes de Contabilidad'))
        <li>
            <div class="dropdownlink"><svg xmlns="http://www.w3.org/2000/svg" width="26" height="26"
                    fill="currentColor" class="bi bi-file-earmark-post" viewBox="0 0 16 16">
                    <path
                        d="M14 4.5V14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5L14 4.5zm-3 0A1.5 1.5 0 0 1 9.5 3V1H4a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4.5h-2z" />
                    <path
                        d="M4 6.5a.5.5 0 0 1 .5-.5h7a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-.5.5h-7a.5.5 0 0 1-.5-.5v-7zm0-3a.5.5 0 0 1 .5-.5H7a.5.5 0 0 1 0 1H4.5a.5.5 0 0 1-.5-.5z" />
                </svg> Informes de Contabilidad
                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
            <ul class="submenuItems">

                <li><a href="" class="contEstadoResultados link-final link-menu-p"
                        data-route="vista.contabilidad.informes.contEstadoResultados">Estado de Resultados</a></li>

                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.contabilidad.informes.contEstadoResultadosComp'>Estado de Resultados
                        Comparativos</a></li>
                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.contabilidad.informes.contBalanceGeneral'>Balance General</a></li>
                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.contabilidad.informes.contBalanceGeneralComp'>Balance General Comparativo</a>
                </li>
                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.contabilidad.informes.contBalanceGeneralMaM'>Balance General Mes a Mes</a>
                </li>
            </ul>
        </li>
    @endif


    @if (opcionesMenuActivas('Informes de Inventarios'))
        <li>
            <div class="dropdownlink">
                <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor"
                    class="bi bi-file-earmark-spreadsheet-fill" viewBox="0 0 16 16">
                    <path d="M6 12v-2h3v2H6z" />
                    <path
                        d="M9.293 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.707A1 1 0 0 0 13.707 4L10 .293A1 1 0 0 0 9.293 0zM9.5 3.5v-2l3 3h-2a1 1 0 0 1-1-1zM3 9h10v1h-3v2h3v1h-3v2H9v-2H6v2H5v-2H3v-1h2v-2H3V9z" />
                </svg>
                Informes de Inventarios

                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
            <ul class="submenuItems">

                @if (session('Empresa')=='01')
                
                    <li><a href="" class="ilink-final link-menu-p" data-route='vista.informe.compras.periodo'>Compras por
                        Periodo</a></li>
                     <li><a href="" class="link-final link-menu-p" data-route='vista.informe.ventas.periodo'>Ventas por
                        Periodo</a></li>

                    
                @else

                    <li><a href="" class="link-final link-menu-p" data-route='vista.informe.ventas.diaypv'>Ventas por
                        Día y PV</a></li>

                    <li><a href="" class="link-final link-menu-p" data-route='vista.informe.ventas.diaydepv'>Ventas por
                            Día de un PV</a></li>

                    
                @endif
                
                
            </ul>
        </li>
    @endif

    @if (opcionesMenuActivas('Informes de Cartera'))
        <li>
            <div class="dropdownlink">
                <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor"
                    class="bi bi-journals" viewBox="0 0 16 16">
                    <path
                        d="M5 0h8a2 2 0 0 1 2 2v10a2 2 0 0 1-2 2 2 2 0 0 1-2 2H3a2 2 0 0 1-2-2h1a1 1 0 0 0 1 1h8a1 1 0 0 0 1-1V4a1 1 0 0 0-1-1H3a1 1 0 0 0-1 1H1a2 2 0 0 1 2-2h8a2 2 0 0 1 2 2v9a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H5a1 1 0 0 0-1 1H3a2 2 0 0 1 2-2z" />
                    <path
                        d="M1 6v-.5a.5.5 0 0 1 1 0V6h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 3v-.5a.5.5 0 0 1 1 0V9h.5a.5.5 0 0 1 0 1h-2a.5.5 0 0 1 0-1H1zm0 2.5v.5H.5a.5.5 0 0 0 0 1h2a.5.5 0 0 0 0-1H2v-.5a.5.5 0 0 0-1 0z" />
                </svg>
                Informes de Cartera
                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
            <ul class="submenuItems">

                <li><a href="" class="link-final link-menu-p" data-route='vista.informe.anailis.cartera.edades'>Analisis
                        de
                        Cartera por Edades</a></li>
                <li><a href="" class=" link-final link-menu-p"
                        data-route='vista.informe.anailis.cartera.cliente'>Analisis
                        de Cartera por Clientes</a></li>


            </ul>
        </li>
    @endif


    
    @if (opcionesMenuActivas('Informes de Cuentas por Pagar'))
        <li>
            <div class="dropdownlink">
                <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor"
                    class="bi bi-credit-card-2-back-fill" viewBox="0 0 16 16">
                    <path
                        d="M0 4a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v5H0V4zm11.5 1a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h2a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5h-2zM0 11v1a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2v-1H0z" />
                </svg>
                Informes de Cuentas por Pagar
                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
            <ul class="submenuItems">
                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.cuentasPagar.informes.analisisCuentasPagar'>Analisis de Cuentas por Pagar por
                        Edades</a></li>
                <li><a href="" class=" link-final link-menu-p"
                        data-route='vista.cuentasPagar.informes.analisisDeudaProvedor'>Analisis de Deuda por
                        Proveedor</a>
                </li>
                <li><a href="" class=" link-final link-menu-p"
                        data-route='vista.cuentasPagar.informes.cargoCuentasPagar'>Cargo a Cuentas por Pagar</a></li>

            </ul>
        </li>
    @endif


    @if (opcionesMenuActivas('Informes de Tesorería'))
        <li>
            <div class="dropdownlink">
                <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" fill="currentColor"
                    class="bi bi-calendar2-week" viewBox="0 0 16 16">
                    <path
                        d="M3.5 0a.5.5 0 0 1 .5.5V1h8V.5a.5.5 0 0 1 1 0V1h1a2 2 0 0 1 2 2v11a2 2 0 0 1-2 2H2a2 2 0 0 1-2-2V3a2 2 0 0 1 2-2h1V.5a.5.5 0 0 1 .5-.5zM2 2a1 1 0 0 0-1 1v11a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1V3a1 1 0 0 0-1-1H2z" />
                    <path
                        d="M2.5 4a.5.5 0 0 1 .5-.5h10a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5H3a.5.5 0 0 1-.5-.5V4zM11 7.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm-5 3a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5v-1z" />
                </svg>
                Informes de Tesorería

                <i class="fa fa-chevron-down" aria-hidden="true"></i>
            </div>
            <ul class="submenuItems">
                <li><a href="" class="link-final link-menu-p"
                        data-route='vista.tesoreria.informes.informeEgresosBancos'>Egresos de Bancos</a></li>

            </ul>
        </li>
    @endif

</ul>




<script>
    $(function() {
        var Accordion = function(el, multiple) {
            this.el = el || {};
            // more then one submenu open?
            this.multiple = multiple || false;

            var dropdownlink = this.el.find('.dropdownlink');
            dropdownlink.on('click', {
                    el: this.el,
                    multiple: this.multiple
                },
                this.dropdown);
        };

        Accordion.prototype.dropdown = function(e) {
            var $el = e.data.el,
                $this = $(this),
                //this is the ul.submenuItems
                $next = $this.next();

            $next.slideToggle();
            $this.parent().toggleClass('open');



            if (!e.data.multiple) {
                //show only one menu at the same time
                $el.find('.submenuItems').not($next).slideUp().parent().removeClass('open');
            }
        }

        var accordion = new Accordion($('.accordion-menu'), false);
    })

    $('.link-final').on('click', function() {

        $('.link-final').removeClass('link-fin-active')

        $(this).addClass('link-fin-active')
    })
</script>
