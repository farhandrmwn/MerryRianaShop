-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 13, 2020 at 08:08 AM
-- Server version: 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mrshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `barangs`
--

CREATE TABLE `barangs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `keterangan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barangs`
--

INSERT INTO `barangs` (`id`, `nama_barang`, `harga`, `stok`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(2, 'Hoodie IMPOSSIBLE BLACK', 230000, 98, 'MAU TAMPIL BEDA DAN KEKINIAN DI TAHUN 2020?\r\nIni dia! Koleksi fashion terbaru by Merry Riana : HOODIE I\'M POSSIBLE\r\n\r\nJaket HOODIE I\'M POSSIBLE merupakan Official Brand by Miss Merry Riana. Tersedia 6 varian warna terfavorit yang bisa kamu pilih sesuai karakter kamu.\r\n\r\n* BAHAN BERKUALITAS\r\nMenggunakan bahan dasar FLEECE yang berkualitas (tebal, adem, halus) serta dengan jahitan yang rapi.\r\n* MODEL HITS & KEKINIAN\r\nHoodie unisex yang bisa dipakai cowok/cewek atau bisa juga couple dengan pasangan kamu.\r\n\r\nDengan desain yang casual, Hoodie ini cocok banget kamu pakai untuk aktivitas sehari-hari, ke mall, acara santai, jalan-jalan, atau perjalanan ke luar kota.\r\n\r\nPS. HOODIE I\'M POSSIBLE ini LIMITED EDITION (hanya diproduksi satu kali seumur hidup)\r\n\r\nUntuk itu, segera miliki HOODIE I\'M POSSIBLE sekarang juga :)', 'Hoodie.jpeg', '2020-08-10 16:58:00', '2020-08-11 23:41:47'),
(3, 'Merry Riana For Kids 1 dan 2', 215000, 100, 'Dear Parents,\r\nPasti mau kan, anak punya kebiasaan positif gemar baca buku?\r\n\r\nGa gampang memang, tapi bisa kok. Kuncinya berikan bacaan yang menarik dan didesain khusus untuk anak-anak.\r\n\r\nBukan kebetulan, Miss Merry Riana punya buku yang pasti disukai anak-anak yaitu MERRY RIANA FOR KIDS?\r\n\r\nPastinya isinya positif, inspiratif, dan eye catching sehingga ga bikin anak bosan baca buku.\r\n\r\nTersedia dalam 2 serial nih, yaitu :\r\n- MERRY RIANA FOR KIDS 1\r\n- MERRY RIANA FOR KIDS 2\r\nOrder sekarang yuk biar ga kehabisan. :)', 'forkids.jpg', '2020-08-10 17:05:00', '2020-08-10 17:05:00'),
(4, 'DreamPlanner Merry Riana Special Limited Edition', 250000, 95, '“Arahkanlah pandanganmu kepada Tuhan, dan Dia akan memberimu jalan. Tidak semuanya sekaligus, tetapi selangkah demi selangkah. Dan setiap langkah adalah mukjizat.”\r\n\r\nFormula sukses Merry Riana adalah: Vision–Action–Passion. Berbeda dengan buku pertama Mimpi Sejuta Dolar yang mengisahkan tentang Vision (Mimpi), buku sekuel Langkah Sejuta Suluh ini berfokus pada Action (Langkah).\r\n\r\nBertujuan membayar utang-utangnya dan mencapai mimpinya untuk meraih kebebasan finansial, setelah lulus Merry mengambil sebuah keputusan ekstrem untuk menjadi seorang entrepreneur.\r\n\r\nMerry memimpin sekelompok pemuda-pemudi yang mulanya bukan siapa-siapa, yang berangkat dari nol, dan yang mengalami kejatuhan berulang-ulang, sebelum kemudian menjadi tim tangguh yang memecahkan rekor industri.\r\n\r\nBuku ini membeberkan kisah yang seru dan mendebarkan; penuh ketegangan dan tikungan-tikungan terjal. Tentang sekelompok anak muda yang mulanya disepelekan, namun selalu bertekad tidak mau kalah, sampai pada akhirnya berhasil membuktikan bahwa mereka layak menjadi juara.\r\n\r\nIkuti perjalanan Merry selangkah demi selangkah, dari sejak lulus kuliah tanpa modal, koneksi, dan keahlian; sampai bagaimana dia menyatukan timnya untuk berjuang bersama demi satu tujuan: mengukir sejarah.', 'dream.jpg', '2020-08-10 17:07:00', '2020-08-11 23:43:00'),
(12, 'Mimpi Sejuta Dolar', 120000, 200, 'Buku Mimpi Sejuta Dolar adalah Kisah Nyata perjuangan Merry Riana yang sangat menggugah, dari mahasiswi berkantong pas-pasan hingga bisa meraih penghasilan 1 Juta dolar di usia 26 tahun!  Ditulis oleh Alberthiene Endah, penulis biografi No.1 di Indonesia yang sudah pernah menuliskan biografi Krisdayanti, Alm. Chrisye, Ibu Negara Ani SBY, dan orang-orang ternama lainnya.  Buku Mimpi Sejuta Dolar berhasil menjadi buku terlaris di Indonesia, mencapai peringkat National Mega Best-Seller dan terjual lebih dari 100.000 eksemplar dalam waktu kurang dari 1 tahun sejak penerbitannya.  Silakan Pesan Sekarang :)', 'mimpi.jpg', '2020-08-12 09:41:30', '2020-08-12 09:41:30'),
(13, 'Mimpi Sejuta Dolar', 120000, 200, 'Buku Mimpi Sejuta Dolar adalah Kisah Nyata perjuangan Merry Riana yang sangat menggugah, dari mahasiswi berkantong pas-pasan hingga bisa meraih penghasilan 1 Juta dolar di usia 26 tahun!  Ditulis oleh Alberthiene Endah, penulis biografi No.1 di Indonesia yang sudah pernah menuliskan biografi Krisdayanti, Alm. Chrisye, Ibu Negara Ani SBY, dan orang-orang ternama lainnya.  Buku Mimpi Sejuta Dolar berhasil menjadi buku terlaris di Indonesia, mencapai peringkat National Mega Best-Seller dan terjual lebih dari 100.000 eksemplar dalam waktu kurang dari 1 tahun sejak penerbitannya.  Silakan Pesan Sekarang :)', 'mimpi.jpg', '2020-08-12 09:45:01', '2020-08-12 09:45:01'),
(14, 'Mimpi Sejuta Dolar', 120000, 200, 'Buku Mimpi Sejuta Dolar adalah Kisah Nyata perjuangan Merry Riana yang sangat menggugah, dari mahasiswi berkantong pas-pasan hingga bisa meraih penghasilan 1 Juta dolar di usia 26 tahun!  Ditulis oleh Alberthiene Endah, penulis biografi No.1 di Indonesia yang sudah pernah menuliskan biografi Krisdayanti, Alm. Chrisye, Ibu Negara Ani SBY, dan orang-orang ternama lainnya.  Buku Mimpi Sejuta Dolar berhasil menjadi buku terlaris di Indonesia, mencapai peringkat National Mega Best-Seller dan terjual lebih dari 100.000 eksemplar dalam waktu kurang dari 1 tahun sejak penerbitannya.  Silakan Pesan Sekarang :)', 'mimpi.jpg', '2020-08-12 09:50:42', '2020-08-12 09:50:42'),
(15, 'Mimpi Sejuta Dolar', 120000, 200, 'Buku Mimpi Sejuta Dolar adalah Kisah Nyata perjuangan Merry Riana yang sangat menggugah, dari mahasiswi berkantong pas-pasan hingga bisa meraih penghasilan 1 Juta dolar di usia 26 tahun!  Ditulis oleh Alberthiene Endah, penulis biografi No.1 di Indonesia yang sudah pernah menuliskan biografi Krisdayanti, Alm. Chrisye, Ibu Negara Ani SBY, dan orang-orang ternama lainnya.  Buku Mimpi Sejuta Dolar berhasil menjadi buku terlaris di Indonesia, mencapai peringkat National Mega Best-Seller dan terjual lebih dari 100.000 eksemplar dalam waktu kurang dari 1 tahun sejak penerbitannya.  Silakan Pesan Sekarang :)', 'mimpi.jpg', '2020-08-12 09:56:18', '2020-08-12 09:56:18'),
(16, 'Mimpi Sejuta Dolar', 120000, 200, 'Buku Mimpi Sejuta Dolar adalah Kisah Nyata perjuangan Merry Riana yang sangat menggugah, dari mahasiswi berkantong pas-pasan hingga bisa meraih penghasilan 1 Juta dolar di usia 26 tahun!  Ditulis oleh Alberthiene Endah, penulis biografi No.1 di Indonesia yang sudah pernah menuliskan biografi Krisdayanti, Alm. Chrisye, Ibu Negara Ani SBY, dan orang-orang ternama lainnya.  Buku Mimpi Sejuta Dolar berhasil menjadi buku terlaris di Indonesia, mencapai peringkat National Mega Best-Seller dan terjual lebih dari 100.000 eksemplar dalam waktu kurang dari 1 tahun sejak penerbitannya.  Silakan Pesan Sekarang :)', 'mimpi.jpg', '2020-08-12 18:20:36', '2020-08-12 18:20:36');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `barang_id` int(11) NOT NULL,
  `pesanan_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `barang_id`, `pesanan_id`, `jumlah`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(9, 2, 3, 2, 460000, '2020-08-11 23:19:36', '2020-08-11 23:19:36'),
(10, 3, 3, 5, 1075000, '2020-08-11 23:19:43', '2020-08-11 23:19:43'),
(11, 2, 4, 2, 460000, '2020-08-11 23:21:46', '2020-08-11 23:21:46'),
(12, 3, 4, 2, 430000, '2020-08-11 23:21:53', '2020-08-11 23:21:53'),
(13, 2, 5, 2, 460000, '2020-08-11 23:41:23', '2020-08-11 23:41:23'),
(14, 4, 6, 5, 1250000, '2020-08-11 23:42:54', '2020-08-11 23:42:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_08_09_164129_create_barangs_table', 1),
(6, '2020_08_09_170658_create_carts_table', 1),
(7, '2020_08_09_170147_create_pesanans_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pesanans`
--

CREATE TABLE `pesanans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `tanggal` date NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jumlah_harga` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesanans`
--

INSERT INTO `pesanans` (`id`, `user_id`, `tanggal`, `status`, `jumlah_harga`, `created_at`, `updated_at`) VALUES
(4, 1, '2020-08-12', '1', 890000, '2020-08-11 23:21:46', '2020-08-11 23:30:54'),
(5, 1, '2020-08-12', '1', 460000, '2020-08-11 23:41:23', '2020-08-11 23:41:47'),
(6, 1, '2020-08-12', '1', 1250000, '2020-08-11 23:42:54', '2020-08-11 23:43:00'),
(7, 2, '2020-08-12', '0', 0, '2020-08-12 00:26:30', '2020-08-12 00:29:27'),
(8, 1, '2020-08-12', '0', 0, '2020-08-12 01:23:55', '2020-08-12 09:49:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) DEFAULT NULL,
  `alamat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nohp` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `is_admin`, `alamat`, `nohp`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Muhammad Farhan Darmawan', 'farhanbrobro@gmail.com', NULL, '$2y$10$d.3jKHkDAVTOym5JBYbpz.sD6anYZ19fmBrQxcjPnd7SILO1XuBMm', 0, NULL, NULL, NULL, '2020-08-10 09:25:40', '2020-08-10 09:25:40'),
(2, 'admin', 'admin@gmail.com', NULL, '$2y$10$KvWstqo1PZhvb/7lzXx7Uufr2DkIvlV31Vw1QKDnU5v5E4OT1Qe.C', 1, NULL, NULL, NULL, '2020-08-11 05:30:05', '2020-08-11 05:30:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barangs`
--
ALTER TABLE `barangs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pesanans`
--
ALTER TABLE `pesanans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barangs`
--
ALTER TABLE `barangs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pesanans`
--
ALTER TABLE `pesanans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
