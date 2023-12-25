-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Des 2023 pada 08.08
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpw192_18410100054`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bom_produk`
--

CREATE TABLE `bom_produk` (
  `kode_bom` varchar(100) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `kebutuhan` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `bom_produk`
--

INSERT INTO `bom_produk` (`kode_bom`, `kode_bk`, `kode_produk`, `nama_produk`, `kebutuhan`) VALUES
('B0001', 'M0002', 'P0001', 'Roti Sobek', '2'),
('B0001', 'M0001', 'P0001', 'Roti Sobek', '4'),
('B0001', 'M0004', 'P0001', 'Roti Sobek', '3'),
('B0002', 'M0001', 'P0002', 'Maryam', '4'),
('B0002', 'M0004', 'P0002', 'Maryam', '3'),
('B0002', 'M0003', 'P0002', 'Maryam', '2'),
('B0003', 'M0002', 'P0003', 'Kue tart coklat', '2'),
('B0003', 'M0003', 'P0003', 'Kue tart coklat', '5'),
('B0003', 'M0005', 'P0003', 'Kue tart coklat', '5');

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0002', 'Rafi Akbar', 'a.rafy@gmail.com', 'rafi', '$2y$10$/UjGYbisTPJhr8MgmT37qOXo1o/HJn3dhafPoSYbOlSN1E7olHIb.', '0856748564'),
('C0003', 'Nagita Silvana', 'bambang@gmail.com', 'Nagita', '$2y$10$47./qEeA/y3rNx3UkoKmkuxoAtmz4ebHSR0t0Bc.cFEEg7cK34M3C', '087804616097'),
('C0004', 'Nadiya', 'nadiya@gmail.com', 'nadiya', '$2y$10$6wHH.7rF1q3JtzKgAhNFy.4URchgJC8R.POT1osTAWmasDXTTO7ZG', '0898765432');

-- --------------------------------------------------------

--
-- Struktur dari tabel `inventory`
--

CREATE TABLE `inventory` (
  `kode_bk` varchar(100) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `satuan` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `inventory`
--

INSERT INTO `inventory` (`kode_bk`, `nama`, `qty`, `satuan`, `harga`, `tanggal`) VALUES
('M0001', 'Tepung', '76', 'Kg', 1000, '2020-07-26'),
('M0002', 'Pengembang', '0', 'Kg', 1000, '2020-07-27'),
('M0003', 'Cream', '17', 'Kg', 3000, '2020-07-26'),
('M0004', 'Keju', '82', 'Kg', 4000, '2020-07-26'),
('M0005', 'Coklat', '0', 'Kg', 5000, '2020-07-27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `keranjang`
--

INSERT INTO `keranjang` (`id_keranjang`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`) VALUES
(16, 'C0003', 'P0002', 'Maryam', 5, 15000),
(17, 'C0003', 'P0003', 'Kue tart coklat', 2, 100000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `deskripsi` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `image`, `deskripsi`, `harga`) VALUES
('P0001', 'Buku Dasar-Dasar Teknik Informatika', 'Dasar-dasar-Teknik-Informatika.jpg', 'Perkembangan di bidang TIK (Teknologi Informasi dan Komunikasi) saat ini sangat pesat dan berpengaruh signifikan  terhadap pribadi maupun komunitas, segala aktivitas, kehidupan, cara kerja, metode perkuliahan, gaya hidup maupun cara berpikir. Adapun jenis-jenis TIK yang kita kenal selama ini adalah radio; televisi; telepon (fixed dan mobile); faksimile; electronic recording (audio dan video); komputer dengan segala peripherals seperti software, hardware, dan useware (program atau isi informasi); dan jaringan (lokal, wilayah, dan global/internet).\n\nTeknologi informasi merupakan suatu teknologi yang digunakan untuk mengolah data, termasuk memproses, mendapatkan, menyusun, menyimpan, memanipulasi data dalam berbagai cara untuk menghasilkan informasi yang berkualitas, yaitu informasi yang relevan, akurat, dan tepat waktu. Teknologi ini menggunakan seperangkat komputer untuk mengolah data dan sistem jaringan untuk menghubungkan satu komputer dengan komputer yang lainnya sesuai dengan kebutuhan dan teknologi telekomunikasi digunakan agar data dapat disebar dan diakses secara global. Perkembangan kinerja komputer diukur dengan kecepatan kerjanya. Walau demikian, ternyata kinerja komputer berbanding terbalik dengan ukurannya. Awalnya satu unit komputer harus berukuran satu rumah, sekarang menjadi semakin kecil. Perkembangan itu juga diiringi dengan perkembangan internet atau interconnected networks sebagai media penyampai informasi yang sangat efektif. TIK telah menjadi simbol gelombang perubahan. Perkembangan teknologi informasi memacu untuk memasuki era baru dalam kehidupan. Kehidupan seperti ini dikenal dengan e-life (electronic life), artinya kehidupan ini sudah dipengaruhi', 86000),
('P0002', 'Buku Pengantar Teknologi Informasi – Teknik Informatika', 'Pengantar-Teknologi-Informasi.jpg', 'Sejak jaman nenek moyang dahulu proses pengolahan data telah dilakukan, dengan mempergunakan perangkat sangat sederhana sampai selanjutnya ditemukanlah alat-alat mekanis dan elektronis untuk membantu melakukan perhitungan serta pengolahan data agar di peroleh hasil lebih cepat, tepat, tidak mengenal lelah dan dapat menyimpan data yang di olahnya di kenal dengan komputer. Tetapi terdapat kelemahan pemanpaatan komputer ini contohnya perlu operator sebagai pengelolanya, harus memiliki pemahaman yang baik terhadap bahasa pemrograman, peka terhadap perubahan daya (listrik), membutuhkan perawatan khusus dan sebagainya.\n\nPengatar Teknologi Informasi ini merupakan mata kuliah yang biasanya di adakan di tahun-tahun awal perkuliahan pada jurusan yang ada hubungannya tengan elektronika, komputer, informatika, sistem informasi kesehatan, teknologi informasi dan lain-lain, Pengantar Teknologi Informasi ini hampir bisa di katakana sebagai Mata Kuliah Pembuka untuk mata kuliah yang lain, seperti: Organisasi Komputer, Arsitektur Komputer, Maintenance, Sistem operasi, Keamanan, Internet, jaringan dan lain-lain sehingga bagi penulis merupakan tantangan yang luar biasa, karena buku referensi ini harus jadi jalan awal untuk memahami Mata Kuliah selanjutnya.\n\nIde penulisan buku ini sebenarnya sudah ada sejak penulis menempuh kuliah strata 1 (S1) sehingga salah satu literature (bahan bacaan) penulis merupakan rangkuman kuliah, yang terus di sempurnakan menjadi bahan ajar (modul, power point), artikel, dan jurnal pada saat penulis mengajar, dan di sempurnakan lagi menjadi buku ini. Penulis berpendapat dengan panjangnya masa penulisan, dan terus menerus mengalami perbaikan, di yakini akan mampu mengawali (deskripsi awal) untuk Mata Kuliah selanjutnya', 203000),
('P0003', 'Metode Penelitian Teknik Informatika', 'Metode-Penelitian-Teknik-Informatika.jpg', 'Buku yang berjudul Metode Penelitian Teknik Informatika ini membahas seputar penelitian dengan sudut pandang Islam dan global, disusun dengan sistematika yang runtut dan pembahasan yang sarat dengan ilmu. Harapannya buku ini dapat membantu dan memudahkan pembaca dalam mengaplikasikan metode penelitian dengan baik. Secara garis besar buku ini berisi tentang penelitian menurut Islam, metode penelitian dan filsafat ilmu, konsep dasar penelitian, metodologi penelitian kajian teknologi informasi, identifikasi masalah dan hipotesis, paradigma metodologi penelitian teknik informatika, bentuk proposal PKL, tugas akhir dan skripsi, serta sidang tugas akhir dan skripsi/pendadaran. Di samping itu buku ini juga disertai dengan materi pedoman umum dan form pendukung dalam melakukan penelitian, semoga dapat menjadi referensi yang bermanfaat dalam menyusun hasil-hasil pemikiran yang baru ke depannya.\n\nPada saat ini penelitian sangat banyak dilakukan oleh lembaga pendidikan, lembaga pemerintah ataupun lembaga lainnya. Penelitian terebut dilakkan untuk mencari suatu jawaban dari sebuah permasalahan yang terjadi saat itu. Hasil dari penelitian tersebut dapat berupa karya ilmiah yang disajikan berbagai bentuk. Bentuk dari karya ilmiah tersebut dapat berupa makalah, buku-buku ilmiah, laporan penelitian atau karya dalam bentuk lain yang dipublikasikan.\n\nMetodologi merupakan suatu pendekatan formal yang memerlukan langkah-langkah yang sistematis. Salah satu langkah dalam pembuatan metodologi penelitian adalah penetapan masalah dan menyimpulkan hipotesis.\n\nPenelitian biasanya dilakukan untuk menjawab pertanyaan yang belum dapat dijawab oleh seorang peneliti. Untuk melihat dengan jelas tujuan dan sasaran penelitian, maka perlu dilakukan identifikasi masalah. Masalah penelitian dipilih berdasarkan beberapa pertimbangan antara lain dilihat dari sisi waktu, biaya, kemampuan si peneliti maupun kontribusi yang akan diberikan oleh penelitian tersebut bagi pengembangan ilmu pengetahuan dan teknologi', 91500),
('P004', 'Buku Ajar Komputer Cerdas untuk Mahasiswa Teknik Informatika', 'Komputer-Cerdas.jpg', 'program studi Teknik Informatika di UNISLA semester 5. Mata kuliah kecerdasan buatan merupakan mata kuliah yang menganjarkan komputer menjadi cerdas. Komputer dapat melakukan pekerjaan yang menyerupai pekerjaan manusia, sehingga dapat membantu aktivitas manusia. Komputer tidak dapat menggantikan keahlian atau kepakaran manusia, akan tetapi membantu agar lebih efisien dan efektif.\r\n\r\nPersoalan-persoalan yang mula-mula ditangani oleh kecerdasan buatan adalah pembuktian teorema dan permainan (game). Seorang periset kecerdasan buatan yang bernama Samuel menuliskan program permainan catur yang tidak hanya sekedar bermain catur, namun program tersebut juga dibuat agar dapat menggunakan pengalamannya untuk meningkatkan kemampuannya. Sementara itu, Newell, seorang ahli teori logika berusaha membuktikan teorema-teorema matematika. Makin pesatnya perkembangan teknologi menyebabkan adanya perkembangan dan perluasan lingkup yang membutuhkan kehadiran kecerdasan buatan.\r\n\r\nKarakteristik cerdas sudah mulai dibutuhkan di berbagai disiplin ilmu dan teknologi. Kecerdasan buatan tidak hanya merambah di berbagai disiplin ilmu yang lain. Irisan antara psikologi dan kecerdasan buatan melahirkan sebuah area yang dikenal dengan nama cognition dan pscycolinguistics. Irisan antara teknik elektro dengan kecerdasan buatan melahirkan berbagai ilmu seperti: pengolahan citra, teori kendali, pengenalan pola dan robotika. Dewasa ini, kecerdasan buatan juga memberikan kontribusi yang cukup besar di bidang manajemen. Adanya sistem pendukung keputusan, dan sistem informasi manajemen juga tidak lepas dari andil kecerdasan buatan.\r\n\r\nAdanya irisan penggunaan kecerdasan buatan di berbagai disiplin ilmu tersebut menyebabkan cukup rumitnya untuk mengklasifikasi kecerdasan buatan menurut disiplin ilmu yang menggunakannya. Untuk memudahkan hal tersebut, maka pengklasifikasian lingkup kecerdasan buatan didasarkan pada output yang diberikan yaitu pada aplikasi komersial (meskipun sebenarnya kecerdasan buatan itu bukan merupakan medan komersial). Seiring dengan perkembangan teknologi, muncul beberapa teknologi yang juga bertujuan untuk membuat agar komputer menjadi cerdas sehingga dapat menirukan kerja manusia sehari-hari.', 133000),
('P005', 'Teknik Pengolahan Audio & Video Kompetensi Keahlian Multimedia', 'Teknik-Pengolahan-Audio-Video.jpg\r\n', 'Perkembangan teknologi informasi dan komunikasi saat ini dapat digunakan untuk proses pembelajaran sehingga akan tercapai tujuan dari pembelajaran. Pembelajaran yang berbasis teknologi informasi dan komunikasi melalui teks, video, audio dan internet yang mendukung perluasan dan pencapaian informasi yang tidak terbatas, maka sesuai dengan konsep pembelajaran saintifik sehingga diharapkan siswa dapat melakukan proses pembelajaran yang aktif, kreatif, dinamis, jujur dan toleran serta dapat menghayati dan mengamalkan ajaran agama masing-masing.\r\n\r\nPembelajaran saat ini yang menggunakan kurikulum 2013 yang disempurnakan lebih menekankan kompetensi inti yang utuh, proses pembelajaran ini dimulai dari kompetensi pengetahuan, dilanjutkan dengan kompetensi keterampilan, dan akhirnya pada pembentukan sikap yang jujur, kreatif, aktif, teliti, gotong royong, disiplin, berintegritas, dan religius', 117000),
('P006', 'Buku Pengantar Teknologi Informatika Dan Komunikasi Data', 'Pengantar-Teknologi-Informatika-dan-Komunikasi.jpg', 'Buku ajar ini disusun dan dibuat berdasarkan pengalaman penulis selama memberikan mata kuliah yang berkaitan dengan teknologi informasi di tempat penulis mengajar. Materi pembelajaran ini dimulai dari bagaimana manusia menyampaikan informasi kepada orang lain menggunakan teknologi dari teknologi yang sangat sederhana yang mereka ciptakan atau sepakati bersama sesuai abad dimana mereka berada sampai dengan teknologi seperti yang kita kenal sekarang ini dimana teknologi informasi saat ini tidak bisa lepas dari perkembangan komputer dan teknologi komunikasi.\r\n\r\nBuku ini juga menyajikan beberapa konsep atau materi lain  yang berkaitan dengan teknologi informasi dan komunikasi dan perangkat kerasnya serta memperkenalkan peserta didik pada berbagai jenis bilangan sebagai dasar-dasar pengenalan kepada konsep digital. Buku ajar ini dimaksudkan sebagai pengantar bagi peserta didik Sekolah Tinggi Ilmu Pelayaran dan pengantar bagi siapa saja yang berminat mengetahui tentang teknologi informasi. Oleh karena itu beberapa contoh dan latihan yang ada pada buku ajar ini sebagian diambil dari dunia pelayaran dan kepelabuhanan.\r\n\r\nWalaupun dalam buku ini tidak dibahas aplikasi perangkat lunak pengolah kata dan perangkat lunak pengolah angka, namun beberapa tugas latihan diberikan menggunakan software pengolah kata dan beberapa tugas menggunakan perangkat lunak pengolah angka sebagai tugas praktik di laboratorium. Dosen/pengajar diminta untuk memberikan pengetahuan terlebih dahulu sebelum memberikan tugas tersebut', 158000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `provinsi`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(8, 'INV0001', 'C0002', 'P0003', 'Kue tart coklat', 1, 100000, 'Pesanan Baru', '2020-07-27', 'Jawa Timur', 'Surabaya', 'Jl.Tanah Merah Indah 1', '60129', '2', '1', 1),
(9, 'INV0002', 'C0002', 'P0001', 'Roti Sobek', 3, 10000, 'Pesanan Baru', '2020-07-27', 'Jawa Barat', 'Bandung', 'Jl.Jati Nangor Blok C, 10', '30712', '0', '0', 1),
(10, 'INV0003', 'C0003', 'P0002', 'Maryam', 2, 15000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(11, 'INV0003', 'C0003', 'P0003', 'Kue tart coklat', 1, 100000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(12, 'INV0003', 'C0003', 'P0001', 'Roti Sobek', 1, 10000, '0', '2020-07-27', 'Jawa Tengah', 'Yogyakarta', 'Jl.Malioboro, Blok A 10D', '30123', '1', '0', 0),
(13, 'INV0004', 'C0004', 'P0002', 'Maryam', 1, 15000, 'Pesanan Baru', '2020-07-26', 'Jawa Timur', 'Sidoarjo', 'Jl.KH Syukur Blok C 18 A', '50987', '0', '0', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_cancel`
--

CREATE TABLE `report_cancel` (
  `id_report_cancel` int(11) NOT NULL,
  `id_order` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_inventory`
--

CREATE TABLE `report_inventory` (
  `id_report_inv` int(11) NOT NULL,
  `kode_bk` varchar(100) NOT NULL,
  `nama_bahanbaku` varchar(100) NOT NULL,
  `jml_stok_bk` int(11) NOT NULL,
  `tanggal` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_omset`
--

CREATE TABLE `report_omset` (
  `id_report_omset` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_omset` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report _penjualan`
--

CREATE TABLE `report _penjualan` (
  `id_report_sell` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_produksi`
--

CREATE TABLE `report_produksi` (
  `id_report_prd` int(11) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `report_profit`
--

CREATE TABLE `report_profit` (
  `id_report_profit` int(11) NOT NULL,
  `kode_bom` varchar(100) NOT NULL,
  `invoice` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `jumlah` varchar(11) NOT NULL,
  `total_profit` varchar(11) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indeks untuk tabel `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`kode_bk`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indeks untuk tabel `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- Indeks untuk tabel `report_cancel`
--
ALTER TABLE `report_cancel`
  ADD PRIMARY KEY (`id_report_cancel`);

--
-- Indeks untuk tabel `report_inventory`
--
ALTER TABLE `report_inventory`
  ADD PRIMARY KEY (`id_report_inv`);

--
-- Indeks untuk tabel `report_omset`
--
ALTER TABLE `report_omset`
  ADD PRIMARY KEY (`id_report_omset`);

--
-- Indeks untuk tabel `report _penjualan`
--
ALTER TABLE `report _penjualan`
  ADD PRIMARY KEY (`id_report_sell`);

--
-- Indeks untuk tabel `report_produksi`
--
ALTER TABLE `report_produksi`
  ADD PRIMARY KEY (`id_report_prd`);

--
-- Indeks untuk tabel `report_profit`
--
ALTER TABLE `report_profit`
  ADD PRIMARY KEY (`id_report_profit`),
  ADD UNIQUE KEY `kode_bom` (`kode_bom`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `report_cancel`
--
ALTER TABLE `report_cancel`
  MODIFY `id_report_cancel` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_inventory`
--
ALTER TABLE `report_inventory`
  MODIFY `id_report_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_omset`
--
ALTER TABLE `report_omset`
  MODIFY `id_report_omset` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report _penjualan`
--
ALTER TABLE `report _penjualan`
  MODIFY `id_report_sell` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_produksi`
--
ALTER TABLE `report_produksi`
  MODIFY `id_report_prd` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `report_profit`
--
ALTER TABLE `report_profit`
  MODIFY `id_report_profit` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
