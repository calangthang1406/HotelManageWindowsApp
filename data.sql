-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 03, 2023 lúc 07:06 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `baocao`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap_nhanvien`
--

CREATE TABLE `dangnhap_nhanvien` (
  `TaiKhoan` varchar(20) NOT NULL,
  `MatKhau` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dangnhap_nhanvien`
--

INSERT INTO `dangnhap_nhanvien` (`TaiKhoan`, `MatKhau`) VALUES
('123', '123');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dangnhap_quanly`
--

CREATE TABLE `dangnhap_quanly` (
  `TaiKhoan` varchar(20) NOT NULL,
  `MatKhau` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `dangnhap_quanly`
--

INSERT INTO `dangnhap_quanly` (`TaiKhoan`, `MatKhau`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `douong`
--

CREATE TABLE `douong` (
  `ID` int(11) NOT NULL,
  `TenDoUong` varchar(30) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `douong`
--

INSERT INTO `douong` (`ID`, `TenDoUong`, `DonGia`) VALUES
(1, 'CoCa', 15),
(2, 'Pessi', 15),
(3, '7 up', 15),
(4, 'Nuoc loc', 5);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_01`
--

CREATE TABLE `hoadon_ban_01` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_02`
--

CREATE TABLE `hoadon_ban_02` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_03`
--

CREATE TABLE `hoadon_ban_03` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_04`
--

CREATE TABLE `hoadon_ban_04` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_05`
--

CREATE TABLE `hoadon_ban_05` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_06`
--

CREATE TABLE `hoadon_ban_06` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_07`
--

CREATE TABLE `hoadon_ban_07` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_08`
--

CREATE TABLE `hoadon_ban_08` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_09`
--

CREATE TABLE `hoadon_ban_09` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_10`
--

CREATE TABLE `hoadon_ban_10` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_11`
--

CREATE TABLE `hoadon_ban_11` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon_ban_12`
--

CREATE TABLE `hoadon_ban_12` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(20) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `monan`
--

CREATE TABLE `monan` (
  `ID` int(11) NOT NULL,
  `TenMonAn` varchar(30) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `monan`
--

INSERT INTO `monan` (`ID`, `TenMonAn`, `DonGia`) VALUES
(2, 'Cơm sườn', 40),
(4, 'Cá mậpp', 99),
(6, 'Cơm rang', 25),
(8, 'Cơm', 12);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thong_ke`
--

CREATE TABLE `thong_ke` (
  `ID` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `ThanhTien` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `thong_ke`
--

INSERT INTO `thong_ke` (`ID`, `Ten`, `DonGia`, `SoLuong`, `ThanhTien`) VALUES
(1, 'Cơm rang', 25, 1, 25),
(2, 'Cơm sườn', 40, 1, 40),
(3, 'Cơm rang', 25, 1, 25),
(4, 'Cơm rang', 25, 1, 25),
(5, 'Cá mậpp', 99, 1, 99);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dangnhap_nhanvien`
--
ALTER TABLE `dangnhap_nhanvien`
  ADD PRIMARY KEY (`TaiKhoan`);

--
-- Chỉ mục cho bảng `dangnhap_quanly`
--
ALTER TABLE `dangnhap_quanly`
  ADD PRIMARY KEY (`TaiKhoan`);

--
-- Chỉ mục cho bảng `douong`
--
ALTER TABLE `douong`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_01`
--
ALTER TABLE `hoadon_ban_01`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_02`
--
ALTER TABLE `hoadon_ban_02`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_03`
--
ALTER TABLE `hoadon_ban_03`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_04`
--
ALTER TABLE `hoadon_ban_04`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_05`
--
ALTER TABLE `hoadon_ban_05`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_06`
--
ALTER TABLE `hoadon_ban_06`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_07`
--
ALTER TABLE `hoadon_ban_07`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_08`
--
ALTER TABLE `hoadon_ban_08`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_09`
--
ALTER TABLE `hoadon_ban_09`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_10`
--
ALTER TABLE `hoadon_ban_10`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_11`
--
ALTER TABLE `hoadon_ban_11`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `hoadon_ban_12`
--
ALTER TABLE `hoadon_ban_12`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `monan`
--
ALTER TABLE `monan`
  ADD PRIMARY KEY (`ID`);

--
-- Chỉ mục cho bảng `thong_ke`
--
ALTER TABLE `thong_ke`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `douong`
--
ALTER TABLE `douong`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_01`
--
ALTER TABLE `hoadon_ban_01`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_02`
--
ALTER TABLE `hoadon_ban_02`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_03`
--
ALTER TABLE `hoadon_ban_03`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_04`
--
ALTER TABLE `hoadon_ban_04`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_05`
--
ALTER TABLE `hoadon_ban_05`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_06`
--
ALTER TABLE `hoadon_ban_06`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_07`
--
ALTER TABLE `hoadon_ban_07`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_08`
--
ALTER TABLE `hoadon_ban_08`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_09`
--
ALTER TABLE `hoadon_ban_09`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_10`
--
ALTER TABLE `hoadon_ban_10`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_11`
--
ALTER TABLE `hoadon_ban_11`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hoadon_ban_12`
--
ALTER TABLE `hoadon_ban_12`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `monan`
--
ALTER TABLE `monan`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `thong_ke`
--
ALTER TABLE `thong_ke`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
