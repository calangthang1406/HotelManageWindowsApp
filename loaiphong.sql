CREATE TABLE `loaiphong` (
  `ID` int(11) NOT NULL,
  `loaiphong` varchar(30) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `thong_ke` (
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
