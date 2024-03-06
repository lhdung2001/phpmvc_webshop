-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 06, 2024 lúc 08:16 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `phone`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dienthoai`
--

CREATE TABLE `dienthoai` (
  `idDT` int(11) NOT NULL COMMENT 'Mã điện thoại',
  `TenDT` varchar(100) NOT NULL COMMENT 'Tên điện thoại',
  `slug` varchar(100) DEFAULT NULL,
  `Gia` float DEFAULT NULL COMMENT 'Đơn giá',
  `GiaKM` float DEFAULT NULL COMMENT 'Giá khuyến mãi',
  `urlHinh` varchar(200) DEFAULT NULL COMMENT 'Địa chỉ hình chính',
  `ThoiDiemNhap` datetime DEFAULT NULL COMMENT 'Thời điểm nhập hàng',
  `MoTa` varchar(400) DEFAULT NULL COMMENT 'mô tả điện thoại',
  `SoLanXem` int(11) NOT NULL DEFAULT 0 COMMENT 'Số lượt xem',
  `SoLanMua` int(11) NOT NULL DEFAULT 0 COMMENT 'Số lần mua',
  `Hot` tinyint(1) NOT NULL DEFAULT 0,
  `idNSX` int(11) DEFAULT NULL COMMENT 'mã nhà sản xuất',
  `AnHien` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'ẩn hiện',
  `SoLuongTonKho` int(11) NOT NULL DEFAULT 0 COMMENT 'số lượng tồn kho'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `dienthoai`
--

INSERT INTO `dienthoai` (`idDT`, `TenDT`, `slug`, `Gia`, `GiaKM`, `urlHinh`, `ThoiDiemNhap`, `MoTa`, `SoLanXem`, `SoLanMua`, `Hot`, `idNSX`, `AnHien`, `SoLuongTonKho`) VALUES
(4, 'Iphone 12 512 GB123', 'iphone-12-512', 38000000, 35900000, 'iphone-12-pro-xanh-duong.jpg', '2021-01-18 00:00:00', 'Lại một si&ecirc;u phẩm nữa của series iPhone 12 được Apple cho ra mắt trong sự kiện &ldquo;Hi Speed&rdquo; vừa qua, mang tr&ecirc;n m&igrave;nh c&aacute;c yếu tố của một si&ecirc;u phẩm với nhiều t&iacute;nh năng đặc biệt, hấp dẫn v&agrave; kh&ocirc;ng ai kh&aacute;c đ&oacute; ch&iacute;nh l&agrave; iPhone 12 Pro 512 GB.', 35, 1, 1, 4, 1, 10),
(5, 'iPhone 12 Pro Max 512GB', 'iphone-12-pro', 41999000, 32999000, 'iphone-12-pro-max.jpg', '2021-01-18 00:00:00', 'iPhone 12 Pro Max 512GB - đẳng cấp từ t&ecirc;n gọi đến từng chi tiết. Ngay từ khi chỉ l&agrave; tin đồn th&igrave; chiếc smartphone n&agrave;y đ&atilde; l&agrave;m đứng ngồi kh&ocirc;ng y&ecirc;n bao &ldquo;fan cứng&rdquo; nh&agrave; Apple, với những n&acirc;ng cấp v&ocirc; c&ugrave;ng nổi bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt m&agrave; chưa một chiếc iPhone tiền nhiệm n&a', 95, 1, 1, 4, 1, 1),
(9, 'iphone 12 Mini 12', 'iphone-mini', 12000000, 8000000, 'iphone-12-pro-max-xam.jpg', '2021-01-30 00:00:00', 'iPhone 12 Pro Max 512GB - đẳng cấp từ t&ecirc;n gọi đến từng chi tiết. Ngay từ khi chỉ l&agrave; tin đồn th&igrave; chiếc smartphone n&agrave;y đ&atilde; l&agrave;m đứng ngồi kh&ocirc;ng y&ecirc;n bao &ldquo;fan cứng&rdquo; nh&agrave; Apple, với những n&acirc;ng cấp v&ocirc; c&ugrave;ng nổi &nbsp; bật hứa hẹn sẽ mang đến những trải nghiệm tốt nhất về mọi mặt m&agrave; chưa một chiếc iPhone tiền', 3242, 3201111, 0, 4, 1, 1111111),
(10, 'Điện thoại Samsung Galaxy A12 (6GB/128GB)', 'samsung-A12', 12000000, 9000000, 'samsunggalaxynote20trangnew.jpg', '2021-01-25 00:00:00', 'G&acirc;y ấn tượng với bộ tứ camera thời thượng, hiệu năng ổn định mang đến sự mượt m&agrave; trong mọi t&aacute;c vụ, c&ugrave;ng thời lượng pin ấn tượng,&nbsp;Samsung Galaxy A12&nbsp;(6GB/128GB)&nbsp;sẽ l&agrave; mẫu&nbsp;smartphone&nbsp;đ&aacute;ng mua nhất trong ph&acirc;n kh&uacute;c tầm trung gi&aacute; rẻ của&nbsp;Samsung.', 168, 123, 1, 6, 1, 123),
(11, 'Điện thoại Samsung Galaxy Z Flip', 'samsung_Z-Flip', 36000000, 30000000, 'samsung-galaxy-z-flip-600x600-1-600x600.jpg', '2021-01-25 00:00:00', 'Cuối c&ugrave;ng sau bao nhi&ecirc;u thời gian chờ đợi, chiếc điện thoại&nbsp;Samsung Galaxy Z Flip&nbsp;đ&atilde; được&nbsp;Samsung ra mắt tại sự kiện&nbsp;Unpacked 2020. Si&ecirc;u phẩm với thiết kế m&agrave;n h&igrave;nh gập vỏ s&ograve; độc đ&aacute;o, hiệu năng tuyệt đỉnh c&ugrave;ng nhiều c&ocirc;ng nghệ thời thượng, dẫn dầu 2020.', 14, 12, 1, 6, 1, 1231),
(13, 'Điện thoại OPPO Reno4', 'oppo-Reno-4', 9000000, 8000000, 'oppo-a93.jpg', '2021-01-25 00:00:00', 'OPPO Reno4&nbsp;- Chi&ecirc;́c&nbsp;điện thoại&nbsp;có thi&ecirc;́t k&ecirc;́ thời thượng, hi&ecirc;̣u năng mạnh mẽ cùng b&ocirc;̣ 4 camera si&ecirc;u &acirc;́n tượng, tối ưu h&oacute;a cho chụp ảnh v&agrave; quay phim si&ecirc;u sắc n&eacute;t, hứa hẹn sẽ là sản phẩm đ&aacute;ng để n&acirc;ng cấp của hãng&nbsp;OPPO&nbsp;trong năm nay.', 9, 6, 1, 5, 1, 121),
(15, 'iphone 12 Mini 123', 'iphone-12-mini1', 9000000, 8790000, 'ip7.jpg', '2021-01-26 00:00:00', 'A14 Bionic cho sức mạnh h&agrave;ng đầu\r\nM&ocirc;̃i th&ecirc;́ h&ecirc;̣&nbsp;iPhone&nbsp;mới đ&ecirc;̀u tương ứng với dòng CPU mới hơn nhằm mang lại hi&ecirc;̣u năng mạnh mẽ nh&acirc;́t. C&oacute; lẽ đ&oacute;, m&agrave; iPhone 12 mini c&oacute; nguồn sức mạnh đến từ A14 Bionic với quy tr&igrave;nh sản xuất 5 nm.\r\nĐ&acirc;y được coi l&agrave; con chip thuộc top những con chip mạnh nhất đ', 125, 123, 0, 4, 1, 123),
(16, 'Điện thoại OPPO Reno4 Pro', 'oppo-reno4', 7490000, 11490000, 'oppo-reno4-pro-trang-600x600.jpg', '2021-01-31 00:00:00', '&nbsp;\r\nOPPO Reno4 Pro được trang bị m&agrave;n h&igrave;nh&nbsp;si&ecirc;u tr&agrave;n viền&nbsp;k&iacute;ch thước lớn 6.5 inch, tỉ lệ hiển thị l&ecirc;n tới 93.4%, mật độ điểm ảnh đạt ngưỡng 402 ppi, đạt 100% dải m&agrave;u DCI-P3 điều n&agrave;y cho ph&eacute;p h&igrave;nh ảnh hiển thị chi tiết, sắc n&eacute;t v&agrave; sống động nhất.', 6, 1, 1, 5, 1, 1111),
(17, 'Điện thoại OPPO A93', 'oppo-a93', 7490000, 7190000, 'ss3.jpg', '2021-01-31 00:00:00', 'OPPO A93 được trang bị chipset MediaTek Helio P95 tốc độ CPU đạt 2.2 GHz với sức mạnh như thế n&agrave;y th&igrave; A93 sẽ kh&ocirc;ng l&agrave;m bạn thất vọng khi c&oacute; thể hoạt động tốt với nhiều ứng dụng nặng hay thao t&aacute;c cuộn trang đều diễn ra trơn tru cảm gi&aacute;c như kh&ocirc;ng c&oacute; độ trễ.', 3, 2, 1, 5, 1, 123),
(18, 'Điện thoại Samsung Galaxy A12 (6GB/128GB)', 'sangsum-a12-6-128', 4690000, 4000000, 'samsung-galaxy-a12-trang-600x600-600x600.jpg', '2021-01-31 00:00:00', 'Thiết kế thời trang v&agrave; hợp xu hướng\r\nSamsung Galaxy A12 l&agrave; mẫu smartphone hướng đến đối tượng giới trẻ với những m&agrave;u sắc trẻ trung năng động, đại diện cho những c&aacute; t&iacute;nh ri&ecirc;ng của giới trẻ hiện đại.', 1, 1, 1, 6, 1, 10),
(19, 'Điện thoại Samsung Galaxy Note 20 Ultra 5G Trắng', 'samsung-galaxy-note20-Ultra', 2990000, 2590000, 'samsunggalaxynote20ultratrangnew-600x600-600x600.jpg', '2021-02-01 00:00:00', 'Thiết kế đẳng cấp xứng tầm si&ecirc;u phẩm\r\nSamsung Galaxy Note 20 Ultra 5G sở hữu một thiết kế đẹp như một tuyệt t&aacute;c. Samsung đ&atilde; tối ưu mọi trải nghiệm với kiểu thiết kế tối giản với phần khung nh&ocirc;m v&agrave; 2 mặt k&iacute;nh cao cấp, 4 g&oacute;c sắc cạnh l&agrave;m tăng sự mạnh mẽ nam t&iacute;nh, nhưng vẫn cho cảm gi&aacute;c cầm nắm dễ chịu v&agrave; đẳng cấp nhờ 2 cạnh v', 11, 1, 1, 6, 1, 22),
(20, 'Điện thoại iPhone 11 128GB', 'iphone-11-128', 19490000, 16490000, 'iphone-11-xanhla-600x600-1-600x600.jpg', '2021-01-31 00:00:00', 'Được xem l&agrave; phi&ecirc;n bản iPhone \"gi&aacute; rẻ\" trong bộ 3 iPhone mới ra mắt nhưng&nbsp;iPhone 11 128GB&nbsp;vẫn sở hữu cho m&igrave;nh rất nhiều ưu điểm m&agrave; hiếm c&oacute; một chiếc&nbsp;smartphone&nbsp;n&agrave;o kh&aacute;c sở hữu.\r\nN&acirc;ng cấp mạnh mẽ về cụm camera', 5, 2, 1, 4, 1, 111),
(21, 'Điện thoại iPhone 11 256GB', 'iphone11-256', 21000000, 19990000, 'ip5.jpg', '2021-02-02 00:00:00', 'Đặc điểm nổi bật của iPhone 11 256GB &nbsp; &nbsp; T&igrave;m hiểu th&ecirc;m &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; T&igrave;m hiểu th&ecirc;m &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; T&igrave;m hiểu th&ecirc;m &nbsp; Bộ sản phẩm chuẩn: Hộp, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim', 2, 1, 1, 4, 1, 0),
(22, 'Điện thoại iPhone 12 64GB', 'iphone-12-64', 26990000, 22990000, 'ip1.jpg', '2021-01-31 00:00:00', 'Trong những th&aacute;ng cuối năm 2020&nbsp;Apple&nbsp;đ&atilde; ch&iacute;nh thức giới thiệu đến người d&ugrave;ng cũng như iFan thế hệ iPhone&nbsp;12&nbsp;series&nbsp;mới với h&agrave;ng loạt t&iacute;nh năng bức ph&aacute;, thiết kế được lột x&aacute;c ho&agrave;n to&agrave;n, hiệu năng đầy mạnh mẽ v&agrave; một trong số đ&oacute; ch&iacute;nh l&agrave;&nbsp;iPhone 12 64GB.', 1, 1, 1, 4, 1, 2),
(23, 'Điện thoại Samsung Galaxy Z Flip', 'samsung-Z-flip', 21900000, 20900000, 'samsung-galaxy-z-flip-600x600-1-600x600.jpg', '2021-02-01 00:00:00', 'Cuối c&ugrave;ng sau bao nhi&ecirc;u thời gian chờ đợi, chiếc điện thoại&nbsp;Samsung Galaxy Z Flip&nbsp;đ&atilde; được&nbsp;Samsung&nbsp;ra mắt tại sự kiện&nbsp;Unpacked 2020. Si&ecirc;u phẩm với thiết kế m&agrave;n h&igrave;nh gập vỏ s&ograve; độc đ&aacute;o, hiệu năng tuyệt đỉnh c&ugrave;ng nhiều c&ocirc;ng nghệ thời thượng, dẫn dầu 2020.\r\n&nbsp;', 2, 2, 1, 6, 1, 222),
(24, 'Điện thoại Samsung Galaxy Note 20 Ultra', 'samssung-note-20u', 20990000, 19999000, 'samsung-galaxy-note-20-ultra-vangdong-600x600-600x600.jpg', '2021-02-02 00:00:00', 'Sau&nbsp;Galaxy Note 20&nbsp;th&igrave;&nbsp;Galaxy Note 20 Ultra&nbsp;l&agrave; phi&ecirc;n bản tiếp theo&nbsp;cao cấp hơn thuộc d&ograve;ng Note 20 Series của Samsung, với nhiều thay đổi, từ cụm camera hỗ trợ&nbsp;lấy n&eacute;t laser AF c&ugrave;ng ống k&iacute;nh g&oacute;c rộng mới, m&agrave;n h&igrave;nh tr&agrave;n viền l&ecirc;n đến 6.9 inch.', 2, 1, 1, 6, 1, 1),
(25, 'Điện thoại iPhone XR 64GB', 'iphone-xr', 12490000, 11490000, 'iphone-xr-hopmoi-den-600x600-2-600x600.jpg', '2021-02-01 00:00:00', 'L&agrave; chiếc&nbsp;điện thoại iPhone&nbsp;c&oacute; mức gi&aacute; dễ chịu, ph&ugrave; hợp với nhiều kh&aacute;ch h&agrave;ng hơn,&nbsp;iPhone Xr vẫn được ưu &aacute;i trang bị chip Apple A12 mạnh mẽ, m&agrave;n h&igrave;nh tai thỏ c&ugrave;ng khả năng chống nước chống bụi.', 12, 1, 1, 4, 1, 111),
(26, 'Điện thoại iPhone SE 128GB (2020)', 'iphone-SE', 12990000, 10990000, 'iphone-se-2020-trang-600x600-600x600.jpg', '2021-01-31 00:00:00', 'Sau bao ng&agrave;y chờ đợi,&nbsp;iPhone SE 2020&nbsp;cuối c&ugrave;ng đ&atilde; được ra mắt l&agrave;m thỏa m&atilde;n triệu t&iacute;n đồ T&aacute;o khuyết. Sở hữu thiết kế si&ecirc;u nhỏ gọn như&nbsp;iPhone 8, chip A13 Bionic cho hiệu năng khủng như&nbsp;iPhone 11, nhưng iPhone SE 2020 lại c&oacute; một mức gi&aacute; tốt đến bất ngờ.', 3, 2, 1, 4, 1, 123);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD PRIMARY KEY (`idDT`),
  ADD KEY `fk_dt_nsx` (`idNSX`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  MODIFY `idDT` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Mã điện thoại', AUTO_INCREMENT=28;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `dienthoai`
--
ALTER TABLE `dienthoai`
  ADD CONSTRAINT `fk_dt_nsx` FOREIGN KEY (`idNSX`) REFERENCES `nhasanxuat` (`idNSX`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
