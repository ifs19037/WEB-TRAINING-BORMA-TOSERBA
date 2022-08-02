-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 01, 2022 at 03:01 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `training_prama`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `nik_akun` int(11) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nik_karyawan` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`nik_akun`, `password`, `nik_karyawan`, `level`, `created_at`, `updated_at`) VALUES
(11111, 'admin', 0, 1, '2022-06-20 01:28:57', '2022-06-20 01:28:57'),
(12345, '12345', 12345, 2, '2022-07-28 02:34:57', '2022-07-28 02:34:57'),
(22222, 'admin2', 0, 1, '2022-06-20 01:28:57', '2022-06-20 01:28:57'),
(930034, '930034', 930034, 2, '2022-07-27 19:25:59', '2022-07-28 02:48:01'),
(950123, '950123', 950123, 2, '2022-07-27 19:25:59', '2022-07-27 19:25:59'),
(950369, '950369', 950369, 2, '2022-07-27 19:25:59', '2022-07-27 19:25:59'),
(950370, '950370', 950370, 2, '2022-07-27 19:25:59', '2022-07-27 19:25:59'),
(950387, '950387', 950387, 2, '2022-07-27 19:25:59', '2022-07-27 19:25:59'),
(950417, '950417', 950417, 2, '2022-07-27 19:25:59', '2022-07-27 19:25:59'),
(950487, '950487', 950487, 2, '2022-07-27 19:25:59', '2022-07-27 19:25:59'),
(950521, '950521', 950521, 2, '2022-07-27 19:25:59', '2022-07-27 19:25:59'),
(950540, '950540', 950540, 2, '2022-07-27 19:25:59', '2022-07-27 19:25:59');

-- --------------------------------------------------------

--
-- Table structure for table `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `nama_karyawan` varchar(50) NOT NULL,
  `nik_karyawan` int(11) NOT NULL,
  `jenis_kelamin` varchar(20) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `divisi` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `tanggal_masuk` date NOT NULL,
  `email` varchar(50) NOT NULL,
  `no_telepon` bigint(20) NOT NULL,
  `alamat_ktp` varchar(150) NOT NULL,
  `foto_karyawan` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `data_karyawan`
--

INSERT INTO `data_karyawan` (`nama_karyawan`, `nik_karyawan`, `jenis_kelamin`, `jabatan`, `divisi`, `lokasi`, `tanggal_lahir`, `tanggal_masuk`, `email`, `no_telepon`, `alamat_ktp`, `foto_karyawan`, `created_at`, `updated_at`) VALUES
('Rio', 12345, 'laki laki', 'hrd', 'Pemasaran', 'Prama Babakan Sari', '2022-07-28', '2022-07-29', 'rioefraim25@gmail.com', 11111111111, 'Medan', 'user.png', '2022-07-28 02:34:48', '2022-07-28 09:12:52'),
('AI YULIA', 930034, 'PEREMPUAN', 'BUYER', 'Pemasaran', 'BORMA GEMPOL', '1993-03-04', '1993-03-04', 'yuliahafidzulhaq@gmail.com ', 85721206662, 'JL.SOEKARNO HATTA GG.H KOSIM NO. 80/83', '1658975484_Employee gathering 2022.jpeg', '2022-07-27 19:24:46', '2022-07-28 02:32:34'),
('ADI SURYADI', 950123, 'LAKI LAKI', 'TEKNISI', 'SUPPROTING', 'BORMA GEMPOL', '1998-10-18', '2018-02-18', 'adisur1997@gmail.com', 89695310921, 'PERUM BUMI SIMPANG ASRI BLOK R 20 RT 03 RW 07 KEC BAYONGBONG GARUT', 'user.png', '2022-07-27 19:24:46', '2022-07-27 19:24:46'),
('ADE LUFI', 950369, 'LAKI LAKI', 'ADMIN RETUR', 'GUDANG', 'PRAMA GEMPOL', '1996-12-19', '2020-07-01', 'lufiade115@gmail.com', 81223251778, 'KP MELONG NYONTROL RT 04 RW 03 KEL MELONG KEC CIMAHI SELATAN', 'user.png', '2022-07-27 19:24:46', '2022-07-27 19:24:46'),
('AMANDA SULISTIANI', 950370, 'PEREMPUAN', 'KASIR', 'FRONT END', 'PRAMA GEMPOL', '2002-11-05', '2020-07-01', 'amandasulistiani711@gmail.com', 8382128456, 'KOMP PERMANA INDAH RT 05 RW 13 KEL CITEUREUP KEC CIMAHI UTARA', 'user.png', '2022-07-27 19:24:46', '2022-07-27 19:24:46'),
('ADRIAN ERLANGGA SAPUTRA', 950387, 'LAKI LAKI', 'LABELLING', 'GUDANG', 'BORMA GEMPOL', '2002-08-24', '2020-10-16', 'adryanerlangga19@gmail.com', 85798643091, 'KP JATI RT 05 RW 01 KEL NANJUNG KEC MARGAASIH', 'user.png', '2022-07-27 19:24:46', '2022-07-27 19:24:46'),
('ADITIA NURDIANA', 950417, 'PEREMPUAN', 'PRAMUNIAGA', 'FOOD', 'PRAMA GEMPOL', '2000-06-23', '2021-04-25', 'aditanurdiana106@gmail.com', 85603002039, 'KP CIJENGKOL RT 05 RW 03 KEL MUKAPAYUNG KEC CILILIN', 'user.png', '2022-07-27 19:24:46', '2022-07-27 19:24:46'),
('AGUS MUJIANTO', 950487, 'LAKI LAKI', 'PRAMUNIAGA', 'FRONT END', 'PRAMA GEMPOL', '1993-05-04', '2021-09-20', 'agusmujin@gmail.com', 85717422910, 'KP PASIRWARINGIN RT 01 RW 01 KEL WANASARI KEC AGRABINTA', 'user.png', '2022-07-27 19:24:46', '2022-07-27 19:24:46'),
('AFIANI SAFITRI', 950521, 'PEREMPUAN', 'KASIR', 'FRONT END', 'PRAMA GEMPOL', '2000-03-17', '2021-12-27', 'afianisafitri78@gmail.com', 83804237009, 'JL. TERUSAN PASIRKOJA  RT 005 RW 010 KEC. BOJONGLOA KALER', 'user.png', '2022-07-27 19:24:46', '2022-07-27 19:24:46'),
('AAN RIANO', 950540, 'LAKI LAKI', 'PRAMUNIAGA', 'BAZAAR', 'BORMA GEMPOL', '1999-09-20', '2022-03-10', 'jrjjj@gmail.com', 8216342297, 'JL PASANTREN RT 01 RW 07 CIBABAT', 'user.png', '2022-07-27 19:24:46', '2022-07-27 19:24:46');

-- --------------------------------------------------------

--
-- Table structure for table `divisi`
--

CREATE TABLE `divisi` (
  `id_divisi` int(11) NOT NULL,
  `nama_divisi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `divisi`
--

INSERT INTO `divisi` (`id_divisi`, `nama_divisi`) VALUES
(1, 'Kasir'),
(2, 'Pemasaran'),
(3, 'Gudang');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_kuis`
--

CREATE TABLE `hasil_kuis` (
  `id_hasil_kuis` int(11) NOT NULL,
  `nik_akun` int(11) NOT NULL,
  `id_kuis` int(11) NOT NULL,
  `nilai` char(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hasil_kuis`
--

INSERT INTO `hasil_kuis` (`id_hasil_kuis`, `nik_akun`, `id_kuis`, `nilai`, `created_at`, `updated_at`) VALUES
(64, 12345, 2, '25', '2022-07-28 07:34:53', '2022-07-28 07:34:53'),
(67, 12345, 1, '5', '2022-07-29 03:10:09', '2022-07-29 03:16:49');

-- --------------------------------------------------------

--
-- Table structure for table `jabatan`
--

CREATE TABLE `jabatan` (
  `id_jabatan` int(11) NOT NULL,
  `nama_jabatan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatan`
--

INSERT INTO `jabatan` (`id_jabatan`, `nama_jabatan`) VALUES
(1, 'Owner'),
(2, 'manager IT'),
(3, 'hrd'),
(4, 'koordinator gudang'),
(5, 'koordinator pemasaran');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_kuis_isian`
--

CREATE TABLE `jawaban_kuis_isian` (
  `id_jawaban_kuis_isian` int(11) NOT NULL,
  `nik_akun` int(11) NOT NULL,
  `id_mulai_kuis` int(11) NOT NULL,
  `id_kuis` int(11) NOT NULL,
  `id_soal_isian` int(11) NOT NULL,
  `jawaban` varchar(2500) NOT NULL,
  `poin` char(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_kuis_isian`
--

INSERT INTO `jawaban_kuis_isian` (`id_jawaban_kuis_isian`, `nik_akun`, `id_mulai_kuis`, `id_kuis`, `id_soal_isian`, `jawaban`, `poin`, `created_at`, `updated_at`) VALUES
(44, 12345, 106, 1, 34, '<p><a>ada ada ae</a></p>', '0', '2022-07-29 03:10:09', '2022-07-29 03:16:48'),
(45, 12345, 106, 1, 35, '<p><a>gak tahu lah aku</a></p>', '0', '2022-07-29 03:10:09', '2022-07-29 03:16:48'),
(46, 12345, 106, 1, 36, '<p><a>kurang tahu saya</a></p>', '10', '2022-07-29 03:10:09', '2022-07-29 03:16:48');

-- --------------------------------------------------------

--
-- Table structure for table `jawaban_kuis_pilihan_berganda`
--

CREATE TABLE `jawaban_kuis_pilihan_berganda` (
  `id_jawaban_kuis_pilihan_berganda` int(11) NOT NULL,
  `nik_akun` int(11) NOT NULL,
  `id_mulai_kuis` int(11) NOT NULL,
  `id_kuis` int(11) NOT NULL,
  `id_soal_pilihan_berganda` int(11) NOT NULL,
  `jawaban` char(1) NOT NULL,
  `poin` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jawaban_kuis_pilihan_berganda`
--

INSERT INTO `jawaban_kuis_pilihan_berganda` (`id_jawaban_kuis_pilihan_berganda`, `nik_akun`, `id_mulai_kuis`, `id_kuis`, `id_soal_pilihan_berganda`, `jawaban`, `poin`, `created_at`, `updated_at`) VALUES
(173, 12345, 103, 2, 3, 'C', 0, '2022-07-28 07:34:52', '2022-07-28 07:34:52'),
(174, 12345, 103, 2, 5, 'A', 0, '2022-07-28 07:34:52', '2022-07-28 07:34:52'),
(175, 12345, 103, 2, 6, 'C', 1, '2022-07-28 07:34:52', '2022-07-28 07:34:52'),
(176, 12345, 103, 2, 4, 'A', 0, '2022-07-28 07:34:52', '2022-07-28 07:34:52');

-- --------------------------------------------------------

--
-- Table structure for table `kuis`
--

CREATE TABLE `kuis` (
  `id_kuis` int(11) NOT NULL,
  `judul_kuis` varchar(150) NOT NULL,
  `keterangan_singkat` varchar(250) NOT NULL,
  `tipe_kuis` varchar(20) NOT NULL,
  `foto_kuis` varchar(100) NOT NULL,
  `tanggal_kuis` date NOT NULL,
  `durasi_pengerjaan` double NOT NULL,
  `divisi` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kuis`
--

INSERT INTO `kuis` (`id_kuis`, `judul_kuis`, `keterangan_singkat`, `tipe_kuis`, `foto_kuis`, `tanggal_kuis`, `durasi_pengerjaan`, `divisi`, `status`) VALUES
(1, 'Pelayanan yang Baik - Isian', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha', 'isian', 'empty.png', '2022-07-29', 2, 'Pemasaran', 'tampil'),
(2, 'Pelayanan yang Baik - Pilihan Berganda', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', 'pilihan berganda', 'empty.png', '2022-07-28', 0.016666666666667, 'Pemasaran', 'tampil'),
(6, 'Kuis Pelayanan yang baik', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', 'pilihan berganda', '1658923986_folder.png', '2022-07-26', 0.1, 'Gudang', 'tampil'),
(10, 'coba kuis', 'coba\"', 'pilihan berganda', '1658974759_kuis.png', '2022-07-28', 0.5, 'Pemasaran', 'tampil'),
(11, 'Pelayanan yang Baik _ ISIAN 2', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', 'isian', 'empty.png', '2022-07-28', 0.083333333333333, 'Pemasaran', 'tampil');

-- --------------------------------------------------------

--
-- Table structure for table `lokasi`
--

CREATE TABLE `lokasi` (
  `id_lokasi` int(11) NOT NULL,
  `nama_lokasi` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lokasi`
--

INSERT INTO `lokasi` (`id_lokasi`, `nama_lokasi`) VALUES
(1, 'Borma Gempol'),
(2, 'Borma Cijerah'),
(3, 'Prama Babakan Sari');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `judul_materi` varchar(150) NOT NULL,
  `keterangan_singkat` varchar(250) NOT NULL,
  `foto_materi` varchar(100) NOT NULL,
  `divisi` varchar(100) NOT NULL,
  `kode_link_video` varchar(100) NOT NULL,
  `isi_materi` varchar(5000) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `judul_materi`, `keterangan_singkat`, `foto_materi`, `divisi`, `kode_link_video`, `isi_materi`, `status`) VALUES
(1, 'Materi Pemasaran I', 'Penjelasan engenai materi pemasaran', '1658923928_11.jpg', 'Pemasaran', 'UJNQQ3XKszU', '<p style=\"text-align: justify;\"><strong>Pengertian Pemasaran.</strong> Definisi marketing atau pemasaran adalah kegiatan yang dilakukan oleh perusahaan untuk mempromosikan suatu produk atau layanan yang mereka punya. Pemasaran ini mencakup pengiklanan, penjualan, dan pengiriman produk ke konsumen atau perusahaan lain.</p>\r\n<p style=\"text-align: justify;\">Dalam melakukan promosi, mereka akan menargetkan orang-orang yang sesuai dengan produk yang dipasarkan. Biasanya mereka juga melibatkan selebriti, selebgram atau siapapun yang memiliki kepopuleran untuk mendongkrak produk tersebut. Tak hanya itu, dalam pemasaran, bagian yang memiliki tugas ini akan membuat kemasan atau desain yang menarik pada iklan sehingga akan banyak orang yang tertarik. Selain itu, dengan adanya pemasaran juga sangat membantu para konsumen. Jadi mereka akan lebih mudah menemukan produk yang sesuai dengan apa yang mereka butuhkan.</p>\r\n<p style=\"text-align: justify;\">Ketika pemasaran sesuai dengan targetnya, perusahaan akan mendapatkan banyak pembeli dan kefuntungan bisa didapatkan. Fungsi Pemasaran 1. Pengenalan Produk Pengenalan menjadi fungsi utama dari sebuah pemasaran yang dilakukan oleh perusahaan. Dengan adanya pemasaran, produk akan lebih mudah dikenal oleh pelanggan. Pemasar harus menonjolkan keunggulan dari produk yang di pasarkan. Sehingga bisa lebih menarik perhatian dibanding produk pesaing. 2. Riset Riset memungkinkan pemasaruntuk mendapatkan informasi yang tepat mengenai pasar target sebuah produk. Beberapa hal yang biasanya harus diriset adalah kepopuleran, usia, jenis kelamin kebutuhan hingga keinginan dan lain sebagainya. Nantinya produk yang diproduksi bisa disesuaikan dengan apa yang sesuai dengan target pasarnya. 3. Distribusi Dengan distribusi yang baik, akan memastikan bahwa produk dapat mudah dipindahkan dari lokasi produksi ke pasar luas menggunakan jalur darat, air dan laut.</p>\r\n<p style=\"text-align: justify;\">Selain itu juga memastikan bahwa produk dapat dengan mudah didapatkan oleh pelanggan. Sebagai pemasar juga harus merencanakan segala sesuatunya seperti armada, keuangan dalam proses distribusi. 4. Layanan Purnajual Dalam sebuah penjualan, layanan setelah penjualan memang sangat dibutuhkan. Pemasar harus membantu pelanggan setelah mereka membeli produk. Misalnya seperti produk mesin, pelanggan mungkin akan merasa kesulitan ketika menemukan masalah pada mesin yang telah mereka beli. Tugas pemasar, memastikan dan membantu agar mesin itu berjalan dengan semestinya. Jenis-Jenis Pemasaran Branding Produk dan layanan harus memiliki target pasar, dan nama atau &ldquo;merek,&rdquo; untuk dikenal. Branding adalah bentuk pemasaran yang memiliki fungsi sebagai iklan jangka panjang. Ini sangat membantu untuk membuat produk atau layanan menjadi lebih menarik dan terkenal. Branding sering kali menyertakan nama, slogan, dan logo. Iklan Siaran Menggunakan radio sebagai media pemasaran adalah salah satu bentuk iklan berbayar yang paling umum. Pemasaran ke pelanggan sangat potensial ketika menggunakan radio karena pendengar radio benar-benar mendengarkan apa yang diucapkan oleh penyiarnya. Selain itu, juga bisa menggunakan media TV untuk menjangkau pelanggan secara luas. Multi-Level Marketing Pemasaran dengan menggunakan multi-level marketing adalah bentuk penjualan langsung yang melibatkan banyak orang di mana perusahaan merekrut dan menjual produk-produknya. Multi-level marketing juga disebut network marketing karena tenaga penjualan mendapatkan komisi dari produk yang mereka jual serta komisi penjualan dari jaringannya. Internet Atau Online Internet menjadi salah satu media pemasaran yang paling diminati. Hampir semua orang pasti menggunakan internet, sehingga pasarnya sangat luas. Pemasaran dapat dilakukan dalam berbagai cara seperti menggunaan email, website atau iklan. Target pasarnya juga bisa ditentukan karena banyak penyedia jasa iklan yang memiliki fitur ini. Anda bisa juga membaca perbedaan antara penjualan dan pemasaran secara lengkap dengan membacanya melalui artikel ini. Kesimpulan Pemasaran merupakan hal yang penting dalam sebiah bisnis, semakin baik strategi marketing pada bisnis Anda, semakin cepat bisnis Anda berkembang. Namun jangan lupakan tentang pembukuan, karena pembukuan adalah salah satu komponen penting dalam berjalannya sebuah bisnis. Jika strategi marketing Anda bagus tanpa dibarengi pembukuan yang terstruktur maka bisnis Anda akan berantakan. Untuk melakukan proses pembukuan yang baik dibutuhkan pencatatan transaksi yang teratur agar menghasilkan laporan keuangan yang bisa dipertanggungjawabkan.</p>', 'tampil'),
(5, 'Pelayanan yang Baik Gudang', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', 'empty.png', 'Gudang', 'UJNQQ3XKszU', 'asdsdad', 'tampil'),
(14, 'Materi Kasir II', 'Kasir', '1658923855_db.PNG', 'Kasir', 'MDnDd2BpClQ', '<p>Ini Materi Kasir 2</p>', 'tampil'),
(15, 'Materi Kasir I', 'Kasir', '1658923818_folder1.png', 'Kasir', 'MDnDd2BpClQ', '<p>Ini Materi Kasir</p>', 'tampil'),
(16, 'Pelayanan yang Baik II', 'Pelayanan', '1658923893_3.jpg', 'Kasir', 'MDnDd2BpClQ', '<p>Ini pelayanan baik 2</p>', 'tampil'),
(17, 'Materi Gudang II', 'Materi', '1658923771_folder.png', 'Gudang', 'MDnDd2BpClQ', '<p>Ini Materi Gudang 2</p>', 'tampil'),
(18, 'Materi Gudang I', 'Materi', '1658923701_kuis.png', 'Gudang', 'MDnDd2BpClQ', '<p>Ini materi Gudang</p>', 'tampil'),
(19, 'Pelayanan yang Baik I', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', '1658887456_materi.png', 'Pemasaran', 'OsGCEkYU59E', '<p>coba\"</p>', 'tampil'),
(20, 'Pelayanan yang Baik', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', '1658974658_materi.png', 'Pemasaran', 'QmvBeY4TO1w', '<p>coba latihan</p>', 'sembunyi');

-- --------------------------------------------------------

--
-- Table structure for table `mulai_kuis`
--

CREATE TABLE `mulai_kuis` (
  `id_mulai_kuis` int(11) NOT NULL,
  `nik_akun` int(11) NOT NULL,
  `id_kuis` int(11) NOT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mulai_kuis`
--

INSERT INTO `mulai_kuis` (`id_mulai_kuis`, `nik_akun`, `id_kuis`, `waktu_mulai`, `waktu_selesai`) VALUES
(103, 12345, 2, '2022-07-28 14:34:38', '2022-07-28 14:35:38'),
(106, 12345, 1, '2022-07-29 10:07:43', '2022-07-29 12:07:43');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `judul_pengumuman` varchar(150) NOT NULL,
  `keterangan_singkat` varchar(250) NOT NULL,
  `foto_pengumuman` varchar(100) NOT NULL,
  `isi_pengumuman` varchar(5000) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul_pengumuman`, `keterangan_singkat`, `foto_pengumuman`, `isi_pengumuman`, `created_at`, `updated_at`) VALUES
(3, 'Employee Gathering 2022', 'Employee gathering 2022 dilaksanakan di Taman Wisata Grafika Cikole pada 21 & 23 Juni 2022', '1656574547_Employee gathering 2022.jpeg', 'Acara dilakukan untuk mempererat ikatan kekeluargaan untuk sesama karyawan dengan melakukan berbagai kegiatan menarik.', '2022-06-30 07:35:49', '2022-06-30 07:35:49'),
(5, 'besok liburr', 'libur istirahat', '1658975301_pengumuman.png', '<p>liburrr......</p>', '2022-07-28 02:28:21', '2022-07-28 02:28:21');

-- --------------------------------------------------------

--
-- Table structure for table `soal_isian`
--

CREATE TABLE `soal_isian` (
  `id_soal_isian` int(11) NOT NULL,
  `soal_isian` varchar(3000) NOT NULL,
  `bobot_nilai` int(11) NOT NULL,
  `id_kuis` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_isian`
--

INSERT INTO `soal_isian` (`id_soal_isian`, `soal_isian`, `bobot_nilai`, `id_kuis`, `created_at`, `updated_at`) VALUES
(34, '<p>Proses pelatihan dan pengembangan karyawan adalah tahap pelatihan yang terdiri dari ...</p>', 20, 1, '2022-06-23 03:55:18', '2022-07-29 02:14:01'),
(35, '<p>Salah satu proses pelatihan dan pengembangan karyawan adalah tahap pelatihan yang terdiri dari ...</p>', 30, 1, '2022-06-23 03:55:18', '2022-07-29 02:56:03'),
(36, '<p>Salah proses pelatihan dan pengembangan karyawan adalah tahap pelatihan yang terdiri dari ...</p>', 50, 1, '2022-06-23 03:55:18', '2022-07-29 02:13:45'),
(38, '<p>adad</p>', 0, 7, '2022-07-21 09:24:09', '2022-07-21 09:24:09'),
(39, '<p>dadada</p>', 0, 7, '2022-07-21 09:24:15', '2022-07-21 09:24:15'),
(40, '<p>apakah makanan itu?</p>', 0, 11, '2022-07-28 07:14:57', '2022-07-28 07:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `soal_pilihan_berganda`
--

CREATE TABLE `soal_pilihan_berganda` (
  `id_soal_pilihan_berganda` int(11) NOT NULL,
  `soal_pilihan_berganda` varchar(3000) NOT NULL,
  `pilihan_a` varchar(250) NOT NULL,
  `pilihan_b` varchar(250) NOT NULL,
  `pilihan_c` varchar(250) NOT NULL,
  `pilihan_d` varchar(250) NOT NULL,
  `pilihan_e` varchar(250) NOT NULL,
  `jawaban_soal_pilihan_berganda` char(1) NOT NULL,
  `id_kuis` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `soal_pilihan_berganda`
--

INSERT INTO `soal_pilihan_berganda` (`id_soal_pilihan_berganda`, `soal_pilihan_berganda`, `pilihan_a`, `pilihan_b`, `pilihan_c`, `pilihan_d`, `pilihan_e`, `jawaban_soal_pilihan_berganda`, `id_kuis`, `created_at`, `updated_at`) VALUES
(3, 'Apabila ketersediaan tenaga kerja lebih besar daripada kebutuhan, maka perlu dilakukan tindakan ...\n', 'Model Simulasi', 'Volume Penjualan', 'Pendekatan Bawah-atas', 'Peramalan Basis Nol', 'Tidak ada', 'A', 2, '2022-06-23 04:09:44', '2022-06-23 04:09:44'),
(4, 'Jika ketersediaan tenaga kerja lebih besar daripada kebutuhan, maka perlu dilakukan tindakan ...\r\n', 'Pengangkatan karyawan baru', 'Penambahan jam kerja', 'Pensiun dini', 'Semua jawabn benar', 'Semua jawaban salah', 'B', 2, '2022-06-23 04:09:44', '2022-07-18 01:57:50'),
(5, 'Salah proses pelatihan dan pengembangan karyawan adalah tahap pelatihan yang terdiri dari ...\n', 'Analisis', 'Menrancang pelatihan', 'Mengukur hasil', 'Pengembangan tujuan', 'Tidak ada', 'E', 2, '2022-06-23 04:09:44', '2022-06-23 04:09:44'),
(6, '<p>aaa</p>', 'a', 'a', 'a', 'a', 'a', 'C', 2, '2022-07-19 15:36:15', '2022-07-19 15:50:25'),
(7, '<p>hkbj</p>', 'a', 'b', 'c', 'd', 'e', 'C', 6, '2022-07-19 15:46:35', '2022-07-19 15:49:29'),
(8, '<p>Apakah itu kasir?</p>', 'duit', 'barang', 'pelayanan', 'tidak ada', 'santai', 'C', 8, '2022-07-22 13:55:08', '2022-07-22 13:55:08'),
(9, '<p>asda</p>', 'a', 'ca', 'a', 'acas', 'dsa', 'D', 8, '2022-07-22 14:13:43', '2022-07-22 14:13:43'),
(10, '<p style=\"text-align: center;\"><span style=\"text-decoration: underline;\"><strong><em>adfaf</em></strong></span></p>', 'duit', 'barang', 'c', 'd', 'dsa', 'B', 8, '2022-07-22 14:14:11', '2022-07-22 14:14:28'),
(11, 'Apabila ketersediaan tenaga kerja lebih besar daripada kebutuhan, maka perlu dilakukan tindakan ...\n', 'Model Simulasi', 'Volume Penjualan', 'Pendekatan Bawah-atas', 'Peramalan Basis Nol', 'Tidak ada', 'A', 10, '2022-07-27 19:21:10', '2022-07-27 19:21:10'),
(12, 'Apabila ketersediaan tenaga kerja lebih besar daripada kebutuhan, maka perlu dilakukan tindakan ...\n', 'Pengangkatan karyawan baru', 'Penambahan jam kerja', 'Pensiun dini', 'Semua jawabn benar', 'Semua jawaban salah', 'B', 10, '2022-07-27 19:21:10', '2022-07-27 19:21:10'),
(13, '<p>Salah proses pelatihan dan pengembangan karyawan adalah tahap pelatihan yang terdiri dari ...</p>', 'ANALYSIS', 'Menrancang pelatihan', 'Mengukur hasil', 'Pengembangan tujuan', 'Tidak ada', 'E', 10, '2022-07-27 19:21:10', '2022-07-28 02:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `sop`
--

CREATE TABLE `sop` (
  `id_sop` int(11) NOT NULL,
  `judul_sop` varchar(150) NOT NULL,
  `keterangan_singkat` varchar(250) NOT NULL,
  `foto_sop` varchar(100) NOT NULL,
  `file_sop` varchar(100) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sop`
--

INSERT INTO `sop` (`id_sop`, `judul_sop`, `keterangan_singkat`, `foto_sop`, `file_sop`, `status`) VALUES
(1, 'Pelayanan yang Baik II', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', '1658924077_image 3.png', '1655883248_admin,+Muafi_semnasUII2017_Muafi_NO.Tema.pdf', 'tampil'),
(4, 'Pelayanan yang Baik', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', '1658924062_folder.png', '1655886244_admin,+Muafi_semnasUII2017_Muafi_NO.Tema.pdf', 'tampil'),
(5, 'Pelayanan yang Baik Edan', 'SOP Pelayanan', '1658924049_folder1.png', '1655888321_applied_cryptography_[11S19017_11S19020_11S18021_11S19037_11S19043_11S19045].pdf', 'tampil'),
(6, 'Pelayanan yang Baik', 'Bagi pelanggan, pelayanan yang baik merupakan suatu nilai unggul dalam usaha.', '1658974953_materi.png', '1658974953_Rep-KP-22-216A.docx.pdf', 'sembunyi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`nik_akun`);

--
-- Indexes for table `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`nik_karyawan`);

--
-- Indexes for table `divisi`
--
ALTER TABLE `divisi`
  ADD PRIMARY KEY (`id_divisi`);

--
-- Indexes for table `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  ADD PRIMARY KEY (`id_hasil_kuis`);

--
-- Indexes for table `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `jawaban_kuis_isian`
--
ALTER TABLE `jawaban_kuis_isian`
  ADD PRIMARY KEY (`id_jawaban_kuis_isian`);

--
-- Indexes for table `jawaban_kuis_pilihan_berganda`
--
ALTER TABLE `jawaban_kuis_pilihan_berganda`
  ADD PRIMARY KEY (`id_jawaban_kuis_pilihan_berganda`);

--
-- Indexes for table `kuis`
--
ALTER TABLE `kuis`
  ADD PRIMARY KEY (`id_kuis`);

--
-- Indexes for table `lokasi`
--
ALTER TABLE `lokasi`
  ADD PRIMARY KEY (`id_lokasi`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

--
-- Indexes for table `mulai_kuis`
--
ALTER TABLE `mulai_kuis`
  ADD PRIMARY KEY (`id_mulai_kuis`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `soal_isian`
--
ALTER TABLE `soal_isian`
  ADD PRIMARY KEY (`id_soal_isian`);

--
-- Indexes for table `soal_pilihan_berganda`
--
ALTER TABLE `soal_pilihan_berganda`
  ADD PRIMARY KEY (`id_soal_pilihan_berganda`);

--
-- Indexes for table `sop`
--
ALTER TABLE `sop`
  ADD PRIMARY KEY (`id_sop`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `divisi`
--
ALTER TABLE `divisi`
  MODIFY `id_divisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hasil_kuis`
--
ALTER TABLE `hasil_kuis`
  MODIFY `id_hasil_kuis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `id_jabatan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jawaban_kuis_isian`
--
ALTER TABLE `jawaban_kuis_isian`
  MODIFY `id_jawaban_kuis_isian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `jawaban_kuis_pilihan_berganda`
--
ALTER TABLE `jawaban_kuis_pilihan_berganda`
  MODIFY `id_jawaban_kuis_pilihan_berganda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `kuis`
--
ALTER TABLE `kuis`
  MODIFY `id_kuis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `lokasi`
--
ALTER TABLE `lokasi`
  MODIFY `id_lokasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id_materi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `mulai_kuis`
--
ALTER TABLE `mulai_kuis`
  MODIFY `id_mulai_kuis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `soal_isian`
--
ALTER TABLE `soal_isian`
  MODIFY `id_soal_isian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `soal_pilihan_berganda`
--
ALTER TABLE `soal_pilihan_berganda`
  MODIFY `id_soal_pilihan_berganda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sop`
--
ALTER TABLE `sop`
  MODIFY `id_sop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
