<?php

namespace App\Http\Controllers;

use App\Models\Cliente;
use App\Models\Empresa;
use App\Models\Usuario;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;

class LoginController extends Controller
{

    public function login(Request $request)
    {

        $idUs = $request->idUsu;
        $pas = md5($request->password);
        $codEmpresa = $request->idEmpresa;

        session()->flush();
        session(['Empresa' => $codEmpresa]);
        cambioBaseDatos();

        try {

            if (Usuario::where('UsuStIdUsuario', $idUs)->exists()) {
                $consulta = Usuario::where('UsuStIdUsuario', $idUs)->first();
                $empresa = Empresa::where('empcodi', $codEmpresa)->first();

                if ($pas == $consulta->UsuStClave) {

                    if ($consulta->UsuStActivo == 'A') {

                        session(['nitCliente' => $consulta->UsuIdStNitCliente]);
                        session(['idUsuario' => $consulta->UsuStIdUsuario]);
                        session(['clave' => $consulta->UsuStClave]);
                        session(['empresaNombre' => $empresa->empnomb]);

                        
                        return redirect()->route('vista.informes.home');

                    } else {
                        return redirect()->back()->with('msg', 'El Usuario Esta Inactivo');
                    }
                } elseif (($request->session()->has('Empresa')) && ($request->session()->has('idUsuario')) && ($request->session()->has('clave'))) {
                    
                    return redirect()->route('vista.informes.home');

                } else {

                    return redirect()->back()->with('msg', 'La contraseña no coincide');
                }
            } elseif (($request->session()->has('Empresa')) && ($request->session()->has('idUsuario')) && ($request->session()->has('clave'))) {
               
                return redirect()->route('vista.informes.home');
                
            } else {


                return redirect()->route('login')->with('msg', 'El usuario y la contraseña no coinciden');
            }
        } catch (Exception $e) {
            return redirect()->back()->with('msg', 'Error al conectar con Base de Datos');;
        }
    }
}
