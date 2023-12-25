<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with Creative Studio landing page.">
  <meta name="author" content="Devcrud">
  <title>Creative Studio | Free Bootstrap 4.3.x template</title>

  <!-- font icons -->
  <link rel="stylesheet" href="assets/vendors/themify-icons/css/themify-icons.css">

  <!-- Bootstrap + Creative Studio main styles -->
  <link rel="stylesheet" href="assets/css/creative-studio.css">

</head>

<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

  <!-- Page Navigation -->
  <nav class="navbar custom-navbar navbar-expand-lg navbar-dark" data-spy="affix" data-offset-top="20">
    <div class="container">
      <a class="navbar-brand" href="#">
        <img src="assets/imgs/logo.png" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="index.php">Home</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php">Portfolio</a>
          <li class="nav-item">
            <a class="nav-link" href="index.php">Blog</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="index.php">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
  <!-- End Of Page Navigation -->

  <!-- Page Header -->
  <header class="header">
    <div class="overlay">
      <h6 class="subtitle">SELAMAT DATANG DI </h6>
      <h1 class="title">DESA BUNGIN</h1>
      <div class="buttons text-center">
        <a href="#contact" class="btn btn-outline-light rounded w-lg btn-lg my-1">Contact Us</a>
      </div>
    </div>
  </header>
  <?php
  $con = mysqli_connect("localhost", "root", "", "desa_bungi");
  $id_uraian = $_GET["id_uraian"];
  $hasil = mysqli_query($con, "SELECT * FROM uraian WHERE id_uraian = '$id_uraian'");
  $data = mysqli_fetch_row($hasil);
  ?>

  <section id="about">
    <div class="container">
      <div class="row align-items-center">
        <div class="col-md-5 col-lg-4">
          <img src="assets/img/dummies/<?php echo $data[4] ?>" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page" class="w-100 img-thumbnail mb-3">
        </div>
        <div class="col-md-7 col-lg-8">
          <h6 class="section-title mb-3"><?php echo $data[1] ?></h6>
          <p><?php echo $data[3] ?></p>
        </div>
      </div>
    </div>
  </section>

  <!-- core  -->
  <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
  <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

  <!-- bootstrap affix -->
  <script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

  <!-- Creative Studio js -->
  <script src="assets/js/creative-studio.js"></script>

</body>

</html>