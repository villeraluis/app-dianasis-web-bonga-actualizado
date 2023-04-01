<canvas id="informesProVChart" class="mt-3" width="400" height="400" style=" max-height: 500px"></canvas>

<script>
    /////////////////////////para pintar las fechas por dias
    top.location = "#vista-informe-productos-vendidos";


    function graficar() {

        ///////////////////////////////////////

        ////obtener los datos del text Area

        let ventasObj = [];

        for (dato of JSON.parse($('#txtDatosProductosVendidos').val())) {

            ventasObj.push({
                xValor: dato.MveStDescripcion,
                yValor: dato.ValorVentaTot,
                zCantidad: dato.TotalCantidad
            })

        }

        let labDescripcion = [...new Set(ventasObj.map((x) => x.xValor))];
        let labValor = [...new Set(ventasObj.map((x) => x.yValor))];



        let mayorsig = redondeaNum(Math.round(getMaxOfArray(labValor)));

        let ctx = document.getElementById('informesProVChart');

        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: labDescripcion,
                datasets: [{
                    label: 'Valor Total',
                    data: labValor,
                    fill: true,
                    borderColor: 'rgb(75, 192, 192)',
                    backgroundColor: ["rgb(51, 0, 0)", "rgb(102, 102, 255)", "rgb(102, 153, 102)",
                        "rgb(102, 204, 153)", "rgb(153, 204, 255)", "rgb(102, 255, 255)",
                        "rgb(0, 204, 153)"
                    ],
                    tension: 0.1
                }]
            },
            options: {
                onClick: (evt) => {
                    const points = myChart.getElementsAtEventForMode(evt, 'nearest', {
                        intersect: true
                    }, true);

                    if (points.length) {
                        const firstPoint = points[0];
                        const label = myChart.data.labels[firstPoint.index];
 
                        datatableDatos.search(label).draw();
                        $(".div-tabla-ventas-oculto").prop("hidden", false).trigger("focus");
                        $('.btnVerTabla').text("Ocultar Tabla Informe"); 
                        $(".btnVerTabla").on('click', function() {
                            datatableDatos.search('').draw();
                        });


                    }



                },
                scales: {
                    x: { 
                        max: mayorsig,
                        ticks: {
                            display: false
                        }
                    },
                    y: {
                       
                        ticks: {
                            display: false
                        }
                    }
                },
                indexAxis: 'y',
                plugins: {
                    legend: {
                        display: false
                    },
                    zoom: {
                        zoom: {
                            wheel: {
                                enabled: true, //permite que se pueda usar la rueda del raton
                                speed: 0.001,
                                threshold: 0.001,
                            },
                            pinch: {
                                enabled: true, //permite usar el pellizco en la pantalla movil
                                speed: 0.0001,
                                threshold: 0.0001,
                            },

                            mode: "xy", //permite el zoom en lo ejes estipulados aqui
                            onZoomComplete({
                                chart
                            }) {
                                // This update is needed to display up to date zoom level in the title.
                                // Without this, previous zoom level is displayed.
                                // The reason is: title uses the same beforeUpdate hook, and is evaluated before zoom.
                                chart.update("none");
                            },
                        },
                        pan: {
                            enabled: true, //permite que se pueda mover el garfico en el eje xy
                            mode: "xy",
                            speed: 0.01,
                        },

                        limits: {
                            x: {
                                min: 0,
                                max: mayorsig,
                                minRange: 1000000
                            }, //controla el minimo y el maximo del grafico en el eje y
                        },
                    },
                    title: {
                        display: true,
                        position: 'bottom',
                        text: 'Grafico de Ventas'
                    },
                    tooltip: {
                        callbacks: {
                            footer: function(e) {

                                
                                 for(i=0;i<ventasObj.length;i++){
                                    if(ventasObj[i].xValor==e[0].label){
                                        return `Número de Productos Vendidos: ${ventasObj[i].zCantidad}`;
                                        
                                    }
                                } 
 
                            },

                        }
                    }
                }
            }

        });

        $('.resetZoomChart').on('click', function() {
            myChart.resetZoom();

        });

    }






    graficar();
</script>
