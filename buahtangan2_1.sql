-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2020 at 11:19 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buahtangan2`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` int(11) NOT NULL,
  `customer_address` int(11) NOT NULL,
  `customer_phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `orderDetail_id` int(5) NOT NULL,
  `order_id` int(5) NOT NULL,
  `product_id` int(5) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `quantity` int(5) NOT NULL,
  `total` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(5) NOT NULL,
  `customer_id` int(5) NOT NULL,
  `payment_id` int(5) NOT NULL,
  `timestamp` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(5) NOT NULL,
  `payment_method` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(5) NOT NULL,
  `product_name` char(50) NOT NULL,
  `product_kota` char(50) NOT NULL,
  `product_weight` varchar(50) NOT NULL,
  `umkm_id` int(5) NOT NULL,
  `product_price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_kota`, `product_weight`, `umkm_id`, `product_price`) VALUES
(1, 'Brownis Amanda Bandung', 'BANDUNG', '600gr', 1, '60000'),
(2, 'Surabi Bandung', 'BANDUNG', '100gr', 2, '12000'),
(3, 'Keripik Maicih', 'BANDUNG', '200gr', 3, '20000'),
(4, 'Bakphia Pathok 25', 'SOLO', '625gr', 4, '20000'),
(5, 'Roti Kecik Ganep', 'SOLO', '300gr', 5, '179000'),
(6, 'Kemplang Panggang Ango', 'LAMPUNG', '400gr', 6, '35000'),
(7, 'Kopi Lampung Ashka Jaya', 'LAMPUNG', '150gr', 7, '55000'),
(8, 'Pempek Candy', 'PALEMBANG', '4000gr', 8, '400000'),
(9, 'Lempok Wong Kito', ' PALEMBANG', '450gr', 9, '100000'),
(10, 'Bika Ubi Bintang', 'MEDAN', '1000gr', 10, '60000'),
(11, 'Arai Pinang', 'BUKITTINGGI', '250gr', 11, '60000'),
(12, 'Kerupuk Jangek', 'BUKITTINGGI', '1000gr', 11, '175000'),
(13, 'Galamai', 'BUKITTINGGI', '350gr', 11, '47900'),
(14, 'Dakak-Dakak', 'BUKITTINGGI', '200gr', 11, '25000'),
(15, 'Karak Kaliang', 'BUKITTINGGI', '250gr', 11, '12500');

-- --------------------------------------------------------

--
-- Table structure for table `umkm`
--

CREATE TABLE `umkm` (
  `umkm_id` int(5) NOT NULL,
  `umkm_name` varchar(50) NOT NULL,
  `umkm_address` varchar(120) NOT NULL,
  `umkm_phone` varchar(12) NOT NULL,
  `umkm_kota` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `umkm`
--

INSERT INTO `umkm` (`umkm_id`, `umkm_name`, `umkm_address`, `umkm_phone`, `umkm_kota`) VALUES
(1, 'BROWNIS AMANDA', 'Jalan Rancabolang No.29, Manjahlega, Kecamatan Rancasari, Jawa Barat 40286', '089152673896', 'BANDUNG'),
(2, 'SURABI IMUT', 'Jalan Dr. Setiabudi No.189, Gegerkalong, Sukasari, Jawa Barat', '081682735722', 'BANDUNG'),
(3, 'MAICIH', 'Jalan Primaraga No.6 Cingised, Cisaranten Endah, Arcamanik', '088725725671', 'BANDUNG'),
(4, 'BAKPIA PATHOK 25', 'Jl. Karel Sasuit Tubun Jl. Bhayangkara Ng 1 No.504, Sanggrahan, Ngampilan', '081872198765', 'YOGYAKARTA'),
(5, 'GANEP', 'Jl. Sutan Syahrir No.176, Setabelan, Banjarsari', '085682229873', 'SOLO'),
(6, 'KEMPLANG ANGO', 'pecoh Raya, Kec. Telukbetung Selatan, Kota Bandar Lampung', '081298490208', 'LAMPUNG'),
(7, 'ASKHA JAYA', ' Pagar Alam, Segala Mider, Kec. Kedaton, Kota Bandar Lampung', '082118293943', 'LAMPUNG'),
(8, 'PEMPEK CANDY', 'Jend. Sudirman No.149/8, Sungai Pangeran, Kec. Ilir Tim. I', '089628919827', 'PALEMBANG'),
(9, 'LEMPOK WONG KITO', 'Jl. Lintas Sumatera No.131, 3-4 Ulu, Kecamatan Seberang Ulu I', '081967892799', 'PALEMBANG'),
(10, 'BINTANG', 'Jl. Mojopahit No.73 A, Petisah Tengah, Kec. Medan Petisah', '085291829092', 'MEDAN'),
(11, 'PITAMEH BARU', 'Jl.Kubu Tanjung No.3 , Kec ABTB', '08128254247', 'BUKITTINGGI');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`orderDetail_id`),
  ADD KEY `order_id` (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`,`payment_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `umkm_id` (`umkm_id`);

--
-- Indexes for table `umkm`
--
ALTER TABLE `umkm`
  ADD PRIMARY KEY (`umkm_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `orderdetail_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`payment_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`umkm_id`) REFERENCES `umkm` (`umkm_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
