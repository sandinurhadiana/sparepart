-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 12, 2022 at 06:21 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir-app-ci3`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `status` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `nama_customer`, `status`) VALUES
(1, 'Rijki Juhara', 'Karyawan'),
(2, 'Diki Nur Rahman', 'Pelanggan1'),
(4, 'Sri Rahayu', 'Pelanggan2');

-- --------------------------------------------------------

--
-- Table structure for table `dt_pembelian`
--

CREATE TABLE `dt_pembelian` (
  `id` varchar(14) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `nama_owner` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga_beli` float NOT NULL,
  `harga_jual` float NOT NULL,
  `qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_pembelian`
--

INSERT INTO `dt_pembelian` (`id`, `id_produk`, `id_owner`, `nama_owner`, `nama_produk`, `harga_beli`, `harga_jual`, `qty`) VALUES
('20220709082104', 115, 1, 'Sandi Nurhadiana', 'susu indomilk sachet', 1116, 2000, 3);

-- --------------------------------------------------------

--
-- Table structure for table `dt_penjualan`
--

CREATE TABLE `dt_penjualan` (
  `id` varchar(14) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `nama_owner` varchar(50) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga_beli` float NOT NULL,
  `harga_jual` float NOT NULL,
  `qty` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_penjualan`
--

INSERT INTO `dt_penjualan` (`id`, `id_produk`, `id_owner`, `nama_owner`, `nama_produk`, `harga_beli`, `harga_jual`, `qty`) VALUES
('20220701170633', 1, 1, 'RE', 'silver queen midi cash 33 gr', 6600, 9000, 2),
('20220701170633', 5, 1, 'RE', 'gery o donuts', 454, 1000, 3),
('20220701170633', 48, 1, 'RE', 'malkish crakers', 890, 1000, 4),
('20220701170655', 72, 1, 'RE', 'softex daun sirih', 1350, 2000, 6),
('20220701170655', 70, 1, 'RE', 'laurier malam', 822, 1000, 2),
('20220709052335', 8, 1, 'RE', 'gery salut wafer coklat', 416, 500, 2),
('20220709085231', 3, 1, 'Sandi Nurhadiana', 'timtam', 850, 1000, 2),
('20220710113358', 2, 1, 'Sandi Nurhadiana', 'super star', 1060, 2000, 3),
('20220711050937', 246, 2, 'Anita Nurdewinta', 'Yamalube', 35000, 65000, 1),
('20220711051012', 246, 2, 'Anita Nurdewinta', 'Yamalube', 35000, 65000, 2),
('20220711051032', 248, 1, 'Dzikri Nurjanata', 'Enduro', 40000, 80000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ht_pembelian`
--

CREATE TABLE `ht_pembelian` (
  `id` varchar(14) NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL,
  `total_bayar` float NOT NULL,
  `kasir` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ht_pembelian`
--

INSERT INTO `ht_pembelian` (`id`, `id_supplier`, `nama_supplier`, `waktu`, `total_bayar`, `kasir`) VALUES
('20220709082050', 1, 'PT. Indofood', '2022-07-09 08:20:50', 0, 'Sandi Nurhadiana'),
('20220709082104', 1, 'PT. Indofood', '2022-07-09 08:21:04', 3348, 'Sandi Nurhadiana');

-- --------------------------------------------------------

--
-- Table structure for table `ht_penjualan`
--

CREATE TABLE `ht_penjualan` (
  `id` varchar(14) NOT NULL,
  `id_customer` int(11) NOT NULL,
  `nama_customer` varchar(50) NOT NULL,
  `waktu` datetime NOT NULL,
  `total_bayar` float NOT NULL,
  `status` varchar(12) NOT NULL,
  `kasir` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ht_penjualan`
--

INSERT INTO `ht_penjualan` (`id`, `id_customer`, `nama_customer`, `waktu`, `total_bayar`, `status`, `kasir`) VALUES
('20220701170633', 1, 'Rijki Juhara', '2022-07-01 17:06:33', 5000, 'Karyawan', 'Diki Nur Rahman'),
('20220701170655', 3, 'Rangga Framadya Neno', '2022-07-01 17:06:55', 14000, 'Mahasiswa', 'Diki Nur Rahman'),
('20220709052259', 2, 'Diki Nur Rahman', '2022-07-09 05:22:59', 0, 'Mahasiswa', 'Diki Nur Rahman'),
('20220709052335', 2, 'Diki Nur Rahman', '2022-07-09 05:23:35', 1000, 'Mahasiswa', 'Diki Nur Rahman'),
('20220709085231', 1, 'Rijki Juhara', '2022-07-09 08:52:31', 2000, 'Karyawan', 'Sandi Nurhadiana'),
('20220710113343', 2, 'Diki Nur Rahman', '2022-07-10 11:33:43', 0, 'Pelanggan1', 'Sandi Nurhadiana'),
('20220710113358', 2, 'Diki Nur Rahman', '2022-07-10 11:33:58', 6000, 'Pelanggan1', 'Sandi Nurhadiana'),
('20220711050937', 4, 'Sri Rahayu', '2022-07-11 05:09:37', 65000, 'Pelanggan2', 'Sandi Nurhadiana'),
('20220711051012', 2, 'Diki Nur Rahman', '2022-07-11 05:10:12', 130000, 'Pelanggan1', 'Sandi Nurhadiana'),
('20220711051032', 1, 'Rijki Juhara', '2022-07-11 05:10:32', 70000, 'Karyawan', 'Sandi Nurhadiana');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_kategori`) VALUES
(15, 'Oli Mesin'),
(16, 'Busi Motor'),
(17, 'Knalpot'),
(18, 'Cakram'),
(19, 'Shockbraker');

-- --------------------------------------------------------

--
-- Table structure for table `owner`
--

CREATE TABLE `owner` (
  `id` int(11) NOT NULL,
  `nama_owner` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `owner`
--

INSERT INTO `owner` (`id`, `nama_owner`, `no_hp`, `alamat`) VALUES
(1, 'Dzikri Nurjanata', '81234567890', 'Tasikmalaya'),
(2, 'Anita Nurdewinta', '81236995874', 'Ciawi');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `id_owner` int(11) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `qty` int(3) NOT NULL,
  `harga_beli` float NOT NULL,
  `harga_jual` float NOT NULL,
  `insert_date` datetime NOT NULL DEFAULT current_timestamp(),
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `id_kategori`, `id_owner`, `nama_produk`, `qty`, `harga_beli`, `harga_jual`, `insert_date`, `update_date`) VALUES
(245, 15, 1, 'Motul', 10, 30000, 45000, '2022-07-11 09:52:58', NULL),
(246, 15, 2, 'Yamalube', 7, 35000, 65000, '2022-07-11 10:03:54', NULL),
(247, 15, 2, 'Shell', 10, 37000, 50000, '2022-07-11 10:04:54', NULL),
(248, 15, 1, 'Enduro', 8, 40000, 80000, '2022-07-11 10:05:25', NULL),
(249, 15, 2, 'Fastron', 10, 38000, 65000, '2022-07-11 10:06:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `nama_supplier` varchar(50) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id`, `nama_supplier`, `no_hp`, `alamat`) VALUES
(1, 'PT. Akahsi Wahana Indonesia', '85296300144', 'Jakarta Pusat'),
(2, 'PT. Indonesia Stanley Electric', '81385809415', 'Bandung'),
(3, 'PT. Toyota Manufactur', '813546789080', 'Karawang'),
(4, 'PT. Astra Honda Motor', '81236995874', 'Cikarang');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `akses` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `nama`, `akses`) VALUES
('admin', 'admin', 'Sandi Nurhadiana', 'admin'),
('kasir', 'kasir', 'kasir', 'kasir');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `owner`
--
ALTER TABLE `owner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `owner`
--
ALTER TABLE `owner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
