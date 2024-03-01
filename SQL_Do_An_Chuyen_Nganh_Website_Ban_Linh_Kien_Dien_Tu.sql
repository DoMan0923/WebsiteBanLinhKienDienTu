-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 10:53 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_banlinhkiendientu`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdathang`
--

CREATE TABLE `chitietdathang` (
  `SoPhieuDatHang` int(11) NOT NULL,
  `MaHang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdathang`
--

INSERT INTO `chitietdathang` (`SoPhieuDatHang`, `MaHang`, `SoLuong`, `DonGia`) VALUES
(1, 1, 45, 220000),
(1, 2, 23, 120000),
(1, 3, 23, 120000),
(2, 3, 123, 120000),
(2, 4, 13, 150000),
(2, 5, 100, 200000),
(2, 6, 150, 245000),
(3, 6, 100, 210000),
(3, 7, 200, 210000),
(3, 8, 200, 200000),
(3, 9, 12, 100000),
(3, 10, 23, 120000),
(5, 1, 78, 260000),
(5, 3, 55, 180000),
(5, 4, 70, 180000),
(5, 6, 90, 180000),
(11, 1, 24, 230000),
(11, 2, 90, 115000),
(11, 10, 10, 700000),
(12, 1, 24, 230000),
(12, 2, 90, 115000),
(12, 10, 10, 700000),
(14, 2, 2, 115000),
(14, 4, 4, 230000),
(14, 6, 1, 198000),
(15, 6, 200, 198000),
(16, 2, 1, 115000),
(16, 6, 15, 198000),
(17, 1, 181, 230000),
(17, 5, 20, 300000);

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `MaDonhang` int(11) NOT NULL,
  `MaHang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` double NOT NULL,
  `SoThangBaoHanh` int(11) NOT NULL,
  `MucDoHaiLong` int(11) DEFAULT NULL,
  `NoiDungDanhGia` varchar(255) DEFAULT NULL,
  `AnDanh` tinyint(1) DEFAULT 0,
  `NgayDanhGia` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`MaDonhang`, `MaHang`, `SoLuong`, `DonGia`, `SoThangBaoHanh`, `MucDoHaiLong`, `NoiDungDanhGia`, `AnDanh`, `NgayDanhGia`) VALUES
(1, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(1, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(3, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(3, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(3, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(4, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(4, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(4, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(5, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(5, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(5, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(6, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(6, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(6, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(7, 2, 2, 115000, 12, 4, 'Shop phục vụ rất tốt', 0, '2023-11-18 00:54:47'),
(7, 3, 3, 30000, 12, 5, 'Shop phục vụ rất tốt', 1, '2023-11-18 01:03:19'),
(7, 4, 1, 115000, 12, 5, 'Chất lượng sản phẩm tuyệt vời, Shop phục vụ rất tốt', 0, '2023-11-18 01:00:04'),
(8, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(8, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(8, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(9, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(9, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(9, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(10, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(10, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(10, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(11, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(11, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(11, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(12, 2, 2, 115000, 12, 3, 'Chất lượng sản phẩm tuyệt vời, Shop phục vụ rất tốt, Chất lượng', 1, '2023-11-24 21:35:24'),
(12, 3, 3, 30000, 12, 4, 'Chất lượng sản phẩm tuyệt vời, Shop phục vụ rất tốt, Đóng gói sản phẩm rất đẹp kỷ lưỡng, cũng ok la đó chứ', 1, '2023-11-18 01:14:04'),
(12, 4, 1, 115000, 12, 4, 'Shop phục vụ rất tốt, Sản phaari tạm ổn, chất lượng thì cũng ok, nhưng mà mới xài thì ch biết ncó bền hay không,  ổn', 1, '2023-11-18 01:11:13'),
(13, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(13, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(13, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(14, 2, 2, 115000, 12, 5, 'Shop phục vụ rất tốt, Đóng gói sản phẩm rất đẹp kỷ lưỡng, OK la nha', 0, '2023-12-25 11:49:41'),
(14, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(14, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(15, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(15, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(15, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(16, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(16, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(16, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(17, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(17, 3, 3, 30000, 12, NULL, NULL, 0, NULL),
(17, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(18, 2, 1, 92000, 12, 4, 'Sản phẩm chất lượng', 1, '2023-12-13 08:34:36'),
(19, 2, 1, 92000, 12, 4, 'Shop phục vụ rất tốt', 1, '2023-12-25 09:45:00'),
(19, 3, 10, 30000, 12, NULL, NULL, 0, NULL),
(20, 2, 1, 86250, 12, NULL, NULL, 0, NULL),
(21, 2, 2, 86250, 12, NULL, NULL, 0, NULL),
(22, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(22, 6, 1, 198000, 12, NULL, NULL, 0, NULL),
(23, 4, 2, 115000, 12, NULL, NULL, 0, NULL),
(24, 2, 6, 115000, 12, NULL, NULL, 0, NULL),
(24, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(25, 2, 6, 115000, 12, NULL, NULL, 0, NULL),
(25, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(26, 2, 6, 115000, 12, NULL, NULL, 0, NULL),
(26, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(27, 2, 6, 115000, 12, NULL, NULL, 0, NULL),
(27, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(28, 2, 6, 115000, 12, NULL, NULL, 0, NULL),
(28, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(29, 2, 6, 115000, 12, NULL, NULL, 0, NULL),
(29, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(30, 2, 6, 115000, 12, NULL, NULL, 0, NULL),
(30, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(31, 2, 6, 115000, 12, NULL, NULL, 0, NULL),
(31, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(36, 2, 7, 115000, 12, NULL, NULL, 0, NULL),
(36, 3, 1, 30000, 12, NULL, NULL, 0, NULL),
(37, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(37, 3, 2, 30000, 6, NULL, NULL, 0, NULL),
(38, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(38, 3, 2, 30000, 6, NULL, NULL, 0, NULL),
(39, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(39, 3, 2, 30000, 6, NULL, NULL, 0, NULL),
(40, 2, 3, 115000, 12, NULL, NULL, 0, NULL),
(41, 2, 3, 115000, 12, NULL, NULL, 0, NULL),
(42, 2, 3, 115000, 12, NULL, NULL, 0, NULL),
(43, 2, 3, 115000, 12, NULL, NULL, 0, NULL),
(44, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(44, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(44, 3, 1, 30000, 6, NULL, NULL, 0, NULL),
(44, 6, 1, 198000, 1, NULL, NULL, 0, NULL),
(45, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(45, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(46, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(46, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(46, 3, 1, 30000, 6, NULL, NULL, 0, NULL),
(47, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(47, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(48, 3, 1, 30000, 6, NULL, NULL, 0, NULL),
(48, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(48, 5, 1, 300000, 12, NULL, NULL, 0, NULL),
(48, 6, 1, 198000, 1, NULL, NULL, 0, NULL),
(48, 7, 1, 415000, 6, NULL, NULL, 0, NULL),
(48, 8, 1, 300000, 1, NULL, NULL, 0, NULL),
(48, 9, 1, 250000, 200, NULL, NULL, 0, NULL),
(49, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(49, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(50, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(50, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(51, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(51, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(52, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(53, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(54, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(55, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(56, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(61, 1, 1, 230000, 12, NULL, NULL, 0, NULL),
(62, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(62, 4, 3, 115000, 12, NULL, NULL, 0, NULL),
(63, 6, 1, 198000, 1, NULL, NULL, 0, NULL),
(64, 4, 3, 115000, 12, NULL, NULL, 0, NULL),
(65, 3, 1, 30000, 6, 4, 'Shop phục vụ rất tốt, Đóng gói sản phẩm rất đẹp kỷ lưỡng, Sản phầm dùng tốt, giao hơi chậm nên 4 sao hoi nho', 1, '2023-12-19 09:09:12'),
(65, 5, 1, 300000, 12, 1, 'Mau hết pin, chất lượng không như quảng cáo', 1, '2023-12-19 09:10:21'),
(65, 6, 1, 198000, 12, 5, 'Shop phục vụ rất tốt', 0, '2023-12-19 09:20:58'),
(66, 4, 1, 115000, 12, NULL, NULL, 0, NULL),
(66, 6, 2, 198000, 1, NULL, NULL, 0, NULL),
(67, 5, 1, 300000, 12, NULL, NULL, 0, NULL),
(67, 6, 3, 198000, 1, NULL, NULL, 0, NULL),
(68, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(68, 3, 3, 30000, 6, NULL, NULL, 0, NULL),
(68, 6, 1, 198000, 1, NULL, NULL, 0, NULL),
(69, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(69, 3, 3, 30000, 6, NULL, NULL, 0, NULL),
(70, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(70, 4, 2, 115000, 12, NULL, NULL, 0, NULL),
(70, 5, 1, 300000, 12, NULL, NULL, 0, NULL),
(71, 2, 2, 115000, 12, NULL, NULL, 0, NULL),
(72, 2, 1, 115000, 12, NULL, NULL, 0, NULL),
(72, 3, 3, 30000, 6, NULL, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chitietgiaohang`
--

CREATE TABLE `chitietgiaohang` (
  `SoPhieuGiaoHang` int(11) NOT NULL,
  `MaHang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietgiaohang`
--

INSERT INTO `chitietgiaohang` (`SoPhieuGiaoHang`, `MaHang`, `SoLuong`) VALUES
(4, 1, 21),
(4, 3, 1),
(5, 1, 2),
(6, 3, 48),
(6, 4, 13),
(6, 5, 100),
(6, 6, 13),
(7, 3, 24),
(7, 6, 4),
(8, 3, 51),
(8, 6, 133),
(9, 7, 80),
(9, 8, 20),
(10, 7, 120),
(10, 9, 5),
(10, 10, 23),
(11, 6, 100),
(11, 8, 180),
(11, 9, 7),
(12, 2, 1),
(12, 6, 3),
(13, 6, 12),
(14, 1, 37),
(14, 5, 20),
(15, 1, 144);

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDanhMuc` int(11) NOT NULL,
  `TenDanhMuc` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`MaDanhMuc`, `TenDanhMuc`) VALUES
(1, 'Module'),
(2, 'Đồng hồ, thiết bị đo lường'),
(3, 'Board công suất Amply-Đẩy-Music-Echo'),
(4, 'Phân tần'),
(5, 'Transistor'),
(6, 'Mosfets'),
(7, 'Tụ điện'),
(8, 'Điện trở'),
(9, 'Diode'),
(10, 'Jfet');

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `MaDonhang` int(11) NOT NULL,
  `MaKH` bigint(20) UNSIGNED DEFAULT NULL,
  `NgayMua` datetime NOT NULL,
  `ThanhTien` double NOT NULL,
  `TenNguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  `DiaChiGiaoHang` varchar(100) NOT NULL,
  `TrangThai` varchar(20) NOT NULL,
  `token` varchar(20) DEFAULT NULL,
  `PhuongThucVanChuyen` varchar(255) DEFAULT NULL,
  `PhuongThucThanhToan` varchar(255) DEFAULT NULL,
  `DiaChiCuThe` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MaDonhang`, `MaKH`, `NgayMua`, `ThanhTien`, `TenNguoiNhan`, `SDT`, `Email`, `GhiChu`, `DiaChiGiaoHang`, `TrangThai`, `token`, `PhuongThucVanChuyen`, `PhuongThucThanhToan`, `DiaChiCuThe`) VALUES
(1, 8, '2023-10-31 00:00:00', 260000, 'Lê Ánh', '0121212332', 'anhle@gmail.com', 'Tôi muốn thay đổi địa chỉ giao hàng', 'sffghtryy', 'Đã hủy', '', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(3, 8, '2023-11-11 00:00:00', 435000, '23424', '2342342342', 'Datlvnttan@gmail.com', '234234', '234234', 'Đã giao', '1rXIJ9JElLxPkoA1NrVi', 'Nhanh', 'Thanh toán online', NULL),
(4, 8, '2023-11-11 00:00:00', 435000, '23424', '2342342342', 'Datlvnttan@gmail.com', 'Tôi muốn thay đổi địa chỉ giao hàng', '234234', 'Đã hủy', 'W0ZEeRl1szt8oeTdsiyZ', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(5, 8, '2023-11-11 00:00:00', 435000, '23424', '2342342342', 'Datlvnttan@gmail.com', '234234', '234234', 'Bị từ chối', 'Fy6ig4YBpZlPp1kXZrDw', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(6, 8, '2023-11-11 00:00:00', 435000, '23424', '2342342342', 'Datlvnttan@gmail.com', 'Tôi muốn thay đổi địa chỉ giao hàng', '234234', 'Đã hủy', 'htlUmNxdct8LrRh1gsm1', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(7, 8, '2023-11-11 00:00:00', 435000, '23424', '2342342342', 'Datlvnttan@gmail.com', 'Tôi muốn thay đổi địa chỉ giao hàng', '234234', 'Đã hủy', 'xbhJZGvZ6M81OEHpv9uP', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(8, 8, '2023-11-11 00:00:00', 435000, '23424', '2342342342', 'Datlvnttan@gmail.com', '234234', '234234', 'Đang xử lý', 'A3OWX1e7RLyHVLz4Y4Oy', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(9, 8, '2023-11-11 00:00:00', 435000, '23424', '2342342342', 'Datlvnttan@gmail.com', '234234', '234234', 'Đang xử lý', 'c4DQudQl8YhLFTgrDGQi', 'Nhanh', 'Thanh toán online', NULL),
(10, 8, '2023-11-11 00:00:00', 435000, '23424', '2342342342', 'Datlvnttan@gmail.com', 'Tôi cảm thấy người này có ý đồ lừa đảo', '234234', 'Bị từ chối', '7sbBe4EAk8TQsNshoLHz', 'Nhanh', 'Thanh toán online', NULL),
(11, 8, '2023-11-11 00:00:00', 435000, '3453535345345', '8797897897', 'Datlvnttan@gmail.com', '234234', '140 Lê Trọng Tấn', 'Chờ xác thực', 'xtjZBDZ8V9kkFQ3AMKMC', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(12, 8, '2023-02-11 00:00:00', 435000, '3453535345345', '8797897897', 'Datlvnttan@gmail.com', '234234', '140 Lê Trọng Tấn', 'Đã giao', 'LTMLvOv6dQGPWEaIyfhY', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(13, 8, '2023-03-11 00:00:00', 435000, 'Lê Pahst Đat', '2342342342', 'Datlvnttan@gmail.com', '234234', '234', 'Đã giao', 'GAEtXQxM1u5YmW7WZ6oE', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(14, 8, '2023-05-11 00:00:00', 435000, '3453535345345', '8797897897', 'ledat@gmail.com', NULL, '334', 'Đã giao', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(15, 8, '2023-05-11 00:00:00', 435000, '424423', '2342342423', 'ledat@gmail.com', NULL, '23423423', 'Đã giao', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(16, 8, '2023-08-16 00:00:00', 435000, 'Lê Pahst Đat', '2423423423', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Đã giao', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(17, 8, '2023-09-16 00:00:00', 435000, 'Lê Pahst Đat', '8797897897', 'Datlvnttan@gmail.com', '234234', '140 Lê Trọng Tấn', 'Đã giao', 'c4kCTqbTcf0opZh8IEFr', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(18, 8, '2023-11-17 00:00:00', 92000, '424423', '8797897897', 'Datlvnttan@gmail.com', '34534', 'Tài', 'Đã giao', 'JBYTVBF0UCR6JQDUCTMQ', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(19, 8, '2023-10-17 00:00:00', 392000, '3453535345345', '8797897897', 'Datlvnttan@gmail.com', NULL, 'rewrewr', 'Đã giao', 'PGKFXETWQMKDZFNZOCMF', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(20, NULL, '2023-11-24 00:00:00', 86250, '3453535345345', '2423423423', 'Datlvnttan@gmail.com', 'Thủ tục thanh toán quá rắc rối', '140 Lê Trọng Tấn', 'Đã hủy', 'AVSBZMXHBKRXJ82O8ZPN', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(21, NULL, '2023-11-24 00:00:00', 172500, '424423', '2423423423', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(22, NULL, '2023-12-13 00:00:00', 428000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Đã giao', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(23, NULL, '2023-12-13 00:00:00', 230000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(24, NULL, '2023-12-14 00:00:00', 720000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(25, NULL, '2023-12-14 00:00:00', 720000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(26, NULL, '2023-12-14 00:00:00', 720000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(27, NULL, '2023-12-14 00:00:00', 720000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(28, NULL, '2023-12-14 00:00:00', 720000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(29, NULL, '2023-12-14 00:00:00', 720000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(30, NULL, '2023-12-14 00:00:00', 720000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(31, NULL, '2023-12-14 00:00:00', 720000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(36, 8, '2023-12-14 00:00:00', 835000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', 'Tôi muốn thay đổi sản phẩm trong đơn hàng', '140 Lê Trọng Tấn', 'Đã hủy', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(37, NULL, '2023-12-15 00:00:00', 175000, '3453535345345', '8797897897', 'Datlvnttan@gmail.com', 'gần chùa', '140 Lê Trọng Tấn', 'Đang xử lý', 'UWS4LGMRUOZLKULOHEXO', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(38, NULL, '2023-12-15 00:00:00', 175000, 'Lê Pahst Đat 2222222', '8797897897', 'Datlvnttan@gmail.com', 'gần chùa', '140 Lê Trọng Tấn', 'Chờ xác nhận', 'TJ1UIKZLBUX7ZUJRC5T7', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(39, NULL, '2023-12-15 00:00:00', 175000, 'Lê Pahst Đat 23423423424243', '8797897897', 'Datlvnttan@gmail.com', 'Đổi ý, không muốn mua nữa', '140 Lê Trọng Tấn', 'Đã hủy', 'Y6SFQTE4R7YWUD3UZTQA', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(40, 8, '2023-12-15 22:20:31', 345000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, '140 Lê Trọng Tấn', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(41, 8, '2023-12-15 23:21:51', 345000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, 'Xã Hùng Mỹ, Huyện Chiêm Hóa, Tỉnh Tuyên Quang', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(42, NULL, '2023-12-15 23:22:54', 345000, 'Lê Pahst Đat 999', '2442424323', 'Datlvnttan@gmail.com', NULL, 'Xã Bồ Lý, Huyện Tam Đảo, Tỉnh Vĩnh Phúc', 'Chờ xác thực', 'KPXPKEWPVQODTQXM9VLT', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(43, NULL, '2023-12-15 23:30:35', 345000, 'Lê Pahst Đat mới', '2342342342', 'Datlvnttan@gmail.com', 'gần chùa', 'Xã Hướng Đạo, Huyện Tam Dương, Tỉnh Vĩnh Phúc', 'Chờ xác nhận', 'GYTSZIFIQ4U85NFE5RBX', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(44, 8, '2023-12-16 01:31:01', 573000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, 'Xã Hùng Mỹ, Huyện Chiêm Hóa, Tỉnh Tuyên Quang', 'Chờ xác nhận', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(45, 8, '2023-12-16 01:36:12', 345000, 'LÊ PHát Dạt', '8797897897', 'Datlvnttan@gmail.com', NULL, 'Xã Hùng Mỹ, Huyện Chiêm Hóa, Tỉnh Tuyên Quang', 'Đang xử lý', NULL, 'Tiết kiệm', 'Thanh toán online', NULL),
(46, 8, '2023-12-17 12:09:42', 375000, 'LÊ PHát Dạt 3', '8797897897', 'Datlvnttan@gmail.com', NULL, 'Xã Pải Lủng, Huyện Mèo Vạc, Tỉnh Hà Giang', 'Đang xử lý', NULL, 'Tiết kiệm', 'Thanh toán online', NULL),
(47, 8, '2023-12-17 22:55:30', 345000, 'LÊ PHát Dạt 3', '8797897897', 'Datlvnttan@gmail.com', NULL, 'Xã Pải Lủng, Huyện Mèo Vạc, Tỉnh Hà Giang', 'Đang xử lý', NULL, 'Nhanh', 'Thanh toán online', NULL),
(48, 8, '2023-01-17 22:56:34', 1608000, 'LÊ PHát Dạt 3', '8797897897', 'Datlvnttan@gmail.com', NULL, 'Xã Pải Lủng, Huyện Mèo Vạc, Tỉnh Hà Giang', 'Đang giao', NULL, 'Tiết kiệm', 'Thanh toán online', NULL),
(49, 8, '2023-12-17 22:57:19', 345000, 'LÊ PHát Dạt 3', '8797897897', 'Datlvnttan@gmail.com', NULL, 'Xã Pải Lủng, Huyện Mèo Vạc, Tỉnh Hà Giang', 'Chờ xác nhận', NULL, 'Siêu tốc', 'Thanh toán khi nhận hàng', NULL),
(50, NULL, '2023-12-17 22:59:32', 345000, 'Lê Kêu Hảnh', '8797897897', 'Datlvnttan@gmail.com', 'gần chùa', 'Xã Xuân Lôi, Huyện Lập Thạch, Tỉnh Vĩnh Phúc', 'Chờ xác thực', '7OEIGGRJJWCDJ7RUSVIT', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(51, NULL, '2023-12-17 23:00:09', 345000, 'Lê Minh Nhựa', '2442424323', 'Datlvnttan@gmail.com', NULL, 'Thị trấn Bình Gia, Huyện Bình Gia, Tỉnh Lạng Sơn', 'Chờ xác thực', 'SPKAZ8IVQLP7A6UQMD4W', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(52, NULL, '2023-12-17 23:02:58', 230000, 'Lê Ánh 2', '0145719425', 'Datlvnttan@gmail.com', NULL, 'Xã Hướng Đạo, Huyện Tam Dương, Tỉnh Vĩnh Phúc', 'Chờ xác thực', 'LIAP5MFWHM6T3CKAQVK1', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(53, NULL, '2023-12-17 23:05:28', 230000, 'Lê Ánh 2', '0987547713', 'Datlvnttan@gmail.com', NULL, 'Xã Long Châu, Huyện Yên Phong, Tỉnh Bắc Ninh', 'Chờ xác thực', '7681BP2ZFM40VLJMSXMV', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(54, NULL, '2023-12-17 23:06:19', 230000, 'Lê Pahst Đat', '2442424323', 'Datlvnttan@gmail.com', NULL, 'Xã Tứ Xã, Huyện Lâm Thao, Tỉnh Phú Thọ', 'Chờ xác thực', 'BMKMUCGLERBGR4RNGKO3', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(55, NULL, '2023-12-17 23:07:18', 230000, 'Lê Pahst Đat', '2442424323', 'Datlvnttan@gmail.com', NULL, 'Xã Tứ Xã, Huyện Lâm Thao, Tỉnh Phú Thọ', 'Chờ xác thực', 'QSALFDRTBPGNNCU55FB6', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(56, NULL, '2023-12-17 23:07:36', 230000, 'Lê Pahst Đat', '2442424323', 'Datlvnttan@gmail.com', NULL, 'Xã Tứ Xã, Huyện Lâm Thao, Tỉnh Phú Thọ', 'Chờ xác thực', '5MZK6G34SCS4MHYKUORH', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(61, NULL, '2023-12-17 23:11:04', 230000, 'Lê Pahst Đat', '2442424323', 'Datlvnttan@gmail.com', NULL, 'Xã Tứ Xã, Huyện Lâm Thao, Tỉnh Phú Thọ', 'Chờ xác thực', 'MY1CLQIN1GHOZXPFXBSA', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(62, NULL, '2023-12-19 08:44:26', 575000, 'Chúa Heo', '0984786276', 'dohueman.ltp20@gmail.com', NULL, 'Xã Thu Phong, Huyện Cao Phong, Tỉnh Hoà Bình', 'Đang xử lý', 'NBHZPQKROS56GDEGOAP9', 'Tiết kiệm', 'Thanh toán online', NULL),
(63, NULL, '2023-12-19 08:46:58', 198000, 'Chúa Heo', '0984786276', 'dohueman.ltp20@gmail.com', 'Thủ tục thanh toán quá rắc rối', 'Xã Khả Cửu, Huyện Thanh Sơn, Tỉnh Phú Thọ', 'Đã hủy', 'LIWLHDKJEV0NWUSXEE5L', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(64, 12, '2023-12-19 09:00:56', 345000, 'Đỗ Chúa Heo nè', '0984547713', 'dohueman.ltp20@gmail.com', 'Thủ tục thanh toán quá rắc rối', 'Xã Đồng Lạc, Huyện Chợ Đồn, Tỉnh Bắc Kạn', 'Đã hủy', NULL, 'Tiết kiệm', 'Thanh toán khi nhận hàng', NULL),
(65, 12, '2022-12-19 09:07:30', 528000, 'Đỗ Chúa Heo nè', '0984547713', 'dohueman.ltp20@gmail.com', NULL, 'Xã Đồng Lạc, Huyện Chợ Đồn, Tỉnh Bắc Kạn', 'Đã giao', NULL, 'Nhanh', 'Thanh toán online', NULL),
(66, NULL, '2023-12-25 08:53:07', 511000, 'Đỗ Thị Hành', '0987567676', 'dohueman.ltp20@gmail.com', 'Tôi muốn thay đổi sản phẩm trong đơn hàng', 'Xã Việt Ngọc, Huyện Tân Yên, Tỉnh Bắc Giang', 'Đã hủy', 'HCMX8ZBDRSAJYYD32CZJ', 'Siêu tốc', 'Thanh toán khi nhận hàng', NULL),
(67, NULL, '2023-12-25 08:59:51', 894000, 'Đỗ Thị Hành', '0987567676', 'dohueman.ltp20@gmail.com', NULL, 'Xã Công Bằng, Huyện Pác Nặm, Tỉnh Bắc Kạn', 'Đang xử lý', 'DPYPW2XJCO2WPOS6YVSK', 'Tiết kiệm', 'Thanh toán online', NULL),
(68, 18, '2023-12-25 09:05:41', 403000, 'Đỗ Thị Hành 5', '0987567676', 'tillman.eloy@mailinator.com', 'Tôi không muốn bán cho người này', 'Xã Ta Ma, Huyện Tuần Giáo, Tỉnh Điện Biên', 'Bị từ chối', NULL, 'Tiết kiệm', 'Thanh toán khi nhận hàng', NULL),
(69, 18, '2023-12-25 09:12:27', 205000, 'Đỗ Thị Hành 5', '0987567676', 'tillman.eloy@mailinator.com', 'Tìm thấy giá rẻ hơn ở chỗ khác', 'Xã Ta Ma, Huyện Tuần Giáo, Tỉnh Điện Biên', 'Đã hủy', NULL, 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(70, 8, '2023-12-25 09:36:15', 645000, 'LÊ PHát Dạt 3', '8797897897', 'dohueman.ltp20@gmail.com', NULL, 'Xã Pải Lủng, Huyện Mèo Vạc, Tỉnh Hà Giang', 'Đang xử lý', NULL, 'Nhanh', 'Thanh toán online', NULL),
(71, NULL, '2023-12-25 11:57:48', 230000, 'Đỗ Thị Hành', '0987567676', 'dohueman.ltp20@gmail.com', 'Tôi muốn thay đổi sản phẩm trong đơn hàng', 'Xã Bảo Hưng, Huyện Trấn Yên, Tỉnh Yên Bái', 'Đã hủy', 'FGJNLYJW55FYAJRAZAJN', 'Nhanh', 'Thanh toán khi nhận hàng', NULL),
(72, NULL, '2023-12-25 12:01:49', 205000, 'Đỗ Thị Hành', '0987567676', 'dohueman.ltp20@gmail.com', NULL, 'Xã Hoàng Văn Thụ, Huyện Bình Gia, Tỉnh Lạng Sơn', 'Đã giao', 'EYTYQVNRWP0493HZTGMD', 'Nhanh', 'Thanh toán online', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
(7, '2d8e467d-15a2-4c77-b5b5-bc891cc7e1dd', 'database', 'default', '{\"uuid\":\"2d8e467d-15a2-4c77-b5b5-bc891cc7e1dd\",\"displayName\":\"App\\\\Jobs\\\\AutomaticMassEmailJob\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":3,\"maxExceptions\":null,\"failOnTimeout\":false,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\AutomaticMassEmailJob\",\"command\":\"O:30:\\\"App\\\\Jobs\\\\AutomaticMassEmailJob\\\":4:{s:39:\\\"\\u0000App\\\\Jobs\\\\AutomaticMassEmailJob\\u0000subject\\\";s:49:\\\"Thông báo tình trạng đơn hàng của bạn\\\";s:43:\\\"\\u0000App\\\\Jobs\\\\AutomaticMassEmailJob\\u0000contentView\\\";s:25:\\\"emails.update_satus_order\\\";s:36:\\\"\\u0000App\\\\Jobs\\\\AutomaticMassEmailJob\\u0000data\\\";a:2:{s:7:\\\"DonHang\\\";O:18:\\\"App\\\\Models\\\\donhang\\\":30:{s:13:\\\"\\u0000*\\u0000connection\\\";s:5:\\\"mysql\\\";s:8:\\\"\\u0000*\\u0000table\\\";s:7:\\\"donhang\\\";s:13:\\\"\\u0000*\\u0000primaryKey\\\";s:9:\\\"MaDonhang\\\";s:10:\\\"\\u0000*\\u0000keyType\\\";s:3:\\\"int\\\";s:12:\\\"incrementing\\\";b:1;s:7:\\\"\\u0000*\\u0000with\\\";a:0:{}s:12:\\\"\\u0000*\\u0000withCount\\\";a:0:{}s:19:\\\"preventsLazyLoading\\\";b:0;s:10:\\\"\\u0000*\\u0000perPage\\\";i:15;s:6:\\\"exists\\\";b:1;s:18:\\\"wasRecentlyCreated\\\";b:0;s:28:\\\"\\u0000*\\u0000escapeWhenCastingToString\\\";b:0;s:13:\\\"\\u0000*\\u0000attributes\\\";a:13:{s:9:\\\"MaDonhang\\\";i:33;s:4:\\\"MaKH\\\";N;s:7:\\\"NgayMua\\\";s:19:\\\"2023-12-14 00:00:00\\\";s:9:\\\"ThanhTien\\\";d:835000;s:12:\\\"TenNguoiNhan\\\";s:15:\\\"LÊ PHát Dạt\\\";s:3:\\\"SDT\\\";s:10:\\\"8797897897\\\";s:5:\\\"Email\\\";s:20:\\\"Datlvnttan@gmail.com\\\";s:6:\\\"GhiChu\\\";N;s:14:\\\"DiaChiGiaoHang\\\";s:21:\\\"140 Lê Trọng Tấn\\\";s:9:\\\"TrangThai\\\";s:10:\\\"Đang giao\\\";s:5:\\\"token\\\";N;s:19:\\\"PhuongThucVanChuyen\\\";s:5:\\\"Nhanh\\\";s:19:\\\"PhuongThucThanhToan\\\";s:18:\\\"Thanh toán online\\\";}s:11:\\\"\\u0000*\\u0000original\\\";a:13:{s:9:\\\"MaDonhang\\\";i:33;s:4:\\\"MaKH\\\";N;s:7:\\\"NgayMua\\\";s:19:\\\"2023-12-14 00:00:00\\\";s:9:\\\"ThanhTien\\\";d:835000;s:12:\\\"TenNguoiNhan\\\";s:15:\\\"LÊ PHát Dạt\\\";s:3:\\\"SDT\\\";s:10:\\\"8797897897\\\";s:5:\\\"Email\\\";s:20:\\\"Datlvnttan@gmail.com\\\";s:6:\\\"GhiChu\\\";N;s:14:\\\"DiaChiGiaoHang\\\";s:21:\\\"140 Lê Trọng Tấn\\\";s:9:\\\"TrangThai\\\";s:10:\\\"Đang giao\\\";s:5:\\\"token\\\";N;s:19:\\\"PhuongThucVanChuyen\\\";s:5:\\\"Nhanh\\\";s:19:\\\"PhuongThucThanhToan\\\";s:18:\\\"Thanh toán online\\\";}s:10:\\\"\\u0000*\\u0000changes\\\";a:1:{s:9:\\\"TrangThai\\\";s:10:\\\"Đang giao\\\";}s:8:\\\"\\u0000*\\u0000casts\\\";a:0:{}s:17:\\\"\\u0000*\\u0000classCastCache\\\";a:0:{}s:21:\\\"\\u0000*\\u0000attributeCastCache\\\";a:0:{}s:13:\\\"\\u0000*\\u0000dateFormat\\\";N;s:10:\\\"\\u0000*\\u0000appends\\\";a:0:{}s:19:\\\"\\u0000*\\u0000dispatchesEvents\\\";a:0:{}s:14:\\\"\\u0000*\\u0000observables\\\";a:0:{}s:12:\\\"\\u0000*\\u0000relations\\\";a:0:{}s:10:\\\"\\u0000*\\u0000touches\\\";a:0:{}s:10:\\\"timestamps\\\";b:0;s:13:\\\"usesUniqueIds\\\";b:0;s:9:\\\"\\u0000*\\u0000hidden\\\";a:0:{}s:10:\\\"\\u0000*\\u0000visible\\\";a:0:{}s:11:\\\"\\u0000*\\u0000fillable\\\";a:13:{i:0;s:9:\\\"MaDonhang\\\";i:1;s:4:\\\"MaKH\\\";i:2;s:7:\\\"NgayMua\\\";i:3;s:9:\\\"ThanhTien\\\";i:4;s:12:\\\"TenNguoiNhan\\\";i:5;s:3:\\\"SDT\\\";i:6;s:5:\\\"Email\\\";i:7;s:6:\\\"GhiChu\\\";i:8;s:5:\\\"token\\\";i:9;s:14:\\\"DiaChiGiaoHang\\\";i:10;s:9:\\\"TrangThai\\\";i:11;s:19:\\\"PhuongThucVanChuyen\\\";i:12;s:19:\\\"PhuongThucThanhToan\\\";}s:10:\\\"\\u0000*\\u0000guarded\\\";a:1:{i:0;s:1:\\\"*\\\";}}s:7:\\\"message\\\";s:171:\\\"Đơn hàng có mã \'33\' của bạn đóng gói hoàn tất và hiện đã giao cho đơn vị vận chuyển, rất sớm thôi đơn hàng sẽ đến tay của bạn.\\\";}s:36:\\\"\\u0000App\\\\Jobs\\\\AutomaticMassEmailJob\\u0000user\\\";a:2:{s:5:\\\"email\\\";s:20:\\\"Datlvnttan@gmail.com\\\";s:9:\\\"full_name\\\";s:15:\\\"LÊ PHát Dạt\\\";}}\"}}', 'TypeError: htmlspecialchars(): Argument #1 ($string) must be of type string, Illuminate\\Mail\\Message given in D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\helpers.php:124\nStack trace:\n#0 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\helpers.php(124): htmlspecialchars(Object(Illuminate\\Mail\\Message), 11, \'UTF-8\', true)\n#1 D:\\DoAnChuyenNganh\\LinhKienDienTu\\storage\\framework\\views\\7a2da5e48702bbf42184666e173c6584.php(4): e(Object(Illuminate\\Mail\\Message))\n#2 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(124): require(\'D:\\\\DoAnChuyenNg...\')\n#3 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(125): Illuminate\\Filesystem\\Filesystem::Illuminate\\Filesystem\\{closure}()\n#4 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(58): Illuminate\\Filesystem\\Filesystem->getRequire(\'D:\\\\DoAnChuyenNg...\', Array)\n#5 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(72): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'D:\\\\DoAnChuyenNg...\', Array)\n#6 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(195): Illuminate\\View\\Engines\\CompilerEngine->get(\'D:\\\\DoAnChuyenNg...\', Array)\n#7 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(178): Illuminate\\View\\View->getContents()\n#8 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(147): Illuminate\\View\\View->renderContents()\n#9 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(433): Illuminate\\View\\View->render()\n#10 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(408): Illuminate\\Mail\\Mailer->renderView(\'emails.update_s...\', Array)\n#11 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(320): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.update_s...\', NULL, NULL, Array)\n#12 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.update_s...\', Array, Object(Closure))\n#13 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#14 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#15 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(357): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#16 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\AutomaticMassEmail))\n#17 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\AutomaticMassEmail))\n#18 D:\\DoAnChuyenNganh\\LinhKienDienTu\\app\\Jobs\\AutomaticMassEmailJob.php(38): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\AutomaticMassEmail))\n#19 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AutomaticMassEmailJob->handle()\n#20 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#21 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#22 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#23 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#24 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#25 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AutomaticMassEmailJob))\n#26 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AutomaticMassEmailJob))\n#27 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AutomaticMassEmailJob), false)\n#29 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AutomaticMassEmailJob))\n#30 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AutomaticMassEmailJob))\n#31 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AutomaticMassEmailJob))\n#33 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#34 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#35 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#36 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(333): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#37 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#38 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#39 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#40 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#41 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#42 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#43 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#44 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#45 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#46 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#47 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\symfony\\console\\Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#49 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#50 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#51 D:\\DoAnChuyenNganh\\LinhKienDienTu\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#52 {main}\n\nNext Illuminate\\View\\ViewException: htmlspecialchars(): Argument #1 ($string) must be of type string, Illuminate\\Mail\\Message given (View: D:\\DoAnChuyenNganh\\LinhKienDienTu\\resources\\views\\emails\\update_satus_order.blade.php) in D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\helpers.php:124\nStack trace:\n#0 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\PhpEngine.php(60): Illuminate\\View\\Engines\\CompilerEngine->handleViewException(Object(TypeError), 0)\n#1 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Engines\\CompilerEngine.php(72): Illuminate\\View\\Engines\\PhpEngine->evaluatePath(\'D:\\\\DoAnChuyenNg...\', Array)\n#2 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(195): Illuminate\\View\\Engines\\CompilerEngine->get(\'D:\\\\DoAnChuyenNg...\', Array)\n#3 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(178): Illuminate\\View\\View->getContents()\n#4 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\View\\View.php(147): Illuminate\\View\\View->renderContents()\n#5 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(433): Illuminate\\View\\View->render()\n#6 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(408): Illuminate\\Mail\\Mailer->renderView(\'emails.update_s...\', Array)\n#7 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(320): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'emails.update_s...\', NULL, NULL, Array)\n#8 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(205): Illuminate\\Mail\\Mailer->send(\'emails.update_s...\', Array, Object(Closure))\n#9 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#10 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(198): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#11 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(357): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#12 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(301): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\AutomaticMassEmail))\n#13 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(124): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\AutomaticMassEmail))\n#14 D:\\DoAnChuyenNganh\\LinhKienDienTu\\app\\Jobs\\AutomaticMassEmailJob.php(38): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\AutomaticMassEmail))\n#15 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): App\\Jobs\\AutomaticMassEmailJob->handle()\n#16 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#17 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#18 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#19 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#20 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#21 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\AutomaticMassEmailJob))\n#22 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AutomaticMassEmailJob))\n#23 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#24 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(123): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\AutomaticMassEmailJob), false)\n#25 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\AutomaticMassEmailJob))\n#26 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(116): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\AutomaticMassEmailJob))\n#27 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(122): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#28 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(70): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\AutomaticMassEmailJob))\n#29 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#30 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(439): Illuminate\\Queue\\Jobs\\Job->fire()\n#31 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(389): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#32 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(333): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#33 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(137): Illuminate\\Queue\\Worker->runNextJob(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#34 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(120): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#35 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(36): Illuminate\\Queue\\Console\\WorkCommand->handle()\n#36 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(41): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#37 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(93): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#38 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(35): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#39 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(662): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#40 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(211): Illuminate\\Container\\Container->call(Array)\n#41 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\symfony\\console\\Command\\Command.php(326): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(180): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#43 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\symfony\\console\\Application.php(1081): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\symfony\\console\\Application.php(320): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\symfony\\console\\Application.php(174): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 D:\\DoAnChuyenNganh\\LinhKienDienTu\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(201): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\DoAnChuyenNganh\\LinhKienDienTu\\artisan(35): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2023-12-15 15:40:29');

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `MaKH` bigint(11) UNSIGNED NOT NULL,
  `MaHang` int(11) NOT NULL,
  `SoLuongTrongGio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `giohang`
--

INSERT INTO `giohang` (`MaKH`, `MaHang`, `SoLuongTrongGio`) VALUES
(8, 3, 1),
(8, 6, 2),
(8, 7, 1),
(8, 8, 1),
(18, 5, 1),
(18, 6, 1),
(18, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `hanghoa`
--

CREATE TABLE `hanghoa` (
  `MaHang` int(11) NOT NULL,
  `TenHang` varchar(50) NOT NULL,
  `GiaBan` double NOT NULL,
  `SoLuongTon` int(11) NOT NULL,
  `ThoiGianBaoHanh` int(11) NOT NULL,
  `HinhAnh` varchar(50) NOT NULL,
  `FlagXoa` tinyint(1) NOT NULL,
  `MaDanhMuc` int(11) NOT NULL,
  `MaKhuyenMai` int(11) DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hanghoa`
--

INSERT INTO `hanghoa` (`MaHang`, `TenHang`, `GiaBan`, `SoLuongTon`, `ThoiGianBaoHanh`, `HinhAnh`, `FlagXoa`, `MaDanhMuc`, `MaKhuyenMai`, `MoTa`) VALUES
(1, 'Module UDB PCM2704', 230000, 122, 12, '1-1.jpg', 0, 1, 1, 'Module UDB PCM2704 là một sản phẩm đỉnh kout'),
(2, 'Mạch giải mã âm thanh bluetooth 4.1 Micro SD USB p', 115000, 6, 12, '2-1.jpg', 0, 1, 1, NULL),
(3, 'Module nâng áp BOOST DC_DC XL6009 4A', 30000, 55, 6, '3-1.jpg', 0, 1, NULL, NULL),
(4, 'Đồng hồ kim MF47 hàng trung ương Trung Quốc', 230000, 34, 12, '4-1.jpg', 0, 2, 2, NULL),
(5, 'Đồng hồ vạn năng bỏ túi Victor VC921', 300000, 161, 12, '5-1.jpg', 0, 2, 1, NULL),
(6, 'Đồng hồ vạn năng kĩ thuật số DT9205A chống đo nhầm', 198000, 25, 1, '6-1.jpg', 0, 2, 1, NULL),
(7, 'IFIX RT300M mấy kiểm tra đèn nền LED LCD TV mới nh', 830000, 10, 6, '7-1.jpg', 0, 2, 2, ''),
(8, 'Tản nhiệt cho bo công suất class TD', 300000, 29, 1, '8-1.jpg', 0, 3, NULL, NULL),
(9, 'Board nguồn 4 tự chất lượng ca tích hợp IC bảo vệ ', 250000, 0, 200, '9-1.jpg', 0, 3, 1, NULL),
(10, 'Mạch công suất cao CA30 loại 28 sò/ 1 kênh có bù á', 700000, 200000, 12, '10-1.jpg', 0, 3, 1, NULL),
(11, 'Sản phẩm test 3', 90000, 900, 12, '4-2.jpg', 0, 4, 1, 'Đây là mô tả có hai mươi ký tự'),
(12, 'Module 123 456', 230000, 100, 12, '17029538314-1.jpg', 0, 7, 1, 'Test nhe 20 ký tự là đủ roài nhe'),
(13, 'Module b', 230000, 100, 12, '17034731611-1.jpg', 0, 1, 2, 'đây là mô đun đỉnh kout'),
(14, 'Module c', 130000, 100, 12, '17034733441-2.jpg', 0, 1, 11, 'đây là mo đun c nè hihi');

-- --------------------------------------------------------

--
-- Table structure for table `hinhanh`
--

CREATE TABLE `hinhanh` (
  `MaHinh` int(11) NOT NULL,
  `MaHang` int(11) NOT NULL,
  `TenHinh` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hinhanh`
--

INSERT INTO `hinhanh` (`MaHinh`, `MaHang`, `TenHinh`) VALUES
(1, 1, '1-1.jpg'),
(2, 1, '1-2.jpg'),
(3, 1, '1-3.jpg'),
(4, 2, '2-1.jpg'),
(5, 3, '3-1.jpg'),
(6, 3, '3-2.jpg'),
(7, 4, '4-1.jpg'),
(8, 4, '4-2.jpg'),
(9, 4, '4-3.jpg'),
(10, 5, '5-1.jpg'),
(11, 5, '5-2.jpg'),
(12, 6, '6-1.jpg'),
(13, 6, '6-2.jpg'),
(14, 6, '6-3.jpg'),
(15, 7, '7-1.jpg'),
(16, 7, '7-2.jpg'),
(17, 7, '7-3.jpg'),
(18, 8, '8-1.jpg'),
(19, 8, '8-2.jpg'),
(20, 8, '8-3.jpg'),
(21, 9, '9-1.jpg'),
(22, 9, '9-2.jpg'),
(23, 10, '10-1.jpg'),
(24, 10, '10-2.jpg'),
(25, 10, '10-3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `hoadonbaohanhsuachua`
--

CREATE TABLE `hoadonbaohanhsuachua` (
  `YeuCauBaoHanhId` bigint(20) NOT NULL,
  `NgayTao` datetime NOT NULL DEFAULT curdate(),
  `SoLuongThayMoi` int(11) NOT NULL,
  `SoLuongSuaChua` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `MoTa` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadonbaohanhsuachua`
--

INSERT INTO `hoadonbaohanhsuachua` (`YeuCauBaoHanhId`, `NgayTao`, `SoLuongThayMoi`, `SoLuongSuaChua`, `ThanhTien`, `MoTa`) VALUES
(6, '2023-12-19 10:24:30', 1, 0, 0, 'Đổi mới miễn phí'),
(8, '2023-12-25 09:53:30', 0, 1, 0, 'đổi mới miễn phí'),
(11, '2023-12-25 12:08:12', 2, 0, 0, 'đổi mới miễn phí');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` bigint(20) UNSIGNED NOT NULL,
  `TenDangNhap` varchar(255) NOT NULL,
  `HoVaTen` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `SDT` varchar(255) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(5) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(20) NOT NULL,
  `DaXacMinh` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenDangNhap`, `HoVaTen`, `Email`, `SDT`, `NgaySinh`, `GioiTinh`, `password`, `token`, `DaXacMinh`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user01', 'Lê minh hô', 'ledat@gmail.com', NULL, '2002-12-25', NULL, '$2y$10$bsr.l72cucLlteucqkYKKewIKEPf1YmdocSAsDCaIA3uQoOX4werm', 'SRM8PWHF7QWFXVJ939BZ', 0, NULL, '2023-12-25 05:22:10', '2023-11-04 05:22:10'),
(2, 'user02', 'Lê minh hô', 'dat@gmail.com', NULL, NULL, NULL, '$2y$10$aOPpMfheweO311av2vjP4eCro8D.rD2oYgJzImq1dmWZP6MgKKvZC', 'PQDEBGR39YWICBO8E6CU', 0, NULL, '2023-11-04 05:22:32', '2023-11-04 05:22:32'),
(3, 'leanh', 'Lê Ánh', 'anhle@gmail.com', NULL, NULL, NULL, '$2y$10$aOPpMfheweO311av2vjP4eCro8D.rD2oYgJzImq1dmWZP6MgKKvZC', 'PQDEBGR39YWICDF8E6CU', 0, NULL, '2023-11-04 05:22:33', '2023-11-04 05:22:33'),
(4, 'doman', 'Lê Mẫn', 'mando@gmail.com', NULL, NULL, NULL, '$2y$10$aOPpMfheweO311av2vjP4eCro8D.rD2oYgJzImq1dmWZP6MgKKvZC', 'PQDESUR39YWICBO8E6CU', 0, NULL, '2023-11-04 05:22:34', '2023-11-04 05:22:34'),
(5, 'user05', 'Lê Phát Đạt', 'vntan@gmail.com', NULL, NULL, NULL, '$2y$10$J9JKvQVlMYlBsOePy/aq2.um5c9VwOZFhxP1Dzcb/VzYEZT7da3yy', 'ZCN8CGIEHZ8GMNUBL8XU', 0, NULL, '2023-11-04 09:05:10', '2023-11-04 09:05:10'),
(8, 'user06', 'Lê Phát Đạt', 'dohueman.ltp20@gmail.com', '387079343', '2002-12-25', 'Nam', '$2y$10$5/TrhTgbQWJ2gMHEbToDbeHN6zKpKLVwkr2pAlvdFSeC767oRDnSu', 'GQMON8VGA4RN3THNZIUY', 1, NULL, '2023-12-25 05:22:10', '2023-12-25 04:22:11'),
(9, 'user07', 'Lê Phát Đạt 2', 'Datlvnttan@gmail.com', NULL, NULL, NULL, '$2y$10$tW6nxGL.lMqBPPwLR.Evr.F0tC7QrL2HJVAJgGuWrzCoW2AWPh4qG', '3NXWOEJDWGZ5JHDIMAHX', 0, NULL, '2023-12-25 05:22:10', '2023-12-09 01:04:17'),
(10, 'user08', 'Lê Phát Đạt 2', 'ngocanha2hp@gmail.com', NULL, NULL, NULL, '$2y$10$j2fem.9dMiUTBZnuIJyV3.nv2Fgkk3F9I9uyQcaVg1ozdrtG1uVrG', 'LZRY8TRDK5YVNXOWCJRO', 0, NULL, '2023-12-15 16:42:38', '2023-12-15 16:42:38'),
(11, 'user09', 'Lê Phát Đạt 99', 'Datlvnttan00@gmail.com', NULL, NULL, NULL, '$2y$10$3Dxedl61qef87dgL6I8KL.BKZiVrqTafA7jmCn3GX5bXWhmbZGFem', 'QRBVSD2DUIABCBHMMKFH', 0, NULL, '2023-12-15 17:00:08', '2023-12-15 17:00:08'),
(12, 'chuahecutephomaiquehihi', 'Nguyễn Dăn lê Chúa Heo', 'dohueman.ltp21@gmail.com', NULL, '2002-12-25', 'Nữ', '$2y$10$p.LZxZF8ngLKyVJRjm5bA.DRWqWTsR8VhsQcO1w8U.9v3cJepjKX2', '6DXQD7CTF8CEVK7RNTPT', 0, NULL, '2023-12-19 01:41:55', '2023-12-19 02:04:25'),
(13, 'ledner.jose', 'Gwen Swift', 'monte57@mailinator.com', '773-776-2717', '1978-03-14', 'Nữ', '$2y$10$/vPajF2S6qR0pKdtp6BUb.hBzfWutq5L84bFeAIg3vgyV7nH241bu', 'TLRYE3MUITSI3WNBRNJF', 1, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(14, 'melyssa.paucek', 'Mrs. Maybell Upton PhD', 'delbert36@mailinator.com', '+1 (732) 758-5352', '2015-01-12', 'Nam', '$2y$10$RTpmGrmvhOMCKnD.3tMajOW3PC7hfUHqFq5habbU3b57AhtaXwASa', 'HPU1NCPYUA2UCYL2CNLC', 1, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(15, 'estrella41', 'Elyse Jaskolski', 'maeve.altenwerth@mailinator.com', '754.281.3051', '2008-07-17', 'Nam', '$2y$10$rQp5Rm5CAeyO4lAUi8m3meVFh0Shse.32CCsf7k.Xln3zbzKJCvCO', 'VJ5I0XDUGA8POU5QEXPU', 1, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(16, 'pearl52', 'Leta Mann', 'jalen.moen@mailinator.com', '+1 (443) 606-2430', '2002-12-25', 'Nữ', '$2y$10$XDTnSb5NFmQuhnt86yU.jeWD7rEM/M4J7vNAcR7d3Ab9eDl2zfY9i', '6W19ZH2QW1EIA3ZRGJOH', 1, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(17, 'peyton.labadie', 'Estella Rodriguez', 'elisa.shields@mailinator.com', '+1-559-339-6205', '2002-12-25', 'Nam', '$2y$10$G/mlmAGxqNouIYDzJTecSeqthZ/UxrLW9xboqa3yuIqpHdYCCGYk.', 'ET9HLP28ZWHLSUI1ZIVA', 0, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(18, 'dlangworth', 'Kim Harris', 'tillman.eloy@mailinator.com', '425.291.2026', '2002-12-25', 'Nữ', '$2y$10$776BI4ywRa6Af.sxaNiCw.dlhsuSRGk1t2Tus5n4S/yuCrHFMLrA6', 'MN3KIIVI4E5H9GW1XLSF', 0, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(19, 'nicolas.jessy', 'Elmer Balistreri', 'dcormier@mailinator.com', '930-821-5967', '2002-12-25', 'Nữ', '$2y$10$SJFnWWLALTML3DMQeSLlKOzgBham1.0bMIY/dexd4ZnBd12bYBCI6', 'OLPJPJVUXI3TUWTOM8CS', 0, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(20, 'crooks.carson', 'Ms. Karine Conn II', 'ferry.sedrick@mailinator.com', '409-475-1542', '2002-12-25', 'Nữ', '$2y$10$PWDYsBeUrDp6dt/z92r3eeqR.nd2JBU5ye1mtFiqPWGq2Clnf0tOW', 'WDMHHLZPSAL6XC0WN4WH', 0, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(21, 'shyanne.kutch', 'Ned Mayert', 'dolly19@mailinator.com', '+1-760-265-6564', '1983-01-12', 'Nữ', '$2y$10$I6JCBinODBiINe.xLGX03eSQunShrACMTp03ZkLHPAzp8Czhnoz1O', '9WV3TLFGA9ZDEJMVKEEC', 1, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(22, 'jacquelyn.durgan', 'Russ Johnston', 'misael.cassin@mailinator.com', '+1.352.858.9598', '1992-01-09', 'Nữ', '$2y$10$qRDYQuNwAlK.yNb5dJ1bW./vbx3YF5TXCU1gcw21w5s5grXIGsFXO', '8DJ5IWQNL4MSN4RWTS8E', 1, NULL, '2023-12-25 00:29:37', '2023-12-25 00:29:37'),
(23, 'lynch.kiara', 'Hubert Moore', 'jared.greenfelder@mailinator.com', '+1-856-874-7102', '1970-10-26', 'Nữ', '$2y$10$ZdjcA/mQmQiBoiD.zFRyFO4IKzhsTgFe.HXqpafHENiq0XBLVx7JS', 'TIG9G4R2CXYJPK1YLC4P', 1, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(24, 'radams', 'Brycen Ryan', 'roberto85@mailinator.com', '+1-743-383-4997', '1985-05-16', 'Nữ', '$2y$10$VNukdigIg7XLfzQvSC4SUOetE0zS.RKVhU13J7VwyrWgEr5UEvm3q', 'RHA0AU6TUQRFD1D034SA', 1, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(25, 'antonina.buckridge', 'Cathrine O\'Conner', 'richmond83@mailinator.com', '+1 (253) 538-6800', '2003-01-12', 'Nam', '$2y$10$KWbQBi7yWlaha8N.Vk2YuuSq.qRucsVCkWh8lEmPuRPkZBxBhD9Qa', 'XE9YTUOGJKBCQENSAZPL', 1, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(26, 'breitenberg.major', 'Ferne Bruen', 'river89@mailinator.com', '+15079162172', '1977-08-21', 'Nam', '$2y$10$OOc5xGr87k2WKBV2VajJu.X8StPoSJ.qvGKAAsI.r7BggZomm2COe', '4M9AHFYWLT4FESDTMIXH', 0, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(27, 'hgreenholt', 'Peter Macejkovic Jr.', 'mschmeler@mailinator.com', '1-959-907-8837', '2002-12-25', 'Nam', '$2y$10$FhR0eGzW3/kpIrwFZosv..AkFld1eKY3mfmoy/iVlrGlFvW1lvSrK', 'BWMAB4JOETMJH9ZJMLPH', 1, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(28, 'donnie.damore', 'Mr. Zackery Friesen', 'calista09@mailinator.com', '813-979-2849', '2006-03-14', 'Nam', '$2y$10$4Ts9/kwCgMx346QkduK0oedK5JHf22VoCR3kuMCjVX9jNUFhpj712', 'FDPIF2XDEVWEMGLUNQMY', 0, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(29, 'jennyfer.smitham', 'Cyrus Sanford', 'ngorczany@mailinator.com', '516-836-5294', '2010-03-01', 'Nam', '$2y$10$jd3q5vP3ViatpMkVV9KvTehhMy.UyVnk4FiHquV0OUxoUrv2xxVxG', 'A0A5EZ9EJEEM5GMO7VMN', 0, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(30, 'arvel.moen', 'Dr. Berniece Jerde II', 'tomasa45@mailinator.com', '+1-856-436-5367', '1992-07-28', 'Nữ', '$2y$10$X1QeTdUjuPngJntVF.xkfe82bAoxCPsaeeY.6/Ff8Z0PEu0SEG..i', 'DJFAH3IZM6ILMNU2EOO4', 1, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(31, 'nortiz', 'Dr. Cydney Little', 'xupton@mailinator.com', '+13475198113', '2011-11-15', 'Nữ', '$2y$10$sKXljeyglHqx3Pg61pJUne.dPSz7a.bLiTSauy7JILUueqTuKt2Ua', 'UDIHY0QOJG2MIGC7QTSO', 1, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(32, 'reynolds.javier', 'Ashton Collins PhD', 'wlindgren@mailinator.com', '+1-346-534-3740', '2015-03-19', 'Nam', '$2y$10$LeLBLdJhptl7dEigz2DLLuZyJ3yHF78F4iQi44jPgBe9DUdhx/URG', '6UNF4K7CQ9BFUFKZT5XW', 1, NULL, '2023-12-25 00:43:19', '2023-12-25 00:43:19'),
(33, 'user031', 'Do Hue Man', 'dohueman.ltp22@gmail.com', NULL, NULL, NULL, '$2y$10$fvS7.ScLKHqM2g2wfqDSwOLAM646D0Ei0G9L1IbSZ5myKzAhIe6K6', 'LF6PJEIOK0EYHZW03FPP', 0, NULL, '2023-12-25 02:03:22', '2023-12-25 02:03:22');

-- --------------------------------------------------------

--
-- Table structure for table `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` int(11) NOT NULL,
  `TyLeGiamGia` float NOT NULL,
  `NgayBatDau` date NOT NULL,
  `NgayKetThuc` date NOT NULL,
  `TenKhuyenMai` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TyLeGiamGia`, `NgayBatDau`, `NgayKetThuc`, `TenKhuyenMai`) VALUES
(1, 25, '2023-11-01', '2023-11-30', 'Đây là khuyễn mãi'),
(2, 50, '2023-10-30', '2023-12-31', ''),
(9, 20, '2023-12-02', '2023-12-10', 'Đây là khuyễn mãi số 2'),
(11, 45, '2023-12-03', '2024-01-28', 'Đây là khuyễn mãi số 3454');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_08_19_000000_create_failed_jobs_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_10_26_092647_create_jobs_table', 1),
(4, '2023_11_04_074810_add_columns_to_donhang_table', 1),
(5, '2023_11_04_092757_create_binhluan_table', 2),
(6, '2023_11_04_124904_add_columns_to_hanghoa_table', 2),
(7, '2023_11_04_125249_add_columns_to_chitietdonhang_table', 3),
(8, '2023_11_05_094935_drop_columns_to_sodiachi_table', 4),
(9, '2023_11_05_102647_drop_columns_to_sodiachi_table', 5),
(10, '2023_11_11_103112_update_column_to_donhang_table', 5),
(11, '2023_11_11_121730_update_column_to_donhang_table', 6),
(12, '2023_11_11_121914_update_column_to_donhang_table', 7),
(13, '2023_11_17_073523_add_column_to_khuyenmai_table', 8),
(14, '2023_11_18_003558_add_column_to_chitietdonhang_table', 9),
(15, '2023_12_09_123032_update_column_to_phieugiaohang_table', 10),
(16, '2023_12_09_124047_update_column_to_phieugiaohang_table', 11),
(17, '2023_12_13_185427_add_column_to_donhang_table', 12),
(18, '2023_12_15_082805_add_column_to_nhanvien_table', 13),
(19, '2023_12_15_220528_add_column_to_donhang_table', 14),
(20, '2023_12_15_231532_add_column_to_donhang_table', 15);

-- --------------------------------------------------------

--
-- Table structure for table `nguonhang`
--

CREATE TABLE `nguonhang` (
  `MaHang` int(11) NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `GiaNhap` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nguonhang`
--

INSERT INTO `nguonhang` (`MaHang`, `MaNCC`, `GiaNhap`) VALUES
(1, 1, 155000),
(1, 2, 160000),
(2, 1, 80000),
(2, 2, 120000),
(3, 1, 120000),
(3, 2, 18000),
(4, 1, 180000),
(4, 2, 190000),
(5, 1, 231000),
(6, 1, 120000),
(6, 2, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` int(11) NOT NULL,
  `TenNCC` varchar(50) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `SDT` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`, `DiaChi`, `SDT`) VALUES
(1, 'Công ty TNHH Kỹ thuật Điện tử TH', 'Tây thạnh, tân phú', '1234567890'),
(2, 'Công ty TNHH Kỹ thuật Điện tử TH', 'Hà Nội', '2349823748'),
(3, 'Công ty Thiết bị Điện tử ABECO', 'Đồng Nai 3', '0468243963'),
(34234238, 'Nhà cung cấp 2', 'Bến Tre 2', '0984547719');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` bigint(20) UNSIGNED NOT NULL,
  `TenNV` varchar(50) NOT NULL,
  `TenDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(255) NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(5) NOT NULL,
  `SDTNV` varchar(10) NOT NULL,
  `DiaChi` varchar(100) NOT NULL,
  `ChucVu` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '$2y$10$bsr.l72cucLlteucqkYKKewIKEPf1YmdocSAsDCaIA3uQoOX4werm'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `TenDangNhap`, `MatKhau`, `NgaySinh`, `GioiTinh`, `SDTNV`, `DiaChi`, `ChucVu`, `password`) VALUES
(1, 'Lê Đại Phát 3', 'phatle', '$2y$10$bsr.l72cucLlteucqkYKKewIKEPf1YmdocSAsDCaIA3uQoOX4werm', '2000-10-07', 'Nam', '0135893257', '81A Nguyễn Văn Bứa, Xuân Thới Sơn, Hóc Môn', 'Quản lý', '$2y$10$bsr.l72cucLlteucqkYKKewIKEPf1YmdocSAsDCaIA3uQoOX4werm'),
(2, 'Nguyễn Mỹ Nhân', 'nhannguyen', '123', '1999-11-02', 'Nữ', '0135893456', '4C Đồng xoài 2', 'Nhân Viên', '$2y$10$bsr.l72cucLlteucqkYKKewIKEPf1YmdocSAsDCaIA3uQoOX4werm'),
(3, 'Đỗ Huệ Mẫn', 'doman', '123', '2023-10-20', 'Nữ', '0984786276', 'Tân Sơn Nhì', 'Quản lý', '$2y$10$2mbTz0YkjsVxJOyhLZps0OFe2r7iQuJQPS9LdQly7zJVd9NBY81Hq'),
(4, 'Lê Tuấn a', 'tuana', '123', '2001-12-19', 'Nam', '0984786276', 'Bến Tre', 'Nhân viên', '$2y$10$bsr.l72cucLlteucqkYKKewIKEPf1YmdocSAsDCaIA3uQoOX4werm'),
(5, 'Đỗ Huệ Mẫn 99', 'doman99', '123', '2002-12-06', 'Nam', '0984786276', 'Bến Tre', 'Nhân viên', '$2y$10$bsr.l72cucLlteucqkYKKewIKEPf1YmdocSAsDCaIA3uQoOX4werm');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieudathang`
--

CREATE TABLE `phieudathang` (
  `SoPhieuDatHang` int(11) NOT NULL,
  `MaNV` bigint(20) UNSIGNED NOT NULL,
  `MaNCC` int(11) NOT NULL,
  `NgatDat` date NOT NULL,
  `TongSL` int(11) NOT NULL,
  `ThanhTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieudathang`
--

INSERT INTO `phieudathang` (`SoPhieuDatHang`, `MaNV`, `MaNCC`, `NgatDat`, `TongSL`, `ThanhTien`) VALUES
(1, 1, 1, '2023-12-08', 12, 3000000),
(2, 2, 1, '2023-12-06', 234, 4000000),
(3, 2, 3, '2023-12-06', 234, 3000000),
(5, 2, 1, '2023-12-06', 234, 3000000),
(6, 1, 1, '2023-12-15', 122, 22410000),
(7, 1, 1, '2023-12-15', 124, 22870000),
(8, 1, 1, '2023-12-15', 124, 22870000),
(9, 1, 1, '2023-12-15', 124, 22870000),
(10, 1, 1, '2023-12-15', 124, 22870000),
(11, 1, 1, '2023-12-15', 124, 22870000),
(12, 1, 1, '2023-12-15', 124, 22870000),
(14, 1, 1, '2023-12-17', 7, 1348000),
(15, 3, 2, '2023-12-19', 200, 39600000),
(16, 1, 1, '2023-12-19', 16, 3085000),
(17, 1, 1, '2023-12-25', 201, 47630000);

-- --------------------------------------------------------

--
-- Table structure for table `phieugiaohang`
--

CREATE TABLE `phieugiaohang` (
  `SoPhieuGiaoHang` int(11) NOT NULL,
  `SoPhieuDatHang` int(11) NOT NULL,
  `NgayGiao` date NOT NULL,
  `TongSoLuong` int(11) NOT NULL,
  `GhiChu` varchar(255) DEFAULT NULL,
  `TrangThai` varchar(20) NOT NULL,
  `ThanhTien` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieugiaohang`
--

INSERT INTO `phieugiaohang` (`SoPhieuGiaoHang`, `SoPhieuDatHang`, `NgayGiao`, `TongSoLuong`, `GhiChu`, `TrangThai`, `ThanhTien`) VALUES
(4, 1, '2023-12-09', 22, NULL, 'Đã xác nhận', 4740000),
(5, 1, '2023-12-09', 2, 'Không chính xác', 'Từ chối', 440000),
(6, 2, '2023-12-09', 174, NULL, 'Đã xác nhận', 30895000),
(7, 2, '2023-12-09', 28, NULL, 'Đã xác nhận', 3860000),
(8, 2, '2023-12-09', 184, 'Không chính xác', 'Từ chối', 38705000),
(9, 3, '2023-12-13', 100, NULL, 'Chờ xác nhận', 20800000),
(10, 3, '2023-12-13', 148, 'Phiếu giao hàng không chính xác vầ hàng hóa', 'Từ chối', 28460000),
(11, 3, '2023-12-13', 287, NULL, 'Chờ xác nhận', 57700000),
(12, 16, '2023-12-19', 4, NULL, 'Đã xác nhận', 709000),
(13, 16, '2023-12-19', 12, NULL, 'Chờ xác nhận', 2376000),
(14, 17, '2023-12-25', 57, NULL, 'Chờ xác nhận', 14510000),
(15, 17, '2023-12-25', 144, NULL, 'Chờ xác nhận', 33120000);

-- --------------------------------------------------------

--
-- Table structure for table `sodiachi`
--

CREATE TABLE `sodiachi` (
  `MaDiaChi` int(11) NOT NULL,
  `MaKH` bigint(20) UNSIGNED NOT NULL,
  `DiaChiCuThe` varchar(50) NOT NULL,
  `DiaChi` varchar(50) NOT NULL,
  `TenNguoiNhan` varchar(50) NOT NULL,
  `SDT` varchar(10) NOT NULL,
  `MacDinh` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sodiachi`
--

INSERT INTO `sodiachi` (`MaDiaChi`, `MaKH`, `DiaChiCuThe`, `DiaChi`, `TenNguoiNhan`, `SDT`, `MacDinh`) VALUES
(4, 3, '30/4 Nguyễn Đỗ Cung', 'Tây Thạnh, Tân Phú, tp HCM', 'Đỗ Mẫn', '0121212332', 1),
(11, 2, '334', 'Xã Yên Sơn, Huyện Hà Quảng, Tỉnh Cao Bằng', '3453535345345', '8797897897', 1),
(12, 2, '334', 'Xã Xuân Trường, Huyện Bảo Lạc, Tỉnh Cao Bằng', '424423', '2423423423', 0),
(13, 2, '334', 'Xã Cao Thượng, Huyện Ba Bể, Tỉnh Bắc Kạn', '424423', '2442424323', 0),
(16, 2, '334', 'Xã Phú Lũng, Huyện Yên Minh, Tỉnh Hà Giang', 'Lê Pahst Đat', '2442424323', 0),
(20, 1, '334', 'Xã Mồ Sì San, Huyện Phong Thổ, Tỉnh Lai Châu', '3453535345345', '8797897897', 0),
(22, 1, '23423423', 'Xã Thượng Hà, Huyện Bảo Lạc, Tỉnh Cao Bằng', '424423', '2342342423', 1),
(43, 12, 'Bến Nghé', 'Xã Đồng Lạc, Huyện Chợ Đồn, Tỉnh Bắc Kạn', 'Đỗ Chúa Heo nè', '0984547713', 1),
(44, 12, 'Bến Nghé', 'Xã Thái Niên, Huyện Bảo Thắng, Tỉnh Lào Cai', 'Đỗ Thị Hành 5', '0987567676', 0),
(46, 18, 'Bến Nghé', 'Xã Quang Trung, Huyện Trùng Khánh, Tỉnh Cao Bằng', 'Đỗ Thị Hành 4', '0987567676', 0),
(47, 18, 'Bến Nghé', 'Xã Ta Ma, Huyện Tuần Giáo, Tỉnh Điện Biên', 'Đỗ Thị Hành 5', '0987567676', 1);

-- --------------------------------------------------------

--
-- Table structure for table `yeucaubaohanh`
--

CREATE TABLE `yeucaubaohanh` (
  `id` bigint(20) NOT NULL,
  `NgayYeuCau` datetime NOT NULL,
  `MaDonHang` int(11) NOT NULL,
  `MaHang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `NguyenNhanBaoHanh` varchar(255) NOT NULL,
  `DaXuLy` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `yeucaubaohanh`
--

INSERT INTO `yeucaubaohanh` (`id`, `NgayYeuCau`, `MaDonHang`, `MaHang`, `SoLuong`, `NguyenNhanBaoHanh`, `DaXuLy`) VALUES
(4, '2023-12-19 09:22:45', 65, 3, 1, 'Xiin lỗi vì đả hổn', 3),
(6, '2023-12-19 09:23:30', 65, 5, 1, 'Thích', 2),
(7, '2023-12-19 09:23:48', 65, 6, 1, 'Năn nỉ bảo hành dùm đi', 3),
(8, '2023-12-19 10:30:53', 65, 3, 1, 'Xiin lỗi vì đả hổn', 2),
(10, '2023-12-25 09:45:56', 19, 2, 1, 'Lỗi thiết bị quá nhiều', 3),
(11, '2023-12-25 12:04:55', 3, 2, 2, 'lỗi thiết bị', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD PRIMARY KEY (`SoPhieuDatHang`,`MaHang`),
  ADD KEY `FK_CTPhieuDH_HangHoa` (`MaHang`);

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`MaDonhang`,`MaHang`),
  ADD KEY `FK_ChiTietDonHang_HangHoa` (`MaHang`);

--
-- Indexes for table `chitietgiaohang`
--
ALTER TABLE `chitietgiaohang`
  ADD PRIMARY KEY (`SoPhieuGiaoHang`,`MaHang`),
  ADD KEY `FK_CTGiaoHang_HangHoa` (`MaHang`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDanhMuc`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`MaDonhang`),
  ADD KEY `FK_DonHang_KhachHang` (`MaKH`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`MaKH`,`MaHang`),
  ADD KEY `fk_giohang_MaHang` (`MaHang`);

--
-- Indexes for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD PRIMARY KEY (`MaHang`),
  ADD KEY `FK_HangHoa` (`MaDanhMuc`),
  ADD KEY `FK_HangHoa_KhuyenMai` (`MaKhuyenMai`);

--
-- Indexes for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD PRIMARY KEY (`MaHinh`),
  ADD KEY `FK_HinhAnh_HangHoa` (`MaHang`);

--
-- Indexes for table `hoadonbaohanhsuachua`
--
ALTER TABLE `hoadonbaohanhsuachua`
  ADD PRIMARY KEY (`YeuCauBaoHanhId`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`),
  ADD UNIQUE KEY `TenDangNhap` (`TenDangNhap`),
  ADD UNIQUE KEY `Email` (`Email`),
  ADD UNIQUE KEY `SDT` (`SDT`);

--
-- Indexes for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nguonhang`
--
ALTER TABLE `nguonhang`
  ADD PRIMARY KEY (`MaHang`,`MaNCC`),
  ADD KEY `FK_NguonHang_NhaCC` (`MaNCC`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `phieudathang`
--
ALTER TABLE `phieudathang`
  ADD PRIMARY KEY (`SoPhieuDatHang`),
  ADD KEY `FK_PhieuDH_NhanVien` (`MaNV`),
  ADD KEY `fk_phieudathang` (`MaNCC`);

--
-- Indexes for table `phieugiaohang`
--
ALTER TABLE `phieugiaohang`
  ADD PRIMARY KEY (`SoPhieuGiaoHang`),
  ADD KEY `FK_PhieuGiaoHang_PhieuDH` (`SoPhieuDatHang`);

--
-- Indexes for table `sodiachi`
--
ALTER TABLE `sodiachi`
  ADD PRIMARY KEY (`MaDiaChi`),
  ADD KEY `FK_SoDiaChi_KhachHang` (`MaKH`);

--
-- Indexes for table `yeucaubaohanh`
--
ALTER TABLE `yeucaubaohanh`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_yeucaubaohanh` (`MaDonHang`,`MaHang`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `MaDanhMuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `MaDonhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hanghoa`
--
ALTER TABLE `hanghoa`
  MODIFY `MaHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `hinhanh`
--
ALTER TABLE `hinhanh`
  MODIFY `MaHinh` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=267;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `MaKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `MaNCC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34234241;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `MaNV` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieudathang`
--
ALTER TABLE `phieudathang`
  MODIFY `SoPhieuDatHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `phieugiaohang`
--
ALTER TABLE `phieugiaohang`
  MODIFY `SoPhieuGiaoHang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sodiachi`
--
ALTER TABLE `sodiachi`
  MODIFY `MaDiaChi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `yeucaubaohanh`
--
ALTER TABLE `yeucaubaohanh`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdathang`
--
ALTER TABLE `chitietdathang`
  ADD CONSTRAINT `FK_CTPhieuDH_HangHoa` FOREIGN KEY (`MaHang`) REFERENCES `hanghoa` (`MaHang`),
  ADD CONSTRAINT `FK_CTPhieuDH_PhieuDH` FOREIGN KEY (`SoPhieuDatHang`) REFERENCES `phieudathang` (`SoPhieuDatHang`);

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `FK_ChiTietDonHang_DonHang` FOREIGN KEY (`MaDonhang`) REFERENCES `donhang` (`MaDonhang`),
  ADD CONSTRAINT `FK_ChiTietDonHang_HangHoa` FOREIGN KEY (`MaHang`) REFERENCES `hanghoa` (`MaHang`);

--
-- Constraints for table `chitietgiaohang`
--
ALTER TABLE `chitietgiaohang`
  ADD CONSTRAINT `FK_CTGiaoHang_HangHoa` FOREIGN KEY (`MaHang`) REFERENCES `hanghoa` (`MaHang`),
  ADD CONSTRAINT `FK_CTGiaoHang_PhieuGH` FOREIGN KEY (`SoPhieuGiaoHang`) REFERENCES `phieugiaohang` (`SoPhieuGiaoHang`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `FK_DonHang_KhachHang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `fk_giohang_MaHang` FOREIGN KEY (`MaHang`) REFERENCES `hanghoa` (`MaHang`),
  ADD CONSTRAINT `fk_giohang_MaKH` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Constraints for table `hanghoa`
--
ALTER TABLE `hanghoa`
  ADD CONSTRAINT `FK_HangHoa` FOREIGN KEY (`MaDanhMuc`) REFERENCES `danhmuc` (`MaDanhMuc`),
  ADD CONSTRAINT `FK_HangHoa_KhuyenMai` FOREIGN KEY (`MaKhuyenMai`) REFERENCES `khuyenmai` (`MaKM`);

--
-- Constraints for table `hinhanh`
--
ALTER TABLE `hinhanh`
  ADD CONSTRAINT `FK_HinhAnh_HangHoa` FOREIGN KEY (`MaHang`) REFERENCES `hanghoa` (`MaHang`);

--
-- Constraints for table `hoadonbaohanhsuachua`
--
ALTER TABLE `hoadonbaohanhsuachua`
  ADD CONSTRAINT `fk_HoaDonBaoHanhSuaChua_YeuCauBaoHangId` FOREIGN KEY (`YeuCauBaoHanhId`) REFERENCES `yeucaubaohanh` (`id`);

--
-- Constraints for table `nguonhang`
--
ALTER TABLE `nguonhang`
  ADD CONSTRAINT `FK_NguonHang_HangHoa` FOREIGN KEY (`MaHang`) REFERENCES `hanghoa` (`MaHang`),
  ADD CONSTRAINT `FK_NguonHang_NhaCC` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`);

--
-- Constraints for table `phieudathang`
--
ALTER TABLE `phieudathang`
  ADD CONSTRAINT `FK_PhieuDH_NhanVien` FOREIGN KEY (`MaNV`) REFERENCES `nhanvien` (`MaNV`),
  ADD CONSTRAINT `fk_phieudathang` FOREIGN KEY (`MaNCC`) REFERENCES `nhacungcap` (`MaNCC`);

--
-- Constraints for table `phieugiaohang`
--
ALTER TABLE `phieugiaohang`
  ADD CONSTRAINT `FK_PhieuGiaoHang_PhieuDH` FOREIGN KEY (`SoPhieuDatHang`) REFERENCES `phieudathang` (`SoPhieuDatHang`);

--
-- Constraints for table `sodiachi`
--
ALTER TABLE `sodiachi`
  ADD CONSTRAINT `FK_SoDiaChi_KhachHang` FOREIGN KEY (`MaKH`) REFERENCES `khachhang` (`MaKH`);

--
-- Constraints for table `yeucaubaohanh`
--
ALTER TABLE `yeucaubaohanh`
  ADD CONSTRAINT `fk_yeucaubaohanh` FOREIGN KEY (`MaDonHang`,`MaHang`) REFERENCES `chitietdonhang` (`MaDonhang`, `MaHang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
