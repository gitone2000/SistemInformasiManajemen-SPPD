<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>{{ $title }}</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <link rel="icon" href="{{ asset('img/logo.png') }}" type="image/png">
    <link rel="stylesheet" href="{{ asset('assets/zenTheme/css/login.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/zenTheme/css/materialdesignicons.css') }}">
    <link rel="stylesheet" href="{{ asset('assets/zenTheme/css/bootsrtap.css') }}">
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">

    <link type='text/css' href="{{ asset('assets/zenTheme/css/siteman.css') }}" rel='Stylesheet' />
    <link rel="shortcut icon" href="{{ asset('img/logo.png') }}" />
</head>

<body>
    <main class="d-flex align-items-center min-vh-100 py-3 py-md-0">
        <div class="container">
            <div class="card login-card">
                <div class="row no-gutters">
                    <div class="col-md-8">
                        <img src="{{ asset('img/background-panjang.jpg') }}" alt="login" class="login-card-img">
                    </div>
                    <div class="col-md-4">
                        <div class="card-body">
                            <div class="brand-wrapper">
                                <div align="center"><img src="{{ asset('img/logo.png') }}" width="70px" alt="" border="0" class="logo"></div>
                            </div>
                            <p class="login-card-description"><a href="#">Puskesmas<br>Gondosari</a></p>
                            {{-- <p class="text-center">Silahkan Login</p> --}}
                            <form class="login-form" action="{{ route('authenticate') }}" method="post">
                                @csrf
                                <div class="form-group has-feedback @error('email') has-error @enderror">
                                    <input type="text" name="email" id="email" class="form-control" placeholder="Email" value="{{ old('email') }}">
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    @error('email')
                                        <span class="help-block">{{ $message }}</span>
                                    @else
                                        <span class="help-block with-errors"></span>
                                    @enderror
                                </div>
                                
                                <div class="form-group has-feedback @error('password') has-error @enderror">
                                    <input type="password" name="password" id="password" class="form-control" placeholder="Password" value="">
                                    <span class="glyphicon glyphicon-user form-control-feedback"></span>
                                    @error('password')
                                        <span class="help-block">{{ $message }}</span>
                                    @else
                                        <span class="help-block with-errors"></span>
                                    @enderror
                                </div>
                                <button class="btn btn-block login-btn mb-4" type="submit" name="submit" value="submit">
                                    <i class="fa fa-sign-in"></i> LOGIN
                                </button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <div class="credit">
                <p style="color: black !important;"></p>
            </div>
        </div>
    </main>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</body>
</html>
