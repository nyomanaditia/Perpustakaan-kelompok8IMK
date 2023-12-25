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
                        <a class="nav-link" href="#home">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="page1.php?id_uraian=1">Geografis</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="page1.php?id_uraian=2">Kependudukan</a>
                    <li class="nav-item">
                        <a class="nav-link" href="page1.php?id_uraian=3">Potensi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="page1.php?id_uraian=4">Investasi</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="page1.php?id_uraian=5">Pemasaran</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="page1.php?id_uraian=6">Wilayah</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#portfolio">portfolio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#blog">Blog</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contact">Contact</a>
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

    <!-- Portfolio section -->
    <section id="portfolio">
        <div class="container text-center">
            <h6 class="section-title mb-5">PORTOFOLIO</h6>
            <p>Budidaya rumput laut di Kecamatan Tinanggea telah dilakukan ±10 tahun dan usaha budidaya rumput laut memilki peluang yang cukup besar untuk dikembangkan, karena 23% luas wilayahnya merupakan daerah pesisir/tepi laut (BPS Sulawesi Tenggara, 2012).</p>
            <div class="row">
                <div class="col-sm-4">
                    <div class="img-wrapper">
                        <img src="assets/img/portfolio/1.jpg">
                        <div class="overlay">
                            <div class="overlay-infos">
                                <h5>Laut</h5>
                            </div>
                        </div>
                    </div>
                    <div class="img-wrapper">
                        <img src="assets/img/portfolio/2.jpg">
                        <div class="overlay">
                            <div class="overlay-infos">
                                <h5>Rumput Laut</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="img-wrapper">
                        <img src="assets/img/portfolio/3_1.jpg">
                        <div class="overlay">
                            <div class="overlay-infos">
                                <h5>Hasil Tangkap</h5>
                            </div>
                        </div>
                    </div>
                    <div class="img-wrapper">
                        <img src="assets/img/portfolio/9_1.jpg">
                        <div class="overlay">
                            <div class="overlay-infos">
                                <h5>Penjemuran Rumput Laut</h5>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="img-wrapper">
                        <img src="assets/img/portfolio/4.jpg">
                        <div class="overlay">
                            <div class="overlay-infos">
                                <h5>Nelayan</h5>
                            </div>
                        </div>
                    </div>
                    <div class="img-wrapper">
                        <img src="assets/img/portfolio/5.jpg">
                        <div class="overlay">
                            <div class="overlay-infos">
                                <h5>Menangkap Rumput Laut</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Blog Section -->
    <section id="blog">
        <div class="container">
            <h6 class="section-title mb-6 text-center">Our Blog</h6>

            <?php
            $connection = mysqli_connect("localhost", "root", "", "desa_bungi");
            ?>
            <div class="row mb-4">
                <div class="col-md-4">
                    <?php
                    $hasil = mysqli_query($connection, "SELECT * FROM uraian WHERE id_uraian = 1");
                    $column = mysqli_fetch_row($hasil);


                    ?>
                    <div class="card blog-post my-4 my-sm-5 my-md-0" style="height: 600px">
                        <img src="assets/img/dummies/<?php echo $column[4] ?>" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $column[1] ?></h5>
                            <p><?php echo $column[2] ?></p>
                            <a href="page1.php?id_uraian=1" class="d-block mt-3">Baca Selengkapnya...</a>
                        </div>
                    </div>
                </div>

                <div class="col-md-4">
                    <?php
                    $hasil = mysqli_query($connection, "SELECT * FROM uraian WHERE id_uraian = 2");
                    $column = mysqli_fetch_row($hasil);


                    ?>
                    <div class="card blog-post my-4 my-sm-5 my-md-0" style="height: 600px">
                        <img src="assets/img/dummies/<?php echo $column[4] ?>" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $column[1] ?></h5>
                            <p><?php echo $column[2] ?></p>
                            <a href="page1.php?id_uraian=2" class="d-block mt-3">Baca Selengkapnya...</a>
                        </div>
                    </div>
                </div>
                <br>
                <div class="col-md-4">
                    <?php
                    $hasil = mysqli_query($connection, "SELECT * FROM uraian WHERE id_uraian = 3");
                    $column = mysqli_fetch_row($hasil);


                    ?>
                    <div class="card blog-post my-4 my-sm-5 my-md-0" style="height: 600px">
                        <img src="assets/img/dummies/<?php echo $column[4] ?>" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $column[1] ?></h5>
                            <p><?php echo $column[2] ?></p>
                            <a href="page1.php?id_uraian=3" class="d-block mt-3">Baca Selengkapnya...</a>
                        </div>
                    </div>
                </div>
                <br>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <?php
                    $hasil = mysqli_query($connection, "SELECT * FROM uraian WHERE id_uraian = 4");
                    $column = mysqli_fetch_row($hasil);


                    ?>
                    <div class="card blog-post my-4 my-sm-5 my-md-0" style="height: 600px">
                        <br><img src="assets/img/dummies/<?php echo $column[4] ?>" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $column[1] ?></h5>
                            <p><?php echo $column[2] ?></p>
                            <a href="page1.php?id_uraian=4" class="d-block mt-3">Baca Selengkapnya...</a>
                        </div>
                    </div>
                </div>
                <br>
                <div class="col-md-4">
                    <?php
                    $hasil = mysqli_query($connection, "SELECT * FROM uraian WHERE id_uraian = 5");
                    $column = mysqli_fetch_row($hasil);


                    ?>
                    <div class="card blog-post my-4 my-sm-5 my-md-0" style="height: 600px">
                        <br><img src="assets/img/dummies/<?php echo $column[4] ?>" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $column[1] ?></h5>
                            <p><?php echo $column[2] ?></p>
                            <a href="page1.php?id_uraian=5" class="d-block mt-3">Baca Selengkapnya...</a>
                        </div>
                    </div>
                </div>
                <br>
                <br>
                <div class="col-md-4">
                    <?php
                    $hasil = mysqli_query($connection, "SELECT * FROM uraian WHERE id_uraian = 9");
                    $column = mysqli_fetch_row($hasil);


                    ?>
                    <div class="card blog-post my-4 my-sm-5 my-md-0" style="height: 600px">
                        <br><img src="assets/img/dummies/<?php echo $column[4] ?>" alt="Download free bootstrap 4 landing page, free boootstrap 4 templates, Download free bootstrap 4.1 landing page, free boootstrap 4.1.1 templates, Creative studio Landing page">
                        <div class="card-body">
                            <h5 class="card-title"><?php echo $column[1] ?></h5>
                            <p><?php echo $column[2] ?></p>
                            <a href="page1.php?id_uraian=9" class="d-block mt-3">Baca Selengkapnya...</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End of Blog Section -->

    <!-- contact section -->
    <section class="section" id="contact">
        <div class="container text-center">
            <h6 class="section-title mb-5">kontak saya</h6>

            <!-- contact form -->
            <form method="post" action="" class="contact-form col-md-10 col-lg-8 m-auto">
                <div class="form">
                    <div class="form-group col-sm-12">
                        <input type="text" size="50" class="form-control" placeholder="Masukan Nama" name="name" required>
                    </div>
                    <div class="form-group col-sm-12">
                        <input type="text" class="form-control" placeholder="Masukan Alamat" name="alamat" requried style="width: 100%">
                    </div>
                    <div class="form-group col-sm-12">
                        <input type="email" class="form-control" placeholder="Masukan Email" name="email" requried style="width: 100%">
                    </div>
                    <div class="form-group col-sm-12">
                        <input type="text" class="form-control" placeholder="Masukan Organisasi" name="organisasi" requried style="width: 100%">
                    </div>
                    <div class="form-group col-sm-12">
                        <textarea name="pesan" id="comment" rows="6" class="form-control" placeholder="Masukan Pesan"></textarea>
                    </div>
                    <div class="form-group col-sm-12 mt-3">
                        <input type="submit" name="send" value="Send Message" class="btn btn-outline-primary rounded">
                    </div>
                </div>
            </form><!-- end of contact form -->

            <?php
            error_reporting(0);
            $name = $_POST["name"];
            $alamat = $_POST["alamat"];
            $email = $_POST["email"];
            $organisasi = $_POST["organisasi"];
            $pesan = $_POST["pesan"];

            if (isset($_POST["send"])) {
                mysqli_query($connection, "INSERT INTO tamu (nama, alamat, email, organisasi, pesan) VALUES ('$name', '$alamat', '$email','$organisasi', '$pesan')");
            }

            ?>
            <ul class="list">
                <li class="list-head">
                    <h6 class="font-weight-bold">CONTACT INFO</h6>
                </li>
                <li class="list-body">
                    <p>Contact us and we'll get back to you within 24 hours.</p>
                    <p><i class="ti-loc
                    ation-pin"></i> 12345 Fake ST NoWhere AB Country</p>
                    <p><i class="ti-email"></i> info@website.com</p>
                    <div class="social-links">
                        <a href="javascript:void(0)" class="link"><i class="ti-facebook"></i></a>
                        <a href="javascript:void(0)" class="link"><i class="ti-twitter-alt"></i></a>
                        <a href="javascript:void(0)" class="link"><i class="ti-google"></i></a>
                        <a href="javascript:void(0)" class="link"><i class="ti-pinterest-alt"></i></a>
                        <a href="javascript:void(0)" class="link"><i class="ti-instagram"></i></a>
                        <a href="javascript:void(0)" class="link"><i class="ti-rss"></i></a>
                    </div>
                </li>
            </ul>


        </div><!-- end of container -->
    </section><!-- end of contact section -->


    <!-- core  -->
    <script src="assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="assets/vendors/bootstrap/bootstrap.bundle.js"></script>

    <!-- bootstrap affix -->
    <script src="assets/vendors/bootstrap/bootstrap.affix.js"></script>

    <!-- Creative Studio js -->
    <script src="assets/js/creative-studio.js"></script>

</body>

</html>