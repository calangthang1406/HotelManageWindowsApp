-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 06, 2023 at 07:54 PM
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
-- Table structure for table `dangnhap_nhanvien`
--

CREATE TABLE `dangnhap_nhanvien` (
  `TaiKhoan` varchar(20) NOT NULL,
  `MatKhau` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dangnhap_nhanvien`
--

INSERT INTO `dangnhap_nhanvien` (`TaiKhoan`, `MatKhau`) VALUES
('123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `dangnhap_quanly`
--

CREATE TABLE `dangnhap_quanly` (
  `TaiKhoan` varchar(20) NOT NULL,
  `MatKhau` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `dangnhap_quanly`
--

INSERT INTO `dangnhap_quanly` (`TaiKhoan`, `MatKhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `loaiphong`
--

CREATE TABLE `loaiphong` (
  `ID` int(11) NOT NULL,
  `loaiphong` varchar(30) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `loaiphong`
--

INSERT INTO `loaiphong` (`ID`, `loaiphong`, `DonGia`) VALUES
(155502007, 'vip123', 100),
(555269020, 'vip2', 500);

-- --------------------------------------------------------

--
-- Table structure for table `phong_1`
--

CREATE TABLE `phong_1` (
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
-- Dumping data for table `phong_1`
--

INSERT INTO `phong_1` (`ID`, `loaiPhong`, `donGia`, `soGio`, `hoaDon`, `ngayNhan`, `ngayTra`, `maHoaDon`, `tenKhachHang`, `ngayLapHoaDon`, `thanhTien`, `soNgayO`) VALUES
(958934786, 'vip2', 500, 216, 'Hoa Don Ngay', '2023-10-10', '2023-10-19', 21412, 'Van A', '2023-10-19', 3600, 9);

-- --------------------------------------------------------

--
-- Table structure for table `phong_2`
--

CREATE TABLE `phong_2` (
  `ID` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(15) DEFAULT NULL,
  `hoaDon` char(15) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL,
  `soNgayO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phong_3`
--

CREATE TABLE `phong_3` (
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

-- --------------------------------------------------------

--
-- Table structure for table `phong_4`
--

CREATE TABLE `phong_4` (
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

-- --------------------------------------------------------

--
-- Table structure for table `phong_6`
--

CREATE TABLE `phong_6` (
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

-- --------------------------------------------------------

--
-- Table structure for table `phong_7`
--

CREATE TABLE `phong_7` (
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

-- --------------------------------------------------------

--
-- Table structure for table `phong_8`
--

CREATE TABLE `phong_8` (
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

-- --------------------------------------------------------

--
-- Table structure for table `phong_9`
--

CREATE TABLE `phong_9` (
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

-- --------------------------------------------------------

--
-- Table structure for table `phong_10`
--

CREATE TABLE `phong_10` (
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

-- --------------------------------------------------------

--
-- Table structure for table `phong_11`
--

CREATE TABLE `phong_11` (
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

-- --------------------------------------------------------

--
-- Table structure for table `phong_12`
--

CREATE TABLE `phong_12` (
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

-- --------------------------------------------------------

--
-- Table structure for table `thongke`
--

CREATE TABLE `thongke` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `thong_ke`
--

CREATE TABLE `thong_ke` (
  `ID` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(15) DEFAULT NULL,
  `ngayNhan` char(10) DEFAULT NULL,
  `ngayTra` char(10) DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` char(10) DEFAULT NULL,
  `thanhTien` float DEFAULT NULL,
  `soNgayO` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `thong_ke`
--

INSERT INTO `thong_ke` (`ID`, `loaiPhong`, `donGia`, `soGio`, `hoaDon`, `ngayNhan`, `ngayTra`, `maHoaDon`, `tenKhachHang`, `ngayLapHoaDon`, `thanhTien`, `soNgayO`) VALUES
(397045967, 'vip2', 500, 12, 'Hoa Don Ngay', '2023-08-10', '2023-08-11', 32141, 'Van A', '2023-08-11', 6000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `phong_1`
--
ALTER TABLE `phong_1`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_2`
--
ALTER TABLE `phong_2`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_3`
--
ALTER TABLE `phong_3`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_4`
--
ALTER TABLE `phong_4`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_5`
--
ALTER TABLE `phong_5`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_6`
--
ALTER TABLE `phong_6`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_7`
--
ALTER TABLE `phong_7`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_8`
--
ALTER TABLE `phong_8`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_9`
--
ALTER TABLE `phong_9`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_10`
--
ALTER TABLE `phong_10`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_11`
--
ALTER TABLE `phong_11`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `phong_12`
--
ALTER TABLE `phong_12`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
