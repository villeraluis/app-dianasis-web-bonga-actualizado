<div class="modal" tabindex="-1" id="modalGrficoEsResCpm">
    <div class="modal-dialog modal-dialog-centered modal-lg">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title"></h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">

            </div>
        </div>
    </div>
</div>


<script>
    /////////////////////////para pintar las fechas por dias


    $('#tablaEstadoResultadosCom>tbody>tr').on('click', function(e) {

       

        const canMes = $('.inpCaMes').val()
        const meses = []
        const yearActual= parseInt($('.selectYear').val())

        months.forEach((mes, i) => {
            if (i + 1 <= canMes) {
                meses.push(mes)
            }
        });

        if (e.target.tagName != 'SPAN') {
            let valMesActual = []
            let valMesAnt = []

            

            

            const descri = ($(this).find('td:eq(4)').text().replace(/[^' 'a-zA-Z0-9.-]/g, '')).trim();
            
            $(this).find('.mes-actual').each((i, val) => {
                let temp = val.innerText.replace(/[^a-zA-Z0-9.-]/g, '');
                valMesActual[i] = (isFinite(parseFloat(temp))) ? parseFloat(temp) : 0
            })

            $(this).find('.mes-anterior').each((i, val) => {
                let temp = val.innerText.replace(/[^a-zA-Z0-9.-]/g, '')
                valMesAnt[i] = (isFinite(parseFloat(temp))) ? parseFloat(temp) : 0
            })

            let mayorAct = Math.ceil(getMaxOfArray(valMesActual))
            mayorAct = redondeaNum(mayorAct)

            let mayorAnt = Math.ceil(getMaxOfArray(valMesAnt))
            mayorAnt = redondeaNum(mayorAnt)
            if (mayorAct < mayorAnt) {
                mayorAct = mayorAnt
            }

            let menorAct = (redondeaNumMenor(Math.ceil(getMinOfArray(valMesActual))) >= 0) ? 0 :
                redondeaNumMenor(Math.ceil(getMinOfArray(valMesActual)))
            let menorAnterior=(redondeaNumMenor(Math.ceil(getMinOfArray(valMesAnt))) >= 0) ? 0 :
                redondeaNumMenor(Math.ceil(getMinOfArray(valMesAnt)))

            if (menorAct > menorAnterior) {
                menorAct = menorAnterior
            }

            
            $('#modalGrficoEsResCpm .modal-body').empty().append(
                '<canvas id="estadoresCom" width="400" height="400" style=" max-height: 500px"></canvas>')
            $('#modalGrficoEsResCpm').modal('show')
            graficar(meses, valMesActual, valMesAnt, descri, mayorAct, menorAct,yearActual)

        }
    })


    function graficar(labels, val1, val2, label, mayorsig, menorY,yearActual) {

   
        let ctx = document.getElementById('estadoresCom').getContext('2d');

        var myChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels,
                datasets: [{
                        label:`${label} ${yearActual}  `,
                        data: val1,
                        fill: true,
                        borderColor: 'rgb(75, 192, 192)',
                        backgroundColor: ["rgb(102, 204, 153)"],
                        
                        tension: 0.1,
                        barPercentage: 0.6,
                        categoryPercentage: 1.0
                    },
                    {
                        label:`${label} ${yearActual-1}`,
                        data: val2,
                        fill: true,
                        borderColor: 'rgb(75, 192, 192)',
                        backgroundColor: ["rgb(129, 234, 231)"], 
                        tension: 0.1,
                        barPercentage: 0.6,
                        categoryPercentage: 1.0
                    }

                ]
            },
            options: {


                scales: {
                  
                    y: {

                        min: menorY,
                        max: mayorsig,
                        beginAtZero: true,
                        ticks: {

                            callback: function(value, index, values) {
                                return value / 1000000 + 'M';

                            }

                        }

                    },
                    x: {
                        min: 0,


                    }
                },
                plugins: {
                    legend: {
                        display: false
                    },
                    title: {
                        display: true,
                        position: 'bottom',
                        text: label
                    },
                    zoom: {
                        zoom: {
                            wheel: {
                                enabled: true, //permite que se pueda usar la rueda del raton
                                speed: 0.01,
                                threshold: 0.1,
                            },
                            pinch: {
                                enabled: true, //permite usar el pellizco en la pantalla movil
                                speed: 0.0001,
                                threshold: 0.0001,
                            },

                            mode: "x", //permite el zoom en lo ejes estipulados aqui
                            onZoomComplete({
                                chart
                            }) {
                                chart.update("none");
                            },
                        },
                        pan: {
                            enabled: true, //permite que se pueda mover el garfico en el eje xy
                            mode: "xy",
                            speed: 1,
                        },

                        limits: {
                            y: {
                                min: 0,
                                max: mayorsig,
                                minRange: -1000
                            }, //controla el minimo y el maximo del grafico en el eje y
                        },
                    }


                }
            }

        });

        $('.resetZoomChart').on('click', function() {
            myChart.resetZoom();

        });







    }

    function generarNumero(numero) {
        return (Math.random() * numero).toFixed(0);
    }

    function colorRGB() {
        var coolor = "(" + generarNumero(255) + "," + generarNumero(255) + "," + generarNumero(255) + ")";
        return "rgb" + coolor;
    }
</script>
