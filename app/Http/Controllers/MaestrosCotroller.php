<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Comprobante;
use App\Models\FormaPago;
use Illuminate\Http\Request;

class MaestrosCotroller extends Controller
{
    public function viewMaestros()
    {
        cambioBaseDatos();
        $terceros = Cliente::select('clinit', 'CliStNombreCliente')->limit(100)->get();

        $formaPagos = FormaPago::get();
        $comprobantes = Comprobante::where('ComStTipoMov', '12')->get();

        return view('contenido.listadoMaestros.indexListadoMaestros', compact('terceros', 'formaPagos', 'comprobantes'));
        //return view('index',compact('contenido'));
 
    }
}
