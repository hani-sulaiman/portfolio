<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>{{ config('app.name', 'Laravel') }}</title>
  <!-- Place favicon.ico in the root directory -->
  <link rel="apple-touch-icon" href="assets/img/logo/logo.png" />
  <link rel="shortcut icon" href="{{ asset('favicon.png') }}" type="image/x-icon">

  <!-- CSS here -->
  <link rel="stylesheet" href="assets/css/animate.min.css" />
  <link rel="stylesheet" href="assets/css/bootstrap.min.css" />
  <link rel="stylesheet" href="assets/css/font-awesome-pro.min.css" />
  <link rel="stylesheet" href="assets/css/flaticon_gerold.css" />
  <link rel="stylesheet" href="assets/css/nice-select.css" />
  <link rel="stylesheet" href="assets/css/backToTop.css" />
  <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
  <link rel="stylesheet" href="assets/css/swiper.min.css" />
  <link rel="stylesheet" href="assets/css/odometer-theme-default.css" />
  <link rel="stylesheet" href="assets/css/magnific-popup.css" />
  <link rel="stylesheet" href="assets/css/main.css" />
  <link rel="stylesheet" href="assets/css/main-2.css" />
  <link rel="stylesheet" href="assets/css/main-3.css" />
  <link rel="stylesheet" href="assets/css/light-mode.css" />
  <link rel="stylesheet" href="assets/css/meanmenu.css" />
  <link rel="stylesheet" href="assets/css/responsive.css" />
  <link rel="stylesheet" href="assets/css/responsive-2.css" />
  <link rel="stylesheet" href="assets/css/responsive-3.css" />

  <!-- CSRF Token for Vue -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
</head>

<body>
  <div id="app">
  </div>
  @vite('resources/js/app.js')
</body>

</html>