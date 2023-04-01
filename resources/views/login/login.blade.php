<!DOCTYPE html>
<html lang="es">

<head>


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <title>Admin DIANASIS | Login</title>

    <link rel="stylesheet" href="{{ asset('vendor/libs/bootstrap-5/css/bootstrap.css') }}">

    <!-- Font Awesome -->
    <link rel="stylesheet" href=" {{ asset('vendor/libs/fontAwesome/css-font-awesome/all.min.css') }}">

    <link rel="icon" href="https://www.dianasis.com/wp-content/uploads/2019/10/modelo.png" sizes="32x32">

    <link rel="stylesheet"
        href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    <style>
        .login-page,
        .register-page {
            -webkit-align-items: center;
            -ms-flex-align: center;
            align-items: center;
            background: #ffffff !important;
            display: -webkit-flex;
            display: -ms-flexbox;
            display: flex;
            -webkit-flex-direction: column;
            -ms-flex-direction: column;
            flex-direction: column;
            height: 100vh;
            -webkit-justify-content: center;
            -ms-flex-pack: center;
            justify-content: center;
        }

        .form-label-login-custom {
            margin-bottom: 0.1px;
        }

        .btn-sm-custom {
            padding: 0.35rem 0.6rem;
            font-size: 0.975rem;
            border-radius: 0.1px;
            background-color: #b70002;
        }



        .form-control-sm,
        .form-select-sm {
            min-height: calc(1.5em+ 0.5rem+ 2px);
            padding: 0.25rem 0.5rem;
            font-size: 0.975rem;
            border-radius: 0.1px;
        }

        @media (min-width: 992px) {
            .container {
                width: 60% !important;

            }
        }

        body{
            background-color: #e9e9e9; 
        }

        .div-login{
            max-width: 400px;
            min-width:250px
        }

    </style>
</head>


<body>

    <section class="vh-100" >
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center  align-items-center h-100">
                <div class="col-12 div-login" >

                    <div class="card shadow-2-strong" style="border-radius: 1px;">
                        <div class="card-body p-3 text-center">

                            <div>
                                <a href="">
                                    <img class="img-fluid" src="{{ asset('vendor/img/head_login2.png')}}">

                                </a>
                            </div>

                            <form action="{{ route('dianasis.login') }}" method="POST">
                                @csrf

                                <div class="form-outline mb-2 text-start">
                                    <label for="" class="form-label form-label-login-custom">Usuario</label>
                                    <input type="text" name="idUsu" class="form-control form-control-sm" value="administrador"
                                        placeholder="Id Usuario" autofocus required>

                                </div>

                                <div class="form-outline  mb-2  text-start">
                                    <label for="" class="form-label form-label-login-custom">Contraseña</label>
                                    <input type="password" name="password" class="form-control form-control-sm"
                                        placeholder="Contraseña" required value="SUPERV1S0R">
                                </div>

                                <div class="form-outline  text-start">
                                    <label for="" class="form-label form-label-login-custom">Empresa</label>
                                    <select class="form-select form-select-sm" aria-label=".form-select-sm example"
                                        name="idEmpresa">

                                        @foreach (loginEmpresas() as $idx=>$item)
                                        <option value="{{$idx}}">{{$item}}</option>

                                            
                                        @endforeach
                                        
                                        
                            

                                    </select>
                                </div>

                                <div class="mb-4">
                                    <small style="color: #cd0000;">

                                        @php
                                            if (session('msg')) {
                                                echo session('msg');
                                            }
                                        @endphp
                                    </small>
                                </div>

                                <div class="text-start">
                                    <button class="btn btn-danger btn-sm btn-lg btn-block btn-sm-custom"
                                        type="submit">Iniciar Sesión</button>

                                </div>




                                <hr class="my-4">




                            </form>


                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <script src=" {{ asset('vendor/libs/jquery/jquery.min.js') }}"></script>
    <script src="{{ asset('vendor/libs/bootstrap-5/js/bootstrap.bundle.min.js') }}"></script>
</body>




</html>
