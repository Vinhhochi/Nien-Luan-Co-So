-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 12:38 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlygiaodich`
--
CREATE DATABASE IF NOT EXISTS `quanlygiaodich` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `quanlygiaodich`;

-- --------------------------------------------------------

--
-- Table structure for table `gdchuyentien`
--

CREATE TABLE `gdchuyentien` (
  `TKGUI_SO` char(12) DEFAULT NULL,
  `TKNHAN_SO` char(12) DEFAULT NULL,
  `PCT_MA` int(11) DEFAULT NULL,
  `HTC_MA` int(11) DEFAULT NULL,
  `GDCT_SOTIEN` double DEFAULT NULL,
  `GDCT_NOIDUNG` varchar(256) DEFAULT NULL,
  `GDCT_NGAY` date DEFAULT NULL,
  `GDCT_MA` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gdchuyentien`
--

INSERT INTO `gdchuyentien` (`TKGUI_SO`, `TKNHAN_SO`, `PCT_MA`, `HTC_MA`, `GDCT_SOTIEN`, `GDCT_NOIDUNG`, `GDCT_NGAY`, `GDCT_MA`) VALUES
('040012340987', '040012327511', 1, 1, 2000000, 'Chuyển Tiền\r\n                               ', '2021-11-17', '1637159170'),
('040012327511', '040012340987', 1, 1, 2000000, 'chuyển tiền\r\n                               ', '2021-11-23', '1637653899'),
('040012327511', '040012340987', 1, 1, 2000000, 'chuyển tiền\r\n                               ', '2021-11-23', '1637654221'),
('040012327511', '040012340987', 1, 1, 2000000, 'chuyển tiền\r\n                               ', '2021-11-23', '1637654346'),
('040012327511', '040012340987', 1, 1, 1000000, 'chuyển tiền\r\n                               ', '2021-11-23', '1637654779'),
('040012327511', '040012340987', 2, 1, 1000000, 'Chuyển Tiền\r\n                               ', '2021-11-23', '1637675512'),
('040012340987', '040012327511', 1, 1, 2000000, 'chuyển tiền\r\n                               ', '2021-11-26', '1637909132'),
('040012340987', '040012327511', 1, 1, 1000000, 'chuyển tiền        ', '2021-12-05', '1638668039'),
('040012340987', '040012327511', 1, 1, 985000, 'chuyển tiền\r\n                               ', '2021-12-05', '1638670634'),
('040012340987', '040012327511', 1, 1, 2000000, 'chuyển tiền\r\n                               ', '2021-12-05', '1638670725'),
('040012327511', '040012340987', 1, 1, 2500000, 'ct\r\n                               ', '2021-12-05', '1638673379');

-- --------------------------------------------------------

--
-- Table structure for table `hinhthucchuyen`
--

CREATE TABLE `hinhthucchuyen` (
  `HTC_MA` int(11) NOT NULL,
  `HTC_TEN` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhthucchuyen`
--

INSERT INTO `hinhthucchuyen` (`HTC_MA`, `HTC_TEN`) VALUES
(1, 'Chuyển Tiền Ngay');

-- --------------------------------------------------------

--
-- Table structure for table `hinhthuclai`
--

CREATE TABLE `hinhthuclai` (
  `HTL_MA` int(11) NOT NULL,
  `HTL_TEN` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hinhthuclai`
--

INSERT INTO `hinhthuclai` (`HTL_MA`, `HTL_TEN`) VALUES
(1, 'Lãi Nhập Gốc');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `KH_MA` int(11) NOT NULL,
  `QT_MA` int(11) NOT NULL,
  `KH_TEN` varchar(100) DEFAULT NULL,
  `KH_CCCD_CMND` varchar(12) DEFAULT NULL,
  `KH_NGAYCAP` date DEFAULT NULL,
  `KH_NOICAP` varchar(200) DEFAULT NULL,
  `KH_DIACHI` varchar(200) DEFAULT NULL,
  `KH_NGHENGHIEP` varchar(200) DEFAULT NULL,
  `KH_EMAIL` varchar(200) DEFAULT NULL,
  `KH_NAMSINH` date DEFAULT NULL,
  `KH_SDT` varchar(10) DEFAULT NULL,
  `KH_MATKHAU` varchar(50) DEFAULT NULL,
  `KH_MAOTP` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`KH_MA`, `QT_MA`, `KH_TEN`, `KH_CCCD_CMND`, `KH_NGAYCAP`, `KH_NOICAP`, `KH_DIACHI`, `KH_NGHENGHIEP`, `KH_EMAIL`, `KH_NAMSINH`, `KH_SDT`, `KH_MATKHAU`, `KH_MAOTP`) VALUES
(0, 1, 'Nguyễn Văn A', '234161298', '2020-04-04', 'Cục Cảnh Sát Quản Lí Hành Chính Về Trật Tự Xã Hội', '3/2,Ninh Kiều,Cần Thơ', 'Tự Do', 'abc@zxcgmail.com', '2000-12-04', '0701231154', '537b12f268d26ffc5dbb8278af12add7', NULL),
(1, 1, 'Nguyễn Văn B', '321877412', '2015-12-09', 'Cục Cảnh Sát Quản Lí Hành Chính Về Trật Tự Xã Hội', 'Đông Thạnh, Châu Thành A,Hậu Giang', 'Buôn Bán', 'ghj@gmail.com', '1998-05-05', '0708761123', '2eae65defb27a16fc4028411787dda45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kyhan`
--

CREATE TABLE `kyhan` (
  `KHAN_MA` int(11) NOT NULL,
  `KHAN_TEN` varchar(100) DEFAULT NULL,
  `KHAN_LAISUAT` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kyhan`
--

INSERT INTO `kyhan` (`KHAN_MA`, `KHAN_TEN`, `KHAN_LAISUAT`) VALUES
(1, '1 Tháng', '0.2%'),
(2, '2 Tháng', '0.4%'),
(3, '3 Tháng', '0.5%'),
(4, '4 Tháng', '0.6%'),
(5, '5 Tháng', '0.7%'),
(6, '6 Tháng', '0.8%'),
(7, '7 Tháng', '1%');

-- --------------------------------------------------------

--
-- Table structure for table `loaitaikhoan`
--

CREATE TABLE `loaitaikhoan` (
  `LTK_MA` int(11) NOT NULL,
  `LTK_TEN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaitaikhoan`
--

INSERT INTO `loaitaikhoan` (`LTK_MA`, `LTK_TEN`) VALUES
(1, 'Tài Khoản Thanh Toán'),
(2, 'Tiền Gửi Có Kì Hạn');

-- --------------------------------------------------------

--
-- Table structure for table `motietkiem`
--

CREATE TABLE `motietkiem` (
  `TKMOTK_SO` char(12) NOT NULL,
  `TKTK_SO` char(12) NOT NULL,
  `KHAN_MA` int(11) NOT NULL,
  `HTL_MA` int(11) NOT NULL,
  `MTK_SOTIEN` double DEFAULT NULL,
  `MTK_NGAY` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `motietkiem`
--

INSERT INTO `motietkiem` (`TKMOTK_SO`, `TKTK_SO`, `KHAN_MA`, `HTL_MA`, `MTK_SOTIEN`, `MTK_NGAY`) VALUES
('040012327511', '04001436483', 1, 1, 1000000, '2021-11-23'),
('040012327511', '04001473645', 1, 1, 1000000, '2021-12-05'),
('040012340987', '04001163604', 2, 1, 2000000, '2021-12-05'),
('040012340987', '04001422086', 4, 1, 1000000, '2022-03-21'),
('040012340987', '04001626074', 4, 1, 10000000, '2021-11-23'),
('040012340987', '04001636075', 3, 1, 1000000, '2021-12-05'),
('040012340987', '04001848269', 3, 1, 2000000, '2021-11-17');

-- --------------------------------------------------------

--
-- Table structure for table `phichuyentien`
--

CREATE TABLE `phichuyentien` (
  `PCT_MA` int(11) NOT NULL,
  `PCT_TEN` varchar(256) DEFAULT NULL,
  `PCT_MUCPHI` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `phichuyentien`
--

INSERT INTO `phichuyentien` (`PCT_MA`, `PCT_TEN`, `PCT_MUCPHI`) VALUES
(1, 'Người chuyển Trả', 3000),
(2, 'Người Nhận Trả', 3000);

-- --------------------------------------------------------

--
-- Table structure for table `quoctich`
--

CREATE TABLE `quoctich` (
  `QT_MA` int(11) NOT NULL,
  `QT_TEN` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quoctich`
--

INSERT INTO `quoctich` (`QT_MA`, `QT_TEN`) VALUES
(1, 'Việt Nam');

-- --------------------------------------------------------

--
-- Table structure for table `taikhoan`
--

CREATE TABLE `taikhoan` (
  `TK_SO` char(12) NOT NULL,
  `LTK_MA` int(11) NOT NULL,
  `KH_MA` int(11) NOT NULL,
  `TK_TEN` varchar(256) DEFAULT NULL,
  `TK_SODU` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `taikhoan`
--

INSERT INTO `taikhoan` (`TK_SO`, `LTK_MA`, `KH_MA`, `TK_TEN`, `TK_SODU`) VALUES
('04001163604', 2, 0, NULL, 2000000),
('040012327511', 1, 1, 'NGUYEN VAN B', 145470000),
('040012340987', 1, 0, 'NGUYEN VAN A', 36497000),
('04001422086', 2, 0, NULL, 1000000),
('04001436483', 2, 1, NULL, 1000000),
('04001473645', 2, 1, NULL, 1000000),
('04001626074', 2, 0, NULL, 10000000),
('04001636075', 2, 0, NULL, 1000000),
('04001848269', 2, 0, NULL, 2000000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gdchuyentien`
--
ALTER TABLE `gdchuyentien`
  ADD PRIMARY KEY (`GDCT_MA`),
  ADD KEY `FK_CO_HINH_THUC_CHUYEN` (`HTC_MA`),
  ADD KEY `FK_RELATIONSHIP_9` (`PCT_MA`),
  ADD KEY `FK_TAI_KHOAN_CHUYEN_TIEN` (`TKGUI_SO`),
  ADD KEY `FK_TAI_KHOAN_NHAN_TIEN` (`TKNHAN_SO`);

--
-- Indexes for table `hinhthucchuyen`
--
ALTER TABLE `hinhthucchuyen`
  ADD PRIMARY KEY (`HTC_MA`);

--
-- Indexes for table `hinhthuclai`
--
ALTER TABLE `hinhthuclai`
  ADD PRIMARY KEY (`HTL_MA`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`KH_MA`),
  ADD UNIQUE KEY `KH_CCCD_CMND` (`KH_CCCD_CMND`),
  ADD KEY `FK_KHACH_HANG_CO_QUOC_TICH` (`QT_MA`);

--
-- Indexes for table `kyhan`
--
ALTER TABLE `kyhan`
  ADD PRIMARY KEY (`KHAN_MA`);

--
-- Indexes for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  ADD PRIMARY KEY (`LTK_MA`);

--
-- Indexes for table `motietkiem`
--
ALTER TABLE `motietkiem`
  ADD PRIMARY KEY (`TKMOTK_SO`,`TKTK_SO`),
  ADD KEY `FK_RELATIONSHIP_10` (`HTL_MA`),
  ADD KEY `FK_TAI_KHOAN_TIET_KIEM__UOC_MO` (`TKTK_SO`),
  ADD KEY `FK_TIET_KIEM_CO_KI_HAN` (`KHAN_MA`);

--
-- Indexes for table `phichuyentien`
--
ALTER TABLE `phichuyentien`
  ADD PRIMARY KEY (`PCT_MA`);

--
-- Indexes for table `quoctich`
--
ALTER TABLE `quoctich`
  ADD PRIMARY KEY (`QT_MA`),
  ADD UNIQUE KEY `QT_TEN` (`QT_TEN`);

--
-- Indexes for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`TK_SO`),
  ADD KEY `FK_KHACH_HANG_CO_TAI_KHOAN` (`KH_MA`),
  ADD KEY `FK_RELATIONSHIP_7` (`LTK_MA`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hinhthucchuyen`
--
ALTER TABLE `hinhthucchuyen`
  MODIFY `HTC_MA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hinhthuclai`
--
ALTER TABLE `hinhthuclai`
  MODIFY `HTL_MA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `kyhan`
--
ALTER TABLE `kyhan`
  MODIFY `KHAN_MA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `loaitaikhoan`
--
ALTER TABLE `loaitaikhoan`
  MODIFY `LTK_MA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `phichuyentien`
--
ALTER TABLE `phichuyentien`
  MODIFY `PCT_MA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `quoctich`
--
ALTER TABLE `quoctich`
  MODIFY `QT_MA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gdchuyentien`
--
ALTER TABLE `gdchuyentien`
  ADD CONSTRAINT `FK_CO_HINH_THUC_CHUYEN` FOREIGN KEY (`HTC_MA`) REFERENCES `hinhthucchuyen` (`HTC_MA`),
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`PCT_MA`) REFERENCES `phichuyentien` (`PCT_MA`),
  ADD CONSTRAINT `FK_TAI_KHOAN_CHUYEN_TIEN` FOREIGN KEY (`TKGUI_SO`) REFERENCES `taikhoan` (`TK_SO`),
  ADD CONSTRAINT `FK_TAI_KHOAN_NHAN_TIEN` FOREIGN KEY (`TKNHAN_SO`) REFERENCES `taikhoan` (`TK_SO`);

--
-- Constraints for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD CONSTRAINT `FK_KHACH_HANG_CO_QUOC_TICH` FOREIGN KEY (`QT_MA`) REFERENCES `quoctich` (`QT_MA`);

--
-- Constraints for table `motietkiem`
--
ALTER TABLE `motietkiem`
  ADD CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`HTL_MA`) REFERENCES `hinhthuclai` (`HTL_MA`),
  ADD CONSTRAINT `FK_TAI_KHOAN_MO_TIET_KIEM` FOREIGN KEY (`TKMOTK_SO`) REFERENCES `taikhoan` (`TK_SO`),
  ADD CONSTRAINT `FK_TAI_KHOAN_TIET_KIEM__UOC_MO` FOREIGN KEY (`TKTK_SO`) REFERENCES `taikhoan` (`TK_SO`),
  ADD CONSTRAINT `FK_TIET_KIEM_CO_KI_HAN` FOREIGN KEY (`KHAN_MA`) REFERENCES `kyhan` (`KHAN_MA`);

--
-- Constraints for table `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD CONSTRAINT `FK_KHACH_HANG_CO_TAI_KHOAN` FOREIGN KEY (`KH_MA`) REFERENCES `khachhang` (`KH_MA`),
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`LTK_MA`) REFERENCES `loaitaikhoan` (`LTK_MA`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
