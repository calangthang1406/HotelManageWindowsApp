-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 07:47 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testhotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `phong_5`
--

CREATE TABLE `phong_5` (
  `ID` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(15) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL,
  `soNgayO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phong_5`
--
ALTER TABLE `phong_5`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
