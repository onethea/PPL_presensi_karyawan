-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 08, 2020 at 03:38 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face`
--

-- --------------------------------------------------------

--
-- Table structure for table `datapresensi`
--

CREATE TABLE `datapresensi` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(45) NOT NULL DEFAULT '',
  `Hari` varchar(45) NOT NULL,
  `TanggalPresensi` varchar(45) NOT NULL DEFAULT '',
  `PresensiMasuk` varchar(45) NOT NULL DEFAULT '',
  `PresensiKeluar` varchar(45) NOT NULL DEFAULT '',
  `TanggalBuat` date NOT NULL DEFAULT '0000-00-00',
  `Emai` varchar(255) NOT NULL,
  `Tipe` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `datapresensi`
--

INSERT INTO `datapresensi` (`id`, `id_user`, `Hari`, `TanggalPresensi`, `PresensiMasuk`, `PresensiKeluar`, `TanggalBuat`, `Emai`, `Tipe`) VALUES
(1, 'lukman', 'Kamis', '2019-03-21', '10:23:15', '', '2019-03-21', '356578091791629', 'Masuk'),
(2, 'lukman', 'Kamis', '2019-03-21', '', '10:23:15', '2019-03-21', '356578091791629', 'Keluar'),
(4, 'lukman', 'Selasa', '2020-02-18', '14:08:29', '', '2020-02-18', '354465106043018', 'Masuk'),
(5, 'lukman', 'Selasa', '2020-02-18', '', '14:09:00', '2020-02-18', '354465106043018', 'Keluar'),
(6, 'ardianff', 'Jumat', '2020-07-03', '12:34:57', '', '2020-07-03', '868937035246283', 'Masuk'),
(7, 'ardianff', 'Jumat', '2020-07-03', '', '12:41:01', '2020-07-03', '868937035246283', 'Keluar');

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(35) NOT NULL DEFAULT '',
  `alamat` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(13) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `id_level` varchar(5) NOT NULL DEFAULT '',
  `NA` varchar(5) NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Ktp` varchar(45) NOT NULL,
  `tanggallahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id`, `nama`, `alamat`, `phone`, `username`, `password`, `id_level`, `NA`, `TanggalBuat`, `Ktp`, `tanggallahir`) VALUES
(7, 'Alif Ananda Wijapena Prayogi', 'Sawahan, Nganjuk, Jawa Timur', '082227250034', 'alif', 'f553aa35c5fac63fc6e1c81f3b45b58c', '2', '', '2020-06-15 17:43:04', '3374102302990001', '0000-00-00'),
(8, 'Ardian Ferdy Firmansyah', 'Semarang', '082227250034', 'ardianff', '09cfbef35d33065e77443a5ff1e6e2d1', '2', '', '2020-06-15 17:54:22', '3374102302990001', '1999-02-23'),
(9, 'sukun', 'jl. barusari 10', '081245367865', 'sukun', '827ccb0eea8a706c4c34a16891f84e7b', '2', '', '2020-06-30 00:00:00', '3432786654488', '2020-07-04'),
(10, 'alif', 'jl. barusari 10', '081245367865', 'huuu', '827ccb0eea8a706c4c34a16891f84e7b', '2', '', '2020-07-01 00:00:00', '3432786654488', '2020-07-04'),
(12, 'sukun', 'jl. barusari 10', '08217643457', 'resf', '81dc9bdb52d04dc20036dbd8313ed055', '2', '', '2020-06-29 00:00:00', '3432786654488', '2020-07-05');

-- --------------------------------------------------------

--
-- Table structure for table `lastlogin`
--

CREATE TABLE `lastlogin` (
  `id_lastlogin` int(10) UNSIGNED NOT NULL,
  `id_user` varchar(45) NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lastlogin`
--

INSERT INTO `lastlogin` (`id_lastlogin`, `id_user`, `TanggalBuat`) VALUES
(1, '1', '2019-08-12 17:33:46'),
(2, '5', '2019-08-12 19:44:57'),
(3, '1', '2019-08-13 07:23:06'),
(4, '5', '2019-08-13 08:11:29'),
(5, '1', '2019-08-13 08:13:16'),
(6, '1', '2019-10-19 12:45:33'),
(7, '1', '2020-01-09 17:23:44'),
(8, '1', '2020-02-04 17:14:34'),
(9, '1', '2020-02-17 08:51:21'),
(10, '6', '2020-02-17 11:49:59'),
(11, '5', '2020-02-17 13:51:42'),
(12, '5', '2020-02-17 13:54:36'),
(13, '5', '2020-02-17 13:58:13'),
(14, '6', '2020-02-17 14:56:13'),
(15, '1', '2020-02-17 19:48:11'),
(16, '1', '2020-02-17 20:05:51'),
(17, '1', '2020-02-17 21:08:01'),
(18, '6', '2020-02-17 21:10:38'),
(19, '5', '2020-02-18 11:52:47'),
(20, '5', '2020-02-18 12:12:09'),
(21, '5', '2020-02-18 17:19:43'),
(22, '1', '2020-02-18 17:45:01'),
(23, '1', '2020-06-15 17:40:34'),
(24, '1', '2020-06-15 17:54:47'),
(25, '1', '2020-06-15 17:55:11'),
(26, '1', '2020-06-15 18:06:04'),
(27, '8', '2020-06-15 18:06:11'),
(28, '1', '2020-06-15 18:09:04'),
(29, '8', '2020-06-15 20:28:59'),
(30, '1', '2020-06-26 19:45:58'),
(31, '1', '2020-06-26 19:46:17'),
(32, '8', '2020-06-26 19:48:02'),
(33, '8', '2020-06-26 19:55:47'),
(34, '8', '2020-06-26 20:00:38'),
(35, '8', '2020-06-26 20:09:09'),
(36, '1', '2020-06-26 21:12:50'),
(37, '8', '2020-07-01 12:10:24'),
(38, '8', '2020-07-03 12:31:15'),
(39, '1', '2020-07-03 12:36:06'),
(40, '1', '2020-07-03 12:48:30'),
(41, '1', '2020-07-03 13:34:18'),
(42, '1', '2020-07-04 11:51:54'),
(43, '1', '2020-07-05 14:53:36');

-- --------------------------------------------------------

--
-- Table structure for table `notifikasi`
--

CREATE TABLE `notifikasi` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(45) NOT NULL,
  `isi` varchar(255) NOT NULL,
  `tanggal` datetime NOT NULL,
  `iduser` varchar(45) NOT NULL,
  `NA` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notifikasi`
--

INSERT INTO `notifikasi` (`id`, `judul`, `isi`, `tanggal`, `iduser`, `NA`) VALUES
(1, 'Notifikasi ', 'Pengumuman,bahwasanya tanggal 21 oktober 2020 kita rekreasi bersama', '2019-12-26 11:23:59', '8', 'N'),
(3, 'Pengumuman Terkait Pandemi Covid-19', 'Jadi kita libur 3 hari karena ada yg positif', '2019-12-26 11:25:15', '8', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id_slider` int(10) UNSIGNED NOT NULL,
  `Nama` varchar(45) NOT NULL DEFAULT '',
  `Slider` varchar(255) NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id_slider`, `Nama`, `Slider`, `TanggalBuat`, `Url`) VALUES
(3, 'slide 1', 'slide1.jpg', '2019-08-13 07:23:23', ''),
(4, 'slide 2', 'slide2.jpg', '2019-08-13 07:23:34', ''),
(5, 'slide 3', 'slide3.jpg', '2019-08-13 07:23:43', ''),
(6, 'slide 4', 'slide4.jpg', '2019-08-13 07:23:52', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(35) NOT NULL DEFAULT '',
  `alamat` varchar(255) NOT NULL DEFAULT '',
  `phone` varchar(13) NOT NULL DEFAULT '',
  `username` varchar(45) NOT NULL DEFAULT '',
  `password` varchar(45) NOT NULL DEFAULT '',
  `id_level` varchar(5) NOT NULL DEFAULT '',
  `NA` varchar(5) NOT NULL DEFAULT '',
  `TanggalBuat` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Foto` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `nama`, `alamat`, `phone`, `username`, `password`, `id_level`, `NA`, `TanggalBuat`, `Foto`) VALUES
(1, 'Administrator', 'Jemberrrr', '0851234567111', 'admin', '21232f297a57a5a743894a0e4a801fc3', '1', 'N', '2019-08-12 17:33:46', 'user-1.jpg'),
(5, 'lukman', 'jember', '123', 'lukman', 'b5bbc8cf472072baffe920e4e28ee29c', '2', '', '2019-08-12 19:43:21', ''),
(6, 'Septian Muhammad Adi', 'Boyolali', '00908089077', 'septian', 'eaec8de3a25ffaad45461d875060005f', '1', '', '2020-06-15 18:09:35', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_level`
--

CREATE TABLE `user_level` (
  `id` int(10) UNSIGNED NOT NULL,
  `level` varchar(45) NOT NULL DEFAULT '',
  `NA` varchar(45) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_level`
--

INSERT INTO `user_level` (`id`, `level`, `NA`) VALUES
(1, 'Administrator', 'N'),
(2, 'Karyawan', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datapresensi`
--
ALTER TABLE `datapresensi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lastlogin`
--
ALTER TABLE `lastlogin`
  ADD PRIMARY KEY (`id_lastlogin`);

--
-- Indexes for table `notifikasi`
--
ALTER TABLE `notifikasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_level`
--
ALTER TABLE `user_level`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datapresensi`
--
ALTER TABLE `datapresensi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `lastlogin`
--
ALTER TABLE `lastlogin`
  MODIFY `id_lastlogin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `notifikasi`
--
ALTER TABLE `notifikasi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id_slider` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_level`
--
ALTER TABLE `user_level`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
