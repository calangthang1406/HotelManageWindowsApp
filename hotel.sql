-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th8 04, 2023 lúc 08:39 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `hotel`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_1`
--

CREATE TABLE `phong_1` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_2`
--

CREATE TABLE `phong_2` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_3`
--

CREATE TABLE `phong_3` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_4`
--

CREATE TABLE `phong_4` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_5`
--

CREATE TABLE `phong_5` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_6`
--

CREATE TABLE `phong_6` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_7`
--

CREATE TABLE `phong_7` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_8`
--

CREATE TABLE `phong_8` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_9`
--

CREATE TABLE `phong_9` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_10`
--

CREATE TABLE `phong_10` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_11`
--

CREATE TABLE `phong_11` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong_12`
--

CREATE TABLE `phong_12` (
  `STT` int(11) NOT NULL,
  `loaiPhong` char(10) DEFAULT NULL,
  `donGia` float DEFAULT NULL,
  `soGio` int(11) DEFAULT NULL,
  `hoaDon` char(10) DEFAULT NULL,
  `ngayNhan` date DEFAULT NULL,
  `ngayTra` date DEFAULT NULL,
  `maHoaDon` int(11) DEFAULT NULL,
  `tenKhachHang` varchar(50) DEFAULT NULL,
  `ngayLapHoaDon` date DEFAULT NULL,
  `thanhTien` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `phong_1`
--
ALTER TABLE `phong_1`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_2`
--
ALTER TABLE `phong_2`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_3`
--
ALTER TABLE `phong_3`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_4`
--
ALTER TABLE `phong_4`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_5`
--
ALTER TABLE `phong_5`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_6`
--
ALTER TABLE `phong_6`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_7`
--
ALTER TABLE `phong_7`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_8`
--
ALTER TABLE `phong_8`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_9`
--
ALTER TABLE `phong_9`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_10`
--
ALTER TABLE `phong_10`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_11`
--
ALTER TABLE `phong_11`
  ADD PRIMARY KEY (`STT`);

--
-- Chỉ mục cho bảng `phong_12`
--
ALTER TABLE `phong_12`
  ADD PRIMARY KEY (`STT`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
