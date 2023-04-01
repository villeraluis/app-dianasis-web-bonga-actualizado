<div hidden class=" divParamtros">


    <div class="row">
        <x-inputDosFechas />

        <div class="col-12 col-md-6 campoOpcional">
        
            <x-selectsTerceros  />

        </div> 
    </div>

    <div class="row">

        <div class="col-12 col-md-4 campoOpcional">
            <x-selectFormaPago :formaPagos="$formaPagos" />
        </div>
        <div class="col-12 col-md-8 campoOpcional">
            <x-selectsComprobantes :comprobantes="$comprobantes" />
    
        </div>
    </div>
   

</div>
