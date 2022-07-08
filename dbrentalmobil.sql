-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 08, 2022 at 04:41 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbrentalmobil`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis_perawatan`
--

CREATE TABLE `jenis_perawatan` (
  `id` int(11) NOT NULL,
  `nama` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis_perawatan`
--

INSERT INTO `jenis_perawatan` (`id`, `nama`) VALUES
(1, 'Ganti Oli'),
(2, 'Service Rutin'),
(3, 'Turun Mesin'),
(4, 'Ganti Spartpart');

-- --------------------------------------------------------

--
-- Table structure for table `merk`
--

CREATE TABLE `merk` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `produk` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `merk`
--

INSERT INTO `merk` (`id`, `nama`, `produk`) VALUES
(1, 'Toyota', 'Rush'),
(2, 'Mitsubishi', 'Xpander'),
(3, 'Suzuki', 'Ertiga'),
(4, 'Honda', 'Mobilio');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id` int(11) NOT NULL,
  `nopol` varchar(20) DEFAULT NULL,
  `warna` varchar(20) DEFAULT NULL,
  `kapasitas` int(11) NOT NULL,
  `bagasi` int(11) NOT NULL,
  `biaya_sewa` double DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `cc` int(11) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `merk_id` int(11) NOT NULL,
  `foto` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id`, `nopol`, `warna`, `kapasitas`, `bagasi`, `biaya_sewa`, `deskripsi`, `cc`, `tahun`, `merk_id`, `foto`) VALUES
(1, 'B2050SJD', 'putih', 7, 1, 350000, 'Jumlah Pintu 5 · Kapasitas Tempat Duduk 7 · Kapasitas Tangki Bahan Bakar (liter) 45 L · Ground Clearance 200 mm · Tinggi 1695 mm', 1500, 2020, 2, 'cars2.jpg'),
(2, 'B27822EYD', 'hitam', 7, 2, 300000, 'Jumlah Pintu 5 · Kapasitas Tempat Duduk 7 · Kapasitas Tangki Bahan Bakar (liter) 35 L · Ground Clearance 200 mm · Tinggi 1600 mm', 1300, 2021, 3, 'cars3.jpg'),
(3, 'F9021ABG', 'Merah', 6, 3, 320000, 'Jumlah Pintu 4 · Kapasitas Tempat Duduk 9 · Kapasitas Tangki Bahan Bakar (liter) 45 L · Ground Clearance 200 mm · Tinggi 1600 mm', 1500, 2021, 1, 'cars8.jpg'),
(4, 'B1237YUE', 'Putih', 5, 2, 280000, 'Jumlah Pintu 4 · Kapasitas Tempat Duduk 5 · Kapasitas Tangki Bahan Bakar (liter) 30 L · Ground Clearance 300 mm · Tinggi 1700 mm', 1500, 2019, 4, 'cars4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `perawatan`
--

CREATE TABLE `perawatan` (
  `id` int(11) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `biaya` double DEFAULT NULL,
  `km_mobil` int(11) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `mobil_id` int(11) DEFAULT NULL,
  `jenis_perawatan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `perawatan`
--

INSERT INTO `perawatan` (`id`, `tanggal`, `biaya`, `km_mobil`, `deskripsi`, `mobil_id`, `jenis_perawatan_id`) VALUES
(1, '2022-06-12', 850000, 20500, 'service rutin aja', 1, 2),
(2, '2022-06-12', 210000, 20800, 'ganti lampu belakang', 1, 4),
(3, '2022-06-12', 210000, 2500, 'ganti lampu spion kanan', 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `id` int(11) NOT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_akhir` date DEFAULT NULL,
  `tujuan` varchar(100) DEFAULT NULL,
  `noktp` varchar(20) DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `mobil_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`id`, `tanggal_mulai`, `tanggal_akhir`, `tujuan`, `noktp`, `users_id`, `mobil_id`) VALUES
(1, '2022-06-12', '2022-06-16', 'Bandung', '1041202300220', 2, 1),
(6, '2022-07-07', '2022-07-09', 'Bogor', '7219837981792', 3, 1),
(7, '2022-07-07', '2022-07-10', 'Dieng', '827139719210', 3, 4),
(8, '2022-07-07', '2022-07-31', 'Riau', '897139871923178', 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `status` smallint(6) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `created_at`, `last_login`, `status`, `role`) VALUES
(2, 'aminah', '90b74c589f46e8f3a484082d659308bd', 'aminah@gmail.com', '2022-06-11 23:51:08', '2022-06-11 23:51:08', 1, 'public'),
(3, 'gigih', '$2y$10$GCV3mnifbjFvIQEborpTGu9S1uiKOxQ5fFH2bZmqdPDnLTMl0Av86', 'gigih@gmail.com', NULL, NULL, NULL, 'public'),
(4, 'admin', '$2y$10$TwIzwRu/M05xuqzvrCdapuwDL52A3QKsJKhdxnniwuZGB.yuYcR8a', 'admin@gmail.com', NULL, NULL, NULL, 'administrator'),
(5, 'fendi', '$2y$10$TuRcUqsbdPQc03jorhBWhuJSf964sqtm7UV2Dh4vLben4McPDlCDa', 'fendi@yahoo.com', NULL, NULL, NULL, 'public');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis_perawatan`
--
ALTER TABLE `jenis_perawatan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `merk`
--
ALTER TABLE `merk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nopol_UNIQUE` (`nopol`),
  ADD KEY `fk_produk_jenis_produk_idx` (`merk_id`);

--
-- Indexes for table `perawatan`
--
ALTER TABLE `perawatan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pembelian_produk1_idx` (`mobil_id`),
  ADD KEY `fk_perawatan_jenis_perawatan1_idx` (`jenis_perawatan_id`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_pesanan_users1_idx` (`users_id`),
  ADD KEY `fk_pesanan_produk1_idx` (`mobil_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis_perawatan`
--
ALTER TABLE `jenis_perawatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `merk`
--
ALTER TABLE `merk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perawatan`
--
ALTER TABLE `perawatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mobil`
--
ALTER TABLE `mobil`
  ADD CONSTRAINT `fk_produk_jenis_produk` FOREIGN KEY (`merk_id`) REFERENCES `merk` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `perawatan`
--
ALTER TABLE `perawatan`
  ADD CONSTRAINT `fk_pembelian_produk1` FOREIGN KEY (`mobil_id`) REFERENCES `mobil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_perawatan_jenis_perawatan1` FOREIGN KEY (`jenis_perawatan_id`) REFERENCES `jenis_perawatan` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `sewa`
--
ALTER TABLE `sewa`
  ADD CONSTRAINT `fk_pesanan_produk1` FOREIGN KEY (`mobil_id`) REFERENCES `mobil` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_pesanan_users1` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
