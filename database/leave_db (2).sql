-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 14, 2022 lúc 05:05 AM
-- Phiên bản máy phục vụ: 10.4.24-MariaDB
-- Phiên bản PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `leave_db`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `makh` varchar(14) DEFAULT NULL,
  `tenkh` varchar(62) DEFAULT NULL,
  `diachi` varchar(101) DEFAULT NULL,
  `qlkhuvuc` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`id`, `makh`, `tenkh`, `diachi`, `qlkhuvuc`) VALUES
(1, 'ANHDUNG', 'Anh Dũng chào mẫu', NULL, 'KD04'),
(2, 'ANHHOANG', 'Anh Hoàng chào mẫu', NULL, 'KD04'),
(3, 'ANHKHOA', 'Anh Khoa chào mẫu', NULL, 'KD04'),
(4, 'ANHLUAN', 'Anh Luân chào mẫu', NULL, 'KD04'),
(5, 'ANHPHU', 'Anh Phú chào mẫu', NULL, 'KD04'),
(6, 'ANHTHO', 'Anh Thọ chào mẫu', NULL, 'KD04'),
(7, 'ANHTRUNG', 'Anh Trung chào mẫu', NULL, 'KD04'),
(8, 'ANHTUNG', 'Anh Tùng chào mẫu', NULL, 'KD04'),
(9, 'ANHVIET', 'Anh Việt chào mẫu', NULL, 'KD04'),
(10, 'ANHVUONG', 'Anh Vương chào mẫu', NULL, 'KD04'),
(11, 'C105LVL', 'Chị Phương - Cửa hàng Anh Phương', '105 Lê Văn Lương, P Tân Kiểng, Q7. 8', 'KD06'),
(12, 'C158NGT', 'Công Ty Tường Thái', '158 Ngô Gia Tự, Q.10, tp.hcm', 'KD04'),
(13, 'C15NGT', 'Cửa Hàng 15 Ngô Gia Tự', '15 Ngô Gia Tự, P2, Q10, Tphcm', 'KD04'),
(14, 'C167THD', 'Cửa Hàng Chế Trân', '167 Trần Hưng Đạo,Sóc Trăng', 'KD09'),
(15, 'C177PCD', 'Chị Hương - Cửa hàng Kymdan PCD', '177 Phó Cơ Điều, Quận 11. 10', 'KD02'),
(16, 'C2LTV', 'Hai Liêm Trà Vinh', 'Hai Liêm Trà Vinh', 'KD04'),
(17, 'C49HBT', 'Cửa Hàng 49H Bình Thạnh', '49 Phan Đăng Lưu , F13, Bình Thạnh. 8', 'KD06'),
(18, 'C9NGT', 'Cửa Hàng: 09 Ngô Gia Tự', NULL, 'KD08'),
(19, 'CACPH', 'Anh cẩn - Cửa Hàng Ngọc Lợi', '69 Lý Thường Kiệt, Ngã Bảy, Phụng Hiệp, hậu Giang', 'KD07'),
(20, 'CACPQ', 'Anh Cường- Sun Địa Trung Hải', 'Shophouse Ven26 , Sun Địa Trung Hải, An Thới ,Phú Quốc, Kiên Giang.', 'KD10'),
(21, 'CADHT', 'Chị Vân - Nội Thất Anh Duy - Hà Tiên', '73_75 Trần Hầu. P. Bình San. Tx hà tiên. 8', 'KD01'),
(22, 'CADPT', 'Cửa hàng Màn Cửa Anh Duy- Phan Thiết', '701 Trần Hưng Đạo - Tp. Phan Thiết. 8', 'KD06'),
(23, 'CADTH', 'Cửa Hàng Nệm Êm Ái', 'Hòn Đất, Kiên Giang', 'KD04'),
(24, 'CAKDN', 'Cửa hàng Nội thất Anh Khoa', 'Số 150. Đường 762, Tổ 8, Ấp Tân Thành, Xã Thanh Bình, H.Trảng Bom ,T. Đồng Nai', 'KD07'),
(25, 'CALGV', 'Anh Lộc Gò Vấp ( 0967 893 368)', '92 Quang Trung, F10, Gò 8', 'KD06'),
(26, 'CAMBT', 'Nhà Thuốc ánh Mai', '203N Gò Xoài,P.Bình Hưng Hòa A,Bình Tân,Tphcm', 'KD04'),
(27, 'CAMCM', 'Anh Miền Cà Mau : 0942 879911', '30/4 K.1 Thị Trấn Cái Nước ,Cà Mau . 6', 'KD08'),
(28, 'CAMQN', 'Cửa Hàng ái My- Quy Nhơn ( Không ghi Giá)', '38-40 Trần Quý Cáp- TP Quy Nhơn, T. Bình Định. 10', 'KD06'),
(29, 'CANHTQ12', 'Cửa Hàng Bảo Ngọc', '139 Dương Thị Mời ,Q12 :096.910.5831', 'KD06'),
(30, 'CAQBD', 'Anh Qúy - CH Vivabon Nguyễn', '27 Nguyễn văn Tiết, KP Bình Hòa, p.Lái Thiêu, Thuận An, BD. 8', 'KD07'),
(31, 'CAQTC', 'Anh Quý Trường Chinh (Hoàng Gia)', '419A Ngô Gia Tự, Phường 3, Quận 10, HCM 10', 'KD02'),
(32, 'CASVL', 'Anh Sơn - Vĩnh Lộc', 'Giao đường 3 Khu Dân Cư Vĩnh Lộc. 8', 'KD02'),
(33, 'CAT2LT', 'Cửa hàng Anh Tài 02 .', 'Đường Lê Duẩn, Khu 1, Ấp 3, An Phước Long Thành. 8', 'KD07'),
(34, 'CATBHDN', 'Cửa Hàng Anh Thư', '48/2-KP1,P.Tân Hòa,Biên Hòa ,Đồng nai', 'KD06'),
(35, 'CATBMT', 'Cửa Hàng An Thy- Buôn Mê Thuột', '90 Nguyễn văn Cừ, TP Buôn Mê Thuột', 'KD09'),
(36, 'CATCM', 'Chị Như - DNTN Anh Thư- Cà Mau', '42 Phan Ngọc Hiển, P.4, Cà Mau', 'KD01'),
(37, 'CATDH', 'Anh Thắng- Đức Hòa', 'đường Gò Hưu, ấp Mới Hai, xã Mỹ Hạnh Nam huyện Đức Hòa, LA. 8', 'KD02'),
(38, 'CATDL', 'Cửa Hàng Anh Thư- ĐakLak', '285 Lê Duẫn, F EaTam, TP BMT', 'KD09'),
(39, 'CATGV', 'Anh Thành - Gò Vấp (Đại Lý Kymdan)', 'Số 3 Phạm Ngũ Lão,Gò Vấp', 'KD06'),
(40, 'CATKG', 'Anh Tài Kiên Giang', '58 Trần Phú, Kiên Giang', 'KD01'),
(41, 'CATLD', 'Công Ty TNHH DV SX Anh Thắng. Lâm Đồng', '223 đường 2/4 TT Thạnh Mỹ, Đơn Dương. Lâm Đồng. 8', 'KD09'),
(42, 'CATLT', 'Chị Trinh - Cửa hàng Anh Tài- Long Thành', 'ấp Thành Gòn, Lộc An, Bình Sơn, Long Thành, Đồng Nai. 8', 'KD07'),
(43, 'CATNT', 'Anh Tuấn : Công ty VIOLET ,Nha Trang', 'Xe : 79C-00608 - Tài xế: Anh Hoàng : 0914.1423.20', 'KD08'),
(44, 'CATPL', 'Anh Thuận - Cửa Hàng Phú Lâm', '66/2 Quốc Lộ 22, Tân Thới Nhì, Hóc Môn', 'KD09'),
(45, 'CATQ12', 'Anh Tuấn - Đại lý Vạn Thành', '164 Lê văn Khương,Q12,Tphcm', 'KD07'),
(46, 'CATQ2', 'Cửa Hàng Anh Thư Q.2', '324 Nguyễn Duy Trinh, P. Bình Trưng Tây, Quận 02, 8', 'KD07'),
(47, 'CATQ7', 'Anh Tùng', '176 Lê Văn Bền', 'KD07'),
(48, 'CATQ9', 'Chị Ba - Cửa hàng Anh Thư Q9 (Gia Khiêm)', '820 Nguyễn Duy Trinh, Bình Trưng Tây, Quận 9,Tphcm', 'KD06'),
(49, 'CAVBT', 'DNTN Nam việt Cát Tường- (Không Ghi Giá )', '27A1 Bình Khởi ,p6, Bến tre. 8', 'KD02'),
(50, 'CBDDT', 'Cửa Hàng Bích Đào - Đồng Tháp', 'Số 539 Điện Biên Phủ, TP.Cao Lãnh, Tỉnh Đồng Tháp', 'KD02'),
(51, 'CBDPY', 'Cửa Hàng Bửu Dung - Phú Yên', '231 Trần Hưng Đạo . TP. Tuy Hòa, Phú Yên. Liên hệ anh Dũng (0965324345) nhận hàng (lấy màu tối)', 'KD06'),
(52, 'CBGBT', 'Cửa Hàng Bảy Giàu - Bến Tre', '152/01 Ấp Quí Đức A, xã Quới Điền, huyện Thạnh Phú, xã Bến Tre', 'KD02'),
(53, 'CBHVT', 'Cửa Hàng Bảo Hiền - Vũng Tàu', '285 Lê Hồng Phong, TT Ngãi Giao, Châu Đức, Bà Rịa. 8', 'KD07'),
(54, 'CBLLA', 'Chị Thủy - Cửa Hàng Bảo Lâm', '349 Nguyễn Huỳnh Đức,P.khánh Hậu,Tân An,Long An. 8', 'KD01'),
(55, 'CBMQ12', 'Chị Thuý- Cửa Hàng Ban Mai- Q12', '277 Nguyễn Văn Quá, F. Đông Hưng Thuận, Q12.', 'KD03'),
(56, 'CBN2', 'Nguyễn Thị Thanh Trinh (Ba Nhỏ 2) 0939113557', '315 Khóm 1, Thị Trấn Lai Vung, Huyện Lai Vung, Tỉnh Đồng Tháp', 'KD03'),
(57, 'CBNI', 'KHÁCH HÀNG BNI', NULL, 'KD04'),
(58, 'CBNNDN', 'Cửa Hàng Bình Ngọc Nhi - Đồng Nai', 'Ấp Cơ Dầu, xã Xuân Đông, Huyện Cẩm Mỹ, Đồng Nai. 10', 'KD07'),
(59, 'CBNQ1', 'Cửa hàng Bảo Ngọc Q1', '149 Nguyễn Thị Minh Khai, F. Phạm Ngũ Lão, Q1. 8', 'KD06'),
(60, 'CBNQ3', 'Anh Khoa - Cửa hàng Bảo Ngọc', '149 Nguyễn Thị Minh Khai, Q3,Tphcm', 'KD08'),
(61, 'CBNVL', 'Cửa Hàng Bảo Ngọc VL', 'Số 10, Đường 3/4, Chợ Vĩnh Long. 8', 'KD08'),
(62, 'CBNVT', 'Anh Bảo - Cửa Hàng Bảo Ngọc VT', '210 Lê Lợi, Phường 4, TP.Vũng Tàu', 'KD07'),
(63, 'CBTLA', 'Cửa Hàng Ba Tuyển Long An', '84 đường 3/2, KP Gò Tuyền A, TT Tân Hưng, H Tân Hưng, Long An', 'KD02'),
(64, 'CBTPL', 'Cửa Hàng Bích Trâm- Pleiku 0394 005 049', '35 Cách mạng tháng 8, pleiku, Gia . 10', 'KD09'),
(65, 'CBV2VL', 'Anh Phong- Cửa Hàng Kymdan Vĩnh Long', 'Khóm 6 thị trấn Long Hồ, Vĩnh Long', 'KD08'),
(66, 'CBVVL', 'Chị Yến - Cửa Hàng Kymdan Vĩnh Long', 'Khóm 1, Thị Trấn Long Hồ, Vĩnh Long', 'KD01'),
(67, 'CC9CPC', 'Cô Chín - Campuchia', 'Campuchia', 'KD04'),
(68, 'CCADA', 'anh Toàn - Công ty TNHH Cách Âm Đông Á', '540 Dương Thị Mười , F Hiệp Thành , Q.12, TP.HCM ( bao 50 tấm / 1 kiện)', 'KD03'),
(69, 'CCANEBH', 'Cty Chăn Ấm Nệm Êm - biên Hòa', 'Số 1099 Phạm văn Thuận ,TP.Biên Hòa', 'KD07'),
(70, 'CCBAC', 'Chị Bích- Cửa Hàng Đức Phát', '499-451 Hậu Giang,q6,TP.HCM', 'KD06'),
(71, 'CCBD', 'Cửa Hàng Chánh - Bình Dương', '18/2 KP3, Dầu Tiếng, Bình Dương. 8', 'KD07'),
(72, 'CCBHG', 'Chị Bích Hậu Giang, CH Hoàn Mỹ', '445,447 Hậu Giang F11, Quận 6. 10', 'KD02'),
(73, 'CCBLA', 'Chị Bích- Long An', 'Khu Phố Bàu Xậy,Thị Trấn Vĩnh Hưng,Huyện Vĩnh Hưng,Long An', 'KD01'),
(74, 'CCDCHM', 'Anh Phong - Cứu Dân Chành', '3/22 Đường Quang Trung , Thị trấn Hóc Môn. 10', 'KD09'),
(75, 'CCDCL', 'Chị Điệp -Nhà Thuốc Tây Cửu Long', '150CTrưng Nữ Vương,P1,Vĩnh Long', 'KD07'),
(76, 'CCDN', 'Cửa Hàng Chương- Đồng Nai', '207 Đường 3/2,KP5,TT.Trảng Bom,Đồng Nai.6', 'KD07'),
(77, 'CCDPVT', 'Cửa hàng Châu Đại Phát', '102 /16 Chợ Phước Hải . Thị Trấn Phước HảI, BRVT. 10', 'KD07'),
(78, 'CCDTC', 'Chị Điệp', '157 Trường Chinh, Tân Bình,Tphcm', 'KD07'),
(79, 'CCDTD', 'Chị Diễm - Cửa Hàng Phương Thảo .', '1134 Kha Vạn Cân, Thủ Đức. 8', 'KD07'),
(80, 'CCDTHBT', 'Chị Dung - Tiên Hoàng Bình Tân', '699 Lê Trọng Tấn', 'KD07'),
(81, 'CCHHN', 'Cửa Hàng Chấn Huê- Hồng Ngự', '43 Nguyễn Trãi, Hồng Ngự, Đồng Tháp. 10', 'KD02'),
(82, 'CCHKCT', 'Cửa Hàng Kha', 'Thạnh An,Thốt Nốt,Cần Thơ', 'KD07'),
(83, 'CCHOMG', 'Chị Hà - cty Omega (lê ngân)', '58/9 Tân Thành, P. Tân Thành, Tân Phú', 'KD04'),
(84, 'CCHTB', 'Cửa Hàng Chí Hùng- Tân Bình', '297 Hồng Lạc, F10 Quận Tân Bình', 'KD02'),
(85, 'CCKPC', 'Chị Kiều - Đại Lý Vinh Thuận Phát', '271 ấp A, Khu 5, Chợ Phú Cường, Tam Nông, Đồng Tháp. 8', 'KD02'),
(86, 'CCLBL', 'Chị Sen / chị Lễ - Cửa hàng Vạn Thành', '351 Nguyễn Văn Cừ, P.Lộc Phát, T.X Bảo Lộc', 'KD09'),
(87, 'CCLDA', 'Anh Cường Dĩ An - CH Chị Lam cũ( Không Ghi Giá)', '8 Nguyễn Thái Học, Dĩ An, Binh Dương. 10', 'KD07'),
(88, 'CCLLK', 'TTNT Chín Long- Long Khánh', '12 Duy Tân, Tổ 21, Xã Bảo Vinh A, Long Khánh, ĐN. 10', 'KD07'),
(89, 'CCLMT', 'Chị Hai - Cửa Hàng Minh Lệ', '21 Lê Thị Phí F1 , TP.Mỹ Tho, Tiền Giang ( Cập nhật CN lên phiếu))', 'KD01'),
(90, 'CCMBT', 'Chị Mơ-Đại Lý Bảo Phúc', 'Ấp Tân Phong,xã thành thới A,H.mỏ cày Nam . 8', 'KD02'),
(91, 'CCMSR', 'Chị Mai - SARI', 'Ngã ba cái bè tiền giang ,vô 3 cây số(kế bên khách sạn yến Ngân).8', 'KD02'),
(92, 'CCMVN', 'Công Ty TNHH Chumy Việt Nam', '282/13 đường TA28 KP5. F Thới An, Quận 12.. 10', 'KD09'),
(93, 'CCN2DN', 'Cửa Hàng Cao Nguyên 2- Đắk Nông', '64 Nguyễn Tất Thành Dak Mil, Dak Nong', 'KD09'),
(94, 'CCNDA', 'Chị Cẩm- Công Ty Tnhh Cách Nhiệt Đông Á', 'Q20 đường 15, KP4, F. Tân Thới nhất, Q12.Tp. HCM ( đóng bọc nilon trắng)', 'KD03'),
(95, 'CCNSG', 'Chị Tâm - Công Ty Cách Nhiệt Sài Gòn', '258 Tây Thạnh,KCN Tân Bình ( đóng kiện =50 tấm / 1 kiện). Bao bọc PVC màu trằng', 'KD03'),
(96, 'CCOCOBD', 'Công ty TNHH COCO FURNITURE', '139 Kp Hưng Phước, F Hưng Định, Thuận An, BD.', 'KD07'),
(97, 'CCPBC', 'Chị Phượng', 'Ba càng,vĩnh long', 'KD08'),
(98, 'CCPBL', 'Chị mai: TTNT Chánh Phát', '80B Nguyễn Công Trứ, P2, Bảo Lộc, Lâm Đồng', 'KD09'),
(99, 'CCPBT', 'Chị Hương -Cửa Hàng Cường Phát', '180 Đường số 01- Bình Tân,Tphcm. 8', 'KD02'),
(100, 'CCPDT', 'Chị Phương', 'Dầu Tiếng', 'KD08'),
(101, 'CCPRG', 'Chị Phương- Cửa Hàng Bình Minh', '986 Nguyễn Trung Trực, Rạch Giá, Kiên Giang', 'KD08'),
(102, 'CCQAG', 'CH Lê Văn Tiền 3 (Chị Quý)', '1321/67 Trần Hưng Đạo,TP Long Xuyên,An Giang (không giá,không HDD)', 'KD01'),
(103, 'CCQTN', 'Chị Quyên - Cửa hàng Chị Quyên', 'Khu Phố 4,T.T Bến Cầu,Tây Ninh', 'KD08'),
(104, 'CCSMP', 'Cửa Hàng Vạn Thành- chị Uyên', '143 Tân Hòa Đông. 10', 'KD02'),
(105, 'CCTBH', 'Cửa Hàng Cát Tường- Biên Hòa', '719/5 KP4 FTam Hiệp, Biên Hòa, ĐN. 10', 'KD07'),
(106, 'CCTCD', 'Cửa Hàng Cẩm Tú - Cần Đước', '120 ấp Chợ Trạm xã Mỹ Lệ huyện Cần Đước, LA', 'KD02'),
(107, 'CCTDA', 'Chị Trang - Dĩ An Hưng Thịnh', '28/20A Nguyễn Trãi ,KP Thống Nhất, Dĩ An , Bình Dương. 10', 'KD07'),
(108, 'CCTDC', 'CTY TNHH KL Decor', '49K, Phan Đăng Lưu, P. 3, Q. Bình Thạnh, Tp. HCM', 'KD06'),
(109, 'CCTDL', 'Cửa Hàng Công Thành- Đà Lạt.', '63B - 3/2 Đà Lạt-. 8', 'KD09'),
(110, 'CCTHG', 'Anh Cường - Cửa Hàng Cường Thịnh', 'Khu Thương Mại Thị Trấn Ngã Sáu,Huyện Châu Thành,Tỉnh Hậu Giang. 8', 'KD01'),
(111, 'CCTKPST', 'Cửa Hàng Kim Phượng(KP Phước Long)', '39-41 CMT8, Ngã Tư Xô Viết Nghệ Tỉnh, TX Sóc Trăng(dst) Plus', 'KD01'),
(112, 'CCTNT', 'Cửa Hàng Chi Thính Ninh Thuận ( Không Ghi Giá)', 'KP2, TT Phước Dân, Ninh Phước, Ninh Thuận 8', 'KD06'),
(113, 'CCTQ4', 'Chị Thúy', '33 Nguyễn Tất Thành,Q4 - ĐT:38.455.313', 'KD07'),
(114, 'CCTQ8', 'Cửa Hàng Chí Tâm- Quận 08', '158 B An Dương Vương F16 Quận 08', 'KD06'),
(115, 'CCTRS', 'Chị Đan - Cửa Hàng Công Tiến', '46 Mai Thị Hồng Hạnh, Rạch Sỏi, Kiên Giang ( Gom 1 toa chung )', 'KD01'),
(116, 'CCTTA', 'Cửa Hàng Cát Tường- Tân An', '147 QL62 F2 Tp Tân An, LA. 8', 'KD02'),
(117, 'CCTTN', 'Chị Thuận- Cửa hàng Thanh Tâm Tây Ninh', 'D06/07 khu phố 4,Thị trấn châu thành,Tây ninh. 8', 'KD07'),
(118, 'CCTTP', 'ChịThúy : Cửa hàng Thanh Thúy', '76A Vườn Lài,Q.Tân phú:0903.000.2586', 'KD07'),
(119, 'CCTTT', 'Chị Thúy - Công Ty Thiên Thanh', NULL, 'KD09'),
(120, 'CCTVT', 'Chị Trang Everon', '352- 354 Nguyễn An Ninh. P8. Vũng Tàu. 8', 'KD07'),
(121, 'CCVAPT', 'Chị Vân - An Phú Tây', 'Chợ Thuận Đạt , Hưng Long, Bình Chánh', 'KD02'),
(122, 'CCVBD', 'Chị Vân - Cửa Hàng Cẩm Vân', '38 Nguyễn Thái Học, Thủ Dầu 1, Bình Dương', 'KD06'),
(123, 'CCVQ2', 'Cửa Hàng Cường Vy- Quận2', 'Số 164C Lê văn Thịnh, F Cát Lái, Q2', 'KD07'),
(124, 'CDADN', 'Cửa Hàng Diệu Anh Đồng Nai', 'Khu A1C1 Lập Thành, TT Dầu Giây. 8', 'KD07'),
(125, 'CDAQ4', 'Anh Trung - Cửa Hàng Duy Anh', '269 Tôn Đản, Quận 04, Tphcm', 'KD07'),
(126, 'CDCLBD', 'Công Ty Dương Châu Loan- Bình Dương', '298 Đại Lộ Bình Dương, Phú Hoà, Thủ Dầu 1. 8', 'KD07'),
(127, 'CDHDN', 'Cửa Hàng Đức Huy- ( Đức Thư) Đồng Nai', 'D1/034B Quang Trung Thống Nhất Đồng Nai . 8', 'KD07'),
(128, 'CDHHB', 'Cửa Hàng Đức Hạnh', '479 Nguyễn Văn Tăng, Phường Long Thạnh Mỹ, Quận 9, Tphcm', 'KD07'),
(129, 'CDHQ8', 'Anh Hải - Cửa Hàng Đức Hải', '529 Phạm Thế Hiển,Q8, Tphcm', 'KD08'),
(130, 'CDHTNGT', 'Chị Lan - Cty TNHH Đại Hòa Thịnh', '206 Ngô Gia Tự, P4, Quận 10,Tphcm', 'KD02'),
(131, 'CDHTST', 'Anh Quân - TTNT Đức Hiệp Thuận', '651 ấp Ngãi Hội 1, Đại ngãi, Long Phú, Sóc trăng', 'KD01'),
(132, 'CDKBL', 'Cửa Hàng Duy Khánh -Bến Lức', '37C ấp 2 xã Phước Lợi, Bến Lức, Long An. 8', 'KD02'),
(133, 'CDKGV', 'Cửa Hàng Duy Khánh', '29 Nguyễn Oanh, P10, Gò Vấp.', 'KD09'),
(134, 'CDLBR', 'Cửa Hàng Dương Long', 'Sap H12. TT Thương Mại - Bà Rịa . Tp Bà Rịa. BRVT', 'KD07'),
(135, 'CDLDT', 'Chị Thảo - Trang Trí Nội Thất Đại Lộc', '50-52 Thống nhất,liên nghĩa,Đức Trọng,Lâm Đồng. 8', 'KD09'),
(136, 'CDLPN', 'Cửa Hàng Đức Lợi- Phú Nhuận', '258 Phan đình phùng,p1,phú nhuận. 8', 'KD06'),
(137, 'CDLQ10', 'Chị Mười - Cửa Hàng Đồng Lợi', '469A Cách Mạng Tháng Tám, P13, Q10 ,Tphcm', 'KD02'),
(138, 'CDNBL', 'Cửa Hàng Đức Ngân Bạc Liêu', '0949.030.802 Anh Thiết', 'KD02'),
(139, 'CDNCM', 'Anh Đức - DNTN Đức Ngân', '149 Nguyễn Tất Thành, Phường 8, Cà Mau (Dán toa vô Nệm)', 'KD01'),
(140, 'CDNNT', 'Cửa Hàng Diệu Ninh- CÀ NÁ', 'Thôn Lạc Tân, X.Phước Diêm, Huyện Thuận Nam, Ninh Thuận .8', 'KD06'),
(141, 'CDPBL', 'Cửa Hàng Duy Phát - Bến Lức', '76 Nguyễn Hữu Thọ . 8', 'KD02'),
(142, 'CDPHCD', 'Chị Hoàng - Cửa Hàng Đại Phước Hàng', '39 Nguyễn Văn Thoại, P.13, Châu Đốc, An Giang', 'KD08'),
(143, 'CDPTAG', 'Cửa Hàng Đại Phát Thành- An Giang', 'Ấp An Hưng, TT An Phú, Huyện An Phú, Tỉnh An Giang', 'KD08'),
(144, 'CDREAMTEX', 'Công ty TNHH Dreamtex Việt Nam', '12/21A Đường TL27, phường Thạnh Lộc, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
(145, 'CDSBC', 'Cửa Hàng Đức Sang', 'F7/2, Tỉnh lộ 10, Xã Lê Minh Xuân, Huyện Bình Chánh', 'KD02'),
(146, 'CDSDCM', 'Duy Sông Đốc Cà Mau', 'Duy Sông Đốc Cà Mau', 'KD07'),
(147, 'CDTAVT', 'Chị Thanh Anh - Cửa Hàng Dũ Thanh Anh', '555 Trần Hưng Đạo, KV1, Phường 3, Vị Thanh. 10', 'KD01'),
(148, 'CDTBP', 'Cửa Hàng Đức Tài- Bình Phước', 'Đường 8, Phạm Hồng Thái, Tổ 1, KP3 , Chơn Thành, Bình Phước', 'KD09'),
(149, 'CDTDT', 'Cửa Hàng Đức Trí - Đồng Tháp', 'Chợ Trường Xuân, Tháp Mười, Đồng Tháp', 'KD02'),
(150, 'CDTHN', 'Cửa Hàng Đại Thành- Hồng Ngự', '45 Thiên Hộ Dương, Hồng Ngự, Đồng Tháp.', 'KD02'),
(151, 'CDTLG', 'Nội thất 123A', '123 Nguyễn Ngọc Kỳ, Phước Hội, TX Lagi, Bình Thuận', 'KD07'),
(152, 'CDTTV', 'CTY TNHH ĐẠI THÀNH', 'ấp Sâm Bua, xã Lương Hòa, Châu Thành, Trà Vinh. 8', 'KD08'),
(153, 'CDUADN', 'Dì út Ái - Cửa Hàng Đăng Khoa', '71 Đường 23/3 Tổ Dân Phố 1, P.Nghĩa Đức, Giai Nghĩa, Đăk Nông.', 'KD09'),
(154, 'CGBHM', 'Cửa Hàng Gia Bảo- Hóc Môn', '37/06 KP3 Lý Thường Kiệt, Hóc Môn', 'KD09'),
(155, 'CGBNH', 'Chị Viên - Cửa Hàng Gia Bảo', 'Ninh Hòa : 058.363.0574', 'KD06'),
(156, 'CGHNT', 'Cửa Hàng Gia Hân - 10 (Nệm CSDC chỉ lấy màu xám) Không ghi giá', '164 đường Thống Nhất, Nha Trang. (Giao trước 8h sáng hoặc 2hchiều) 10,chân Drap cao 30cm (ko ghi giá)', 'KD06'),
(157, 'CGHOM', 'Chị Duyên - Cửa Hàng Tân Gia Hưng', '30/1 Trần Hưng Đạo , KV.3, P.Châu Văn Liêm, Quận Ô Môn, TP. Cần', 'KD08'),
(158, 'CGKDT', 'Cửa Hàng Gia Khiêm- Đồng Tháp', 'Khóm 4, thị trấn Mỹ An, h Tháp Mười, Đồng Tháp', 'KD02'),
(159, 'CGLGV', 'Chị Linh - Cửa Hàng Gia Linh', 'Gò Vấp', 'KD02'),
(160, 'CGREENTEX', 'HKD-Cơ sở Sản xuất Greentex', 'Tờ bản đồ Số 1, thửa 10, Lê Lợi, Bàu Hàm 2 ,Thống Nhất, Đồng Nai', 'KD10'),
(161, 'CHACM', 'Cửa Hàng Hoàng Anh Cà Mau', 'chợ Kiot số 32,chợ Tấc Vân,Cà Mau', 'KD08'),
(162, 'CHAGL', 'Cửa Hàng Hồng Anh Gia Lai', '218 Trần Hưng Đạo, TX Ayun Pa, Gia Lai. 10', 'KD09'),
(163, 'CHAGLCT', 'Anh Đức - Hoàng Anh Gia Lai', '60A Mậu thân,P.An Hiệp,Ninh Kiều ,Cấn Thơ. 10', 'KD01'),
(164, 'CHAGLLX', 'Anh Dũng :Cửa Hàng Hoàng Anh Gia Lai:', '349/30D Trần Hưng Đạo,Long Xuyên (Ngay ngã ba), 10', 'KD08'),
(165, 'CHAMT', 'DNTN TTNT Hoàng Anh Mỹ Tho', '198A Nguyễn Thị Thập , xã Trung An TP Mỹ Tho ( đối diện Big C) . 6', 'KD01'),
(166, 'CHANVIETHAI', 'Công ty TNHH TM SX Hàn Việt Hải', '149 Lê Đức Thọ, P7, Q Gò Vấp, TPHCM', 'KD09'),
(167, 'CHAVT', 'Cửa Hàng Hoàng Anh Vũng Tàu', '330 Đường 30/4 F , Phường Rạch Dừa, Vũng Tàu. 8', 'KD07'),
(168, 'CHCVB', 'Hội chợ VIETBUILD', 'Q7', 'KD03'),
(169, 'CHDBD', 'Cửa Hàng Hoàng Duy- Bình Dương', '237 Yersin, F. Phú Cường, Thủ Dầu Một, BD. 8', 'KD07'),
(170, 'CHĐDN', 'Cửa Hàng Huỳnh Điểu- Đồng Nai', '1410 QL1A, Xuân Hưng, Xuân Lộc, Đồng Nai', 'KD07'),
(171, 'CHDKG', 'Cửa Hàng Hữu Đức- Kiên Giang', 'chợ thứ 7, ấp 7, xã đông thái, huyện an biên, tỉnh kiên giang.', 'KD08'),
(172, 'CHDTB', 'Cửa Hàng Hoàng Dũng- Tân Bình', '92 Phan Huy Ích, F15, Tân Bình', 'KD02'),
(173, 'CHDVT', 'Cửa Hàng Hoàng Dung - Vũng Tàu', 'Ấp 1, Bung Riềng, Xuyên Mộc, Vũng Tàu', 'KD07'),
(174, 'CHGBT', 'Cửa Hàng Hoàng Gia- Bình Tân', '1120 Tỉnh lộ 10, Bình Tân', 'KD08'),
(175, 'CHGD', 'Cửa Hàng Hiếu- Gò Đen', 'Ngay chợ Gò Đen', 'KD02'),
(176, 'CHGGV', 'Chị Xuân-Công Ty Hoàng Gia', 'Giao 41/76 Hương Lộ 80b, ấp 6, đông thạnh HM', 'KD03'),
(177, 'CHGPK', 'Đại Lý Hai Gắt- Phước Khánh', 'Chợ Phước Khánh, Xã Phước Khánh, huyện Nhơn Trạch, tỉnh Đồng Nai. 10', 'KD07'),
(178, 'CHH2BR', 'Cô Thuỷ - Huy Hoàng 2 Bà Rịa', 'Thành phố Bà Rịa ( kế bên Thúy Lan Bà Rịa)', 'KD07'),
(179, 'CHHAG', 'Cửa Hàng Hoàn Hảo- An Giang', '80 Tôn Đức Thắng, Phú Mỹ, Phú Tân, An Giang.', 'KD08'),
(180, 'CHHBC', 'Cửa Hàng Huy Hoàng - Bến Cát', 'KP1, Đường Hùng Vương, Bến Cát, Bình Dương', 'KD07'),
(181, 'CHHBD', 'Cửa Hàng Hoàng Hiệp- Bình Dương', '529 Phạm Ngọc Thạch Tp Thủ Dầu Một, Bình Dương', 'KD07'),
(182, 'CHHBL', 'Chị Ngân : Trung Tâm Nội Thất Hoàng Huy-0944.94.94.94', '68 Ninh Bình P2,TX.Bạc Liêu (Không ghi Giá). Không gửi toa', 'KD01'),
(183, 'CHHBR', 'DNTN Huy Hoàng ( Không Ghi Giá)', '102 Cách Mạng Tháng Tám, p Long Hương, Thành phố Bà Rịa', 'KD07'),
(184, 'CHHCR', 'Anh Dũng - Cửa Hàng Hòa Hiệp', '88 đường 22/8 Phường Cam Thuận, Cam Ranh', 'KD06'),
(185, 'CHHNB', 'Cửa Hàng Huy Hoàng - Nam Ban', 'TDP Bạch Đằng, TT. Nam Ban, H. Lâm Hà, Lâm Đồng.', 'KD09'),
(186, 'CHHQ4', 'Cửa hàng Huy Hoàng - Quận 4', '97 Khánh Hội, F3,Q4. 10', 'KD06'),
(187, 'CHHTV', 'Cửa Hàng Hồng Hưng - Trà Vinh', 'Khóm 4 , thị trấn Trà Cú, Huyện Trà Cú. Tỉnh Trà Vinh', 'KD08'),
(188, 'CHHVL', 'Cửa Hàng Hùng Hương- Vĩnh Long', 'Tổ 17, ấp Phú Cường, xã Hiếu Thuận, H. Vũng Liêm, T. Vĩnh Long', 'KD08'),
(189, 'CHKCM', 'Cửa hàng Hồng Kông - Cà Mau', 'ấp Đông Hưng, xã Tân Hưng Đông, huyện Cái Nước, tỉnh Cà Mau', 'KD08'),
(190, 'CHKNGT', 'Chị hạnh- Cửa hàng Hùng Ký', '347 Ngô gia tự', 'KD02'),
(191, 'CHKTN', 'Chị Hằng - Cửa Hàng Hồng Khánh:', 'Đối diện cổng chợ Gò dầu,tây ninh,Hướng đi mộc bài', 'KD02'),
(192, 'CHLBD', 'Chị Linh- Cửa hàng Hải Linh', '.Chợ tân phước khánh,bình chuẩn,bình dương', 'KD04'),
(193, 'CHLNT', 'Cửa Hàng Hồng Linh - Nha Trang', '295 Thống Nhất, Phường Phương Sơn, Nha Trang (ko ghi giá)', 'KD06'),
(194, 'CHLQ3', 'Cửa Hàng Hoàng Long Quận 3', '590 Nguyễn Đình Chiểu P4 Quận 3. 10', 'KD06'),
(195, 'CHMCT', 'Chị Thu - Cửa Hàng Hoàn Mỹ', '118 Lý Tự Trọng, Cần Thơ', 'KD02'),
(196, 'CHMQ7', 'Chị Trang - CTY TNHH TTNT Hoàn Mỹ', 'D56 Nam Long,đường Phú Thuận ,Quận 7 . 10', 'KD06'),
(197, 'CHNBC', 'Cửa Hàng Hoàng Phát ( Hoàng Nguyên cũ)', 'D15/40 Đinh Đức Thiện,Bình chánh', 'KD02'),
(198, 'CHNLD', 'Cửa Hàng Hải Nam- Lâm Đồng', '677 Hùng Vương. Di Linh, Lâm Đồng', 'KD09'),
(199, 'CHNNH', 'Công ty TNHH SX TM và DV Hồng Nguyễn', '56 Võ Tánh, Ninh Hòa. Đối diện chợ Dinh Ninh ( Không lấy màu trắng) ko ghi giá', 'KD06'),
(200, 'CHNT', 'Cửa Hàng', 'Công Hải, Thuận Bắc, Ninh Thuận', 'KD07'),
(201, 'CHNTD', 'Anh Nhuận - Hữu Nhuận', '9/14 Quốc lộ 13, Hiệp Bình Phước, Thủ Đức', 'KD07'),
(202, 'CHP', 'Cửa Hàng Hòa Phú -', NULL, 'KD08'),
(203, 'CHPBC', 'Cửa Hàng Hoàng Phát _ Bình Chánh', 'D15/40 đường Đinh Đức Thiện, xã Bình Chánh, Huyện BC', 'KD02'),
(204, 'CHPBR', 'Cửa Hàng Hiệp Phát- Bà Rịa', '16/10 Ấp Phước Lâm xã Phước Hưng, Long Điền, BRVT. 8', 'KD07'),
(205, 'CHPBRVT', 'Cửa Hàng Hồng Phát- Bà Rịa Vũng Tàu', '333 đường 27/04. TT Phước Bửu, Xuyên Mộc, BRVT', 'KD07'),
(206, 'CHPBT', 'Cửa Hàng Hoàng Phúc -Bến Tre', '75/4 Ấp 10 TT Thạnh Phú, Thạnh Phúc, Bến Tre', 'KD02'),
(207, 'CHPKG', 'Cửa Hàng Hoàng Phát - Kiên Giang', '467A Nguyễn Trung Trực, F, Vĩnh Lạc, Rạch Giá, Kiên Giang', 'KD08'),
(208, 'CHPQ8', 'Chị Hằng - Cửa Hàng Hồng Phát', '352C Tùng Thiện Vương, Phường 13, Quận 8, Tphcm', 'KD02'),
(209, 'CHPTC', 'Chị Dung- Cửa Hàng Hưng Phát', '698 Trường Chinh,P.15,Q.Tân Bình, Tphcm', 'KD07'),
(210, 'CHQPL', 'Cửa Hàng Hồng Quân', 'Chợ Phương Lâm (2h)', 'KD07'),
(211, 'CHQTN', 'Chị Châu Hồng Quế:01234590522', '04/22 ThịTrấn Gò Dầu,Tây Ninh', 'KD04'),
(212, 'CHSBL', 'Chị Trang- Trang Trí Nội Thất Hải Sơn Bạc Liêu', '156 Trần Phú, P7, Bạc Liêu. 10', 'KD01'),
(213, 'CHSBP', 'Cửa Hàng Điện Máy & NT Hồng Sơn - Bình Phước', '364 Nguyễn Tất Thành, Kp2, P. Phước Bình, Tx. Phước Long, Bình Phước.6', 'KD09'),
(214, 'CHSBT', 'Cửa Hàng Hương Sơn- Bình Thuận', '29 Phú Thọ, Hàm Cường, Thuận Nam, Bình Thuận. 8', 'KD06'),
(215, 'CHTBC', 'Cửa Hàng Hữu Thắng', '232/11 Hương lộ 80,KP2, F, Bình Hưng Hoà B, Bình Tân. 8', 'KD02'),
(216, 'CHTBD', 'Công ty CP Hữu Toàn (GROUP)', 'Tầng 01 Tòa nhà BlueSky: 01 Bạch Đằng, F2. Tân Bình', 'KD03'),
(217, 'CHTCM', 'Cửa Hàng Hữu Tín- Cà Mau', 'Khóm 8, TT Thới Bình, H. Thới Bình, T. Cà Mau', 'KD08'),
(218, 'CHTCT', 'Cửa Hàng Hoa Tím - Cần Thơ', '250A, kv Thới Hưng, P. Thới An Đông, Q. Bình Thuỷ, Cần Thơ', 'KD08'),
(219, 'CHTGC', 'Anh Hoàng - Cửa Hàng Hoàng Thúy', '142 Nguyễn Huệ, TX. Gò Công, Tiền Giang', 'KD02'),
(220, 'CHTLD', 'Cửa Hàng Hà Tiến - Lâm Đồng', '11 Lê Lợi - TT Dran - Đơn Dương- Lâm Đồng. 8', 'KD09'),
(221, 'CHTLVQ', 'Cửa Hàng Hà Thành- Lê Văn Quới', '582 Lê Văn Quới. 6', 'KD02'),
(222, 'CHTNTN', 'Cửa Hàng Hoàng Thúy Nga- Tây Ninh', '450 Điện Biên Phủ, Ninh Hoà, Ninh Thuận, Tây Ninh. 8', 'KD07'),
(223, 'CHTQ8', 'Cửa Hàng Nội Thất Hiệp Thành -Q8', '232 Liên Tỉnh 5 , F6, Q8.10', 'KD06'),
(224, 'CHTQL1A', 'Cửa Hàng Hưng Thịnh- Quốc lộ 1A Bình chánh', 'A13/53 QL1A Bình Chánh. 8', 'KD02'),
(225, 'CHTTKTQ', 'Cửa hàng Hưng Thịnh', '798 Tân kỳ tân quý. 6', 'KD02'),
(226, 'CHTTV', 'Cô Thu - Cửa Hàng Hiệp Thành', '582-583 Trần Phú , Phường 7, TX. Trà Vinh. 10', 'KD01'),
(227, 'CHTVT', 'Cửa Hàng Hải Triều - Vũng Tàu', '276 Lê Hồng Phong, F.4, Tp. Vũng Tàu', 'KD07'),
(228, 'CHVBR', 'Cửa Hàng Hồng Vân - Bà Rịa Vũng Tàu', '24/3 ấp 1, xã Bưng Riềng, Xuyên Mộc,Bà Rịa VT', 'KD07'),
(229, 'CHVVT', 'Cửa Hàng Huyền Vy- Vũng Tàu', '597 Nguyễn An Ninh, F9, Tp, Vũng Tàu. ( Không Ghi Giá ) . 8', 'KD07'),
(230, 'CHYBMT', 'Cửa Hàng Hoàng Yến Buôn Mê Thuột', '166 Y Jut . Buôn Ma Thuột SDT . 8', 'KD09'),
(231, 'CHYBP', 'Cửa Hàng Hải Yến - Bình Phước', 'Kp. Thanh Xuân, TT. Thanh Bình, H. Bù Đăng, Bình Phước.6', 'KD09'),
(232, 'CHYCT', 'Cửa Hàng Hải Yến - Cần Thơ', '660C1/10 kv bình trung, P. Long Hoà, Q. Bình Thuỷ, TPCT', 'KD08'),
(233, 'CHYDN', 'Cửa Hàng Hải Yến Đắc Nông', '04 Huỳnh Thúc Kháng, TX Gia Nghĩa, Đắc Nông, (Ép KL không lấy đỏ, vàng)', 'KD09'),
(234, 'CIDC', 'Công Ty INDOCHINE', '01 Lê Qúi Đôn, Quận 3,TPHCM', 'KD09'),
(235, 'CISML', 'Chị Cúc - TTNT Ich Sanh', '502 KP Minh Phú, TT Minh Lương, Rạch Sỏi, Kiên Giang', 'KD07'),
(236, 'CKACG', 'Cửa Hàng Khang Anh, Chợ Gạo', '332/1 Tỉnh lộ 879, chợ gạo, Tiền Giang. 8', 'KD02'),
(237, 'CKATAQ10', 'Chị Liên ( 0902 991394)- Công ty Kata', '193 Nguyễn Lâm, F6, Q10', 'KD07'),
(238, 'CKC', 'Khánh Chi', '93/47 ấp chiến lược :ĐT: 5407.6229', 'KD07'),
(239, 'CKCCM', 'Cửa hàng Kim Chi - Cà Mau', 'khóm 7, TT Sông Đốc, H. Trần Văn Thời, T. Cà Mau', 'KD08'),
(240, 'CKDBP', 'CH Nội Thất Kim Đào, Bình Phước', 'Ấp 7, Thanh Hoà, Huyện Bù Đốp, Bình Phước. 10 (Ko ghi giá)', 'KD09'),
(241, 'CKDCM', 'Cửa hàng Kiều Diễm - Cà Mau', 'Khóm 1 , Thị Trấn Cái Nước, H. Cái Nước, T. Cà Mau', 'KD08'),
(242, 'CKDDL', 'Chị Thanh - Cửa Hàng Kymdan Đức Linh', 'Thôn 4, Xã Đức Hạnh, Huyện Đức Linh, Tỉnh Bình Thuận. 10', 'KD06'),
(243, 'CKDMT', 'DNTN -TTNT Kim Dung:', '99 Lý Thường Kiệt,p4,TP Mỹ Tho,Tiền Giang. 8', 'KD01'),
(244, 'CKDNVT', 'Cửa Hàng Kinh Đô Nệm- Vũng Tàu ( Không Ghi Giá)', '71-73 Lê Lợi, TP Vũng Tàu . 8', 'KD07'),
(245, 'CKDQ2', 'Chú Tư - Cửa Hàng Kymdan Quận 2', 'B1/9 Lương Định Của, Bình An, Quận 2', 'KD07'),
(246, 'CKDTB', 'Chị Thuỳ - Kymdan Tân Bình', '636Bis Luỹ Bán Bích, P17, Q.Tân Bình', 'KD09'),
(247, 'CKENTASZOBT', 'Cửa Hàng KenTasZo - Bình Tân', '113 đường gò Xoài, F Bình Hưng Hòa, Bình Tân', 'KD02'),
(248, 'CKHBMT', 'Cửa Hàng Khánh Hồng - Buôn Mê Thuột', '203 Võ Văn Kiệt, F Khánh Xuân, TP BMT', 'KD09'),
(249, 'CKHGL', 'Cửa hàng Rèm Màn Kim Hiền- Gia Lai ( 0905 69 7299)', 'Hoàng Văn Thụ, TT Chư Sê, Gia Lai. 10', 'KD09'),
(250, 'CKHL', 'Bán Lẻ:', NULL, 'KD04'),
(251, 'CKHM', 'KHÁCH HÀNG MOUSSELY ( KHÔNG ĐẶT HÀNG)', 'KHÔNG ĐẶT HÀNG', 'KD07'),
(252, 'CKMHM', 'Chị Kim Thành - Công Ty Kinh Môn', '172A/T Đường Hà Đặc,Phường Trung Mỹ Tây,Q12,Tphcm', 'KD07'),
(253, 'CKNBT1', 'khong dung', NULL, 'KD07'),
(254, 'CKNTD', 'Chị Ngân - Cửa Hàng Kim Ngân', '44 Võ Văn Ngân, Phường Trường Thọ, Quận Thủ Đức. 8', 'KD07'),
(255, 'CKPHCM', 'Cty CP NT Kim Phụng Hảo ( Toa chành ko giá)', '65 Lý Bôn, Phừơng 2, Cà Mau', 'KD01'),
(256, 'CKPKG', 'Cửa Hàng Kiều Phụng', 'Chợ Kênh 8,Huyện Tân Hiệp,Kiên Giang', 'KD07'),
(257, 'CKPMCM', 'Cô Phụng - Cửa Hàng Kim Phụng (mẹ)', '51 Lý Bôn, Phường 2, Cà Mau : luôn lấy kích thước 200', 'KD01'),
(258, 'CKPQ5', 'Cửa hàng Kim Phụng - Q5', '98 Phùng Hưng, - Phường 13 - Quận 5 - TP Hồ Chí Minh', 'KD02'),
(259, 'CKSQA', 'Chị Hương - Khách Sạn Quỳnh Anh', '54-56 Đường 24A - A. Tiến: 0903.8820.84', 'KD07'),
(260, 'CKTAG', 'Cửa Hàng Kim Thoa- An Giang', 'chợ tân phú, ấp phú lợi, xã phú lâm, huyện phú tân, tỉnh an giang', 'KD08'),
(261, 'CKTBT', 'Cửa Hàng Kim Thanh', '1341 Tỉnh lộ 10,P.Tân Tạo,Bình Tân. 8', 'KD02'),
(262, 'CKTDN', 'Đại Lý Nệm Kim Trang', '91/5B Khu phố 9,P.Tân Biên,Thành phố Biên Hòa,Đồng Nai. 10', 'KD01'),
(263, 'CKTDTSD', 'Kim Khí Điện Máy Duy - Sông Đốc', 'Trần Văn Thời ,Cà Mau', 'KD03'),
(264, 'CKTGV', 'Cửa Hàng Kim Thành- Gò Vấp', '308 Nguyễn Văn Nghi, F7, Gò Vấp', 'KD02'),
(265, 'CKTHG', 'Cửa hàng Kiều Trinh - Hậu Giang', 'Ấp Phú Khởi, Xã Thạnh Hoà, Huyện Phụng Hiệp, Tỉnh Hậu Giang', 'KD08'),
(266, 'CKTQT', 'Cửa Hàng Nệm Kim Thoại', '98/1C Quang Trung, P8, Q Gò Vấp', 'KD02'),
(267, 'CKTTC', 'Chị Kiêm - Cửa Hàng Kiết Tường', '51 Nguyễn Văn Cừ, Tân Châu, An Giang. 10', 'KD08'),
(268, 'CKVBT', 'Cửa Hàng Khánh Vy', '462 đường số 7, P. Tân Tạo, Q. Bình Tân', 'KD02'),
(269, 'CKVLT', 'Cửa Hàng Kim Vân- Long Thành ( Không Ghi Giá)', '87-88 Tổ 5, Khu Phước Hải, Long Thành, Đồng Nai', 'KD07'),
(270, 'CKVQ9', 'Anh Khanh :Cửa Hàng Khánh Vân', '28 Tây hòa,P. Phước Long, Q9', 'KD07'),
(271, 'CLHTHD', 'Cửa Hàng Liên Hương', '457 Tân Hoà Đông, Phường Bình Trị Đông, Quận Bình Tân', 'KD08'),
(272, 'CLIMARESORT', 'RESORT LIMA - NHA TRANG', 'Sao Mai Anh resort, số 02 Phạm Văn Đồng, P. Vĩnh Hòa, TP.Nha Trang, Khánh Hòa', 'KD10'),
(273, 'CLPTN', 'Anh Lô - Cửa Hàng Lợi Phát', 'Khu Phố 2, Cầu Mới, Trần Quốc Toản, P.2, T.X Tây Ninh', 'KD09'),
(274, 'CLTN2CM', 'Cửa Hàng Lịnh_ Tú Nữ 2 ( Cà Mau)', 'Khóm 5, Thị Trấn Trần Văn Thời, H. Trần Văn Thời, Tp. Cà Mau', 'KD08'),
(275, 'CLTTP', 'Cửa Hàng Lý Thế.', '54 Tân Quý, F. Tân Quý. Tân Phú', 'KD02'),
(276, 'CMADT', 'Cửa Hàng Mai Anh- Đồng Tháp', '132 QL80, Khóm Phú Mỹ, TT Cái Tàu Hạ, Đồng Tháp', 'KD02'),
(277, 'CMBDL', 'Cửa Hàng Mai Bình - Đăk Lăk', '422-424-426 Giải Phóng, TT Phước An, huyện Hrong Păk, Đăk . 10', 'KD09'),
(278, 'CMCHHBD', 'Cửa Hàng Màn Cửa Huy Hoàng- Bình Dương', 'Kp2-TT Tân Bình , Bắc Tân Uyên, Bình Dương', 'KD07'),
(279, 'CMCLD', 'Cửa Hàng Minh Chung Lâm Đồng', 'Số 6/1 Xô Viết Nghệ Tĩnh, F7, Đà Lạt. Tỉnh Lâm Đồng. 8', 'KD09'),
(280, 'CMCQ11', 'Cửa Hàng Minh Chánh Quận 11', 'Giao ở Kho 224 phan anh Tân thới hoà Q Tân phú,', 'KD03'),
(281, 'CMCTL10', 'Chị Phương - Cửa hàng Minh Châu', '1694 Tỉnh Lộ 10. 6', 'KD02'),
(282, 'CMDLK', 'Cửa Hàng Mỹ Duyên', 'Ấp Bình Lộc, Long Khánh, Đồng Nai', 'KD02'),
(283, 'CMGDL', 'Trung Tâm Nội Thất Mỹ Gia', '18A1 Yersin,Đà Lạt: ( Không Ghi Giá )', 'KD09'),
(284, 'CMH2NT', 'Cô Hải- Công Ty TNHH TM - DV - SX Minh Hải', '(128 Thủy Tú, Xã Vĩnh Thái, Nha Trang)', 'KD06'),
(285, 'CMHBH', 'Cửa Hàng Mạnh Hiển - Biên Hòa', '225 CMT8, F. Hòa Bình, Tp. Biên Hòa. 6', 'KD07'),
(286, 'CMHBL', 'Chị Trinh - Cửa Hàng Mai quỳnh', '75 Bà Triệu, P.3, TP. Bạc Liêu', 'KD09'),
(287, 'CMHBT', 'Cửa Hàng Minh Hoàng', 'ấP 2 ,Tân Thủy,Ba Tri. 8', 'KD02'),
(288, 'CMHCL', 'Cửa Hàng Minh Hiếu - Chợ Lách', 'QL57, Hoà Nghĩa, Chợ Lách, Bến Tre. 8', 'KD02'),
(289, 'CMHCT', 'Chị Mười - Cửa hàng Mười Hùng', '71 Quốc Lộ 61, ấp Tân Phú A,T.T Cái Tắc, Châu Thành A, Hậu Giang. 10', 'KD08'),
(290, 'CMHNT', 'Chị Phương Công Ty TNHH TM - DV - SX Minh Hải ( Không Ghi Giá)', '233 Thống Nhất, Phương Sài, Nha Trang ( ( Không Ghi Giá))', 'KD06'),
(291, 'CMHQ3', 'Cửa Hàng Minh Hằng', '262A Nguyễn Thị Minh Khai, Quận 3', 'KD07'),
(292, 'CMHST', 'Chị Hoa - Cửa Hàng Mỹ Hoa', '2-4-6 Điện Biên Phủ, Sóc Trăng (TH không lấy xám, đen, góc sọc đỏ)', 'KD01'),
(293, 'CMHTC', 'Chị Hạnh - Mỹ Hạnh', '436 Trường Chinh, Phường 13, Quận Tân Bình', 'KD03'),
(294, 'CMKTP', 'Cửa Hàng Minh Khôi - Tân Phú', '465 Lê Trọng Tấn, Tân Phú. (ko ghi giá) 8', 'KD02'),
(295, 'CMLBC', 'Cửa Hàng Minh Long- Bình Chánh', 'D18/46C ấp 4, Hưng Long, Bình Chánh', 'KD02'),
(296, 'CMLKT', 'Cửa Hàng Mai Lân KonTum', '944-946 Hùng Vương - TT PleiKần- H. Ngọc Hồi - Kon Tum. 10', 'KD09'),
(297, 'CMLTDM', 'Cửa Hàng Mộc Linh- Thủ Dầu Một', '647 Huỳnh văn Lũy , Phú Mỹ, Thủ Dầu Một, BD', 'KD07'),
(298, 'CMLTN', 'Cửa hàng My Ly- Tây Ninh', '878 CMT8- Khu Phố 1, F4, Tây Ninh. 6', 'KD07'),
(299, 'CMNBMT', 'Chị Nguyệt- CH Minh Nguyệt Buôn Mê Thuột', 'Số 2 Lê Thánh Tông, Buôn Mê Thuột. 10', 'KD09'),
(300, 'CMNDH', 'Cửa hàng Minh Nghi - Đức Hòa', 'Ấp Bình Thúy, xã Hòa Khánh Đông, huyện Đức Hòa, LA.', 'KD02'),
(301, 'CMNDN', 'Cửa hàng Minh Nhựt- Đồng Nai', 'Gần chợ Phương Lâm', 'KD07'),
(302, 'CMPBT', 'Cửa Hàng Mỹ Phương', '112 KP1,Thị trấn Bình Đại, Bến Tre. 10', 'KD02'),
(303, 'CMPKBD', 'CH Nội Thất Mai Phước Khang', '1062 CMT8, Thủ Dầu 1, Bình Dương ( ép lấy màu trắng + NBO kem)', 'KD07'),
(304, 'CMPLD', 'Cửa Hàng Minh Phi (PM) 0985 622 212', '18 Quang Trung P9 Đà Lạt, Lâm Đồng (Hóa đơn dán ở ngoài bao chành) 8', 'KD09'),
(305, 'CMPLX', 'Cửa Hàng Minh Phát Long Xuyên', 'Long Xuyên', 'KD02'),
(306, 'CMPTDT', 'Cửa Hàng Mai Phương Thảo', 'Nhà số 6- 8 Nguyễn Doãn Phong, P.Mỹ Phú, TP Cao lãnh, Đồng Tháp. 8', 'KD02'),
(307, 'CMQBL', 'Cửa Hàng Mai Quỳnh', '75 Bà Triệu, P.3, TP. Bạc Liêu', 'KD07'),
(308, 'CMQBT', 'Cửa Hàng nệm Minh Quân', '269 Nguyễn Tất Thành - Chợ Lầu - Bắc Bình - Bình Thuận', 'KD06'),
(309, 'CMQST', 'Cửa Hàng Mỹ Quang', 'SócTrăng,Cửa Hàng Mỹ Quang', 'KD02'),
(310, 'CMQVL', 'Cửa Hàng Mỹ Quyên - Vĩnh Long', '4535, tổ 25, ấp Đông Lợi, xã Đông Bình, Thị xã Bình Minh, Tỉnh Vĩnh Long.', 'KD08'),
(311, 'CMSTN', 'Cửa hàng Màn Cửa Minh Sang - Tây Ninh', '137, Ấp Phước Đức B, Xã Phước Đông, Gò Dầu, Tây Ninh', 'KD07'),
(312, 'CMT2CL', 'Chị Hồng - Cửa Hàng Minh Thiện', 'chợ Mỹ Long, xã Mỹ Long, Cai Lậy, Tiền Giang. 8', 'KD02'),
(313, 'CMTCL', 'Chị Yến- Cửa Hàng Thầy Minh ( Minh Thiện cũ)', 'Chợ nhị Qúy ,Cai Lậy,Tiền Giang. 8', 'KD02'),
(314, 'CMTDN', 'Cửa Hàng Mạnh Tùng', '1925 QL20, Phú Xuân, Tân Phú , Đồng Nai. 8', 'KD07'),
(315, 'CMTHM', 'Cửa Hàng Minh Thảo', '28 Nguyễn Văn Bứa, Xuân Thới Sơn, Hóc Môn. 8', 'KD09'),
(316, 'CMTLA', 'Cửa Hàng Minh Trí Long An', 'KP3. TT Thạnh Hóa, Long An', 'KD02'),
(317, 'CMTLD', 'Cửa Hàng Minh Thông - Lâm Đồng', '137 Hà Giang Bảo Lộc- Lâm Đồng. 10', 'KD09'),
(318, 'CMTNT', 'Cửa Hàng Minh Tín- Nha Trang', '21 Ngô Gia Tự , TP Nha Trang', 'KD06'),
(319, 'CMTTB', 'Cửa Hàng Minh Tâm - Trảng Bom', '26 Bắc Sơn , ấp Bùi Chu, xã Bắc Sơn, Trảng Bom', 'KD07'),
(320, 'CMTTL10', 'Cửa Hàng Minh Thảo- Tỉnh lộ 10', '1584 Tỉnh lộ 10, Tân Tạo, Bình Tân. 8', 'KD02'),
(321, 'CMTTP', 'Cửa Hàng Minh Trang', '54 Tân Qúy,Tân phú', 'KD02'),
(322, 'CMTVL', 'CH Trang Trí Nội Thất - VP Mai Trang', 'Số 1B, Trưng Nữ Vương, P1, TP VL - 68/3B Phạm Thái Bường,P4,VL. 10', 'KD01'),
(323, 'CMVBP', 'Cửa Hàng Mỹ Vượng - Bình Phước', '13 Nguyễn Huệ, TT. Chơn Thành, H. Chơn Thành, Bình Phước', 'KD09'),
(324, 'CMVQ11', 'Cửa Hàng Mỹ Vân- Quận 11', '220 Phó Cơ Điều, F6,Q11', 'KD03'),
(325, 'CMYM', 'Anh Hiền - Công Ty Tnhh Mỹ ý Mỹ', '84/86/8 Tân Sơn Nhì, P.Tân Sơn Nhì,Q.Tân Phú', 'KD06'),
(326, 'CNABL', 'Anh Mạnh - Cửa Hàng Ngọc ánh', '51A/24 Hà giang, bảo Lộc, lâm Đồng', 'KD07'),
(327, 'CNACT', 'Cửa Hàng Ngọc Ánh - Cần Thơ', 'ấp Thới Thuận A, TT Thới Lai, huyện Thới Lai, TP Cần Thơ.', 'KD08'),
(328, 'CNAMN', 'Cửa Hàng Nội Thất Nhật Anh Mũi Né', '316 Huỳnh Thúc Kháng , Mũi Né, Phan Thiết. 10', 'KD06'),
(329, 'CNAMTBT', 'Anh Nam/Chị Ngọc : Nội Thất Nam Thành', 'ấp 1,xã bình thới,bình đại,Bến tre', 'KD02'),
(330, 'CNAQ8', 'Cửa Hàng Nguyên Anh', '1981 Phạm Thế Hiển,P6,Q8', 'KD06'),
(331, 'CNATD', 'Cửa Hàng Ngọc Anh- Thủ Đức', '967 Tỉnh Lộ 43, Phường Bình Chiểu, Thủ Đức', 'KD07'),
(332, 'CNB2TL', 'Cửa Hàng Ngọc Bích 2 (Thái Nương)', 'Lạc Hóa 2, TT Lạc Tánh, H. Tánh Linh, Bình Thuận. 8', 'KD06'),
(333, 'CNBGL', 'Cửa Hàng Nhật Bảo Gia Lai- 0908 06 1088', '09 Quang Trung - Pleiku- Gia Lai. 10', 'KD09'),
(334, 'CNBTL', 'Cửa Hàng Ngọc Bích', 'Lạc Hóa 2, TT Lạc Tánh, H. Tánh Linh, Bình Thuận. 8', 'KD06'),
(335, 'CNCBT', 'Chị Loan/Anh Hùng: Cửa Hàng Nhã Ca', '146 Nguyễn Văn Đậu,P7,Q.Bình Thạnh,TPHCM', 'KD09'),
(336, 'CNCHM', 'Chú Châu - Cửa Hàng Năm Châu', '131/2 ấp Trung Chánh, Xã Tân Xuân, Hóc Môn', 'KD09'),
(337, 'CNCQ9', 'Cửa Hàng Ngân Cương- Q9', '317 Đỗ Xuân Hợp, Q9. 8', 'KD07'),
(338, 'CNCST', 'Cửa Hàng Năm Châu - Sóc Trăng (HKD Thanh Mỹ)', 'Đường 3/2, ấp Cầu Đồn, TT Huỳnh Hữu Nghĩa, H. Mỹ Tú, T. Sóc Trăng', 'KD08'),
(339, 'CNCTV', 'Cửa Hàng Nam Cường ( Không ghi giá)', '217 Nguyễn Thị Minh Khai, Khóm 8, P.7, TP. Trà Vinh. 10', 'KD01'),
(340, 'CNDBC', 'Ngọc Diệp - Đại Lý Liên á', 'C1/3A Đường Võ Văn Vân,ấp 3 ,Vĩnh Lộc B,Bình Chánh ĐT:62666896', 'KD07'),
(341, 'CNDBD', 'Cửa Hàng Năm Dân Bình Dương', '266 xã Long Hoà, huyện Dầu Tiếng, Bình Dương. 10', 'KD07'),
(342, 'CNGBMT', 'Cửa Hàng Ngọc Giàu- Buôn Mê Thuột', '267 Nguyễn Thị Định, Tân Tiến, Buôn Mê Thuột. 8', 'KD09'),
(343, 'CNHBR', 'Cửa Hàng Ngân Hường - Bà Rịa', '96 Võ Thị Sáu Long An, Long Điền, Huyện Đất Đỏ, Bà Rịa Vũng Tàu', 'KD07'),
(344, 'CNHKG', 'Chị Hiền - Cửa Hàng Ngọc Hiền', '15 Nguyễn Chí thanh,Rạch Sỏi,Kiên Giang', 'KD08'),
(345, 'CNHTG', 'CH Ngọc Hương - Tiền giang', '351 Ấp Mới, Xã Long Định, Huyện Châu Thành, Tiền Giang', 'KD02'),
(346, 'CNHVL', 'Cty TNHH TM Ngọc Hưng', 'Số 11 đường Trưng Nữ Vương, Phường 1, Tp Vĩnh Long', 'KD08'),
(347, 'CNKBD', 'Chị Kiều - TTNT Ngọc Khôi', '179/1 Bình Chiến,TT.Bình Đại,Bến Tre. 6', 'KD02'),
(348, 'CNKDN', 'Cửa Hàng Ngọc Khánh - Đồng Nai', 'Đường Hùng Vương, TT. Hiệp Phước, Đồng Nai', 'KD07'),
(349, 'CNKV', 'Cửa Hàng Khánh Vy', '462 Đường Số 7, P.Tân Tạo, Q.Bình Tân', 'KD08'),
(350, 'CNLDN', 'Cửa hàng Nhật Lệ- Đồng Nai ( Giao hàng trước 1h)', '571 Tây Lạc, Bắc Sơn, Trảng Bom, Đồng Nai (giao hàng đến kho - Cầu Sập). 10', 'KD07'),
(351, 'CNLGK', 'Chị Lan - Cửa Hàng Ngọc Lan', '7/1 Gia Kiệm, Thống Nhất, Đồng Nai', 'KD07'),
(352, 'CNLTN', 'Chị Lan:Cửa hàng Ngọc Lan', '302 Lạc long Quân,kp4,p4,Tây Ninh: 0949.118009', 'KD02'),
(353, 'CNMBR', 'Cửa Hàng Ngọc Mai Bà Rịa', '249 Hùng vương, Ngãi giao , Châu Đức, Bà Rịa VT. 10', 'KD07'),
(354, 'CNMBT', 'Cửa Hàng Ngọc Mai - Bình Thạnh', '33 Bạch Đằng , F15, Bình Thạnh', 'KD06'),
(355, 'CNNBD', 'Cửa Hàng Ngọc Nam Bình Đại', 'ấp 3 xã bình thới, bình đại , bến tre. 8', 'KD02'),
(356, 'CNNBT', 'Chị Diệu -Cừa Hàng Ngô Nguyễn Bình Thạnh', '100 Xô Viết Nghệ Tỉnh,p21,Bình Thạnh', 'KD06'),
(357, 'CNNQ9', 'Cửa Hàng Nệm Tốt- Quận 9 ( Ngọc Nguyên cũ)', '181 Đỗ Xuân Hợp ,P. Phước Long,Q9,TPHCM. 10', 'KD07'),
(358, 'CNPBD', 'Cửa Hàng Ngọc Phi', '20/22 ấp Bình Đường, Ngã Ba Bình Đường, Bình Dương', 'KD02'),
(359, 'CNPCT', 'Anh Minh - Cơ Sở Đồ gỗ Ngọc Phú', 'KV10,P.Châu văn liêm ,Q.Ô Môn,TP.Cần thơ. 8', 'KD08'),
(360, 'CNPDL', 'Cửa Hàng Ngọc Phương - Đắc Lăk', '149 Nguyễn Tất Thành, Khối 7, TT M\'Drak, H. M\'Drak, DakLak', 'KD09'),
(361, 'CNPQ9', 'Cửa Hàng Ngọc Phát - Quận 9', '188 Lê Văn Việt, Tăng Nhơn Phú B, Quận 9. 8', 'KD07'),
(362, 'CNPTN', 'Cửa Hàng Ngọc Phi - Tây Ninh', '487 Lạc Long Quân, Hiệp Tân, Hòa Thành, Tây Ninh', 'KD07'),
(363, 'CNQ9', 'Cô Ngọc -Cửa Hàng Ngọc', '263 Lê Văn Việt, Phường Hiệp Phú, Quận 9', 'KD03'),
(364, 'CNSTV', 'DNTN Năm Sỹ - Trà Vinh ( Không Gửi Toa Chành)', 'Khóm Phước Trị, F1, TX Duyên Hải, Trà Vinh. 8', 'KD01'),
(365, 'CNT231Q2', 'Cửa Hàng Nội Thất 231 - 233 - Quận 02', '231 Nguyễn Duy Trinh Quận 02', 'KD07'),
(366, 'CNTAG', 'Cửa Hàng Ngọc Trân- An Giang', 'Cây số 3, Gần UBND phường Long Sơn, Tx. Tân Châu, An Giang.', 'KD08'),
(367, 'CNTBD', 'Nội Thất Ngọc Thủy- Bình Định', '375 Trần Phú , TT Diệu Trì, Tuy Phước,Bình Định. 10', 'KD06'),
(368, 'CNTCG', 'Cửa Hàng Nhựt Tân - Cần Giuộc ( CH Xe Đạp)', 'Tổ 14 ấp Tây, xã Đông Thạnh, Cần Giuộc , LA', 'KD02'),
(369, 'CNTDDN', 'Cửa hàng Nội Thất Dũng- Đồng Nai', 'B115 Phước Lý, xã Đại Phước, Huyện Nhơn Trạch, Đồng Nai, 10', 'KD07'),
(370, 'CNTDT', 'Cửa Hàng Nhân Trung- Đồng Tháp', '77 Nguyễn Huệ, Phường 1, Tp Cao Lãnh, Đồng Tháp.', 'KD02'),
(371, 'CNTDTTV', 'Cửa Hàng NT Dân Tiến- Trà Vinh', 'Khóm Mỹ Cẩm A, Thị Trấn Cầu Ngang, H. Cầu Ngang, T. Trà Vinh', 'KD08'),
(372, 'CNTHNBT', 'Cửa Hàng NT Hai Nhựt - Bến Tre', 'QL57, TT. Thạnh Phú, Thạnh Phú, Bến Tre, Việt Nam', 'KD02'),
(373, 'CNTHNT', 'Cửa Hàng Nội Thất Hồng Ninh Thuận', 'Công Hải, Hàm Thuận Bắc, Ninh Thuận. 8', 'KD06'),
(374, 'CNTHTBT', 'Cửa Hàng TTNT Hải Triều- Bình Thuận', 'Thôn Dân Phú, xã Hàm Kiệm, H Hàm Thuận Nam, Bình Thuận', 'KD06'),
(375, 'CNTHTCT', 'Cửa Hàng NT Hoàn Thành - Cần Thơ', 'ấp Phú Thọ, xã Trường Xuân, huyện Thới Lai, TP Cần Thơ', 'KD08'),
(376, 'CNTLA', 'Cô Tuyết - Cửa Hàng Năm Trước', 'Chợ Thanh Hóa,Long An ( 0948.464.742). 8', 'KD02'),
(377, 'CNTLX', 'Cửa Hàng Nguyên Thanh- Long Xuyên', '48 Ngô Gia Tự, P.Mỹ Long, Long Xuyên, An Giang', 'KD08'),
(378, 'CNTML', 'Cửa Hàng Nam Tịnh - Mã Lò', '2028/11 Tân Kỳ Tân Quý / . 6', 'KD02'),
(379, 'CNTMNDN', 'Cửa Hàng Nội Thất Minh Nhật - Đồng Nai', '2395 Ấp Phương Lâm, xã Phú Lâm, H.Tân Phú, Đồng Nai', 'KD09'),
(380, 'CNTPR', 'Cửa hàng Nệm Tốt- Phan Rang - 093 122 9729', 'Số 22 đường 16-4, F. Kinh Dinh, Phan Rang, T. Ninh thuận. 8', 'KD06'),
(381, 'CNTQ8', 'Cửa Hàng Nhật Tân - Q8', '78-79 Lên Tỉnh 5, F5, Q8. 10', 'KD06'),
(382, 'CNTQDN', 'Cửa Hàng Ngọc Tùng Quân - Đà Nẵng', '191 Núi Thành Quận Hải Châu. ( Giá dành riêng).', 'KD11'),
(383, 'CNTTADN', 'Cửa hàng TTNT Trung Anh - Đà Nẵng', '104 Trần Đại Nghĩa, F Hòa Hải. Ngũ hành Sơn, Đà Nẵng. 13', 'KD11'),
(384, 'CNTTC', 'Chị Thảo - cửa hàng Ngọc Thảo', '832 Trường Chinh, P13, Q.Tân Bình', 'KD02'),
(385, 'CNTTDBP', 'Cửa Hàng Nội Thất Thành Dương - Bình Phước', '19 KP2 TT Chơn Thành , huyện Chơn Thành, BP', 'KD09'),
(386, 'CNTTGV', 'Cửa Hàng New Trung Thành - Gò Vấp', '185B Nguyễn Oanh, F10 Gò Vấp. 8', 'KD06'),
(387, 'CNTTNBD', 'Nội Thất Tuấn Ngân- Bình Định', 'đường Thanh Long 4, Phước Mỹ, Quy Nhơn, Bình Định', 'KD06'),
(388, 'CNTTNDN', 'Cửa Hàng Thanh Nhã - Đồng Nai', 'Thị trấn Tân Phú, Đồng Nai', 'KD07'),
(389, 'CNTTNTN', 'Cửa hàng Thanh Nga- Tây Ninh', '701 CMT8, KP.2, F.3, TP. Tây Ninh', 'KD07'),
(390, 'CNTTTBP', 'Cửa Hàng Thanh Thúy- Bình Phước', 'số 63 QL13, Ấp 5 xã Lộc Thái, Huyện Lộc Ninh, Bình Phước', 'KD09'),
(391, 'CNTTTCT', 'Cửa Hàng Nội Thất Toàn Thịnh- Cần Thơ', '464 đường CMT8, Phường Bùi Hữu Nghĩa, Quận Bình Thuỷ, Tp.Cần Thơ.', 'KD08'),
(392, 'CNTTTHG', 'Cửa Hàng Nội Thất Trường Thịnh- Hậu Giang', '237 - đường 30/4 - KV5 - F Thuận An -TX Long Mỹ - Tỉnh Hậu Giang. 8', 'KD01'),
(393, 'CNTVBL', 'Cửa Hàng Nội Thất Việt -Bến Lức', '214 Quốc Lộ 1A, KP4, TT Bến Lức, Long An.', 'KD02'),
(394, 'CNTVL', 'Cửa hàng Ngọc Thu', 'F1/48 ấp 6, Xã Vĩnh Lộc A, Huyện Bình Chánh. 10', 'KD02'),
(395, 'CNTXTD', 'Cửa Hàng Nội Thất Xanh - Thủ Đức ( BINGBEE VIỆT NAM)', '1/4B Đường số 18, KP4, Linh Đông, Thủ Đức.', 'KD07'),
(396, 'CNVDDN', 'Cửa Hàng Nguyễn Văn Du - Đồng Nai', 'Đường Nguyễn Hoàng, Tổ 4, Ấp 2, Sông Trầu, Trảng Bom, Đồng Nai', 'KD07'),
(397, 'CNVPL', 'Cửa Hàng Nam Việt - PleiKu', '30 CMT8 Phường. Hoa Lư, Pleiku, Gia Lai', 'KD09'),
(398, 'CNVTN', 'Cửa hàng Ngọc Vân Thốt Nốt', 'KV Thới An 3, P. Thuận An, Q Thốt Nốt, TP Cần Thơ', 'KD08'),
(399, 'CNYCT', 'Cửa Hàng Như Ý - Cần Thơ', '112B, CMT8, P. Cái Khế, Q. Ninh Kiều, TP. CT', 'KD08'),
(400, 'CNYDM', 'Cửa Hàng Như Ý ((Đăk Min)', '205 Nguyễn Tất Thành,TT Đắk Min,H.Đắk Min,8', 'KD09'),
(401, 'CNYHM', 'Cửa Hàng Như Ý Hóc Môn', '63 Đặng Thúc Vinh, Hóc Môn', 'KD09'),
(402, 'CPARADISE', 'Dự án Paradise - Dốc Lết', 'DỐC LẾT- KHÁNH HÒA', 'KD10'),
(403, 'CPATD', 'Cửa Hàng Phương Anh', '170 Quốc lộ 13,P.Hiệp Bình Chánh,Thủ Đức', 'KD07'),
(404, 'CPCDL', 'Chị Phúc - Cửa Hàng Phúc Chiến', 'Số 9 Lý Tự Trọng TP Đà Lạt ( dán toa vô nệm)', 'KD09'),
(405, 'CPDQ12', 'Chị Đông - CH.Phương Đông', '19/1A,Phan văn hớn,P.Tân Thới nhất,Q12', 'KD07'),
(406, 'CPDTB', 'Anh Phát - Cửa hàng Phát Đạt Tân Biên', 'Khu phố 2 Thị trấn Tân Biên, Tây Ninh', 'KD07'),
(407, 'CPDTN', 'Anh Sỹ - Phước Đa', 'Chợ Long Hoa, Tây Ninh', 'KD09'),
(408, 'CPGMBT', 'Cửa Hàng Phúc Gia Minh - Bến Tre', 'KP2, TT Châu Thành, huyện Châu Thành, Bến TRe (không giá)', 'KD02'),
(409, 'CPLBD', 'Chị Linh : Cửa Hàng Phương Linh', 'Tỉnh lộ 743,Bình Dương: 0903.527.271', 'KD03'),
(410, 'CPLBR', 'Cửa Hàng Phi Long- Bà Rịa', 'chợ Mỹ Xuân, Huyện Tân Thành, Bà Rịa Vũng Tàu. 10', 'KD07'),
(411, 'CPLLX', 'Cửa hàng Pha Lê - Long Xuyên', '1254 Trần Hưng Đạo, P. Mỹ Xuyên, TP Long Xuyên, T. An Giang', 'KD08'),
(412, 'CPLNH', 'Anh Bình - CH Phát Lợi - Ninh Hòa', '404 Trần Quý Cáp, Ninh Hòa', 'KD06'),
(413, 'CPLTBR', 'Cửa Hàng Phước Long Thọ - Bà Rịa', 'Tổ 22, Ấp Phước Thới, Xã Phước Long Thọ, Huyện Đất Đỏ, BRVT', 'KD07'),
(414, 'CPMDN', 'Cửa Hàng Phương Mai Đắc Nông', 'Tôn ĐứcThắng , Gia Nghĩa, Đắc Nông. 8', 'KD09'),
(415, 'CPNBD', 'Chị Phượng :Cửa hàng Phượng Nhàn', 'ấp 8,lộc thuận,bình đại,bến tre . 10', 'KD02'),
(416, 'CPNHG', 'Cửa hàng Phương Nhung- Hậu Giang', 'ấp Hoà Phụng B, TT Kinh Cùng, H. Phụng Hiệp, T. Hậu Giang', 'KD08'),
(417, 'CPNQ2', 'Cửa Hàng Phương Nghi', '607 Nguyễn Duy Trinh', 'KD02'),
(418, 'CPTADN', 'Công ty Phúc Tiên An - Đồng Nai', '31A/20 Bùi Trọng Nghĩa, Tổ 42. KP3, Trảng Dài, Đồng Nai', 'KD07'),
(419, 'CPTBH', 'Cô Bích - Cửa Hàng Phước Thịnh ( Nệm lấy màu đậm)', '1/2 KP1, Tân Hoà, Biên Hoà, Đồng Nai (12h xe về)', 'KD07'),
(420, 'CPTBP', 'Cửa Hàng Phước Thịnh - Bình Phước', '443 QL14, F Tân Bình, TX Đồng Xoài, Bình Phước. 8', 'KD09'),
(421, 'CPTBT', 'Cửa Hàng Phương Tuyền - Bến Tre', 'Ấp An Hội A, xã An Thuận, Huyện Thạnh Phú, Bến Tre', 'KD02'),
(422, 'CPTCL', 'Cửa hàng Phúc Thịnh - Cam Lâm', '340 Trường chinh, Cam Đức,Cam lâm,khánh hòa. 10', 'KD06'),
(423, 'CPTDN', 'Cửa Hàng Phương Thảo - Đắc Nông', '28 Nguyễn Tất Thành, TT Ea T\'Ling, H.Cư Jut, Dak Nông', 'KD09'),
(424, 'CPTHACH', 'Công Ty Phú Thạch', '859 Hương Lộ 2,khu phố 8,Bình trị đông A,Bình tân', 'KD04'),
(425, 'CPTHG', 'Chị Thảo - Cửa Hàng Phú Thịnh', '442 Hậu giang, Phường 12, quận 6. 10', 'KD02'),
(426, 'CPTKG', 'Cửa hàng Phương thúy', 'rạch giá,kiên giang', 'KD02'),
(427, 'CPTLA', 'Chị Thủy- Phước Thành', 'Quốc lộ 1S,Tân Hiệp,Long an', 'KD09'),
(428, 'CPTTD', 'Chị Thảo - Cửa Hàng Phương Thảo', '79 Võ Văn Ngân,F Linh Chiểu,Q.Thủ Đức. 8', 'KD07'),
(429, 'CQAG', 'Cửa Hàng Quang- An Giang', 'Ấp Phú Xương, Chợ Vàm, Phú Tân, An Giang', 'KD08'),
(430, 'CQDHM', 'Cửa Hàng Quốc Dũng', '31/4 Phan văn đối,Tiền lâm,Bà điểm ,Hóc môn', 'KD08'),
(431, 'CQH2TN', 'Cửa Hàng Quỳnh Hương II- Tây Ninh', 'Ngã 3 An Hoà, Chợ An Hoà, KCN Thành Thành Công, Trảng Bàng. 8', 'KD07'),
(432, 'CQH3TN', 'Cửa Hàng Quỳnh Hương 3 - Tây Ninh', 'Đường Bời Lời, KP Gia Quỳnh, TT Trảng Bàng, 8', 'KD07'),
(433, 'CQHBD', 'Anh Ngọc, Cửa Hàng Quỳnh Hoa', 'Bình Dương', 'KD09'),
(434, 'CQHTN', 'Cửa Hàng Quỳnh Hương- Tây Ninh', '19 QL22, Lộc Thành, Trảng Bàng, Tây Ninh. 8', 'KD07'),
(435, 'CQKBD', 'Anh Hòa CH Quốc Khánh (Sông Bé)', '23/17 khu phố bình phước B,Bình chuẩn,thuận an ,bình dương. 10', 'KD07'),
(436, 'CQNKG', 'Cửa Hàng Quốc Nam- Kiên Giang', 'khu phố 2, TT Thứ 3, H. An Biên, T. Kiên Giang', 'KD08'),
(437, 'CQODT', 'Cửa Hàng Quốc Oai- Dầu Tiếng', '45 Thống Nhất, Dầu Tiếng , Bình Dương', 'KD07'),
(438, 'CQPBH', 'Cửa hàng Quang Phương', '164 Đường 30/4 , Biên Hoà, Đồng Nai', 'KD07'),
(439, 'CQTLG', 'Cửa Hàng Quãng Thành- Lagi', '532B Thống Nhất, F. Tân An, Lagi. 8', 'KD06'),
(440, 'CQTQ7', 'Cửa hàng Quỳnh Trâm', '176 Lâm văn bền,q7', 'KD02'),
(441, 'CQTTN', 'Chị Thuý - Cửa hàng Quốc Tế', '282 Cách Mạng Tháng Tám, KP2, P.2, T.X Tây Ninh', 'KD07'),
(442, 'CQTVT', 'Cửa Hàng Quốc Toản- Vũng Tàu', '1133 đường 30/4, Phường 11, TP. Vũng Tàu, Tỉnh Bà Rịa - Vũng Tàu', 'KD07'),
(443, 'CQVBP', 'Cửa Hàng Quang Vân- Bình Phước', 'chợ Bù Nho, huyện Phú Riềng , Bình Phước', 'KD09'),
(444, 'CRCHDKG', 'Cửa Hàng Rèm cửa Hoàng Duyên- Kiên Giang', '200A Nguyễn Trung Trực, kp5, thị trấn Dương Đông, huyện Phú Quốc, tỉnh Kiên Giang', 'KD08'),
(445, 'CSBBD', 'Cửa Hàng Phúc Gia An ( AN NGUYÊN FURNITURE)', '22/6 QL13 F Thuận Giao, TX Thuận An, Bình Dương. 8', 'KD07'),
(446, 'CSD2LT', 'anh Duy - Công ty TNHH NT Mỹ Phát', '327-329 QL51 , Long Bình Tân, tp, Biên Hoà. 8', 'KD07'),
(447, 'CSDLT', 'Chị Nga - DNTN TM-DV Sáu Duy', '1073 Quốc Lộ 51, F, Long Bình Tân,Tp Biên Hoà, Đồng Nai. 8', 'KD07'),
(448, 'CSGPQ', 'SUN GROUP - CÔNG TY TNHH XÂY DỰNG NAM ĐẢO', 'dự án LÀNG NHIỆT ĐỚI', 'KD10'),
(449, 'CSHLD', 'Cửa Hàng Sơn Hà', '873B hùng Vương -Di Linh - Lâm Đồng. 8', 'KD09'),
(450, 'CSKBT', 'Cửa Hàng Trang Trí Nội Thất Sang Kiều', 'Quốc lộ 1A ,TT.Lương sơn ,Bắc ninh,Bình thuận', 'KD09'),
(451, 'CSLPT', 'Cô Lâm - Cửa Hàng Sơn Lâm', '507 Trần hưng đạo, Phan Thiết, Bình thuận', 'KD06'),
(452, 'CSNCD', 'Cửa hàng Sáu Ngợi', 'A13/8 Nguyễn Hữu Trí, KP1, T.T Tân Túc, Bình Chánh. 8', 'KD02'),
(453, 'CSNGL', 'Chị Nguyên - Công Ty Song Nam', '70B Nguyễn Trãi, Pleiku, gia lai', 'KD08'),
(454, 'CSOLA', 'Cửa Hàng: Shop Oanh', 'đường Trưng Trắc, TT Thủ Thừa, Long An.10 ( Tất Cả nệm đóng bao chành)', 'KD02'),
(455, 'CSOTEL', 'Công Ty CP Cung ứng dịch vụ Sotel', '53 Đường số 18, Phường Hiệp Bình Chánh, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
(456, 'CSP', 'Shopee', NULL, 'KD04'),
(457, 'CSRDD', 'Showrom Văn Phòng Đại Diện', '15-17-19, Đường Số 2, KDC Phạm Văn Hai, Xã Phạm Văn Hai, Quận Bình Chánh', 'KD04'),
(458, 'CSRLA', 'Công ty TNHH SAM RAN', 'Ấp 5A, xã Lương Bình, huyện Bến Lức, Long An', 'KD03'),
(459, 'CSSQ5', 'anh Trí - Cửa Hàng San San Q5', '257 Trần Phú F8 Quận 05', 'KD02'),
(460, 'CSTBD', 'Tiêu ái Thu - Cửa Hàng Sơn Thủy', '56/1 Khu Phố 3,Thị Trấn Bình Đại', 'KD07'),
(461, 'CSTCT', 'Cô Sáu - Cửa Hàng Sáu Tỷ', 'Quốc Lộ 91, Thốt Nốt, Cần Thơ', 'KD08'),
(462, 'CSTDBT', 'Anh Thắng - Công ty Sao Thái Dương', 'Ao Đôi,Bình tân', 'KD07'),
(463, 'CSTMTB', 'Chị Thanh - Cửa hàng Sáu Trang Minh', 'QL22, Trảng bàng, Tây Ninh ( Gần Bánh Canh Cô BA)', 'KD07'),
(464, 'CSTNGD', 'Cửa Hàng Siêu Thị Nệm- Gò Dầu', '04 Gò Dầu Phường Tân Sơn Nhì, Quận Tân Phú . 6', 'KD02'),
(465, 'CSTNQ2', 'Cửa Hàng Siêu Thị Nệm Q2 ( Không Ghi Giá )', '363 Nguyễn Duy Trinh Q2. 8 %', 'KD07'),
(466, 'CSTSTN', 'Chị Vui - Cửa hàng Sáu Trang Sơn', 'Long chí,long thành trung,hòa thành,tây ninh (chợ long hoa)', 'KD07'),
(467, 'CSTTN', 'Chị Mai - Cửa hàng Sáu Trang', 'f55/4 Lạc Long Quân, Hoà Thành, Tây Ninh', 'KD07'),
(468, 'CSVTBD', 'Anh Vương / Anh Khoa - Công Ty Song Việt Tiến', 'Lô J2 Đường số 10,KCN sóng than,dĩ an ,bình dương', 'KD02'),
(469, 'CTABR', 'Bác Tám Âu - Cửa hàng Tám Âu', 'ấp bắc,xã hòa long,TX.Bà rịa', 'KD02'),
(470, 'CTABT', 'Cửa Hàng Tuyết Anh (Đăng Vũ) Bình Thuận', 'KP4, TT Tân Nghĩa, Hàm Tân, Bình Thuận. 8', 'KD06'),
(471, 'CTADN', 'Cửa Hàng Trung Ánh- Đồng Nai', '1008 Ấp Tân Lập 2, xã Cây Gáo, h. Trảng Bom, Đồng Nai. 6', 'KD07'),
(472, 'CTALX', 'Chị Hằng :Cửa hàng Tiến An', '40-42 Ngô Gia Tự, Long Xuyên', 'KD08'),
(473, 'CTAQ7', 'Cửa Hàng Thiên An - Quận 7', '793/51/24 Trần Xuân Soạn, F, Tân Hưng, Quận 7. 8', 'KD10'),
(474, 'CTATP', 'Cửa Hàng Trâm Anh Tân Phú', '04 Tân Quý. 6', 'KD02'),
(475, 'CTBBP', 'Cửa Hàng Thái Bình- Bình Phước', 'Thị Trấn Đức Phong, Huyện Bù Đăng- Bình Phước. 10', 'KD09'),
(476, 'CTBH', 'Cửa Hàng Tuyết - Biên Hòa (Tuyết Bedding)', '63A/4, Kp10, tân biên, biên hòa', 'KD07'),
(477, 'CTBL', 'Cửa Hàng TTNN Toàn- Bến Lức', '227- 229 QL1A, KP3, TT Bến Lức, Long An. 8', 'KD02'),
(478, 'CTCC', 'Cửa Hàng Tâm (củ chi)', '90 Tỉnh Lộ 8,KP2,Thị trấn củ chi. 10', 'KD09'),
(479, 'CTCMT', 'Cửa Hàng Thành Công - Mỹ Tho', '10 Ấp Bắc, Mỹ Tho, Tiền Giang', 'KD02'),
(480, 'CTCP', 'Công ty Toàn Châu Phát', 'Nữ Dân Công, Vĩnh Lộc A, Bình Chánh', 'KD02'),
(481, 'CTD1BD', 'Cửa Hàng Thành Đạt 1 Bình Dương', '494-496 CMT8, Thủ Dầu Một, BD. 10', 'KD07'),
(482, 'CTDBC', 'Chị Hương - Cửa Hàng Thành Đạt', 'A26/5A, Ấp 1,Bình Hưng,Bình Chánh. 8', 'KD02'),
(483, 'CTDBT', 'Chị Thương :TTNT Thành Đạt', '321/1B ấp 1,xã quới sơn,H.Châu Thành,Bến tre. 8', 'KD02'),
(484, 'CTDCD', 'Cửa Hàng Trúc Đào- Châu Đốc', '21 Lê Lợi, Phường B, Châu Đốc, An Giang. 10', 'KD08'),
(485, 'CTDDN', 'Cửa hàng TTNT Trang Dung', 'K4/171A, Tân Mỹ, Tổ 94, KP 5, F. Bửu Hòa, Biên Hòa, Đồng Nai.', 'KD07'),
(486, 'CTDLA', 'Cửa Hàng Thành Đạt', 'ấp Bình Tả, Xã Đức Hòa Hạ ,Đức Hòa , Long An', 'KD09'),
(487, 'CTĐLA', 'Chị Vân - Cửa Hàng Tuyết Đông', '47 Nguyễn Trung Trực,TX.Tân An,Long An', 'KD09'),
(488, 'CTDNGT', 'Cửa Hàng Thuận Dũng Ngô Gia Tự', '241 Ngô Gia Tự, Q10. 10 (nhớ vô bao)', 'KD02'),
(489, 'CTDNS', 'Trang Trí Nội Thất Tiến Đạt', '211 Nguyễn Sơn,P.Phú Thạnh,Q.Tân Phú,TP.HCM', 'KD02'),
(490, 'CTDQ12', 'Cửa Hàng Thành Đạt Quận 12', '345 Hà Huy Giáp, F, Thanh Lộc, Quận 12. 8', 'KD09'),
(491, 'CTDQ7', 'Cửa Hàng Thành Đạt', '310 Huỳnh Tấn Phát,Phú Xuân,Nhà Bè', 'KD07'),
(492, 'CTDTN', 'Cửa Hàng Thanh Duyên - Tây Ninh', 'ấp Bình Thuận, xã Phước Bình, TX Trảng Bàng, Tây Ninh', 'KD07'),
(493, 'CTGCT', 'CH Nệm Trường Giang (cty việt hải) - (báo trước giờ giao tới)', '11 Mậu Thân,Xuân Khánh,Ninh Kiều,(đem theo xe kéo) .10', 'KD01'),
(494, 'CTGDG', 'Thế Giới Drap Gối -Q7', '255A Nguyễn Thị Thập- F. Tân Phú, Q7 . 10', 'KD06'),
(495, 'CTGNTCR', 'Cửa Hàng Thế Giới Nội Thất - Cam Ranh ( Không ghi Giá)', '205 đường 22 tháng 8, Cam Ranh ( CSDC : vàng+ xám),EP1 viền : Trắng', 'KD06'),
(496, 'CTHAG', 'Cửa Hàng Thành Hương Mẹ ( 0902 3535 75)', '39 Trần Hưng Đạo Thị Trấn Tri Tôn,An Giang (cấm xe 2.5 tấn)', 'KD08'),
(497, 'CTHBD', 'Cửa Hàng Thanh Hằng', '94 Bạch Đằng ,P.24, Q. Bình Thạnh,TPHCM. 10', 'KD06'),
(498, 'CTHBH', 'Chị Nga - Cửa Hàng Thuận Phát', '449 Tỉnh Lộ 10, An Lạc, bình Tân', 'KD09'),
(499, 'CTHBT', 'Cửa Hàng Thanh Hải', '21 Nguyễn Đình Chiểu, H.Mỏ Cày,Bến Tre. 10 (Th lấy kem)', 'KD02'),
(500, 'CTHBTr', 'Cửa Hàng Thảo Hà - Bến Tre', '12 THÁI HỮU KIỄM BA TRI, -', 'KD02');
INSERT INTO `customer` (`id`, `makh`, `tenkh`, `diachi`, `qlkhuvuc`) VALUES
(501, 'CTHCL', 'Cửa Hàng Thanh Hùng', 'Chi Lăng,An giang', 'KD02'),
(502, 'CTHDTV', 'CH Thuận Hòa Duy - Liêu Minh Duy', 'Khóm 8, Cầu Kè, Trà . 10', 'KD01'),
(503, 'CTHGV', 'Cửa Hàng Thanh Hường- Gò Vấp', '562 - 564 Lê Đức Thọ, P.17, Gò Vấp', 'KD06'),
(504, 'CTHHG', 'Cửa Hàng Thái Hưng- Hậu Giang', '841 Hùng Vương, KV5, F, Ngã Bảy, TP ngã Bảy, Hậu Giang.', 'KD08'),
(505, 'CTHKG', 'Cửa Hàng Thái Hoà ( Thứ 9,5 Kiên Giang)', NULL, 'KD08'),
(506, 'CTHLA', 'Chị Hòa - Cửa hàng Thuận Hòa', '72 Nguyễn Trung Trực, TP. Tân An, Long An_E2v . 10', 'KD01'),
(507, 'CTHLD', 'Cửa Hàng Tú Hoa - Lâm Đồng', '19 Hai Bà Trưng - Liên Nghĩa- Đức Trọng , Lâm Đồng. 8', 'KD09'),
(508, 'CTHQ8', 'Cửa Hàng Thu Hà - Q8', '26 Cao Xuân Dục, F13, Quận 08', 'KD06'),
(509, 'CTHSRG', 'Chị Dung- CH Hải Sơn Rạch Gía', '382 Lạc Hồng,tp rạch giá ,kiên giang (không ghi giá+HD bỏ bao thư). 10', 'KD01'),
(510, 'CTHSST', 'Anh Trung - Tân Hải Sơn', 'Số 10,Nguyễn Chí Thanh, P6, TP. Sóc Trăng. 10', 'KD01'),
(511, 'CTHTDM', 'Cửa Hàng Thuận Hưng- Thủ Dầu Một( Xuất cho NT Thanh Sương)', '11 Phú Lợi, F. Phú Lợi , TP Thủ Dầu Một, Bình Dương. 8', 'KD07'),
(512, 'CTKAG', 'Cửa hàng Thanh Kiều', 'Chợ Tổng đội,Hòn Đất,Kiên giang', 'KD09'),
(513, 'CTKDN', 'Cửa Hàng Trung Kiên Đồng Nai', '1433 QL1A ngã 3 Trà Cổ, An Điền, Trảng Bom, Đồng Nai. 10', 'KD07'),
(514, 'CTKG', 'Cửa Hàng Tạo - Kiên Giang', 'ấp thứ nhất, xã tây yên, huyện An Biên. T. Kiên Giang', 'KD08'),
(515, 'CTKNB', 'Cửa Hàng Trung Kiên- Nhà Bè - (HKD Nguyễn Yến Nhi)', '514 Nguyễn văn Tạo, Nhà Bè. HCM (ko ghi giá)', 'KD06'),
(516, 'CTKPY', 'Chị Vân - Cửa Hàng Thủy Kim', '107 Trần Hưng Đạo,Tuy Hòa,Phú Yên', 'KD07'),
(517, 'CTLBP', 'Cửa Hàng Thanh Long Bình Phước', 'chợ Bù Na, xã Nghĩa Bình , Bù Đăng, Bình Phước. 8', 'KD09'),
(518, 'CTLBR', 'Cửa Hàng Nội Thất Thuý Lan - Bà Rịa', '93-101 Nguyễn Hữu Thọ, Tp, Bà Rịa. 8', 'KD07'),
(519, 'CTLDL', 'Cửa hàng Thanh Loan - Đắk Lăk', '196 Nguyễn Tất Thành , EARAR, Đắk Lăk. 8', 'KD09'),
(520, 'CTLDN', 'Chị Nhung- Cửa hàng Thành Lâm', '463 Phạm văn thuận,Tân Mai,Đồng Nai,gần chợ tân mai', 'KD07'),
(521, 'CTLLA', 'Chị Hoa - CH Thành Lợi - Long An ( ko ghi giá)', '8D chợ Bàu Trai, Thị trấn Hậu Nghĩa, Đức Hòa, Long An', 'KD01'),
(522, 'CTLLH', 'chị Hoàng Anh - cửa hàng Thuý Lan', 'Thị trấn Long Hải', 'KD07'),
(523, 'CTLPR', 'Chị Ninh- cửa hàng Thành Lợi- Phan Rang', '138 Thống Nhất, Phan Rang, Bình Thuận ( Nệm lấy màu đậm)', 'KD06'),
(524, 'CTLPY', 'Rèm Cửa Tuyết Loan (Không ghi giá)', '75 Lê Thành Phương -TT Chí Thạnh, Huyện Tuy An, Phú Yên ( không lấy kem bông nổi và trắng). 10', 'KD06'),
(525, 'CTLTB', 'Cửa Hàng Thanh Long Tân Bình', '1094 CMT8, F4, Tân Bình. 8', 'KD02'),
(526, 'CTLTN', 'Cửa Hàng Thanh Liễu - Tây Ninh', '432 CMT8 Tây Ninh', 'KD07'),
(527, 'CTMBT', 'Cửa Hàng Tiến Mỹ- Bình Thuận', '27 Hai Bà Trưng, TT Phan Rí, Tuy Phong, Bình Thuận. 8', 'KD06'),
(528, 'CTMLK', 'Chị Minh :Thanh Minh -Long khánh', 'A105 Hùng Vương,Thị Xã Long Khánh,Đồng Nai', 'KD02'),
(529, 'CTMMT', 'chị Nhân - cửa hàng Thanh minh', '454A ấp Bắc, Phường 5, TP.Mỹ Tho (không ghi giá)', 'KD01'),
(530, 'CTMPH', 'Anh Thiện - Cửa Hàng Thiện Mỹ', '58 Lê Lợi ,KV1,P.ngã bảy,TX.Ngã bảy,Hậu Giang', 'KD01'),
(531, 'CTMVL', 'Anh Tùng - Trang trí nội thất Toàn Miền', 'chợ mai phốp,trung hiếu,vũng liêm,vĩnh long. 10', 'KD08'),
(532, 'CTNBP', 'Cửa Hàng Tài Ngân - Bình Phước', '30 Nguyễn Huệ, TX. Bình Long. T. Bình Phước', 'KD09'),
(533, 'CTNBT', 'Trang Trí Nội Thất Thiên Nga Bến Tre', 'ấp 5,Thị Trấn Giồng Trôm,Bến tre . 8', 'KD02'),
(534, 'CTNCG', 'Cửa Hàng Tuyết Nhung- Cần Giờ', 'đường Đào Cừ, ( đoạn gần siêu thị)', 'KD06'),
(535, 'CTNCT', 'Công ty TNHH SX TM DV Trăng Non', '27 Nguyễn Khuyến, An Cư, Ninh Kiều, Cần Thơ', 'KD10'),
(536, 'CTNCV', 'Chị Trúc - Cửa hàng Thanh Nhạn', '0439 tổ 24 ấp thuận tiến A,Xã thuận an,H. bình minh,T.vĩnh long. 8', 'KD08'),
(537, 'CTNDN', 'Cửa hàng Thiên Ngọc- Quãng Ngãi 0906409168', '563 Quang Trung,TP.Quãng Ngãi', 'KD06'),
(538, 'CTNGD', 'Chị Dung - cửa hàng Tín Nghĩa Gò Dầu', 'Khu phố 1, Thị trấn Gò Dầu, Tây Ninh', 'KD07'),
(539, 'CTNQ5', 'Cô Minh : Trung Tâm Tín Nghĩa MINH A1', '144 Phạm Đình Hổ Q6,TPHCM. 8', 'KD02'),
(540, 'CTNTN', 'Cửa hàng Thu Ngân - Tây Ninh', '002A đường 30/4 KP4, F3, TX Tây Ninh, Tây Ninh', 'KD07'),
(541, 'CTNTV', 'Cửa Hàng Tâm Nga - Trà Vinh', 'Trà Vinh', 'KD04'),
(542, 'CTNXQ5', 'Hiệu Buôn Tân Nam Xương- Q5', '17 Phan Văn Khoẻ, F13,Q5', 'KD03'),
(543, 'CTOCT', 'Cửa Hàng Tân Oanh', '100 Nguyễn Đức Cảnh, Cái Khế, Ninh Kiêu TP Cần Thơ. 10', 'KD08'),
(544, 'CTP2BH', 'Chị Hương - Cửa Hàng Thiên Phước II', '47/1KP4 Nguyễn ái Quốc,TP.Biên hòa. 10', 'KD01'),
(545, 'CTP2CL', 'Chị My -Cửa Hàng TƯỜNG PHÁT 2', 'Thôn Bắc Vĩnh, xã Cam Hải Tây, Huyện Cam Lâm, KH', 'KD06'),
(546, 'CTP3TL10', 'Anh Vũ - cửa hàng Thuận Phát 3', '3A 63 Trần Văn Giàu, Cầu Xáng, Phạm Văn Hai, Bình Chánh. 6', 'KD02'),
(547, 'CTP4HL2', 'Cửa hàng Thuận Phát 4', '796 Hương lộ 2, P Bình Trị Đông A, Q Bình Tân. 8', 'KD02'),
(548, 'CTP5DT', 'Cửa Hàng Thuận Phát 5', 'ÂP 2,Xã Mỹ Long ,cao lãnh -Đồng tháp:0975575095Yên. 6', 'KD02'),
(549, 'CTPBC', 'Cửa hàng Thanh Phong - 0913.112489', 'D3/18 Nguyễn Thị Tú,ấp 4,Vĩnh lộc B,Bình chánh. 8', 'KD02'),
(550, 'CTPBD', 'Thành Phát Bình Dương', '478 CMT8,P.Hiệp Thành,TXTDM,BD', 'KD07'),
(551, 'CTPBMT', 'Chị Tuyền - Công ty TNHH tư vấn thiết kế nội thất Tuấn Phát', 'Số 129 Y Jút, Phường Thống Nhất, TP.Buôn Ma Thuột, Tỉnh Đắk Lắk, Việt Nam', 'KD09'),
(552, 'CTPBT', 'Chị Mai - CH Tân Phát', '11 Nguyễn Đình Chiểu, P.2, Bến Tre. 8', 'KD02'),
(553, 'CTPCL', 'Cô Phát - Công Ty TNHH TM Tường Phát', 'Thôn Tân thành, Cam Thành Bắc, Cam Lâm, cam Ranh (KHÔNG GHI GIÁ)', 'KD06'),
(554, 'CTPCT', 'Cửa Hàng Trường Phát - Cần Thơ', '325 Võ Văn Kiệt, P,An Thới, Q. Bình Thủy, TP. CT', 'KD08'),
(555, 'CTPDL', 'Cửa Hàng Thịnh Phát- Đăk Lăk', '507 Giải Phóng, TT Ea Drăng, H, Ea H\' Leo. T, Đăk . 8', 'KD09'),
(556, 'CTPDT', 'Chị Phương CH Thanh Phương Hồng Ngự', 'Hồng Ngự 0907 555 299 c.Phương.10', 'KD02'),
(557, 'CTPLA', 'Cửa Hàng Thuận Phát- Long An', '260 Quốc lộ 62 Long An. 8', 'KD02'),
(558, 'CTPNB', 'Chị Phương - Cửa Hàng Tâm Phương', '1382 Lê Văn Lương,ấp 2, Xã Phước Kiểng ,Huyện Nhà Bè,Tphcm', 'KD06'),
(559, 'CTPNDT', 'Cửa Hàng Thuận Phát- Nguyễn Duy Trinh', '509 Nguyễn Duy Trinh P.Binh Trưng Đông Q 2', 'KD07'),
(560, 'CTPNK', 'Thuận Phát Ninh Kiều', '509 đường 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ.6', 'KD08'),
(561, 'CTPNS', 'cửa hàng Tấn Phát - Nguyễn Sơn', '325B Nguyễn Sơn, Phường Phú Thọ Hòa, Quận Tân Phú 8', 'KD02'),
(562, 'CTPNT', 'Cửa Hàng Trường Phát Nha Trang', 'Số 427 ,đường 2/4 ,vĩnh hải ,nha trang ( Đóng chành). 10', 'KD06'),
(563, 'CTPOM', 'Cửa Hàng Thuận Phát- Ô Môn', '1088 KV4, Phường Châu Văn Liêm, Quận Ô Môn, TP.Cần Thơ', 'KD08'),
(564, 'CTPPL', 'Cửa Hàng Thanh Phong -PleiKu', '243 Nguyễn Tất Thành Pleiku Gia Lai. 8', 'KD09'),
(565, 'CTPQ12', 'Chị Trâm - Cửa Hàng Thịnh Phát', '197 Phan Văn Hớn,Q.12 ĐT: 66.523.451', 'KD09'),
(566, 'CTPQ2', 'Cửa Hàng Tâm Phát Quận 2', '295 Nguyễn Thị Định, F Bình Trưng Tây Quận 2', 'KD07'),
(567, 'CTPQ6', 'Thiên phú - Q6', '61-63 Cao văn lầu,F1,Q6,TP.HCM. 10', 'KD02'),
(568, 'CTPQ8', 'Cửa Hàng Màn Cửa Thuận Phát- Q.8', '229 Liên Tỉnh, F.5, Quận 8', 'KD06'),
(569, 'CTPQ9', 'Cửa hàng Nội thất Tín Phát Quận 9', '490 Lã Xuân Oai Quận 9. 8', 'KD07'),
(570, 'CTPQNGT', 'Cửa Hàng Trần Phú Quý', '409 Ngô Gia tự', 'KD02'),
(571, 'CTPTB', 'Cửa Hàng Tân Phú- Tân Bình', '66 Ba Vân F14 Quận Tân Bình', 'KD02'),
(572, 'CTPTD', 'Cửa Hàng Thành Phát- Thủ Đức', '598 Tô Ngọc Vân, Thủ Đức', 'KD07'),
(573, 'CTPTN', 'Cửa Hàng Thiên Phúc- Tây Ninh', '499 Bời Lời, Ninh Sơn, Tây ninh. 8', 'KD07'),
(574, 'CTPTNH', 'Anh Phú Cửa Hàng Thuận Phát- Thoại Ngọc Hầu', '140A Thoại Ngọc Hầu, Q, Tân Phú. 8', 'KD02'),
(575, 'CTPTP', 'Cửa hàng Thuận Phát Tân Phú', '489 Luỹ Bán Bích,Phường Hiệp Tân, Quận Tân phú. 8', 'KD02'),
(576, 'CTQBL', 'Cửa Hàng Tú Quyên - Bạc Liêu', 'ấp Tam Hưng xã Vĩnh Hưng, Vĩnh Lợi, Bạc Liêu', 'KD08'),
(577, 'CTQBP', 'Cửa Hàng Nội Thất Thiện Quý - Bình Phước', 'Khu 8, Phường Long Phước, Thị xã Phước Long, Bình Phước', 'KD09'),
(578, 'CTS2VT', 'Cửa Hàng Trường Sơn - Bình Giả', '762 Bình Giả , F10, Tp Vũng Tàu', 'KD07'),
(579, 'CTSAG', 'Cửa Hàng Thanh Sang - An Giang', 'Trần Hưng Đạo, Thị Trấn Tri Tôn, An Giang', 'KD08'),
(580, 'CTSDL', 'chị Thanh - cửa hàng Trường Sanh ( Không Ghi Nhớ)', '849 Hùng Vương, Di Linh, Lâm Đồng 8', 'KD09'),
(581, 'CTSHP', 'Cô Tám - cửa hàng Tám Sỹ', '68 ấp 1, thị trấn Hộ Phòng, Huyện Giá Rai, tỉnh Bạc Liêu. (nệm dài 1m95). 10', 'KD01'),
(582, 'CTSKG', 'Cửa hàng Tân sơn', 'Hà tiên,Kiên giang', 'KD02'),
(583, 'CTSVT', 'Cửa hàng Trường Sơn. Chị Loan', '300 đường 30-4 , P, Rạch Dừa, Vũng tàu. 10', 'KD07'),
(584, 'CTT2AG', 'Cửa Hàng Thanh Tùng 2- An Giang (0939 922 104)', 'Khóm Thới Hòa, Thị trấn Nhà Bàng, Tịnh Biên, AG', 'KD08'),
(585, 'CTTAG', 'Cửa hàng Tân Thanh - Tân Châu An Giang', '44 Trần Hưng Đạo, TX Tân Châu, An Giang. 10', 'KD08'),
(586, 'CTTBC', 'Chị Thoa - Công Ty Tường Thái', 'A22/2 Quốc lộ 50,Bình Chánh', 'KD04'),
(587, 'CTTBL', 'Cửa Hàng Trần Tỷ _ Bạc Liêu', 'ấp nội ô, TT Ngan Dừa, H. Hồng Dân, T. Bạc Liêu', 'KD08'),
(588, 'CTTCC', 'Cửa Hàng Trọng Tín- Củ Chi', '16 Tỉnh lộ 8, Củ Chi.', 'KD09'),
(589, 'CTTCL', 'Cửa Hàng Thanh Tùng Chợ Lách', '304/22 Ấp An Hoà, xã Long Thới, Huyện Chợ Lách, BTre. 6', 'KD02'),
(590, 'CTTCMDN', 'Chị Trinh : Cửa hàng Trường Thanh Cẩm Mỹ', 'Ngã tư Sông Ray,cẩm mỹ,đồng nai. 8', 'KD07'),
(591, 'CTTDK', 'Cửa hàng TTNT Tiến Thanh', '57 Lac Long Quan,Dien Khanh , T. Khánh Hòa(Dau cau Tran Quy Giap)10', 'KD06'),
(592, 'CTTDL', 'Cửa Hàng Thuận Thành Đà Lạt (0792078240)', '206 Bùi Thị Xuân,P2, Đà Lạt, Lâm Đồng(Hóa đơn dán ở ngoài bao chành)8', 'KD09'),
(593, 'CTTDT', 'Chị Thoa- cửa hàng Thuận Thiên (Không ghi giá)', '120/D Nguyễn thị minh khai,mỹ an,đồng tháp 10,ĐT. 6', 'KD02'),
(594, 'CTTGT', 'Đại lý : Thuận Phát - Giồng Trôm ( Thuận Thành cũ)', 'Ấp 8 Tân Lợi Thạnh, ,giồng trôm,bến tre (Gần cây xăng Mai Hương). 8', 'KD02'),
(595, 'CTTHM', 'Cửa Hàng Quỳnh Như (Trường Tuyền )', '323 Tô Ký Hóc Môn', 'KD09'),
(596, 'CTTLD', 'Cửa Hàng Trường Thịnh Lâm Đồng', '146 Hùng Vương- TT Lộc Thắng- Huyện Bảo Lâm, Lâm Đồng 8', 'KD09'),
(597, 'CTTLG', 'Cửa Hàng Tiến Trinh- Lagi', '89-91 Nguyễn Ngọc Kỳ, TX Lagi, Bình Thuận. 8', 'KD06'),
(598, 'CTTLTT', 'Cửa Hàng Tuấn Thoa- Lê Trọng Tấn', '706 Lê Trọng Tấn, F, Bình Hưng Hoà, Bình Tân.8', 'KD02'),
(599, 'CTTNB', 'Chị Thủy - Cửa hàng Nệm Thanh Thủy', '302 Nguyễn Văn Tạo,Ấp 2,Long Thới, P.Nhà Bè, TPHCM', 'KD06'),
(600, 'CTTNTTTDL', 'Cửa Hàng TTNT Trường Thịnh - Đắc Lắc', 'Km38 EAphe Krongpac , Đăk Lắc', 'KD09'),
(601, 'CTTPL', 'Chị Cúc :Thu Thủy - Pleiku', 'Số 2A Trần Phú Nối Dài - Chị Cúc :0593.824.804', 'KD09'),
(602, 'CTTPN', 'Chị Thuý - Trường Thịnh PN', '24C/24D Phan Đình Phùng, P2, Q.Phú Nhuận', 'KD06'),
(603, 'CTTPSD', 'Cửa Hàng Trung Thành Phát - Sa Đéc', '45X Nguyễn Sinh Sắc, Khóm 2 , F2, Sa Đéc, Đồng Tháp', 'KD02'),
(604, 'CTTQ10', 'Cửa Hàng Thanh Thúy Quận 10', '475F, CMT8, F13, Q10. 8', 'KD02'),
(605, 'CTTQ11', 'Cửa Hàng Tài Trương -Quận 11', '68 Lý Nam Đế, F3, Quận 11', 'KD03'),
(606, 'CTTQ2', 'Cửa Hàng Tuấn Thảo- Q2', '68 Trần Não, F. Bình An .Q 2. 10', 'KD07'),
(607, 'CTTQ7', 'Cửa hàng Trường Thịnh Q7', '1516 Huỳnh Tấn Phát, Phường Phú Mỹ Hưng, Quận 7. 10', 'KD06'),
(608, 'CTTTL10', 'Cửa hàng Thanh Thanh ( Đại Lý Hoàng Anh)', '124 đường số 12, P.Bình Hưng Hòa, Q. Bình Tân. 8', 'KD02'),
(609, 'CTTTN', 'Cô Lệ/ Chị Hoa :Cửa hàng Trường Thịnh TB', '14 Quốc lộ 22, Lộc Trát, Gia Lộc, Trảng Bàng, Tây Ninh', 'KD07'),
(610, 'CTTVC', 'Cửa hàng Thanh Thủy - Vincom', '249/15 Lê Duẩn, H. Long Thành, Đồng Nai. 8', 'KD07'),
(611, 'CTTVL', 'Cửa hàng Thanh Thúy', 'ấp Vĩnh Trinh , Xã Vĩnh Xuân, Huyện Trà Ôn, Tỉnh Vĩnh Long. 8', 'KD01'),
(612, 'CTTVT', 'Công Ty TNHH Nội Thất Tiến Thắng', '39 Lê Lợi, F4, tp,Vũng Tàu. 8', 'KD07'),
(613, 'CTVBD', 'Cửa Hàng Thanh Vân - Bình Định', '118 Lê Lợi, TP Quy Nhơn, Bình Định', 'KD06'),
(614, 'CTVGV', 'Cửa Hàng Tường Vy- Gò Vấp', '1032 quang trung, F8, Gò Vấp. 10', 'KD06'),
(615, 'CTVLT', 'Cửa Hàng Thiên Văn- Long Thành', '009, ấp 1C, Phước Thái, QL51, Long Thành. 8', 'KD07'),
(616, 'CUTBC', 'Chị út - Cửa hàng út Tiên', 'D1/3 quốc Lộ 1A, ấp 4, xã Bình Chánh, Bình Chánh. 10', 'KD02'),
(617, 'CUTLA', 'Cửa Hàng Út Tân - Long An', 'Khu phố 3, Thị trấn Đông Thành, Huyện Đức Huệ, Long An.', 'KD02'),
(618, 'CVADN', 'Cửa Hàng Vân Anh- Đồng Nai', 'Ql1A Ấp Bàu Cá, Tuy Hòa, Trảng Bom, ĐN. 10', 'KD07'),
(619, 'CVASGBP', 'Cửa Hàng Vân Anh Sài gòn - Bình Phước', '261A TT Lộc Ninh, huyện Lộc Ninh, Bình Phước', 'KD09'),
(620, 'CVDBC', 'CÔNG TY TNHH VĨNH ĐỨC', 'G4/30A ấp 7, Xã Lê Minh Xuân, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', 'KD03'),
(621, 'CVHBR', 'Cửa hàng Vỹ Hào 2 -BRVT', 'Căn A, tổ 12, ấp Hải Sơn, Phước Hưng, Long Điền, BRVT', 'KD07'),
(622, 'CVHVC', 'Cửa Hàng Văn Hiếu - Vĩnh Châu (Tô Quốc Thái)', '117 đường 30/4 F1, TX Vĩnh Châu, Sóc Trăng', 'KD08'),
(623, 'CVIRGONT', 'Công ty TNHH TM VIRGO Nha Trang', '39-41 Nguyễn Thị Minh Khai. F Tân Lập TP Nha Trang', 'KD10'),
(624, 'CVIVIAN', 'Công ty TNHH SX TM Nệm VIVIAN', '51 Đường Số 6, Khu Phố 1, Phường Bình Trị Đông B, Quận Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
(625, 'CVLCL', 'Cửa Hàng Vân Linh', 'Chợ Mỹ Phước Tây,Cai Lậy,Tiền Giang', 'KD02'),
(626, 'CVLK', 'Chị Thoa - Cửa Hàng Vui', '939 Quốc Lộ 1, T.X Long Khánh, Đồng Nai. 10', 'KD07'),
(627, 'CVNBL', 'Hia Quến - cửa hàng Vĩnh Nguyên', '35 Hoàng Văn Thụ, Bạc Liêu. 8', 'KD01'),
(628, 'CVNDN', 'Cửa Hàng Văn Ngọc- Đồng Nai', '01 ấp Tân Bình, xã Bình Minh, h. Trảng Bom, Đồng Nai. 8', 'KD07'),
(629, 'CVNT', 'Cửa Hàng Vàng- Ninh Thuận', 'làng chài Cà Ná', 'KD06'),
(630, 'CVPHCG', 'Cửa Hàng Vạn Phước Hưng - Chợ Gạo', 'Ấp Mỹ Thạnh, Hòa Định, Chợ Gạo , TG', 'KD02'),
(631, 'CVPTV', 'Cửa Hàng Vạn Phước- Trà Vinh', 'Khóm 1, thị trấn Tiểu Cần, Huyện Tiểu Cần, Tỉnh Trà Vinh', 'KD08'),
(632, 'CVQPY', 'Cửa Hàng Quỳnh Quang ( Vĩnh Quang- Phú Yên)', '190 Phạm văn Đồng, TX Sông Cầu, Phú Yên. 10', 'KD06'),
(633, 'CVTBD', 'CÔNG TY TNHH TM VÀ SX VIỆT THÀNH', '89/16 KP Bình Phước A, F Bình Chuẩn, TX Thuận An, Bình Dương', 'KD04'),
(634, 'CVTBL', 'Cửa Hàng Vương Thành - Bảo Lộc', '44 Hà Giang, P.Lộc Sơn, TP Bảo Lộc, Lâm Đồng (ko ghi giá)', 'KD09'),
(635, 'CVTBP', 'Cửa Hàng Vĩnh Thuỷ- Bình Phước', '154 ,QL13, Tân Khai, Hớn Quản, Bình Phước. 8', 'KD09'),
(636, 'CVTHG', 'Chị Hạnh - CH Vạn Thành ( Xuất cho toàn phúc)', '525-527 Hậu giang, Quận 6. (vô bao) 10', 'KD02'),
(637, 'CVTTP', 'Cửa Hàng Việt Thắng- Tân Phú', '258 Tân Hương, Tân Quý, Tân Phú. 8', 'KD02'),
(638, 'CVTTV', 'Anh Vương - cửa hàng Vạn Thành', '100B2 trần Phú, Phường 2, TX. Trà Vinh .10', 'KD01'),
(639, 'CXBCT', 'Anh Sử :Cửa Hàng Xuân Bình- Cần Thơ', 'Số 16, Lộ vòng Cung, F Phước Thới,Q Ô Môn', 'KD08'),
(640, 'CXNBP', 'Cửa Hàng Xoan Nghinh - Bình Phước', '244 ấp chợ, xã Tân Tiến, Đồng Phú, Bình Phước. 8', 'KD09'),
(641, 'CXPKG', 'Cửa Hàng Xuân Phong - Kiên Giang', 'chợ công sự, ấp cạn ngọn A, xã thạnh yên, huyện u minh thượng, tỉnh kiên giang', 'KD08'),
(642, 'CYCVC', 'ý Chiêu - ĐT:079.224.7216', 'Hán chiêu,Vĩnh châu - 097.583.9229. 6', 'KD01'),
(643, 'CYTBD', 'Cô Sang - cửa hàng Yến Thanh', '390/1 Đông Trác, Tân Đông Hiệp, Dĩ An, Bình Dương', 'KD07'),
(644, 'CYVBD', 'Cửa Hàng Yến Vy- Bình Dương', '633 Phú giáo, Bình Dương', 'KD07'),
(645, 'CYVBP', 'Cửa Hàng Yến Vy (Bình Phước)', '1085 NGUYỄN TẤT THÀNH F LONG THỦY TX PHƯỚC LONG,BP. 10', 'KD09'),
(646, 'huynhton', 'Anh Tồn Chào mẫu', NULL, 'KD04'),
(647, 'KHONGDUNG1', 'Cửa Hàng Hoàng Phúc -Bến Tre', '75/4 Ấp 10 TT Thạnh Phú, Thạnh Phúc, Bến Tre', 'KD02'),
(648, 'ShowRoom06', 'Bán Tại ShowRoom 06 Bìnhtân', 'Số 6 , đường số 1.phường an lạc A.quận bình tân', 'KD04'),
(649, 'ShowRoom196', 'Bán Tại ShowRoom 196', '196 Tô Hiến Thành', 'KD04'),
(650, 'SMOVINHDUC', 'Công Ty TNHH Vĩnh Đức', 'Ấp mới 2, Mỹ Hạnh Nam, Đức Hòa, Long An', NULL),
(651, 'VPDDTRUONGHUNG', 'Văn phòng đại diện Trường Hưng', '17-19 Đường số 2, Xã Phạm Văn Hai, Bình Chánh', NULL),
(652, 'ANHDUNG', 'Anh Dũng chào mẫu', NULL, 'KD04'),
(653, 'ANHHOANG', 'Anh Hoàng chào mẫu', NULL, 'KD04'),
(654, 'ANHKHOA', 'Anh Khoa chào mẫu', NULL, 'KD04'),
(655, 'ANHLUAN', 'Anh Luân chào mẫu', NULL, 'KD04'),
(656, 'ANHPHU', 'Anh Phú chào mẫu', NULL, 'KD04'),
(657, 'ANHTHO', 'Anh Thọ chào mẫu', NULL, 'KD04'),
(658, 'ANHTRUNG', 'Anh Trung chào mẫu', NULL, 'KD04'),
(659, 'ANHTUNG', 'Anh Tùng chào mẫu', NULL, 'KD04'),
(660, 'ANHVIET', 'Anh Việt chào mẫu', NULL, 'KD04'),
(661, 'ANHVUONG', 'Anh Vương chào mẫu', NULL, 'KD04'),
(662, 'C105LVL', 'Chị Phương - Cửa hàng Anh Phương', '105 Lê Văn Lương, P Tân Kiểng, Q7. 8', 'KD06'),
(663, 'C158NGT', 'Công Ty Tường Thái', '158 Ngô Gia Tự, Q.10, tp.hcm', 'KD04'),
(664, 'C15NGT', 'Cửa Hàng 15 Ngô Gia Tự', '15 Ngô Gia Tự, P2, Q10, Tphcm', 'KD04'),
(665, 'C167THD', 'Cửa Hàng Chế Trân', '167 Trần Hưng Đạo,Sóc Trăng', 'KD09'),
(666, 'C177PCD', 'Chị Hương - Cửa hàng Kymdan PCD', '177 Phó Cơ Điều, Quận 11. 10', 'KD02'),
(667, 'C2LTV', 'Hai Liêm Trà Vinh', 'Hai Liêm Trà Vinh', 'KD04'),
(668, 'C49HBT', 'Cửa Hàng 49H Bình Thạnh', '49 Phan Đăng Lưu , F13, Bình Thạnh. 8', 'KD06'),
(669, 'C9NGT', 'Cửa Hàng: 09 Ngô Gia Tự', NULL, 'KD08'),
(670, 'CACPH', 'Anh cẩn - Cửa Hàng Ngọc Lợi', '69 Lý Thường Kiệt, Ngã Bảy, Phụng Hiệp, hậu Giang', 'KD07'),
(671, 'CACPQ', 'Anh Cường- Sun Địa Trung Hải', 'Shophouse Ven26 , Sun Địa Trung Hải, An Thới ,Phú Quốc, Kiên Giang.', 'KD10'),
(672, 'CADHT', 'Chị Vân - Nội Thất Anh Duy - Hà Tiên', '73_75 Trần Hầu. P. Bình San. Tx hà tiên. 8', 'KD01'),
(673, 'CADPT', 'Cửa hàng Màn Cửa Anh Duy- Phan Thiết', '701 Trần Hưng Đạo - Tp. Phan Thiết. 8', 'KD06'),
(674, 'CADTH', 'Cửa Hàng Nệm Êm Ái', 'Hòn Đất, Kiên Giang', 'KD04'),
(675, 'CAKDN', 'Cửa hàng Nội thất Anh Khoa', 'Số 150. Đường 762, Tổ 8, Ấp Tân Thành, Xã Thanh Bình, H.Trảng Bom ,T. Đồng Nai', 'KD07'),
(676, 'CALGV', 'Anh Lộc Gò Vấp ( 0967 893 368)', '92 Quang Trung, F10, Gò 8', 'KD06'),
(677, 'CAMBT', 'Nhà Thuốc ánh Mai', '203N Gò Xoài,P.Bình Hưng Hòa A,Bình Tân,Tphcm', 'KD04'),
(678, 'CAMCM', 'Anh Miền Cà Mau : 0942 879911', '30/4 K.1 Thị Trấn Cái Nước ,Cà Mau . 6', 'KD08'),
(679, 'CAMQN', 'Cửa Hàng ái My- Quy Nhơn ( Không ghi Giá)', '38-40 Trần Quý Cáp- TP Quy Nhơn, T. Bình Định. 10', 'KD06'),
(680, 'CANHTQ12', 'Cửa Hàng Bảo Ngọc', '139 Dương Thị Mời ,Q12 :096.910.5831', 'KD06'),
(681, 'CAQBD', 'Anh Qúy - CH Vivabon Nguyễn', '27 Nguyễn văn Tiết, KP Bình Hòa, p.Lái Thiêu, Thuận An, BD. 8', 'KD07'),
(682, 'CAQTC', 'Anh Quý Trường Chinh (Hoàng Gia)', '419A Ngô Gia Tự, Phường 3, Quận 10, HCM 10', 'KD02'),
(683, 'CASVL', 'Anh Sơn - Vĩnh Lộc', 'Giao đường 3 Khu Dân Cư Vĩnh Lộc. 8', 'KD02'),
(684, 'CAT2LT', 'Cửa hàng Anh Tài 02 .', 'Đường Lê Duẩn, Khu 1, Ấp 3, An Phước Long Thành. 8', 'KD07'),
(685, 'CATBHDN', 'Cửa Hàng Anh Thư', '48/2-KP1,P.Tân Hòa,Biên Hòa ,Đồng nai', 'KD06'),
(686, 'CATBMT', 'Cửa Hàng An Thy- Buôn Mê Thuột', '90 Nguyễn văn Cừ, TP Buôn Mê Thuột', 'KD09'),
(687, 'CATCM', 'Chị Như - DNTN Anh Thư- Cà Mau', '42 Phan Ngọc Hiển, P.4, Cà Mau', 'KD01'),
(688, 'CATDH', 'Anh Thắng- Đức Hòa', 'đường Gò Hưu, ấp Mới Hai, xã Mỹ Hạnh Nam huyện Đức Hòa, LA. 8', 'KD02'),
(689, 'CATDL', 'Cửa Hàng Anh Thư- ĐakLak', '285 Lê Duẫn, F EaTam, TP BMT', 'KD09'),
(690, 'CATGV', 'Anh Thành - Gò Vấp (Đại Lý Kymdan)', 'Số 3 Phạm Ngũ Lão,Gò Vấp', 'KD06'),
(691, 'CATKG', 'Anh Tài Kiên Giang', '58 Trần Phú, Kiên Giang', 'KD01'),
(692, 'CATLD', 'Công Ty TNHH DV SX Anh Thắng. Lâm Đồng', '223 đường 2/4 TT Thạnh Mỹ, Đơn Dương. Lâm Đồng. 8', 'KD09'),
(693, 'CATLT', 'Chị Trinh - Cửa hàng Anh Tài- Long Thành', 'ấp Thành Gòn, Lộc An, Bình Sơn, Long Thành, Đồng Nai. 8', 'KD07'),
(694, 'CATNT', 'Anh Tuấn : Công ty VIOLET ,Nha Trang', 'Xe : 79C-00608 - Tài xế: Anh Hoàng : 0914.1423.20', 'KD08'),
(695, 'CATPL', 'Anh Thuận - Cửa Hàng Phú Lâm', '66/2 Quốc Lộ 22, Tân Thới Nhì, Hóc Môn', 'KD09'),
(696, 'CATQ12', 'Anh Tuấn - Đại lý Vạn Thành', '164 Lê văn Khương,Q12,Tphcm', 'KD07'),
(697, 'CATQ2', 'Cửa Hàng Anh Thư Q.2', '324 Nguyễn Duy Trinh, P. Bình Trưng Tây, Quận 02, 8', 'KD07'),
(698, 'CATQ7', 'Anh Tùng', '176 Lê Văn Bền', 'KD07'),
(699, 'CATQ9', 'Chị Ba - Cửa hàng Anh Thư Q9 (Gia Khiêm)', '820 Nguyễn Duy Trinh, Bình Trưng Tây, Quận 9,Tphcm', 'KD06'),
(700, 'CAVBT', 'DNTN Nam việt Cát Tường- (Không Ghi Giá )', '27A1 Bình Khởi ,p6, Bến tre. 8', 'KD02'),
(701, 'CBDDT', 'Cửa Hàng Bích Đào - Đồng Tháp', 'Số 539 Điện Biên Phủ, TP.Cao Lãnh, Tỉnh Đồng Tháp', 'KD02'),
(702, 'CBDPY', 'Cửa Hàng Bửu Dung - Phú Yên', '231 Trần Hưng Đạo . TP. Tuy Hòa, Phú Yên. Liên hệ anh Dũng (0965324345) nhận hàng (lấy màu tối)', 'KD06'),
(703, 'CBGBT', 'Cửa Hàng Bảy Giàu - Bến Tre', '152/01 Ấp Quí Đức A, xã Quới Điền, huyện Thạnh Phú, xã Bến Tre', 'KD02'),
(704, 'CBHVT', 'Cửa Hàng Bảo Hiền - Vũng Tàu', '285 Lê Hồng Phong, TT Ngãi Giao, Châu Đức, Bà Rịa. 8', 'KD07'),
(705, 'CBLLA', 'Chị Thủy - Cửa Hàng Bảo Lâm', '349 Nguyễn Huỳnh Đức,P.khánh Hậu,Tân An,Long An. 8', 'KD01'),
(706, 'CBMQ12', 'Chị Thuý- Cửa Hàng Ban Mai- Q12', '277 Nguyễn Văn Quá, F. Đông Hưng Thuận, Q12.', 'KD03'),
(707, 'CBN2', 'Nguyễn Thị Thanh Trinh (Ba Nhỏ 2) 0939113557', '315 Khóm 1, Thị Trấn Lai Vung, Huyện Lai Vung, Tỉnh Đồng Tháp', 'KD03'),
(708, 'CBNI', 'KHÁCH HÀNG BNI', NULL, 'KD04'),
(709, 'CBNNDN', 'Cửa Hàng Bình Ngọc Nhi - Đồng Nai', 'Ấp Cơ Dầu, xã Xuân Đông, Huyện Cẩm Mỹ, Đồng Nai. 10', 'KD07'),
(710, 'CBNQ1', 'Cửa hàng Bảo Ngọc Q1', '149 Nguyễn Thị Minh Khai, F. Phạm Ngũ Lão, Q1. 8', 'KD06'),
(711, 'CBNQ3', 'Anh Khoa - Cửa hàng Bảo Ngọc', '149 Nguyễn Thị Minh Khai, Q3,Tphcm', 'KD08'),
(712, 'CBNVL', 'Cửa Hàng Bảo Ngọc VL', 'Số 10, Đường 3/4, Chợ Vĩnh Long. 8', 'KD08'),
(713, 'CBNVT', 'Anh Bảo - Cửa Hàng Bảo Ngọc VT', '210 Lê Lợi, Phường 4, TP.Vũng Tàu', 'KD07'),
(714, 'CBTLA', 'Cửa Hàng Ba Tuyển Long An', '84 đường 3/2, KP Gò Tuyền A, TT Tân Hưng, H Tân Hưng, Long An', 'KD02'),
(715, 'CBTPL', 'Cửa Hàng Bích Trâm- Pleiku 0394 005 049', '35 Cách mạng tháng 8, pleiku, Gia . 10', 'KD09'),
(716, 'CBV2VL', 'Anh Phong- Cửa Hàng Kymdan Vĩnh Long', 'Khóm 6 thị trấn Long Hồ, Vĩnh Long', 'KD08'),
(717, 'CBVVL', 'Chị Yến - Cửa Hàng Kymdan Vĩnh Long', 'Khóm 1, Thị Trấn Long Hồ, Vĩnh Long', 'KD01'),
(718, 'CC9CPC', 'Cô Chín - Campuchia', 'Campuchia', 'KD04'),
(719, 'CCADA', 'anh Toàn - Công ty TNHH Cách Âm Đông Á', '540 Dương Thị Mười , F Hiệp Thành , Q.12, TP.HCM ( bao 50 tấm / 1 kiện)', 'KD03'),
(720, 'CCANEBH', 'Cty Chăn Ấm Nệm Êm - biên Hòa', 'Số 1099 Phạm văn Thuận ,TP.Biên Hòa', 'KD07'),
(721, 'CCBAC', 'Chị Bích- Cửa Hàng Đức Phát', '499-451 Hậu Giang,q6,TP.HCM', 'KD06'),
(722, 'CCBD', 'Cửa Hàng Chánh - Bình Dương', '18/2 KP3, Dầu Tiếng, Bình Dương. 8', 'KD07'),
(723, 'CCBHG', 'Chị Bích Hậu Giang, CH Hoàn Mỹ', '445,447 Hậu Giang F11, Quận 6. 10', 'KD02'),
(724, 'CCBLA', 'Chị Bích- Long An', 'Khu Phố Bàu Xậy,Thị Trấn Vĩnh Hưng,Huyện Vĩnh Hưng,Long An', 'KD01'),
(725, 'CCDCHM', 'Anh Phong - Cứu Dân Chành', '3/22 Đường Quang Trung , Thị trấn Hóc Môn. 10', 'KD09'),
(726, 'CCDCL', 'Chị Điệp -Nhà Thuốc Tây Cửu Long', '150CTrưng Nữ Vương,P1,Vĩnh Long', 'KD07'),
(727, 'CCDN', 'Cửa Hàng Chương- Đồng Nai', '207 Đường 3/2,KP5,TT.Trảng Bom,Đồng Nai.6', 'KD07'),
(728, 'CCDPVT', 'Cửa hàng Châu Đại Phát', '102 /16 Chợ Phước Hải . Thị Trấn Phước HảI, BRVT. 10', 'KD07'),
(729, 'CCDTC', 'Chị Điệp', '157 Trường Chinh, Tân Bình,Tphcm', 'KD07'),
(730, 'CCDTD', 'Chị Diễm - Cửa Hàng Phương Thảo .', '1134 Kha Vạn Cân, Thủ Đức. 8', 'KD07'),
(731, 'CCDTHBT', 'Chị Dung - Tiên Hoàng Bình Tân', '699 Lê Trọng Tấn', 'KD07'),
(732, 'CCHHN', 'Cửa Hàng Chấn Huê- Hồng Ngự', '43 Nguyễn Trãi, Hồng Ngự, Đồng Tháp. 10', 'KD02'),
(733, 'CCHKCT', 'Cửa Hàng Kha', 'Thạnh An,Thốt Nốt,Cần Thơ', 'KD07'),
(734, 'CCHOMG', 'Chị Hà - cty Omega (lê ngân)', '58/9 Tân Thành, P. Tân Thành, Tân Phú', 'KD04'),
(735, 'CCHTB', 'Cửa Hàng Chí Hùng- Tân Bình', '297 Hồng Lạc, F10 Quận Tân Bình', 'KD02'),
(736, 'CCKPC', 'Chị Kiều - Đại Lý Vinh Thuận Phát', '271 ấp A, Khu 5, Chợ Phú Cường, Tam Nông, Đồng Tháp. 8', 'KD02'),
(737, 'CCLBL', 'Chị Sen / chị Lễ - Cửa hàng Vạn Thành', '351 Nguyễn Văn Cừ, P.Lộc Phát, T.X Bảo Lộc', 'KD09'),
(738, 'CCLDA', 'Anh Cường Dĩ An - CH Chị Lam cũ( Không Ghi Giá)', '8 Nguyễn Thái Học, Dĩ An, Binh Dương. 10', 'KD07'),
(739, 'CCLLK', 'TTNT Chín Long- Long Khánh', '12 Duy Tân, Tổ 21, Xã Bảo Vinh A, Long Khánh, ĐN. 10', 'KD07'),
(740, 'CCLMT', 'Chị Hai - Cửa Hàng Minh Lệ', '21 Lê Thị Phí F1 , TP.Mỹ Tho, Tiền Giang ( Cập nhật CN lên phiếu))', 'KD01'),
(741, 'CCMBT', 'Chị Mơ-Đại Lý Bảo Phúc', 'Ấp Tân Phong,xã thành thới A,H.mỏ cày Nam . 8', 'KD02'),
(742, 'CCMSR', 'Chị Mai - SARI', 'Ngã ba cái bè tiền giang ,vô 3 cây số(kế bên khách sạn yến Ngân).8', 'KD02'),
(743, 'CCMVN', 'Công Ty TNHH Chumy Việt Nam', '282/13 đường TA28 KP5. F Thới An, Quận 12.. 10', 'KD09'),
(744, 'CCN2DN', 'Cửa Hàng Cao Nguyên 2- Đắk Nông', '64 Nguyễn Tất Thành Dak Mil, Dak Nong', 'KD09'),
(745, 'CCNDA', 'Chị Cẩm- Công Ty Tnhh Cách Nhiệt Đông Á', 'Q20 đường 15, KP4, F. Tân Thới nhất, Q12.Tp. HCM ( đóng bọc nilon trắng)', 'KD03'),
(746, 'CCNSG', 'Chị Tâm - Công Ty Cách Nhiệt Sài Gòn', '258 Tây Thạnh,KCN Tân Bình ( đóng kiện =50 tấm / 1 kiện). Bao bọc PVC màu trằng', 'KD03'),
(747, 'CCOCOBD', 'Công ty TNHH COCO FURNITURE', '139 Kp Hưng Phước, F Hưng Định, Thuận An, BD.', 'KD07'),
(748, 'CCPBC', 'Chị Phượng', 'Ba càng,vĩnh long', 'KD08'),
(749, 'CCPBL', 'Chị mai: TTNT Chánh Phát', '80B Nguyễn Công Trứ, P2, Bảo Lộc, Lâm Đồng', 'KD09'),
(750, 'CCPBT', 'Chị Hương -Cửa Hàng Cường Phát', '180 Đường số 01- Bình Tân,Tphcm. 8', 'KD02'),
(751, 'CCPDT', 'Chị Phương', 'Dầu Tiếng', 'KD08'),
(752, 'CCPRG', 'Chị Phương- Cửa Hàng Bình Minh', '986 Nguyễn Trung Trực, Rạch Giá, Kiên Giang', 'KD08'),
(753, 'CCQAG', 'CH Lê Văn Tiền 3 (Chị Quý)', '1321/67 Trần Hưng Đạo,TP Long Xuyên,An Giang (không giá,không HDD)', 'KD01'),
(754, 'CCQTN', 'Chị Quyên - Cửa hàng Chị Quyên', 'Khu Phố 4,T.T Bến Cầu,Tây Ninh', 'KD08'),
(755, 'CCSMP', 'Cửa Hàng Vạn Thành- chị Uyên', '143 Tân Hòa Đông. 10', 'KD02'),
(756, 'CCTBH', 'Cửa Hàng Cát Tường- Biên Hòa', '719/5 KP4 FTam Hiệp, Biên Hòa, ĐN. 10', 'KD07'),
(757, 'CCTCD', 'Cửa Hàng Cẩm Tú - Cần Đước', '120 ấp Chợ Trạm xã Mỹ Lệ huyện Cần Đước, LA', 'KD02'),
(758, 'CCTDA', 'Chị Trang - Dĩ An Hưng Thịnh', '28/20A Nguyễn Trãi ,KP Thống Nhất, Dĩ An , Bình Dương. 10', 'KD07'),
(759, 'CCTDC', 'CTY TNHH KL Decor', '49K, Phan Đăng Lưu, P. 3, Q. Bình Thạnh, Tp. HCM', 'KD06'),
(760, 'CCTDL', 'Cửa Hàng Công Thành- Đà Lạt.', '63B - 3/2 Đà Lạt-. 8', 'KD09'),
(761, 'CCTHG', 'Anh Cường - Cửa Hàng Cường Thịnh', 'Khu Thương Mại Thị Trấn Ngã Sáu,Huyện Châu Thành,Tỉnh Hậu Giang. 8', 'KD01'),
(762, 'CCTKPST', 'Cửa Hàng Kim Phượng(KP Phước Long)', '39-41 CMT8, Ngã Tư Xô Viết Nghệ Tỉnh, TX Sóc Trăng(dst) Plus', 'KD01'),
(763, 'CCTNT', 'Cửa Hàng Chi Thính Ninh Thuận ( Không Ghi Giá)', 'KP2, TT Phước Dân, Ninh Phước, Ninh Thuận 8', 'KD06'),
(764, 'CCTQ4', 'Chị Thúy', '33 Nguyễn Tất Thành,Q4 - ĐT:38.455.313', 'KD07'),
(765, 'CCTQ8', 'Cửa Hàng Chí Tâm- Quận 08', '158 B An Dương Vương F16 Quận 08', 'KD06'),
(766, 'CCTRS', 'Chị Đan - Cửa Hàng Công Tiến', '46 Mai Thị Hồng Hạnh, Rạch Sỏi, Kiên Giang ( Gom 1 toa chung )', 'KD01'),
(767, 'CCTTA', 'Cửa Hàng Cát Tường- Tân An', '147 QL62 F2 Tp Tân An, LA. 8', 'KD02'),
(768, 'CCTTN', 'Chị Thuận- Cửa hàng Thanh Tâm Tây Ninh', 'D06/07 khu phố 4,Thị trấn châu thành,Tây ninh. 8', 'KD07'),
(769, 'CCTTP', 'ChịThúy : Cửa hàng Thanh Thúy', '76A Vườn Lài,Q.Tân phú:0903.000.2586', 'KD07'),
(770, 'CCTTT', 'Chị Thúy - Công Ty Thiên Thanh', NULL, 'KD09'),
(771, 'CCTVT', 'Chị Trang Everon', '352- 354 Nguyễn An Ninh. P8. Vũng Tàu. 8', 'KD07'),
(772, 'CCVAPT', 'Chị Vân - An Phú Tây', 'Chợ Thuận Đạt , Hưng Long, Bình Chánh', 'KD02'),
(773, 'CCVBD', 'Chị Vân - Cửa Hàng Cẩm Vân', '38 Nguyễn Thái Học, Thủ Dầu 1, Bình Dương', 'KD06'),
(774, 'CCVQ2', 'Cửa Hàng Cường Vy- Quận2', 'Số 164C Lê văn Thịnh, F Cát Lái, Q2', 'KD07'),
(775, 'CDADN', 'Cửa Hàng Diệu Anh Đồng Nai', 'Khu A1C1 Lập Thành, TT Dầu Giây. 8', 'KD07'),
(776, 'CDAQ4', 'Anh Trung - Cửa Hàng Duy Anh', '269 Tôn Đản, Quận 04, Tphcm', 'KD07'),
(777, 'CDCLBD', 'Công Ty Dương Châu Loan- Bình Dương', '298 Đại Lộ Bình Dương, Phú Hoà, Thủ Dầu 1. 8', 'KD07'),
(778, 'CDHDN', 'Cửa Hàng Đức Huy- ( Đức Thư) Đồng Nai', 'D1/034B Quang Trung Thống Nhất Đồng Nai . 8', 'KD07'),
(779, 'CDHHB', 'Cửa Hàng Đức Hạnh', '479 Nguyễn Văn Tăng, Phường Long Thạnh Mỹ, Quận 9, Tphcm', 'KD07'),
(780, 'CDHQ8', 'Anh Hải - Cửa Hàng Đức Hải', '529 Phạm Thế Hiển,Q8, Tphcm', 'KD08'),
(781, 'CDHTNGT', 'Chị Lan - Cty TNHH Đại Hòa Thịnh', '206 Ngô Gia Tự, P4, Quận 10,Tphcm', 'KD02'),
(782, 'CDHTST', 'Anh Quân - TTNT Đức Hiệp Thuận', '651 ấp Ngãi Hội 1, Đại ngãi, Long Phú, Sóc trăng', 'KD01'),
(783, 'CDKBL', 'Cửa Hàng Duy Khánh -Bến Lức', '37C ấp 2 xã Phước Lợi, Bến Lức, Long An. 8', 'KD02'),
(784, 'CDKGV', 'Cửa Hàng Duy Khánh', '29 Nguyễn Oanh, P10, Gò Vấp.', 'KD09'),
(785, 'CDLBR', 'Cửa Hàng Dương Long', 'Sap H12. TT Thương Mại - Bà Rịa . Tp Bà Rịa. BRVT', 'KD07'),
(786, 'CDLDT', 'Chị Thảo - Trang Trí Nội Thất Đại Lộc', '50-52 Thống nhất,liên nghĩa,Đức Trọng,Lâm Đồng. 8', 'KD09'),
(787, 'CDLPN', 'Cửa Hàng Đức Lợi- Phú Nhuận', '258 Phan đình phùng,p1,phú nhuận. 8', 'KD06'),
(788, 'CDLQ10', 'Chị Mười - Cửa Hàng Đồng Lợi', '469A Cách Mạng Tháng Tám, P13, Q10 ,Tphcm', 'KD02'),
(789, 'CDNBL', 'Cửa Hàng Đức Ngân Bạc Liêu', '0949.030.802 Anh Thiết', 'KD02'),
(790, 'CDNCM', 'Anh Đức - DNTN Đức Ngân', '149 Nguyễn Tất Thành, Phường 8, Cà Mau (Dán toa vô Nệm)', 'KD01'),
(791, 'CDNNT', 'Cửa Hàng Diệu Ninh- CÀ NÁ', 'Thôn Lạc Tân, X.Phước Diêm, Huyện Thuận Nam, Ninh Thuận .8', 'KD06'),
(792, 'CDPBL', 'Cửa Hàng Duy Phát - Bến Lức', '76 Nguyễn Hữu Thọ . 8', 'KD02'),
(793, 'CDPHCD', 'Chị Hoàng - Cửa Hàng Đại Phước Hàng', '39 Nguyễn Văn Thoại, P.13, Châu Đốc, An Giang', 'KD08'),
(794, 'CDPTAG', 'Cửa Hàng Đại Phát Thành- An Giang', 'Ấp An Hưng, TT An Phú, Huyện An Phú, Tỉnh An Giang', 'KD08'),
(795, 'CDREAMTEX', 'Công ty TNHH Dreamtex Việt Nam', '12/21A Đường TL27, phường Thạnh Lộc, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
(796, 'CDSBC', 'Cửa Hàng Đức Sang', 'F7/2, Tỉnh lộ 10, Xã Lê Minh Xuân, Huyện Bình Chánh', 'KD02'),
(797, 'CDSDCM', 'Duy Sông Đốc Cà Mau', 'Duy Sông Đốc Cà Mau', 'KD07'),
(798, 'CDTAVT', 'Chị Thanh Anh - Cửa Hàng Dũ Thanh Anh', '555 Trần Hưng Đạo, KV1, Phường 3, Vị Thanh. 10', 'KD01'),
(799, 'CDTBP', 'Cửa Hàng Đức Tài- Bình Phước', 'Đường 8, Phạm Hồng Thái, Tổ 1, KP3 , Chơn Thành, Bình Phước', 'KD09'),
(800, 'CDTDT', 'Cửa Hàng Đức Trí - Đồng Tháp', 'Chợ Trường Xuân, Tháp Mười, Đồng Tháp', 'KD02'),
(801, 'CDTHN', 'Cửa Hàng Đại Thành- Hồng Ngự', '45 Thiên Hộ Dương, Hồng Ngự, Đồng Tháp.', 'KD02'),
(802, 'CDTLG', 'Nội thất 123A', '123 Nguyễn Ngọc Kỳ, Phước Hội, TX Lagi, Bình Thuận', 'KD07'),
(803, 'CDTTV', 'CTY TNHH ĐẠI THÀNH', 'ấp Sâm Bua, xã Lương Hòa, Châu Thành, Trà Vinh. 8', 'KD08'),
(804, 'CDUADN', 'Dì út Ái - Cửa Hàng Đăng Khoa', '71 Đường 23/3 Tổ Dân Phố 1, P.Nghĩa Đức, Giai Nghĩa, Đăk Nông.', 'KD09'),
(805, 'CGBHM', 'Cửa Hàng Gia Bảo- Hóc Môn', '37/06 KP3 Lý Thường Kiệt, Hóc Môn', 'KD09'),
(806, 'CGBNH', 'Chị Viên - Cửa Hàng Gia Bảo', 'Ninh Hòa : 058.363.0574', 'KD06'),
(807, 'CGHNT', 'Cửa Hàng Gia Hân - 10 (Nệm CSDC chỉ lấy màu xám) Không ghi giá', '164 đường Thống Nhất, Nha Trang. (Giao trước 8h sáng hoặc 2hchiều) 10,chân Drap cao 30cm (ko ghi giá)', 'KD06'),
(808, 'CGHOM', 'Chị Duyên - Cửa Hàng Tân Gia Hưng', '30/1 Trần Hưng Đạo , KV.3, P.Châu Văn Liêm, Quận Ô Môn, TP. Cần', 'KD08'),
(809, 'CGKDT', 'Cửa Hàng Gia Khiêm- Đồng Tháp', 'Khóm 4, thị trấn Mỹ An, h Tháp Mười, Đồng Tháp', 'KD02'),
(810, 'CGLGV', 'Chị Linh - Cửa Hàng Gia Linh', 'Gò Vấp', 'KD02'),
(811, 'CGREENTEX', 'HKD-Cơ sở Sản xuất Greentex', 'Tờ bản đồ Số 1, thửa 10, Lê Lợi, Bàu Hàm 2 ,Thống Nhất, Đồng Nai', 'KD10'),
(812, 'CHACM', 'Cửa Hàng Hoàng Anh Cà Mau', 'chợ Kiot số 32,chợ Tấc Vân,Cà Mau', 'KD08'),
(813, 'CHAGL', 'Cửa Hàng Hồng Anh Gia Lai', '218 Trần Hưng Đạo, TX Ayun Pa, Gia Lai. 10', 'KD09'),
(814, 'CHAGLCT', 'Anh Đức - Hoàng Anh Gia Lai', '60A Mậu thân,P.An Hiệp,Ninh Kiều ,Cấn Thơ. 10', 'KD01'),
(815, 'CHAGLLX', 'Anh Dũng :Cửa Hàng Hoàng Anh Gia Lai:', '349/30D Trần Hưng Đạo,Long Xuyên (Ngay ngã ba), 10', 'KD08'),
(816, 'CHAMT', 'DNTN TTNT Hoàng Anh Mỹ Tho', '198A Nguyễn Thị Thập , xã Trung An TP Mỹ Tho ( đối diện Big C) . 6', 'KD01'),
(817, 'CHANVIETHAI', 'Công ty TNHH TM SX Hàn Việt Hải', '149 Lê Đức Thọ, P7, Q Gò Vấp, TPHCM', 'KD09'),
(818, 'CHAVT', 'Cửa Hàng Hoàng Anh Vũng Tàu', '330 Đường 30/4 F , Phường Rạch Dừa, Vũng Tàu. 8', 'KD07'),
(819, 'CHCVB', 'Hội chợ VIETBUILD', 'Q7', 'KD03'),
(820, 'CHDBD', 'Cửa Hàng Hoàng Duy- Bình Dương', '237 Yersin, F. Phú Cường, Thủ Dầu Một, BD. 8', 'KD07'),
(821, 'CHĐDN', 'Cửa Hàng Huỳnh Điểu- Đồng Nai', '1410 QL1A, Xuân Hưng, Xuân Lộc, Đồng Nai', 'KD07'),
(822, 'CHDKG', 'Cửa Hàng Hữu Đức- Kiên Giang', 'chợ thứ 7, ấp 7, xã đông thái, huyện an biên, tỉnh kiên giang.', 'KD08'),
(823, 'CHDTB', 'Cửa Hàng Hoàng Dũng- Tân Bình', '92 Phan Huy Ích, F15, Tân Bình', 'KD02'),
(824, 'CHDVT', 'Cửa Hàng Hoàng Dung - Vũng Tàu', 'Ấp 1, Bung Riềng, Xuyên Mộc, Vũng Tàu', 'KD07'),
(825, 'CHGBT', 'Cửa Hàng Hoàng Gia- Bình Tân', '1120 Tỉnh lộ 10, Bình Tân', 'KD08'),
(826, 'CHGD', 'Cửa Hàng Hiếu- Gò Đen', 'Ngay chợ Gò Đen', 'KD02'),
(827, 'CHGGV', 'Chị Xuân-Công Ty Hoàng Gia', 'Giao 41/76 Hương Lộ 80b, ấp 6, đông thạnh HM', 'KD03'),
(828, 'CHGPK', 'Đại Lý Hai Gắt- Phước Khánh', 'Chợ Phước Khánh, Xã Phước Khánh, huyện Nhơn Trạch, tỉnh Đồng Nai. 10', 'KD07'),
(829, 'CHH2BR', 'Cô Thuỷ - Huy Hoàng 2 Bà Rịa', 'Thành phố Bà Rịa ( kế bên Thúy Lan Bà Rịa)', 'KD07'),
(830, 'CHHAG', 'Cửa Hàng Hoàn Hảo- An Giang', '80 Tôn Đức Thắng, Phú Mỹ, Phú Tân, An Giang.', 'KD08'),
(831, 'CHHBC', 'Cửa Hàng Huy Hoàng - Bến Cát', 'KP1, Đường Hùng Vương, Bến Cát, Bình Dương', 'KD07'),
(832, 'CHHBD', 'Cửa Hàng Hoàng Hiệp- Bình Dương', '529 Phạm Ngọc Thạch Tp Thủ Dầu Một, Bình Dương', 'KD07'),
(833, 'CHHBL', 'Chị Ngân : Trung Tâm Nội Thất Hoàng Huy-0944.94.94.94', '68 Ninh Bình P2,TX.Bạc Liêu (Không ghi Giá). Không gửi toa', 'KD01'),
(834, 'CHHBR', 'DNTN Huy Hoàng ( Không Ghi Giá)', '102 Cách Mạng Tháng Tám, p Long Hương, Thành phố Bà Rịa', 'KD07'),
(835, 'CHHCR', 'Anh Dũng - Cửa Hàng Hòa Hiệp', '88 đường 22/8 Phường Cam Thuận, Cam Ranh', 'KD06'),
(836, 'CHHNB', 'Cửa Hàng Huy Hoàng - Nam Ban', 'TDP Bạch Đằng, TT. Nam Ban, H. Lâm Hà, Lâm Đồng.', 'KD09'),
(837, 'CHHQ4', 'Cửa hàng Huy Hoàng - Quận 4', '97 Khánh Hội, F3,Q4. 10', 'KD06'),
(838, 'CHHTV', 'Cửa Hàng Hồng Hưng - Trà Vinh', 'Khóm 4 , thị trấn Trà Cú, Huyện Trà Cú. Tỉnh Trà Vinh', 'KD08'),
(839, 'CHHVL', 'Cửa Hàng Hùng Hương- Vĩnh Long', 'Tổ 17, ấp Phú Cường, xã Hiếu Thuận, H. Vũng Liêm, T. Vĩnh Long', 'KD08'),
(840, 'CHKCM', 'Cửa hàng Hồng Kông - Cà Mau', 'ấp Đông Hưng, xã Tân Hưng Đông, huyện Cái Nước, tỉnh Cà Mau', 'KD08'),
(841, 'CHKNGT', 'Chị hạnh- Cửa hàng Hùng Ký', '347 Ngô gia tự', 'KD02'),
(842, 'CHKTN', 'Chị Hằng - Cửa Hàng Hồng Khánh:', 'Đối diện cổng chợ Gò dầu,tây ninh,Hướng đi mộc bài', 'KD02'),
(843, 'CHLBD', 'Chị Linh- Cửa hàng Hải Linh', '.Chợ tân phước khánh,bình chuẩn,bình dương', 'KD04'),
(844, 'CHLNT', 'Cửa Hàng Hồng Linh - Nha Trang', '295 Thống Nhất, Phường Phương Sơn, Nha Trang (ko ghi giá)', 'KD06'),
(845, 'CHLQ3', 'Cửa Hàng Hoàng Long Quận 3', '590 Nguyễn Đình Chiểu P4 Quận 3. 10', 'KD06'),
(846, 'CHMCT', 'Chị Thu - Cửa Hàng Hoàn Mỹ', '118 Lý Tự Trọng, Cần Thơ', 'KD02'),
(847, 'CHMQ7', 'Chị Trang - CTY TNHH TTNT Hoàn Mỹ', 'D56 Nam Long,đường Phú Thuận ,Quận 7 . 10', 'KD06'),
(848, 'CHNBC', 'Cửa Hàng Hoàng Phát ( Hoàng Nguyên cũ)', 'D15/40 Đinh Đức Thiện,Bình chánh', 'KD02'),
(849, 'CHNLD', 'Cửa Hàng Hải Nam- Lâm Đồng', '677 Hùng Vương. Di Linh, Lâm Đồng', 'KD09'),
(850, 'CHNNH', 'Công ty TNHH SX TM và DV Hồng Nguyễn', '56 Võ Tánh, Ninh Hòa. Đối diện chợ Dinh Ninh ( Không lấy màu trắng) ko ghi giá', 'KD06'),
(851, 'CHNT', 'Cửa Hàng', 'Công Hải, Thuận Bắc, Ninh Thuận', 'KD07'),
(852, 'CHNTD', 'Anh Nhuận - Hữu Nhuận', '9/14 Quốc lộ 13, Hiệp Bình Phước, Thủ Đức', 'KD07'),
(853, 'CHP', 'Cửa Hàng Hòa Phú -', NULL, 'KD08'),
(854, 'CHPBC', 'Cửa Hàng Hoàng Phát _ Bình Chánh', 'D15/40 đường Đinh Đức Thiện, xã Bình Chánh, Huyện BC', 'KD02'),
(855, 'CHPBR', 'Cửa Hàng Hiệp Phát- Bà Rịa', '16/10 Ấp Phước Lâm xã Phước Hưng, Long Điền, BRVT. 8', 'KD07'),
(856, 'CHPBRVT', 'Cửa Hàng Hồng Phát- Bà Rịa Vũng Tàu', '333 đường 27/04. TT Phước Bửu, Xuyên Mộc, BRVT', 'KD07'),
(857, 'CHPBT', 'Cửa Hàng Hoàng Phúc -Bến Tre', '75/4 Ấp 10 TT Thạnh Phú, Thạnh Phúc, Bến Tre', 'KD02'),
(858, 'CHPKG', 'Cửa Hàng Hoàng Phát - Kiên Giang', '467A Nguyễn Trung Trực, F, Vĩnh Lạc, Rạch Giá, Kiên Giang', 'KD08'),
(859, 'CHPQ8', 'Chị Hằng - Cửa Hàng Hồng Phát', '352C Tùng Thiện Vương, Phường 13, Quận 8, Tphcm', 'KD02'),
(860, 'CHPTC', 'Chị Dung- Cửa Hàng Hưng Phát', '698 Trường Chinh,P.15,Q.Tân Bình, Tphcm', 'KD07'),
(861, 'CHQPL', 'Cửa Hàng Hồng Quân', 'Chợ Phương Lâm (2h)', 'KD07'),
(862, 'CHQTN', 'Chị Châu Hồng Quế:01234590522', '04/22 ThịTrấn Gò Dầu,Tây Ninh', 'KD04'),
(863, 'CHSBL', 'Chị Trang- Trang Trí Nội Thất Hải Sơn Bạc Liêu', '156 Trần Phú, P7, Bạc Liêu. 10', 'KD01'),
(864, 'CHSBP', 'Cửa Hàng Điện Máy & NT Hồng Sơn - Bình Phước', '364 Nguyễn Tất Thành, Kp2, P. Phước Bình, Tx. Phước Long, Bình Phước.6', 'KD09'),
(865, 'CHSBT', 'Cửa Hàng Hương Sơn- Bình Thuận', '29 Phú Thọ, Hàm Cường, Thuận Nam, Bình Thuận. 8', 'KD06'),
(866, 'CHTBC', 'Cửa Hàng Hữu Thắng', '232/11 Hương lộ 80,KP2, F, Bình Hưng Hoà B, Bình Tân. 8', 'KD02'),
(867, 'CHTBD', 'Công ty CP Hữu Toàn (GROUP)', 'Tầng 01 Tòa nhà BlueSky: 01 Bạch Đằng, F2. Tân Bình', 'KD03'),
(868, 'CHTCM', 'Cửa Hàng Hữu Tín- Cà Mau', 'Khóm 8, TT Thới Bình, H. Thới Bình, T. Cà Mau', 'KD08'),
(869, 'CHTCT', 'Cửa Hàng Hoa Tím - Cần Thơ', '250A, kv Thới Hưng, P. Thới An Đông, Q. Bình Thuỷ, Cần Thơ', 'KD08'),
(870, 'CHTGC', 'Anh Hoàng - Cửa Hàng Hoàng Thúy', '142 Nguyễn Huệ, TX. Gò Công, Tiền Giang', 'KD02'),
(871, 'CHTLD', 'Cửa Hàng Hà Tiến - Lâm Đồng', '11 Lê Lợi - TT Dran - Đơn Dương- Lâm Đồng. 8', 'KD09'),
(872, 'CHTLVQ', 'Cửa Hàng Hà Thành- Lê Văn Quới', '582 Lê Văn Quới. 6', 'KD02'),
(873, 'CHTNTN', 'Cửa Hàng Hoàng Thúy Nga- Tây Ninh', '450 Điện Biên Phủ, Ninh Hoà, Ninh Thuận, Tây Ninh. 8', 'KD07'),
(874, 'CHTQ8', 'Cửa Hàng Nội Thất Hiệp Thành -Q8', '232 Liên Tỉnh 5 , F6, Q8.10', 'KD06'),
(875, 'CHTQL1A', 'Cửa Hàng Hưng Thịnh- Quốc lộ 1A Bình chánh', 'A13/53 QL1A Bình Chánh. 8', 'KD02'),
(876, 'CHTTKTQ', 'Cửa hàng Hưng Thịnh', '798 Tân kỳ tân quý. 6', 'KD02'),
(877, 'CHTTV', 'Cô Thu - Cửa Hàng Hiệp Thành', '582-583 Trần Phú , Phường 7, TX. Trà Vinh. 10', 'KD01'),
(878, 'CHTVT', 'Cửa Hàng Hải Triều - Vũng Tàu', '276 Lê Hồng Phong, F.4, Tp. Vũng Tàu', 'KD07'),
(879, 'CHVBR', 'Cửa Hàng Hồng Vân - Bà Rịa Vũng Tàu', '24/3 ấp 1, xã Bưng Riềng, Xuyên Mộc,Bà Rịa VT', 'KD07'),
(880, 'CHVVT', 'Cửa Hàng Huyền Vy- Vũng Tàu', '597 Nguyễn An Ninh, F9, Tp, Vũng Tàu. ( Không Ghi Giá ) . 8', 'KD07'),
(881, 'CHYBMT', 'Cửa Hàng Hoàng Yến Buôn Mê Thuột', '166 Y Jut . Buôn Ma Thuột SDT . 8', 'KD09'),
(882, 'CHYBP', 'Cửa Hàng Hải Yến - Bình Phước', 'Kp. Thanh Xuân, TT. Thanh Bình, H. Bù Đăng, Bình Phước.6', 'KD09'),
(883, 'CHYCT', 'Cửa Hàng Hải Yến - Cần Thơ', '660C1/10 kv bình trung, P. Long Hoà, Q. Bình Thuỷ, TPCT', 'KD08'),
(884, 'CHYDN', 'Cửa Hàng Hải Yến Đắc Nông', '04 Huỳnh Thúc Kháng, TX Gia Nghĩa, Đắc Nông, (Ép KL không lấy đỏ, vàng)', 'KD09'),
(885, 'CIDC', 'Công Ty INDOCHINE', '01 Lê Qúi Đôn, Quận 3,TPHCM', 'KD09'),
(886, 'CISML', 'Chị Cúc - TTNT Ich Sanh', '502 KP Minh Phú, TT Minh Lương, Rạch Sỏi, Kiên Giang', 'KD07'),
(887, 'CKACG', 'Cửa Hàng Khang Anh, Chợ Gạo', '332/1 Tỉnh lộ 879, chợ gạo, Tiền Giang. 8', 'KD02'),
(888, 'CKATAQ10', 'Chị Liên ( 0902 991394)- Công ty Kata', '193 Nguyễn Lâm, F6, Q10', 'KD07'),
(889, 'CKC', 'Khánh Chi', '93/47 ấp chiến lược :ĐT: 5407.6229', 'KD07'),
(890, 'CKCCM', 'Cửa hàng Kim Chi - Cà Mau', 'khóm 7, TT Sông Đốc, H. Trần Văn Thời, T. Cà Mau', 'KD08'),
(891, 'CKDBP', 'CH Nội Thất Kim Đào, Bình Phước', 'Ấp 7, Thanh Hoà, Huyện Bù Đốp, Bình Phước. 10 (Ko ghi giá)', 'KD09'),
(892, 'CKDCM', 'Cửa hàng Kiều Diễm - Cà Mau', 'Khóm 1 , Thị Trấn Cái Nước, H. Cái Nước, T. Cà Mau', 'KD08'),
(893, 'CKDDL', 'Chị Thanh - Cửa Hàng Kymdan Đức Linh', 'Thôn 4, Xã Đức Hạnh, Huyện Đức Linh, Tỉnh Bình Thuận. 10', 'KD06'),
(894, 'CKDMT', 'DNTN -TTNT Kim Dung:', '99 Lý Thường Kiệt,p4,TP Mỹ Tho,Tiền Giang. 8', 'KD01'),
(895, 'CKDNVT', 'Cửa Hàng Kinh Đô Nệm- Vũng Tàu ( Không Ghi Giá)', '71-73 Lê Lợi, TP Vũng Tàu . 8', 'KD07'),
(896, 'CKDQ2', 'Chú Tư - Cửa Hàng Kymdan Quận 2', 'B1/9 Lương Định Của, Bình An, Quận 2', 'KD07'),
(897, 'CKDTB', 'Chị Thuỳ - Kymdan Tân Bình', '636Bis Luỹ Bán Bích, P17, Q.Tân Bình', 'KD09'),
(898, 'CKENTASZOBT', 'Cửa Hàng KenTasZo - Bình Tân', '113 đường gò Xoài, F Bình Hưng Hòa, Bình Tân', 'KD02'),
(899, 'CKHBMT', 'Cửa Hàng Khánh Hồng - Buôn Mê Thuột', '203 Võ Văn Kiệt, F Khánh Xuân, TP BMT', 'KD09'),
(900, 'CKHGL', 'Cửa hàng Rèm Màn Kim Hiền- Gia Lai ( 0905 69 7299)', 'Hoàng Văn Thụ, TT Chư Sê, Gia Lai. 10', 'KD09'),
(901, 'CKHL', 'Bán Lẻ:', NULL, 'KD04'),
(902, 'CKHM', 'KHÁCH HÀNG MOUSSELY ( KHÔNG ĐẶT HÀNG)', 'KHÔNG ĐẶT HÀNG', 'KD07'),
(903, 'CKMHM', 'Chị Kim Thành - Công Ty Kinh Môn', '172A/T Đường Hà Đặc,Phường Trung Mỹ Tây,Q12,Tphcm', 'KD07'),
(904, 'CKNBT1', 'khong dung', NULL, 'KD07'),
(905, 'CKNTD', 'Chị Ngân - Cửa Hàng Kim Ngân', '44 Võ Văn Ngân, Phường Trường Thọ, Quận Thủ Đức. 8', 'KD07'),
(906, 'CKPHCM', 'Cty CP NT Kim Phụng Hảo ( Toa chành ko giá)', '65 Lý Bôn, Phừơng 2, Cà Mau', 'KD01'),
(907, 'CKPKG', 'Cửa Hàng Kiều Phụng', 'Chợ Kênh 8,Huyện Tân Hiệp,Kiên Giang', 'KD07'),
(908, 'CKPMCM', 'Cô Phụng - Cửa Hàng Kim Phụng (mẹ)', '51 Lý Bôn, Phường 2, Cà Mau : luôn lấy kích thước 200', 'KD01'),
(909, 'CKPQ5', 'Cửa hàng Kim Phụng - Q5', '98 Phùng Hưng, - Phường 13 - Quận 5 - TP Hồ Chí Minh', 'KD02'),
(910, 'CKSQA', 'Chị Hương - Khách Sạn Quỳnh Anh', '54-56 Đường 24A - A. Tiến: 0903.8820.84', 'KD07'),
(911, 'CKTAG', 'Cửa Hàng Kim Thoa- An Giang', 'chợ tân phú, ấp phú lợi, xã phú lâm, huyện phú tân, tỉnh an giang', 'KD08'),
(912, 'CKTBT', 'Cửa Hàng Kim Thanh', '1341 Tỉnh lộ 10,P.Tân Tạo,Bình Tân. 8', 'KD02'),
(913, 'CKTDN', 'Đại Lý Nệm Kim Trang', '91/5B Khu phố 9,P.Tân Biên,Thành phố Biên Hòa,Đồng Nai. 10', 'KD01'),
(914, 'CKTDTSD', 'Kim Khí Điện Máy Duy - Sông Đốc', 'Trần Văn Thời ,Cà Mau', 'KD03'),
(915, 'CKTGV', 'Cửa Hàng Kim Thành- Gò Vấp', '308 Nguyễn Văn Nghi, F7, Gò Vấp', 'KD02'),
(916, 'CKTHG', 'Cửa hàng Kiều Trinh - Hậu Giang', 'Ấp Phú Khởi, Xã Thạnh Hoà, Huyện Phụng Hiệp, Tỉnh Hậu Giang', 'KD08'),
(917, 'CKTQT', 'Cửa Hàng Nệm Kim Thoại', '98/1C Quang Trung, P8, Q Gò Vấp', 'KD02'),
(918, 'CKTTC', 'Chị Kiêm - Cửa Hàng Kiết Tường', '51 Nguyễn Văn Cừ, Tân Châu, An Giang. 10', 'KD08'),
(919, 'CKVBT', 'Cửa Hàng Khánh Vy', '462 đường số 7, P. Tân Tạo, Q. Bình Tân', 'KD02'),
(920, 'CKVLT', 'Cửa Hàng Kim Vân- Long Thành ( Không Ghi Giá)', '87-88 Tổ 5, Khu Phước Hải, Long Thành, Đồng Nai', 'KD07'),
(921, 'CKVQ9', 'Anh Khanh :Cửa Hàng Khánh Vân', '28 Tây hòa,P. Phước Long, Q9', 'KD07'),
(922, 'CLHTHD', 'Cửa Hàng Liên Hương', '457 Tân Hoà Đông, Phường Bình Trị Đông, Quận Bình Tân', 'KD08'),
(923, 'CLIMARESORT', 'RESORT LIMA - NHA TRANG', 'Sao Mai Anh resort, số 02 Phạm Văn Đồng, P. Vĩnh Hòa, TP.Nha Trang, Khánh Hòa', 'KD10'),
(924, 'CLPTN', 'Anh Lô - Cửa Hàng Lợi Phát', 'Khu Phố 2, Cầu Mới, Trần Quốc Toản, P.2, T.X Tây Ninh', 'KD09'),
(925, 'CLTN2CM', 'Cửa Hàng Lịnh_ Tú Nữ 2 ( Cà Mau)', 'Khóm 5, Thị Trấn Trần Văn Thời, H. Trần Văn Thời, Tp. Cà Mau', 'KD08'),
(926, 'CLTTP', 'Cửa Hàng Lý Thế.', '54 Tân Quý, F. Tân Quý. Tân Phú', 'KD02'),
(927, 'CMADT', 'Cửa Hàng Mai Anh- Đồng Tháp', '132 QL80, Khóm Phú Mỹ, TT Cái Tàu Hạ, Đồng Tháp', 'KD02'),
(928, 'CMBDL', 'Cửa Hàng Mai Bình - Đăk Lăk', '422-424-426 Giải Phóng, TT Phước An, huyện Hrong Păk, Đăk . 10', 'KD09'),
(929, 'CMCHHBD', 'Cửa Hàng Màn Cửa Huy Hoàng- Bình Dương', 'Kp2-TT Tân Bình , Bắc Tân Uyên, Bình Dương', 'KD07'),
(930, 'CMCLD', 'Cửa Hàng Minh Chung Lâm Đồng', 'Số 6/1 Xô Viết Nghệ Tĩnh, F7, Đà Lạt. Tỉnh Lâm Đồng. 8', 'KD09'),
(931, 'CMCQ11', 'Cửa Hàng Minh Chánh Quận 11', 'Giao ở Kho 224 phan anh Tân thới hoà Q Tân phú,', 'KD03'),
(932, 'CMCTL10', 'Chị Phương - Cửa hàng Minh Châu', '1694 Tỉnh Lộ 10. 6', 'KD02'),
(933, 'CMDLK', 'Cửa Hàng Mỹ Duyên', 'Ấp Bình Lộc, Long Khánh, Đồng Nai', 'KD02'),
(934, 'CMGDL', 'Trung Tâm Nội Thất Mỹ Gia', '18A1 Yersin,Đà Lạt: ( Không Ghi Giá )', 'KD09'),
(935, 'CMH2NT', 'Cô Hải- Công Ty TNHH TM - DV - SX Minh Hải', '(128 Thủy Tú, Xã Vĩnh Thái, Nha Trang)', 'KD06'),
(936, 'CMHBH', 'Cửa Hàng Mạnh Hiển - Biên Hòa', '225 CMT8, F. Hòa Bình, Tp. Biên Hòa. 6', 'KD07'),
(937, 'CMHBL', 'Chị Trinh - Cửa Hàng Mai quỳnh', '75 Bà Triệu, P.3, TP. Bạc Liêu', 'KD09'),
(938, 'CMHBT', 'Cửa Hàng Minh Hoàng', 'ấP 2 ,Tân Thủy,Ba Tri. 8', 'KD02'),
(939, 'CMHCL', 'Cửa Hàng Minh Hiếu - Chợ Lách', 'QL57, Hoà Nghĩa, Chợ Lách, Bến Tre. 8', 'KD02'),
(940, 'CMHCT', 'Chị Mười - Cửa hàng Mười Hùng', '71 Quốc Lộ 61, ấp Tân Phú A,T.T Cái Tắc, Châu Thành A, Hậu Giang. 10', 'KD08'),
(941, 'CMHNT', 'Chị Phương Công Ty TNHH TM - DV - SX Minh Hải ( Không Ghi Giá)', '233 Thống Nhất, Phương Sài, Nha Trang ( ( Không Ghi Giá))', 'KD06'),
(942, 'CMHQ3', 'Cửa Hàng Minh Hằng', '262A Nguyễn Thị Minh Khai, Quận 3', 'KD07'),
(943, 'CMHST', 'Chị Hoa - Cửa Hàng Mỹ Hoa', '2-4-6 Điện Biên Phủ, Sóc Trăng (TH không lấy xám, đen, góc sọc đỏ)', 'KD01'),
(944, 'CMHTC', 'Chị Hạnh - Mỹ Hạnh', '436 Trường Chinh, Phường 13, Quận Tân Bình', 'KD03'),
(945, 'CMKTP', 'Cửa Hàng Minh Khôi - Tân Phú', '465 Lê Trọng Tấn, Tân Phú. (ko ghi giá) 8', 'KD02'),
(946, 'CMLBC', 'Cửa Hàng Minh Long- Bình Chánh', 'D18/46C ấp 4, Hưng Long, Bình Chánh', 'KD02'),
(947, 'CMLKT', 'Cửa Hàng Mai Lân KonTum', '944-946 Hùng Vương - TT PleiKần- H. Ngọc Hồi - Kon Tum. 10', 'KD09'),
(948, 'CMLTDM', 'Cửa Hàng Mộc Linh- Thủ Dầu Một', '647 Huỳnh văn Lũy , Phú Mỹ, Thủ Dầu Một, BD', 'KD07'),
(949, 'CMLTN', 'Cửa hàng My Ly- Tây Ninh', '878 CMT8- Khu Phố 1, F4, Tây Ninh. 6', 'KD07'),
(950, 'CMNBMT', 'Chị Nguyệt- CH Minh Nguyệt Buôn Mê Thuột', 'Số 2 Lê Thánh Tông, Buôn Mê Thuột. 10', 'KD09'),
(951, 'CMNDH', 'Cửa hàng Minh Nghi - Đức Hòa', 'Ấp Bình Thúy, xã Hòa Khánh Đông, huyện Đức Hòa, LA.', 'KD02'),
(952, 'CMNDN', 'Cửa hàng Minh Nhựt- Đồng Nai', 'Gần chợ Phương Lâm', 'KD07'),
(953, 'CMPBT', 'Cửa Hàng Mỹ Phương', '112 KP1,Thị trấn Bình Đại, Bến Tre. 10', 'KD02'),
(954, 'CMPKBD', 'CH Nội Thất Mai Phước Khang', '1062 CMT8, Thủ Dầu 1, Bình Dương ( ép lấy màu trắng + NBO kem)', 'KD07'),
(955, 'CMPLD', 'Cửa Hàng Minh Phi (PM) 0985 622 212', '18 Quang Trung P9 Đà Lạt, Lâm Đồng (Hóa đơn dán ở ngoài bao chành) 8', 'KD09'),
(956, 'CMPLX', 'Cửa Hàng Minh Phát Long Xuyên', 'Long Xuyên', 'KD02'),
(957, 'CMPTDT', 'Cửa Hàng Mai Phương Thảo', 'Nhà số 6- 8 Nguyễn Doãn Phong, P.Mỹ Phú, TP Cao lãnh, Đồng Tháp. 8', 'KD02'),
(958, 'CMQBL', 'Cửa Hàng Mai Quỳnh', '75 Bà Triệu, P.3, TP. Bạc Liêu', 'KD07'),
(959, 'CMQBT', 'Cửa Hàng nệm Minh Quân', '269 Nguyễn Tất Thành - Chợ Lầu - Bắc Bình - Bình Thuận', 'KD06'),
(960, 'CMQST', 'Cửa Hàng Mỹ Quang', 'SócTrăng,Cửa Hàng Mỹ Quang', 'KD02'),
(961, 'CMQVL', 'Cửa Hàng Mỹ Quyên - Vĩnh Long', '4535, tổ 25, ấp Đông Lợi, xã Đông Bình, Thị xã Bình Minh, Tỉnh Vĩnh Long.', 'KD08'),
(962, 'CMSTN', 'Cửa hàng Màn Cửa Minh Sang - Tây Ninh', '137, Ấp Phước Đức B, Xã Phước Đông, Gò Dầu, Tây Ninh', 'KD07'),
(963, 'CMT2CL', 'Chị Hồng - Cửa Hàng Minh Thiện', 'chợ Mỹ Long, xã Mỹ Long, Cai Lậy, Tiền Giang. 8', 'KD02'),
(964, 'CMTCL', 'Chị Yến- Cửa Hàng Thầy Minh ( Minh Thiện cũ)', 'Chợ nhị Qúy ,Cai Lậy,Tiền Giang. 8', 'KD02'),
(965, 'CMTDN', 'Cửa Hàng Mạnh Tùng', '1925 QL20, Phú Xuân, Tân Phú , Đồng Nai. 8', 'KD07'),
(966, 'CMTHM', 'Cửa Hàng Minh Thảo', '28 Nguyễn Văn Bứa, Xuân Thới Sơn, Hóc Môn. 8', 'KD09'),
(967, 'CMTLA', 'Cửa Hàng Minh Trí Long An', 'KP3. TT Thạnh Hóa, Long An', 'KD02'),
(968, 'CMTLD', 'Cửa Hàng Minh Thông - Lâm Đồng', '137 Hà Giang Bảo Lộc- Lâm Đồng. 10', 'KD09'),
(969, 'CMTNT', 'Cửa Hàng Minh Tín- Nha Trang', '21 Ngô Gia Tự , TP Nha Trang', 'KD06'),
(970, 'CMTTB', 'Cửa Hàng Minh Tâm - Trảng Bom', '26 Bắc Sơn , ấp Bùi Chu, xã Bắc Sơn, Trảng Bom', 'KD07'),
(971, 'CMTTL10', 'Cửa Hàng Minh Thảo- Tỉnh lộ 10', '1584 Tỉnh lộ 10, Tân Tạo, Bình Tân. 8', 'KD02'),
(972, 'CMTTP', 'Cửa Hàng Minh Trang', '54 Tân Qúy,Tân phú', 'KD02'),
(973, 'CMTVL', 'CH Trang Trí Nội Thất - VP Mai Trang', 'Số 1B, Trưng Nữ Vương, P1, TP VL - 68/3B Phạm Thái Bường,P4,VL. 10', 'KD01'),
(974, 'CMVBP', 'Cửa Hàng Mỹ Vượng - Bình Phước', '13 Nguyễn Huệ, TT. Chơn Thành, H. Chơn Thành, Bình Phước', 'KD09'),
(975, 'CMVQ11', 'Cửa Hàng Mỹ Vân- Quận 11', '220 Phó Cơ Điều, F6,Q11', 'KD03'),
(976, 'CMYM', 'Anh Hiền - Công Ty Tnhh Mỹ ý Mỹ', '84/86/8 Tân Sơn Nhì, P.Tân Sơn Nhì,Q.Tân Phú', 'KD06'),
(977, 'CNABL', 'Anh Mạnh - Cửa Hàng Ngọc ánh', '51A/24 Hà giang, bảo Lộc, lâm Đồng', 'KD07'),
(978, 'CNACT', 'Cửa Hàng Ngọc Ánh - Cần Thơ', 'ấp Thới Thuận A, TT Thới Lai, huyện Thới Lai, TP Cần Thơ.', 'KD08'),
(979, 'CNAMN', 'Cửa Hàng Nội Thất Nhật Anh Mũi Né', '316 Huỳnh Thúc Kháng , Mũi Né, Phan Thiết. 10', 'KD06'),
(980, 'CNAMTBT', 'Anh Nam/Chị Ngọc : Nội Thất Nam Thành', 'ấp 1,xã bình thới,bình đại,Bến tre', 'KD02'),
(981, 'CNAQ8', 'Cửa Hàng Nguyên Anh', '1981 Phạm Thế Hiển,P6,Q8', 'KD06'),
(982, 'CNATD', 'Cửa Hàng Ngọc Anh- Thủ Đức', '967 Tỉnh Lộ 43, Phường Bình Chiểu, Thủ Đức', 'KD07'),
(983, 'CNB2TL', 'Cửa Hàng Ngọc Bích 2 (Thái Nương)', 'Lạc Hóa 2, TT Lạc Tánh, H. Tánh Linh, Bình Thuận. 8', 'KD06'),
(984, 'CNBGL', 'Cửa Hàng Nhật Bảo Gia Lai- 0908 06 1088', '09 Quang Trung - Pleiku- Gia Lai. 10', 'KD09'),
(985, 'CNBTL', 'Cửa Hàng Ngọc Bích', 'Lạc Hóa 2, TT Lạc Tánh, H. Tánh Linh, Bình Thuận. 8', 'KD06'),
(986, 'CNCBT', 'Chị Loan/Anh Hùng: Cửa Hàng Nhã Ca', '146 Nguyễn Văn Đậu,P7,Q.Bình Thạnh,TPHCM', 'KD09'),
(987, 'CNCHM', 'Chú Châu - Cửa Hàng Năm Châu', '131/2 ấp Trung Chánh, Xã Tân Xuân, Hóc Môn', 'KD09'),
(988, 'CNCQ9', 'Cửa Hàng Ngân Cương- Q9', '317 Đỗ Xuân Hợp, Q9. 8', 'KD07'),
(989, 'CNCST', 'Cửa Hàng Năm Châu - Sóc Trăng (HKD Thanh Mỹ)', 'Đường 3/2, ấp Cầu Đồn, TT Huỳnh Hữu Nghĩa, H. Mỹ Tú, T. Sóc Trăng', 'KD08'),
(990, 'CNCTV', 'Cửa Hàng Nam Cường ( Không ghi giá)', '217 Nguyễn Thị Minh Khai, Khóm 8, P.7, TP. Trà Vinh. 10', 'KD01'),
(991, 'CNDBC', 'Ngọc Diệp - Đại Lý Liên á', 'C1/3A Đường Võ Văn Vân,ấp 3 ,Vĩnh Lộc B,Bình Chánh ĐT:62666896', 'KD07'),
(992, 'CNDBD', 'Cửa Hàng Năm Dân Bình Dương', '266 xã Long Hoà, huyện Dầu Tiếng, Bình Dương. 10', 'KD07'),
(993, 'CNGBMT', 'Cửa Hàng Ngọc Giàu- Buôn Mê Thuột', '267 Nguyễn Thị Định, Tân Tiến, Buôn Mê Thuột. 8', 'KD09'),
(994, 'CNHBR', 'Cửa Hàng Ngân Hường - Bà Rịa', '96 Võ Thị Sáu Long An, Long Điền, Huyện Đất Đỏ, Bà Rịa Vũng Tàu', 'KD07'),
(995, 'CNHKG', 'Chị Hiền - Cửa Hàng Ngọc Hiền', '15 Nguyễn Chí thanh,Rạch Sỏi,Kiên Giang', 'KD08'),
(996, 'CNHTG', 'CH Ngọc Hương - Tiền giang', '351 Ấp Mới, Xã Long Định, Huyện Châu Thành, Tiền Giang', 'KD02'),
(997, 'CNHVL', 'Cty TNHH TM Ngọc Hưng', 'Số 11 đường Trưng Nữ Vương, Phường 1, Tp Vĩnh Long', 'KD08'),
(998, 'CNKBD', 'Chị Kiều - TTNT Ngọc Khôi', '179/1 Bình Chiến,TT.Bình Đại,Bến Tre. 6', 'KD02');
INSERT INTO `customer` (`id`, `makh`, `tenkh`, `diachi`, `qlkhuvuc`) VALUES
(999, 'CNKDN', 'Cửa Hàng Ngọc Khánh - Đồng Nai', 'Đường Hùng Vương, TT. Hiệp Phước, Đồng Nai', 'KD07'),
(1000, 'CNKV', 'Cửa Hàng Khánh Vy', '462 Đường Số 7, P.Tân Tạo, Q.Bình Tân', 'KD08'),
(1001, 'CNLDN', 'Cửa hàng Nhật Lệ- Đồng Nai ( Giao hàng trước 1h)', '571 Tây Lạc, Bắc Sơn, Trảng Bom, Đồng Nai (giao hàng đến kho - Cầu Sập). 10', 'KD07'),
(1002, 'CNLGK', 'Chị Lan - Cửa Hàng Ngọc Lan', '7/1 Gia Kiệm, Thống Nhất, Đồng Nai', 'KD07'),
(1003, 'CNLTN', 'Chị Lan:Cửa hàng Ngọc Lan', '302 Lạc long Quân,kp4,p4,Tây Ninh: 0949.118009', 'KD02'),
(1004, 'CNMBR', 'Cửa Hàng Ngọc Mai Bà Rịa', '249 Hùng vương, Ngãi giao , Châu Đức, Bà Rịa VT. 10', 'KD07'),
(1005, 'CNMBT', 'Cửa Hàng Ngọc Mai - Bình Thạnh', '33 Bạch Đằng , F15, Bình Thạnh', 'KD06'),
(1006, 'CNNBD', 'Cửa Hàng Ngọc Nam Bình Đại', 'ấp 3 xã bình thới, bình đại , bến tre. 8', 'KD02'),
(1007, 'CNNBT', 'Chị Diệu -Cừa Hàng Ngô Nguyễn Bình Thạnh', '100 Xô Viết Nghệ Tỉnh,p21,Bình Thạnh', 'KD06'),
(1008, 'CNNQ9', 'Cửa Hàng Nệm Tốt- Quận 9 ( Ngọc Nguyên cũ)', '181 Đỗ Xuân Hợp ,P. Phước Long,Q9,TPHCM. 10', 'KD07'),
(1009, 'CNPBD', 'Cửa Hàng Ngọc Phi', '20/22 ấp Bình Đường, Ngã Ba Bình Đường, Bình Dương', 'KD02'),
(1010, 'CNPCT', 'Anh Minh - Cơ Sở Đồ gỗ Ngọc Phú', 'KV10,P.Châu văn liêm ,Q.Ô Môn,TP.Cần thơ. 8', 'KD08'),
(1011, 'CNPDL', 'Cửa Hàng Ngọc Phương - Đắc Lăk', '149 Nguyễn Tất Thành, Khối 7, TT M\'Drak, H. M\'Drak, DakLak', 'KD09'),
(1012, 'CNPQ9', 'Cửa Hàng Ngọc Phát - Quận 9', '188 Lê Văn Việt, Tăng Nhơn Phú B, Quận 9. 8', 'KD07'),
(1013, 'CNPTN', 'Cửa Hàng Ngọc Phi - Tây Ninh', '487 Lạc Long Quân, Hiệp Tân, Hòa Thành, Tây Ninh', 'KD07'),
(1014, 'CNQ9', 'Cô Ngọc -Cửa Hàng Ngọc', '263 Lê Văn Việt, Phường Hiệp Phú, Quận 9', 'KD03'),
(1015, 'CNSTV', 'DNTN Năm Sỹ - Trà Vinh ( Không Gửi Toa Chành)', 'Khóm Phước Trị, F1, TX Duyên Hải, Trà Vinh. 8', 'KD01'),
(1016, 'CNT231Q2', 'Cửa Hàng Nội Thất 231 - 233 - Quận 02', '231 Nguyễn Duy Trinh Quận 02', 'KD07'),
(1017, 'CNTAG', 'Cửa Hàng Ngọc Trân- An Giang', 'Cây số 3, Gần UBND phường Long Sơn, Tx. Tân Châu, An Giang.', 'KD08'),
(1018, 'CNTBD', 'Nội Thất Ngọc Thủy- Bình Định', '375 Trần Phú , TT Diệu Trì, Tuy Phước,Bình Định. 10', 'KD06'),
(1019, 'CNTCG', 'Cửa Hàng Nhựt Tân - Cần Giuộc ( CH Xe Đạp)', 'Tổ 14 ấp Tây, xã Đông Thạnh, Cần Giuộc , LA', 'KD02'),
(1020, 'CNTDDN', 'Cửa hàng Nội Thất Dũng- Đồng Nai', 'B115 Phước Lý, xã Đại Phước, Huyện Nhơn Trạch, Đồng Nai, 10', 'KD07'),
(1021, 'CNTDT', 'Cửa Hàng Nhân Trung- Đồng Tháp', '77 Nguyễn Huệ, Phường 1, Tp Cao Lãnh, Đồng Tháp.', 'KD02'),
(1022, 'CNTDTTV', 'Cửa Hàng NT Dân Tiến- Trà Vinh', 'Khóm Mỹ Cẩm A, Thị Trấn Cầu Ngang, H. Cầu Ngang, T. Trà Vinh', 'KD08'),
(1023, 'CNTHNBT', 'Cửa Hàng NT Hai Nhựt - Bến Tre', 'QL57, TT. Thạnh Phú, Thạnh Phú, Bến Tre, Việt Nam', 'KD02'),
(1024, 'CNTHNT', 'Cửa Hàng Nội Thất Hồng Ninh Thuận', 'Công Hải, Hàm Thuận Bắc, Ninh Thuận. 8', 'KD06'),
(1025, 'CNTHTBT', 'Cửa Hàng TTNT Hải Triều- Bình Thuận', 'Thôn Dân Phú, xã Hàm Kiệm, H Hàm Thuận Nam, Bình Thuận', 'KD06'),
(1026, 'CNTHTCT', 'Cửa Hàng NT Hoàn Thành - Cần Thơ', 'ấp Phú Thọ, xã Trường Xuân, huyện Thới Lai, TP Cần Thơ', 'KD08'),
(1027, 'CNTLA', 'Cô Tuyết - Cửa Hàng Năm Trước', 'Chợ Thanh Hóa,Long An ( 0948.464.742). 8', 'KD02'),
(1028, 'CNTLX', 'Cửa Hàng Nguyên Thanh- Long Xuyên', '48 Ngô Gia Tự, P.Mỹ Long, Long Xuyên, An Giang', 'KD08'),
(1029, 'CNTML', 'Cửa Hàng Nam Tịnh - Mã Lò', '2028/11 Tân Kỳ Tân Quý / . 6', 'KD02'),
(1030, 'CNTMNDN', 'Cửa Hàng Nội Thất Minh Nhật - Đồng Nai', '2395 Ấp Phương Lâm, xã Phú Lâm, H.Tân Phú, Đồng Nai', 'KD09'),
(1031, 'CNTPR', 'Cửa hàng Nệm Tốt- Phan Rang - 093 122 9729', 'Số 22 đường 16-4, F. Kinh Dinh, Phan Rang, T. Ninh thuận. 8', 'KD06'),
(1032, 'CNTQ8', 'Cửa Hàng Nhật Tân - Q8', '78-79 Lên Tỉnh 5, F5, Q8. 10', 'KD06'),
(1033, 'CNTQDN', 'Cửa Hàng Ngọc Tùng Quân - Đà Nẵng', '191 Núi Thành Quận Hải Châu. ( Giá dành riêng).', 'KD11'),
(1034, 'CNTTADN', 'Cửa hàng TTNT Trung Anh - Đà Nẵng', '104 Trần Đại Nghĩa, F Hòa Hải. Ngũ hành Sơn, Đà Nẵng. 13', 'KD11'),
(1035, 'CNTTC', 'Chị Thảo - cửa hàng Ngọc Thảo', '832 Trường Chinh, P13, Q.Tân Bình', 'KD02'),
(1036, 'CNTTDBP', 'Cửa Hàng Nội Thất Thành Dương - Bình Phước', '19 KP2 TT Chơn Thành , huyện Chơn Thành, BP', 'KD09'),
(1037, 'CNTTGV', 'Cửa Hàng New Trung Thành - Gò Vấp', '185B Nguyễn Oanh, F10 Gò Vấp. 8', 'KD06'),
(1038, 'CNTTNBD', 'Nội Thất Tuấn Ngân- Bình Định', 'đường Thanh Long 4, Phước Mỹ, Quy Nhơn, Bình Định', 'KD06'),
(1039, 'CNTTNDN', 'Cửa Hàng Thanh Nhã - Đồng Nai', 'Thị trấn Tân Phú, Đồng Nai', 'KD07'),
(1040, 'CNTTNTN', 'Cửa hàng Thanh Nga- Tây Ninh', '701 CMT8, KP.2, F.3, TP. Tây Ninh', 'KD07'),
(1041, 'CNTTTBP', 'Cửa Hàng Thanh Thúy- Bình Phước', 'số 63 QL13, Ấp 5 xã Lộc Thái, Huyện Lộc Ninh, Bình Phước', 'KD09'),
(1042, 'CNTTTCT', 'Cửa Hàng Nội Thất Toàn Thịnh- Cần Thơ', '464 đường CMT8, Phường Bùi Hữu Nghĩa, Quận Bình Thuỷ, Tp.Cần Thơ.', 'KD08'),
(1043, 'CNTTTHG', 'Cửa Hàng Nội Thất Trường Thịnh- Hậu Giang', '237 - đường 30/4 - KV5 - F Thuận An -TX Long Mỹ - Tỉnh Hậu Giang. 8', 'KD01'),
(1044, 'CNTVBL', 'Cửa Hàng Nội Thất Việt -Bến Lức', '214 Quốc Lộ 1A, KP4, TT Bến Lức, Long An.', 'KD02'),
(1045, 'CNTVL', 'Cửa hàng Ngọc Thu', 'F1/48 ấp 6, Xã Vĩnh Lộc A, Huyện Bình Chánh. 10', 'KD02'),
(1046, 'CNTXTD', 'Cửa Hàng Nội Thất Xanh - Thủ Đức ( BINGBEE VIỆT NAM)', '1/4B Đường số 18, KP4, Linh Đông, Thủ Đức.', 'KD07'),
(1047, 'CNVDDN', 'Cửa Hàng Nguyễn Văn Du - Đồng Nai', 'Đường Nguyễn Hoàng, Tổ 4, Ấp 2, Sông Trầu, Trảng Bom, Đồng Nai', 'KD07'),
(1048, 'CNVPL', 'Cửa Hàng Nam Việt - PleiKu', '30 CMT8 Phường. Hoa Lư, Pleiku, Gia Lai', 'KD09'),
(1049, 'CNVTN', 'Cửa hàng Ngọc Vân Thốt Nốt', 'KV Thới An 3, P. Thuận An, Q Thốt Nốt, TP Cần Thơ', 'KD08'),
(1050, 'CNYCT', 'Cửa Hàng Như Ý - Cần Thơ', '112B, CMT8, P. Cái Khế, Q. Ninh Kiều, TP. CT', 'KD08'),
(1051, 'CNYDM', 'Cửa Hàng Như Ý ((Đăk Min)', '205 Nguyễn Tất Thành,TT Đắk Min,H.Đắk Min,8', 'KD09'),
(1052, 'CNYHM', 'Cửa Hàng Như Ý Hóc Môn', '63 Đặng Thúc Vinh, Hóc Môn', 'KD09'),
(1053, 'CPARADISE', 'Dự án Paradise - Dốc Lết', 'DỐC LẾT- KHÁNH HÒA', 'KD10'),
(1054, 'CPATD', 'Cửa Hàng Phương Anh', '170 Quốc lộ 13,P.Hiệp Bình Chánh,Thủ Đức', 'KD07'),
(1055, 'CPCDL', 'Chị Phúc - Cửa Hàng Phúc Chiến', 'Số 9 Lý Tự Trọng TP Đà Lạt ( dán toa vô nệm)', 'KD09'),
(1056, 'CPDQ12', 'Chị Đông - CH.Phương Đông', '19/1A,Phan văn hớn,P.Tân Thới nhất,Q12', 'KD07'),
(1057, 'CPDTB', 'Anh Phát - Cửa hàng Phát Đạt Tân Biên', 'Khu phố 2 Thị trấn Tân Biên, Tây Ninh', 'KD07'),
(1058, 'CPDTN', 'Anh Sỹ - Phước Đa', 'Chợ Long Hoa, Tây Ninh', 'KD09'),
(1059, 'CPGMBT', 'Cửa Hàng Phúc Gia Minh - Bến Tre', 'KP2, TT Châu Thành, huyện Châu Thành, Bến TRe (không giá)', 'KD02'),
(1060, 'CPLBD', 'Chị Linh : Cửa Hàng Phương Linh', 'Tỉnh lộ 743,Bình Dương: 0903.527.271', 'KD03'),
(1061, 'CPLBR', 'Cửa Hàng Phi Long- Bà Rịa', 'chợ Mỹ Xuân, Huyện Tân Thành, Bà Rịa Vũng Tàu. 10', 'KD07'),
(1062, 'CPLLX', 'Cửa hàng Pha Lê - Long Xuyên', '1254 Trần Hưng Đạo, P. Mỹ Xuyên, TP Long Xuyên, T. An Giang', 'KD08'),
(1063, 'CPLNH', 'Anh Bình - CH Phát Lợi - Ninh Hòa', '404 Trần Quý Cáp, Ninh Hòa', 'KD06'),
(1064, 'CPLTBR', 'Cửa Hàng Phước Long Thọ - Bà Rịa', 'Tổ 22, Ấp Phước Thới, Xã Phước Long Thọ, Huyện Đất Đỏ, BRVT', 'KD07'),
(1065, 'CPMDN', 'Cửa Hàng Phương Mai Đắc Nông', 'Tôn ĐứcThắng , Gia Nghĩa, Đắc Nông. 8', 'KD09'),
(1066, 'CPNBD', 'Chị Phượng :Cửa hàng Phượng Nhàn', 'ấp 8,lộc thuận,bình đại,bến tre . 10', 'KD02'),
(1067, 'CPNHG', 'Cửa hàng Phương Nhung- Hậu Giang', 'ấp Hoà Phụng B, TT Kinh Cùng, H. Phụng Hiệp, T. Hậu Giang', 'KD08'),
(1068, 'CPNQ2', 'Cửa Hàng Phương Nghi', '607 Nguyễn Duy Trinh', 'KD02'),
(1069, 'CPTADN', 'Công ty Phúc Tiên An - Đồng Nai', '31A/20 Bùi Trọng Nghĩa, Tổ 42. KP3, Trảng Dài, Đồng Nai', 'KD07'),
(1070, 'CPTBH', 'Cô Bích - Cửa Hàng Phước Thịnh ( Nệm lấy màu đậm)', '1/2 KP1, Tân Hoà, Biên Hoà, Đồng Nai (12h xe về)', 'KD07'),
(1071, 'CPTBP', 'Cửa Hàng Phước Thịnh - Bình Phước', '443 QL14, F Tân Bình, TX Đồng Xoài, Bình Phước. 8', 'KD09'),
(1072, 'CPTBT', 'Cửa Hàng Phương Tuyền - Bến Tre', 'Ấp An Hội A, xã An Thuận, Huyện Thạnh Phú, Bến Tre', 'KD02'),
(1073, 'CPTCL', 'Cửa hàng Phúc Thịnh - Cam Lâm', '340 Trường chinh, Cam Đức,Cam lâm,khánh hòa. 10', 'KD06'),
(1074, 'CPTDN', 'Cửa Hàng Phương Thảo - Đắc Nông', '28 Nguyễn Tất Thành, TT Ea T\'Ling, H.Cư Jut, Dak Nông', 'KD09'),
(1075, 'CPTHACH', 'Công Ty Phú Thạch', '859 Hương Lộ 2,khu phố 8,Bình trị đông A,Bình tân', 'KD04'),
(1076, 'CPTHG', 'Chị Thảo - Cửa Hàng Phú Thịnh', '442 Hậu giang, Phường 12, quận 6. 10', 'KD02'),
(1077, 'CPTKG', 'Cửa hàng Phương thúy', 'rạch giá,kiên giang', 'KD02'),
(1078, 'CPTLA', 'Chị Thủy- Phước Thành', 'Quốc lộ 1S,Tân Hiệp,Long an', 'KD09'),
(1079, 'CPTTD', 'Chị Thảo - Cửa Hàng Phương Thảo', '79 Võ Văn Ngân,F Linh Chiểu,Q.Thủ Đức. 8', 'KD07'),
(1080, 'CQAG', 'Cửa Hàng Quang- An Giang', 'Ấp Phú Xương, Chợ Vàm, Phú Tân, An Giang', 'KD08'),
(1081, 'CQDHM', 'Cửa Hàng Quốc Dũng', '31/4 Phan văn đối,Tiền lâm,Bà điểm ,Hóc môn', 'KD08'),
(1082, 'CQH2TN', 'Cửa Hàng Quỳnh Hương II- Tây Ninh', 'Ngã 3 An Hoà, Chợ An Hoà, KCN Thành Thành Công, Trảng Bàng. 8', 'KD07'),
(1083, 'CQH3TN', 'Cửa Hàng Quỳnh Hương 3 - Tây Ninh', 'Đường Bời Lời, KP Gia Quỳnh, TT Trảng Bàng, 8', 'KD07'),
(1084, 'CQHBD', 'Anh Ngọc, Cửa Hàng Quỳnh Hoa', 'Bình Dương', 'KD09'),
(1085, 'CQHTN', 'Cửa Hàng Quỳnh Hương- Tây Ninh', '19 QL22, Lộc Thành, Trảng Bàng, Tây Ninh. 8', 'KD07'),
(1086, 'CQKBD', 'Anh Hòa CH Quốc Khánh (Sông Bé)', '23/17 khu phố bình phước B,Bình chuẩn,thuận an ,bình dương. 10', 'KD07'),
(1087, 'CQNKG', 'Cửa Hàng Quốc Nam- Kiên Giang', 'khu phố 2, TT Thứ 3, H. An Biên, T. Kiên Giang', 'KD08'),
(1088, 'CQODT', 'Cửa Hàng Quốc Oai- Dầu Tiếng', '45 Thống Nhất, Dầu Tiếng , Bình Dương', 'KD07'),
(1089, 'CQPBH', 'Cửa hàng Quang Phương', '164 Đường 30/4 , Biên Hoà, Đồng Nai', 'KD07'),
(1090, 'CQTLG', 'Cửa Hàng Quãng Thành- Lagi', '532B Thống Nhất, F. Tân An, Lagi. 8', 'KD06'),
(1091, 'CQTQ7', 'Cửa hàng Quỳnh Trâm', '176 Lâm văn bền,q7', 'KD02'),
(1092, 'CQTTN', 'Chị Thuý - Cửa hàng Quốc Tế', '282 Cách Mạng Tháng Tám, KP2, P.2, T.X Tây Ninh', 'KD07'),
(1093, 'CQTVT', 'Cửa Hàng Quốc Toản- Vũng Tàu', '1133 đường 30/4, Phường 11, TP. Vũng Tàu, Tỉnh Bà Rịa - Vũng Tàu', 'KD07'),
(1094, 'CQVBP', 'Cửa Hàng Quang Vân- Bình Phước', 'chợ Bù Nho, huyện Phú Riềng , Bình Phước', 'KD09'),
(1095, 'CRCHDKG', 'Cửa Hàng Rèm cửa Hoàng Duyên- Kiên Giang', '200A Nguyễn Trung Trực, kp5, thị trấn Dương Đông, huyện Phú Quốc, tỉnh Kiên Giang', 'KD08'),
(1096, 'CSBBD', 'Cửa Hàng Phúc Gia An ( AN NGUYÊN FURNITURE)', '22/6 QL13 F Thuận Giao, TX Thuận An, Bình Dương. 8', 'KD07'),
(1097, 'CSD2LT', 'anh Duy - Công ty TNHH NT Mỹ Phát', '327-329 QL51 , Long Bình Tân, tp, Biên Hoà. 8', 'KD07'),
(1098, 'CSDLT', 'Chị Nga - DNTN TM-DV Sáu Duy', '1073 Quốc Lộ 51, F, Long Bình Tân,Tp Biên Hoà, Đồng Nai. 8', 'KD07'),
(1099, 'CSGPQ', 'SUN GROUP - CÔNG TY TNHH XÂY DỰNG NAM ĐẢO', 'dự án LÀNG NHIỆT ĐỚI', 'KD10'),
(1100, 'CSHLD', 'Cửa Hàng Sơn Hà', '873B hùng Vương -Di Linh - Lâm Đồng. 8', 'KD09'),
(1101, 'CSKBT', 'Cửa Hàng Trang Trí Nội Thất Sang Kiều', 'Quốc lộ 1A ,TT.Lương sơn ,Bắc ninh,Bình thuận', 'KD09'),
(1102, 'CSLPT', 'Cô Lâm - Cửa Hàng Sơn Lâm', '507 Trần hưng đạo, Phan Thiết, Bình thuận', 'KD06'),
(1103, 'CSNCD', 'Cửa hàng Sáu Ngợi', 'A13/8 Nguyễn Hữu Trí, KP1, T.T Tân Túc, Bình Chánh. 8', 'KD02'),
(1104, 'CSNGL', 'Chị Nguyên - Công Ty Song Nam', '70B Nguyễn Trãi, Pleiku, gia lai', 'KD08'),
(1105, 'CSOLA', 'Cửa Hàng: Shop Oanh', 'đường Trưng Trắc, TT Thủ Thừa, Long An.10 ( Tất Cả nệm đóng bao chành)', 'KD02'),
(1106, 'CSOTEL', 'Công Ty CP Cung ứng dịch vụ Sotel', '53 Đường số 18, Phường Hiệp Bình Chánh, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
(1107, 'CSP', 'Shopee', NULL, 'KD04'),
(1108, 'CSRDD', 'Showrom Văn Phòng Đại Diện', '15-17-19, Đường Số 2, KDC Phạm Văn Hai, Xã Phạm Văn Hai, Quận Bình Chánh', 'KD04'),
(1109, 'CSRLA', 'Công ty TNHH SAM RAN', 'Ấp 5A, xã Lương Bình, huyện Bến Lức, Long An', 'KD03'),
(1110, 'CSSQ5', 'anh Trí - Cửa Hàng San San Q5', '257 Trần Phú F8 Quận 05', 'KD02'),
(1111, 'CSTBD', 'Tiêu ái Thu - Cửa Hàng Sơn Thủy', '56/1 Khu Phố 3,Thị Trấn Bình Đại', 'KD07'),
(1112, 'CSTCT', 'Cô Sáu - Cửa Hàng Sáu Tỷ', 'Quốc Lộ 91, Thốt Nốt, Cần Thơ', 'KD08'),
(1113, 'CSTDBT', 'Anh Thắng - Công ty Sao Thái Dương', 'Ao Đôi,Bình tân', 'KD07'),
(1114, 'CSTMTB', 'Chị Thanh - Cửa hàng Sáu Trang Minh', 'QL22, Trảng bàng, Tây Ninh ( Gần Bánh Canh Cô BA)', 'KD07'),
(1115, 'CSTNGD', 'Cửa Hàng Siêu Thị Nệm- Gò Dầu', '04 Gò Dầu Phường Tân Sơn Nhì, Quận Tân Phú . 6', 'KD02'),
(1116, 'CSTNQ2', 'Cửa Hàng Siêu Thị Nệm Q2 ( Không Ghi Giá )', '363 Nguyễn Duy Trinh Q2. 8 %', 'KD07'),
(1117, 'CSTSTN', 'Chị Vui - Cửa hàng Sáu Trang Sơn', 'Long chí,long thành trung,hòa thành,tây ninh (chợ long hoa)', 'KD07'),
(1118, 'CSTTN', 'Chị Mai - Cửa hàng Sáu Trang', 'f55/4 Lạc Long Quân, Hoà Thành, Tây Ninh', 'KD07'),
(1119, 'CSVTBD', 'Anh Vương / Anh Khoa - Công Ty Song Việt Tiến', 'Lô J2 Đường số 10,KCN sóng than,dĩ an ,bình dương', 'KD02'),
(1120, 'CTABR', 'Bác Tám Âu - Cửa hàng Tám Âu', 'ấp bắc,xã hòa long,TX.Bà rịa', 'KD02'),
(1121, 'CTABT', 'Cửa Hàng Tuyết Anh (Đăng Vũ) Bình Thuận', 'KP4, TT Tân Nghĩa, Hàm Tân, Bình Thuận. 8', 'KD06'),
(1122, 'CTADN', 'Cửa Hàng Trung Ánh- Đồng Nai', '1008 Ấp Tân Lập 2, xã Cây Gáo, h. Trảng Bom, Đồng Nai. 6', 'KD07'),
(1123, 'CTALX', 'Chị Hằng :Cửa hàng Tiến An', '40-42 Ngô Gia Tự, Long Xuyên', 'KD08'),
(1124, 'CTAQ7', 'Cửa Hàng Thiên An - Quận 7', '793/51/24 Trần Xuân Soạn, F, Tân Hưng, Quận 7. 8', 'KD10'),
(1125, 'CTATP', 'Cửa Hàng Trâm Anh Tân Phú', '04 Tân Quý. 6', 'KD02'),
(1126, 'CTBBP', 'Cửa Hàng Thái Bình- Bình Phước', 'Thị Trấn Đức Phong, Huyện Bù Đăng- Bình Phước. 10', 'KD09'),
(1127, 'CTBH', 'Cửa Hàng Tuyết - Biên Hòa (Tuyết Bedding)', '63A/4, Kp10, tân biên, biên hòa', 'KD07'),
(1128, 'CTBL', 'Cửa Hàng TTNN Toàn- Bến Lức', '227- 229 QL1A, KP3, TT Bến Lức, Long An. 8', 'KD02'),
(1129, 'CTCC', 'Cửa Hàng Tâm (củ chi)', '90 Tỉnh Lộ 8,KP2,Thị trấn củ chi. 10', 'KD09'),
(1130, 'CTCMT', 'Cửa Hàng Thành Công - Mỹ Tho', '10 Ấp Bắc, Mỹ Tho, Tiền Giang', 'KD02'),
(1131, 'CTCP', 'Công ty Toàn Châu Phát', 'Nữ Dân Công, Vĩnh Lộc A, Bình Chánh', 'KD02'),
(1132, 'CTD1BD', 'Cửa Hàng Thành Đạt 1 Bình Dương', '494-496 CMT8, Thủ Dầu Một, BD. 10', 'KD07'),
(1133, 'CTDBC', 'Chị Hương - Cửa Hàng Thành Đạt', 'A26/5A, Ấp 1,Bình Hưng,Bình Chánh. 8', 'KD02'),
(1134, 'CTDBT', 'Chị Thương :TTNT Thành Đạt', '321/1B ấp 1,xã quới sơn,H.Châu Thành,Bến tre. 8', 'KD02'),
(1135, 'CTDCD', 'Cửa Hàng Trúc Đào- Châu Đốc', '21 Lê Lợi, Phường B, Châu Đốc, An Giang. 10', 'KD08'),
(1136, 'CTDDN', 'Cửa hàng TTNT Trang Dung', 'K4/171A, Tân Mỹ, Tổ 94, KP 5, F. Bửu Hòa, Biên Hòa, Đồng Nai.', 'KD07'),
(1137, 'CTDLA', 'Cửa Hàng Thành Đạt', 'ấp Bình Tả, Xã Đức Hòa Hạ ,Đức Hòa , Long An', 'KD09'),
(1138, 'CTĐLA', 'Chị Vân - Cửa Hàng Tuyết Đông', '47 Nguyễn Trung Trực,TX.Tân An,Long An', 'KD09'),
(1139, 'CTDNGT', 'Cửa Hàng Thuận Dũng Ngô Gia Tự', '241 Ngô Gia Tự, Q10. 10 (nhớ vô bao)', 'KD02'),
(1140, 'CTDNS', 'Trang Trí Nội Thất Tiến Đạt', '211 Nguyễn Sơn,P.Phú Thạnh,Q.Tân Phú,TP.HCM', 'KD02'),
(1141, 'CTDQ12', 'Cửa Hàng Thành Đạt Quận 12', '345 Hà Huy Giáp, F, Thanh Lộc, Quận 12. 8', 'KD09'),
(1142, 'CTDQ7', 'Cửa Hàng Thành Đạt', '310 Huỳnh Tấn Phát,Phú Xuân,Nhà Bè', 'KD07'),
(1143, 'CTDTN', 'Cửa Hàng Thanh Duyên - Tây Ninh', 'ấp Bình Thuận, xã Phước Bình, TX Trảng Bàng, Tây Ninh', 'KD07'),
(1144, 'CTGCT', 'CH Nệm Trường Giang (cty việt hải) - (báo trước giờ giao tới)', '11 Mậu Thân,Xuân Khánh,Ninh Kiều,(đem theo xe kéo) .10', 'KD01'),
(1145, 'CTGDG', 'Thế Giới Drap Gối -Q7', '255A Nguyễn Thị Thập- F. Tân Phú, Q7 . 10', 'KD06'),
(1146, 'CTGNTCR', 'Cửa Hàng Thế Giới Nội Thất - Cam Ranh ( Không ghi Giá)', '205 đường 22 tháng 8, Cam Ranh ( CSDC : vàng+ xám),EP1 viền : Trắng', 'KD06'),
(1147, 'CTHAG', 'Cửa Hàng Thành Hương Mẹ ( 0902 3535 75)', '39 Trần Hưng Đạo Thị Trấn Tri Tôn,An Giang (cấm xe 2.5 tấn)', 'KD08'),
(1148, 'CTHBD', 'Cửa Hàng Thanh Hằng', '94 Bạch Đằng ,P.24, Q. Bình Thạnh,TPHCM. 10', 'KD06'),
(1149, 'CTHBH', 'Chị Nga - Cửa Hàng Thuận Phát', '449 Tỉnh Lộ 10, An Lạc, bình Tân', 'KD09'),
(1150, 'CTHBT', 'Cửa Hàng Thanh Hải', '21 Nguyễn Đình Chiểu, H.Mỏ Cày,Bến Tre. 10 (Th lấy kem)', 'KD02'),
(1151, 'CTHBTr', 'Cửa Hàng Thảo Hà - Bến Tre', '12 THÁI HỮU KIỄM BA TRI, -', 'KD02'),
(1152, 'CTHCL', 'Cửa Hàng Thanh Hùng', 'Chi Lăng,An giang', 'KD02'),
(1153, 'CTHDTV', 'CH Thuận Hòa Duy - Liêu Minh Duy', 'Khóm 8, Cầu Kè, Trà . 10', 'KD01'),
(1154, 'CTHGV', 'Cửa Hàng Thanh Hường- Gò Vấp', '562 - 564 Lê Đức Thọ, P.17, Gò Vấp', 'KD06'),
(1155, 'CTHHG', 'Cửa Hàng Thái Hưng- Hậu Giang', '841 Hùng Vương, KV5, F, Ngã Bảy, TP ngã Bảy, Hậu Giang.', 'KD08'),
(1156, 'CTHKG', 'Cửa Hàng Thái Hoà ( Thứ 9,5 Kiên Giang)', NULL, 'KD08'),
(1157, 'CTHLA', 'Chị Hòa - Cửa hàng Thuận Hòa', '72 Nguyễn Trung Trực, TP. Tân An, Long An_E2v . 10', 'KD01'),
(1158, 'CTHLD', 'Cửa Hàng Tú Hoa - Lâm Đồng', '19 Hai Bà Trưng - Liên Nghĩa- Đức Trọng , Lâm Đồng. 8', 'KD09'),
(1159, 'CTHQ8', 'Cửa Hàng Thu Hà - Q8', '26 Cao Xuân Dục, F13, Quận 08', 'KD06'),
(1160, 'CTHSRG', 'Chị Dung- CH Hải Sơn Rạch Gía', '382 Lạc Hồng,tp rạch giá ,kiên giang (không ghi giá+HD bỏ bao thư). 10', 'KD01'),
(1161, 'CTHSST', 'Anh Trung - Tân Hải Sơn', 'Số 10,Nguyễn Chí Thanh, P6, TP. Sóc Trăng. 10', 'KD01'),
(1162, 'CTHTDM', 'Cửa Hàng Thuận Hưng- Thủ Dầu Một( Xuất cho NT Thanh Sương)', '11 Phú Lợi, F. Phú Lợi , TP Thủ Dầu Một, Bình Dương. 8', 'KD07'),
(1163, 'CTKAG', 'Cửa hàng Thanh Kiều', 'Chợ Tổng đội,Hòn Đất,Kiên giang', 'KD09'),
(1164, 'CTKDN', 'Cửa Hàng Trung Kiên Đồng Nai', '1433 QL1A ngã 3 Trà Cổ, An Điền, Trảng Bom, Đồng Nai. 10', 'KD07'),
(1165, 'CTKG', 'Cửa Hàng Tạo - Kiên Giang', 'ấp thứ nhất, xã tây yên, huyện An Biên. T. Kiên Giang', 'KD08'),
(1166, 'CTKNB', 'Cửa Hàng Trung Kiên- Nhà Bè - (HKD Nguyễn Yến Nhi)', '514 Nguyễn văn Tạo, Nhà Bè. HCM (ko ghi giá)', 'KD06'),
(1167, 'CTKPY', 'Chị Vân - Cửa Hàng Thủy Kim', '107 Trần Hưng Đạo,Tuy Hòa,Phú Yên', 'KD07'),
(1168, 'CTLBP', 'Cửa Hàng Thanh Long Bình Phước', 'chợ Bù Na, xã Nghĩa Bình , Bù Đăng, Bình Phước. 8', 'KD09'),
(1169, 'CTLBR', 'Cửa Hàng Nội Thất Thuý Lan - Bà Rịa', '93-101 Nguyễn Hữu Thọ, Tp, Bà Rịa. 8', 'KD07'),
(1170, 'CTLDL', 'Cửa hàng Thanh Loan - Đắk Lăk', '196 Nguyễn Tất Thành , EARAR, Đắk Lăk. 8', 'KD09'),
(1171, 'CTLDN', 'Chị Nhung- Cửa hàng Thành Lâm', '463 Phạm văn thuận,Tân Mai,Đồng Nai,gần chợ tân mai', 'KD07'),
(1172, 'CTLLA', 'Chị Hoa - CH Thành Lợi - Long An ( ko ghi giá)', '8D chợ Bàu Trai, Thị trấn Hậu Nghĩa, Đức Hòa, Long An', 'KD01'),
(1173, 'CTLLH', 'chị Hoàng Anh - cửa hàng Thuý Lan', 'Thị trấn Long Hải', 'KD07'),
(1174, 'CTLPR', 'Chị Ninh- cửa hàng Thành Lợi- Phan Rang', '138 Thống Nhất, Phan Rang, Bình Thuận ( Nệm lấy màu đậm)', 'KD06'),
(1175, 'CTLPY', 'Rèm Cửa Tuyết Loan (Không ghi giá)', '75 Lê Thành Phương -TT Chí Thạnh, Huyện Tuy An, Phú Yên ( không lấy kem bông nổi và trắng). 10', 'KD06'),
(1176, 'CTLTB', 'Cửa Hàng Thanh Long Tân Bình', '1094 CMT8, F4, Tân Bình. 8', 'KD02'),
(1177, 'CTLTN', 'Cửa Hàng Thanh Liễu - Tây Ninh', '432 CMT8 Tây Ninh', 'KD07'),
(1178, 'CTMBT', 'Cửa Hàng Tiến Mỹ- Bình Thuận', '27 Hai Bà Trưng, TT Phan Rí, Tuy Phong, Bình Thuận. 8', 'KD06'),
(1179, 'CTMLK', 'Chị Minh :Thanh Minh -Long khánh', 'A105 Hùng Vương,Thị Xã Long Khánh,Đồng Nai', 'KD02'),
(1180, 'CTMMT', 'chị Nhân - cửa hàng Thanh minh', '454A ấp Bắc, Phường 5, TP.Mỹ Tho (không ghi giá)', 'KD01'),
(1181, 'CTMPH', 'Anh Thiện - Cửa Hàng Thiện Mỹ', '58 Lê Lợi ,KV1,P.ngã bảy,TX.Ngã bảy,Hậu Giang', 'KD01'),
(1182, 'CTMVL', 'Anh Tùng - Trang trí nội thất Toàn Miền', 'chợ mai phốp,trung hiếu,vũng liêm,vĩnh long. 10', 'KD08'),
(1183, 'CTNBP', 'Cửa Hàng Tài Ngân - Bình Phước', '30 Nguyễn Huệ, TX. Bình Long. T. Bình Phước', 'KD09'),
(1184, 'CTNBT', 'Trang Trí Nội Thất Thiên Nga Bến Tre', 'ấp 5,Thị Trấn Giồng Trôm,Bến tre . 8', 'KD02'),
(1185, 'CTNCG', 'Cửa Hàng Tuyết Nhung- Cần Giờ', 'đường Đào Cừ, ( đoạn gần siêu thị)', 'KD06'),
(1186, 'CTNCT', 'Công ty TNHH SX TM DV Trăng Non', '27 Nguyễn Khuyến, An Cư, Ninh Kiều, Cần Thơ', 'KD10'),
(1187, 'CTNCV', 'Chị Trúc - Cửa hàng Thanh Nhạn', '0439 tổ 24 ấp thuận tiến A,Xã thuận an,H. bình minh,T.vĩnh long. 8', 'KD08'),
(1188, 'CTNDN', 'Cửa hàng Thiên Ngọc- Quãng Ngãi 0906409168', '563 Quang Trung,TP.Quãng Ngãi', 'KD06'),
(1189, 'CTNGD', 'Chị Dung - cửa hàng Tín Nghĩa Gò Dầu', 'Khu phố 1, Thị trấn Gò Dầu, Tây Ninh', 'KD07'),
(1190, 'CTNQ5', 'Cô Minh : Trung Tâm Tín Nghĩa MINH A1', '144 Phạm Đình Hổ Q6,TPHCM. 8', 'KD02'),
(1191, 'CTNTN', 'Cửa hàng Thu Ngân - Tây Ninh', '002A đường 30/4 KP4, F3, TX Tây Ninh, Tây Ninh', 'KD07'),
(1192, 'CTNTV', 'Cửa Hàng Tâm Nga - Trà Vinh', 'Trà Vinh', 'KD04'),
(1193, 'CTNXQ5', 'Hiệu Buôn Tân Nam Xương- Q5', '17 Phan Văn Khoẻ, F13,Q5', 'KD03'),
(1194, 'CTOCT', 'Cửa Hàng Tân Oanh', '100 Nguyễn Đức Cảnh, Cái Khế, Ninh Kiêu TP Cần Thơ. 10', 'KD08'),
(1195, 'CTP2BH', 'Chị Hương - Cửa Hàng Thiên Phước II', '47/1KP4 Nguyễn ái Quốc,TP.Biên hòa. 10', 'KD01'),
(1196, 'CTP2CL', 'Chị My -Cửa Hàng TƯỜNG PHÁT 2', 'Thôn Bắc Vĩnh, xã Cam Hải Tây, Huyện Cam Lâm, KH', 'KD06'),
(1197, 'CTP3TL10', 'Anh Vũ - cửa hàng Thuận Phát 3', '3A 63 Trần Văn Giàu, Cầu Xáng, Phạm Văn Hai, Bình Chánh. 6', 'KD02'),
(1198, 'CTP4HL2', 'Cửa hàng Thuận Phát 4', '796 Hương lộ 2, P Bình Trị Đông A, Q Bình Tân. 8', 'KD02'),
(1199, 'CTP5DT', 'Cửa Hàng Thuận Phát 5', 'ÂP 2,Xã Mỹ Long ,cao lãnh -Đồng tháp:0975575095Yên. 6', 'KD02'),
(1200, 'CTPBC', 'Cửa hàng Thanh Phong - 0913.112489', 'D3/18 Nguyễn Thị Tú,ấp 4,Vĩnh lộc B,Bình chánh. 8', 'KD02'),
(1201, 'CTPBD', 'Thành Phát Bình Dương', '478 CMT8,P.Hiệp Thành,TXTDM,BD', 'KD07'),
(1202, 'CTPBMT', 'Chị Tuyền - Công ty TNHH tư vấn thiết kế nội thất Tuấn Phát', 'Số 129 Y Jút, Phường Thống Nhất, TP.Buôn Ma Thuột, Tỉnh Đắk Lắk, Việt Nam', 'KD09'),
(1203, 'CTPBT', 'Chị Mai - CH Tân Phát', '11 Nguyễn Đình Chiểu, P.2, Bến Tre. 8', 'KD02'),
(1204, 'CTPCL', 'Cô Phát - Công Ty TNHH TM Tường Phát', 'Thôn Tân thành, Cam Thành Bắc, Cam Lâm, cam Ranh (KHÔNG GHI GIÁ)', 'KD06'),
(1205, 'CTPCT', 'Cửa Hàng Trường Phát - Cần Thơ', '325 Võ Văn Kiệt, P,An Thới, Q. Bình Thủy, TP. CT', 'KD08'),
(1206, 'CTPDL', 'Cửa Hàng Thịnh Phát- Đăk Lăk', '507 Giải Phóng, TT Ea Drăng, H, Ea H\' Leo. T, Đăk . 8', 'KD09'),
(1207, 'CTPDT', 'Chị Phương CH Thanh Phương Hồng Ngự', 'Hồng Ngự 0907 555 299 c.Phương.10', 'KD02'),
(1208, 'CTPLA', 'Cửa Hàng Thuận Phát- Long An', '260 Quốc lộ 62 Long An. 8', 'KD02'),
(1209, 'CTPNB', 'Chị Phương - Cửa Hàng Tâm Phương', '1382 Lê Văn Lương,ấp 2, Xã Phước Kiểng ,Huyện Nhà Bè,Tphcm', 'KD06'),
(1210, 'CTPNDT', 'Cửa Hàng Thuận Phát- Nguyễn Duy Trinh', '509 Nguyễn Duy Trinh P.Binh Trưng Đông Q 2', 'KD07'),
(1211, 'CTPNK', 'Thuận Phát Ninh Kiều', '509 đường 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ.6', 'KD08'),
(1212, 'CTPNS', 'cửa hàng Tấn Phát - Nguyễn Sơn', '325B Nguyễn Sơn, Phường Phú Thọ Hòa, Quận Tân Phú 8', 'KD02'),
(1213, 'CTPNT', 'Cửa Hàng Trường Phát Nha Trang', 'Số 427 ,đường 2/4 ,vĩnh hải ,nha trang ( Đóng chành). 10', 'KD06'),
(1214, 'CTPOM', 'Cửa Hàng Thuận Phát- Ô Môn', '1088 KV4, Phường Châu Văn Liêm, Quận Ô Môn, TP.Cần Thơ', 'KD08'),
(1215, 'CTPPL', 'Cửa Hàng Thanh Phong -PleiKu', '243 Nguyễn Tất Thành Pleiku Gia Lai. 8', 'KD09'),
(1216, 'CTPQ12', 'Chị Trâm - Cửa Hàng Thịnh Phát', '197 Phan Văn Hớn,Q.12 ĐT: 66.523.451', 'KD09'),
(1217, 'CTPQ2', 'Cửa Hàng Tâm Phát Quận 2', '295 Nguyễn Thị Định, F Bình Trưng Tây Quận 2', 'KD07'),
(1218, 'CTPQ6', 'Thiên phú - Q6', '61-63 Cao văn lầu,F1,Q6,TP.HCM. 10', 'KD02'),
(1219, 'CTPQ8', 'Cửa Hàng Màn Cửa Thuận Phát- Q.8', '229 Liên Tỉnh, F.5, Quận 8', 'KD06'),
(1220, 'CTPQ9', 'Cửa hàng Nội thất Tín Phát Quận 9', '490 Lã Xuân Oai Quận 9. 8', 'KD07'),
(1221, 'CTPQNGT', 'Cửa Hàng Trần Phú Quý', '409 Ngô Gia tự', 'KD02'),
(1222, 'CTPTB', 'Cửa Hàng Tân Phú- Tân Bình', '66 Ba Vân F14 Quận Tân Bình', 'KD02'),
(1223, 'CTPTD', 'Cửa Hàng Thành Phát- Thủ Đức', '598 Tô Ngọc Vân, Thủ Đức', 'KD07'),
(1224, 'CTPTN', 'Cửa Hàng Thiên Phúc- Tây Ninh', '499 Bời Lời, Ninh Sơn, Tây ninh. 8', 'KD07'),
(1225, 'CTPTNH', 'Anh Phú Cửa Hàng Thuận Phát- Thoại Ngọc Hầu', '140A Thoại Ngọc Hầu, Q, Tân Phú. 8', 'KD02'),
(1226, 'CTPTP', 'Cửa hàng Thuận Phát Tân Phú', '489 Luỹ Bán Bích,Phường Hiệp Tân, Quận Tân phú. 8', 'KD02'),
(1227, 'CTQBL', 'Cửa Hàng Tú Quyên - Bạc Liêu', 'ấp Tam Hưng xã Vĩnh Hưng, Vĩnh Lợi, Bạc Liêu', 'KD08'),
(1228, 'CTQBP', 'Cửa Hàng Nội Thất Thiện Quý - Bình Phước', 'Khu 8, Phường Long Phước, Thị xã Phước Long, Bình Phước', 'KD09'),
(1229, 'CTS2VT', 'Cửa Hàng Trường Sơn - Bình Giả', '762 Bình Giả , F10, Tp Vũng Tàu', 'KD07'),
(1230, 'CTSAG', 'Cửa Hàng Thanh Sang - An Giang', 'Trần Hưng Đạo, Thị Trấn Tri Tôn, An Giang', 'KD08'),
(1231, 'CTSDL', 'chị Thanh - cửa hàng Trường Sanh ( Không Ghi Nhớ)', '849 Hùng Vương, Di Linh, Lâm Đồng 8', 'KD09'),
(1232, 'CTSHP', 'Cô Tám - cửa hàng Tám Sỹ', '68 ấp 1, thị trấn Hộ Phòng, Huyện Giá Rai, tỉnh Bạc Liêu. (nệm dài 1m95). 10', 'KD01'),
(1233, 'CTSKG', 'Cửa hàng Tân sơn', 'Hà tiên,Kiên giang', 'KD02'),
(1234, 'CTSVT', 'Cửa hàng Trường Sơn. Chị Loan', '300 đường 30-4 , P, Rạch Dừa, Vũng tàu. 10', 'KD07'),
(1235, 'CTT2AG', 'Cửa Hàng Thanh Tùng 2- An Giang (0939 922 104)', 'Khóm Thới Hòa, Thị trấn Nhà Bàng, Tịnh Biên, AG', 'KD08'),
(1236, 'CTTAG', 'Cửa hàng Tân Thanh - Tân Châu An Giang', '44 Trần Hưng Đạo, TX Tân Châu, An Giang. 10', 'KD08'),
(1237, 'CTTBC', 'Chị Thoa - Công Ty Tường Thái', 'A22/2 Quốc lộ 50,Bình Chánh', 'KD04'),
(1238, 'CTTBL', 'Cửa Hàng Trần Tỷ _ Bạc Liêu', 'ấp nội ô, TT Ngan Dừa, H. Hồng Dân, T. Bạc Liêu', 'KD08'),
(1239, 'CTTCC', 'Cửa Hàng Trọng Tín- Củ Chi', '16 Tỉnh lộ 8, Củ Chi.', 'KD09'),
(1240, 'CTTCL', 'Cửa Hàng Thanh Tùng Chợ Lách', '304/22 Ấp An Hoà, xã Long Thới, Huyện Chợ Lách, BTre. 6', 'KD02'),
(1241, 'CTTCMDN', 'Chị Trinh : Cửa hàng Trường Thanh Cẩm Mỹ', 'Ngã tư Sông Ray,cẩm mỹ,đồng nai. 8', 'KD07'),
(1242, 'CTTDK', 'Cửa hàng TTNT Tiến Thanh', '57 Lac Long Quan,Dien Khanh , T. Khánh Hòa(Dau cau Tran Quy Giap)10', 'KD06'),
(1243, 'CTTDL', 'Cửa Hàng Thuận Thành Đà Lạt (0792078240)', '206 Bùi Thị Xuân,P2, Đà Lạt, Lâm Đồng(Hóa đơn dán ở ngoài bao chành)8', 'KD09'),
(1244, 'CTTDT', 'Chị Thoa- cửa hàng Thuận Thiên (Không ghi giá)', '120/D Nguyễn thị minh khai,mỹ an,đồng tháp 10,ĐT. 6', 'KD02'),
(1245, 'CTTGT', 'Đại lý : Thuận Phát - Giồng Trôm ( Thuận Thành cũ)', 'Ấp 8 Tân Lợi Thạnh, ,giồng trôm,bến tre (Gần cây xăng Mai Hương). 8', 'KD02'),
(1246, 'CTTHM', 'Cửa Hàng Quỳnh Như (Trường Tuyền )', '323 Tô Ký Hóc Môn', 'KD09'),
(1247, 'CTTLD', 'Cửa Hàng Trường Thịnh Lâm Đồng', '146 Hùng Vương- TT Lộc Thắng- Huyện Bảo Lâm, Lâm Đồng 8', 'KD09'),
(1248, 'CTTLG', 'Cửa Hàng Tiến Trinh- Lagi', '89-91 Nguyễn Ngọc Kỳ, TX Lagi, Bình Thuận. 8', 'KD06'),
(1249, 'CTTLTT', 'Cửa Hàng Tuấn Thoa- Lê Trọng Tấn', '706 Lê Trọng Tấn, F, Bình Hưng Hoà, Bình Tân.8', 'KD02'),
(1250, 'CTTNB', 'Chị Thủy - Cửa hàng Nệm Thanh Thủy', '302 Nguyễn Văn Tạo,Ấp 2,Long Thới, P.Nhà Bè, TPHCM', 'KD06'),
(1251, 'CTTNTTTDL', 'Cửa Hàng TTNT Trường Thịnh - Đắc Lắc', 'Km38 EAphe Krongpac , Đăk Lắc', 'KD09'),
(1252, 'CTTPL', 'Chị Cúc :Thu Thủy - Pleiku', 'Số 2A Trần Phú Nối Dài - Chị Cúc :0593.824.804', 'KD09'),
(1253, 'CTTPN', 'Chị Thuý - Trường Thịnh PN', '24C/24D Phan Đình Phùng, P2, Q.Phú Nhuận', 'KD06'),
(1254, 'CTTPSD', 'Cửa Hàng Trung Thành Phát - Sa Đéc', '45X Nguyễn Sinh Sắc, Khóm 2 , F2, Sa Đéc, Đồng Tháp', 'KD02'),
(1255, 'CTTQ10', 'Cửa Hàng Thanh Thúy Quận 10', '475F, CMT8, F13, Q10. 8', 'KD02'),
(1256, 'CTTQ11', 'Cửa Hàng Tài Trương -Quận 11', '68 Lý Nam Đế, F3, Quận 11', 'KD03'),
(1257, 'CTTQ2', 'Cửa Hàng Tuấn Thảo- Q2', '68 Trần Não, F. Bình An .Q 2. 10', 'KD07'),
(1258, 'CTTQ7', 'Cửa hàng Trường Thịnh Q7', '1516 Huỳnh Tấn Phát, Phường Phú Mỹ Hưng, Quận 7. 10', 'KD06'),
(1259, 'CTTTL10', 'Cửa hàng Thanh Thanh ( Đại Lý Hoàng Anh)', '124 đường số 12, P.Bình Hưng Hòa, Q. Bình Tân. 8', 'KD02'),
(1260, 'CTTTN', 'Cô Lệ/ Chị Hoa :Cửa hàng Trường Thịnh TB', '14 Quốc lộ 22, Lộc Trát, Gia Lộc, Trảng Bàng, Tây Ninh', 'KD07'),
(1261, 'CTTVC', 'Cửa hàng Thanh Thủy - Vincom', '249/15 Lê Duẩn, H. Long Thành, Đồng Nai. 8', 'KD07'),
(1262, 'CTTVL', 'Cửa hàng Thanh Thúy', 'ấp Vĩnh Trinh , Xã Vĩnh Xuân, Huyện Trà Ôn, Tỉnh Vĩnh Long. 8', 'KD01'),
(1263, 'CTTVT', 'Công Ty TNHH Nội Thất Tiến Thắng', '39 Lê Lợi, F4, tp,Vũng Tàu. 8', 'KD07'),
(1264, 'CTVBD', 'Cửa Hàng Thanh Vân - Bình Định', '118 Lê Lợi, TP Quy Nhơn, Bình Định', 'KD06'),
(1265, 'CTVGV', 'Cửa Hàng Tường Vy- Gò Vấp', '1032 quang trung, F8, Gò Vấp. 10', 'KD06'),
(1266, 'CTVLT', 'Cửa Hàng Thiên Văn- Long Thành', '009, ấp 1C, Phước Thái, QL51, Long Thành. 8', 'KD07'),
(1267, 'CUTBC', 'Chị út - Cửa hàng út Tiên', 'D1/3 quốc Lộ 1A, ấp 4, xã Bình Chánh, Bình Chánh. 10', 'KD02'),
(1268, 'CUTLA', 'Cửa Hàng Út Tân - Long An', 'Khu phố 3, Thị trấn Đông Thành, Huyện Đức Huệ, Long An.', 'KD02'),
(1269, 'CVADN', 'Cửa Hàng Vân Anh- Đồng Nai', 'Ql1A Ấp Bàu Cá, Tuy Hòa, Trảng Bom, ĐN. 10', 'KD07'),
(1270, 'CVASGBP', 'Cửa Hàng Vân Anh Sài gòn - Bình Phước', '261A TT Lộc Ninh, huyện Lộc Ninh, Bình Phước', 'KD09'),
(1271, 'CVDBC', 'CÔNG TY TNHH VĨNH ĐỨC', 'G4/30A ấp 7, Xã Lê Minh Xuân, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', 'KD03'),
(1272, 'CVHBR', 'Cửa hàng Vỹ Hào 2 -BRVT', 'Căn A, tổ 12, ấp Hải Sơn, Phước Hưng, Long Điền, BRVT', 'KD07'),
(1273, 'CVHVC', 'Cửa Hàng Văn Hiếu - Vĩnh Châu (Tô Quốc Thái)', '117 đường 30/4 F1, TX Vĩnh Châu, Sóc Trăng', 'KD08'),
(1274, 'CVIRGONT', 'Công ty TNHH TM VIRGO Nha Trang', '39-41 Nguyễn Thị Minh Khai. F Tân Lập TP Nha Trang', 'KD10'),
(1275, 'CVIVIAN', 'Công ty TNHH SX TM Nệm VIVIAN', '51 Đường Số 6, Khu Phố 1, Phường Bình Trị Đông B, Quận Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
(1276, 'CVLCL', 'Cửa Hàng Vân Linh', 'Chợ Mỹ Phước Tây,Cai Lậy,Tiền Giang', 'KD02'),
(1277, 'CVLK', 'Chị Thoa - Cửa Hàng Vui', '939 Quốc Lộ 1, T.X Long Khánh, Đồng Nai. 10', 'KD07'),
(1278, 'CVNBL', 'Hia Quến - cửa hàng Vĩnh Nguyên', '35 Hoàng Văn Thụ, Bạc Liêu. 8', 'KD01'),
(1279, 'CVNDN', 'Cửa Hàng Văn Ngọc- Đồng Nai', '01 ấp Tân Bình, xã Bình Minh, h. Trảng Bom, Đồng Nai. 8', 'KD07'),
(1280, 'CVNT', 'Cửa Hàng Vàng- Ninh Thuận', 'làng chài Cà Ná', 'KD06'),
(1281, 'CVPHCG', 'Cửa Hàng Vạn Phước Hưng - Chợ Gạo', 'Ấp Mỹ Thạnh, Hòa Định, Chợ Gạo , TG', 'KD02'),
(1282, 'CVPTV', 'Cửa Hàng Vạn Phước- Trà Vinh', 'Khóm 1, thị trấn Tiểu Cần, Huyện Tiểu Cần, Tỉnh Trà Vinh', 'KD08'),
(1283, 'CVQPY', 'Cửa Hàng Quỳnh Quang ( Vĩnh Quang- Phú Yên)', '190 Phạm văn Đồng, TX Sông Cầu, Phú Yên. 10', 'KD06'),
(1284, 'CVTBD', 'CÔNG TY TNHH TM VÀ SX VIỆT THÀNH', '89/16 KP Bình Phước A, F Bình Chuẩn, TX Thuận An, Bình Dương', 'KD04'),
(1285, 'CVTBL', 'Cửa Hàng Vương Thành - Bảo Lộc', '44 Hà Giang, P.Lộc Sơn, TP Bảo Lộc, Lâm Đồng (ko ghi giá)', 'KD09'),
(1286, 'CVTBP', 'Cửa Hàng Vĩnh Thuỷ- Bình Phước', '154 ,QL13, Tân Khai, Hớn Quản, Bình Phước. 8', 'KD09'),
(1287, 'CVTHG', 'Chị Hạnh - CH Vạn Thành ( Xuất cho toàn phúc)', '525-527 Hậu giang, Quận 6. (vô bao) 10', 'KD02'),
(1288, 'CVTTP', 'Cửa Hàng Việt Thắng- Tân Phú', '258 Tân Hương, Tân Quý, Tân Phú. 8', 'KD02'),
(1289, 'CVTTV', 'Anh Vương - cửa hàng Vạn Thành', '100B2 trần Phú, Phường 2, TX. Trà Vinh .10', 'KD01'),
(1290, 'CXBCT', 'Anh Sử :Cửa Hàng Xuân Bình- Cần Thơ', 'Số 16, Lộ vòng Cung, F Phước Thới,Q Ô Môn', 'KD08'),
(1291, 'CXNBP', 'Cửa Hàng Xoan Nghinh - Bình Phước', '244 ấp chợ, xã Tân Tiến, Đồng Phú, Bình Phước. 8', 'KD09'),
(1292, 'CXPKG', 'Cửa Hàng Xuân Phong - Kiên Giang', 'chợ công sự, ấp cạn ngọn A, xã thạnh yên, huyện u minh thượng, tỉnh kiên giang', 'KD08'),
(1293, 'CYCVC', 'ý Chiêu - ĐT:079.224.7216', 'Hán chiêu,Vĩnh châu - 097.583.9229. 6', 'KD01'),
(1294, 'CYTBD', 'Cô Sang - cửa hàng Yến Thanh', '390/1 Đông Trác, Tân Đông Hiệp, Dĩ An, Bình Dương', 'KD07'),
(1295, 'CYVBD', 'Cửa Hàng Yến Vy- Bình Dương', '633 Phú giáo, Bình Dương', 'KD07'),
(1296, 'CYVBP', 'Cửa Hàng Yến Vy (Bình Phước)', '1085 NGUYỄN TẤT THÀNH F LONG THỦY TX PHƯỚC LONG,BP. 10', 'KD09'),
(1297, 'huynhton', 'Anh Tồn Chào mẫu', NULL, 'KD04'),
(1298, 'KHONGDUNG1', 'Cửa Hàng Hoàng Phúc -Bến Tre', '75/4 Ấp 10 TT Thạnh Phú, Thạnh Phúc, Bến Tre', 'KD02'),
(1299, 'ShowRoom06', 'Bán Tại ShowRoom 06 Bìnhtân', 'Số 6 , đường số 1.phường an lạc A.quận bình tân', 'KD04'),
(1300, 'ShowRoom196', 'Bán Tại ShowRoom 196', '196 Tô Hiến Thành', 'KD04'),
(1301, 'SMOVINHDUC', 'Công Ty TNHH Vĩnh Đức', 'Ấp mới 2, Mỹ Hạnh Nam, Đức Hòa, Long An', NULL),
(1302, 'VPDDTRUONGHUNG', 'Văn phòng đại diện Trường Hưng', '17-19 Đường số 2, Xã Phạm Văn Hai, Bình Chánh', NULL),
(1308, 'NGUYENBANG', 'Nguyễn Băng', 'Long Xuyên, An Giang', 'KD00'),
(1309, 'NGUYENBANG', 'Nguyễn Băng', 'Long Xuyên, An Giang', 'KD00'),
(1310, 'DUCGIAU', 'Đinh Đức Giàu', 'TP.HCM', 'KD00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `department`
--

CREATE TABLE `department` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `head_id` int(30) NOT NULL,
  `superintendent_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `department`
--

INSERT INTO `department` (`id`, `name`, `head_id`, `superintendent_id`) VALUES
(1, 'IT', 0, 0),
(2, 'Marketing', 0, 0),
(3, 'Nhân sự', 0, 0),
(4, 'Kế toán', 0, 0),
(5, 'Kinh doanh', 0, 0),
(6, 'BGĐ', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `de_xuat`
--

CREATE TABLE `de_xuat` (
  `id` int(11) NOT NULL,
  `Ngaytaophieu` date NOT NULL,
  `tennguoidexuat` varchar(50) NOT NULL,
  `bophan` varchar(50) NOT NULL,
  `noidung` text NOT NULL,
  `kinhphi` int(11) NOT NULL,
  `thoigianbatdau` date NOT NULL,
  `thoigianketthuc` date NOT NULL,
  `status` int(11) DEFAULT NULL,
  `thoigianduyet` date DEFAULT NULL,
  `nguoiduyet` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `de_xuat`
--

INSERT INTO `de_xuat` (`id`, `Ngaytaophieu`, `tennguoidexuat`, `bophan`, `noidung`, `kinhphi`, `thoigianbatdau`, `thoigianketthuc`, `status`, `thoigianduyet`, `nguoiduyet`) VALUES
(4, '2022-12-13', 'Đức Giàu', 'demo', 'abc', 1900000, '2022-12-14', '2022-12-21', 1, '2022-12-13', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `employee_details`
--

CREATE TABLE `employee_details` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `employee_id` varchar(200) NOT NULL,
  `lastname` text NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text NOT NULL,
  `address` text NOT NULL,
  `contact` text NOT NULL,
  `department_id` int(30) NOT NULL,
  `position_id` int(30) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 5 COMMENT '1=Pricipal, 2=  Department Head , 3=Manager, 4 = supervisor,5 = regular',
  `manager_id` int(30) NOT NULL,
  `supervisor_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `employee_details`
--

INSERT INTO `employee_details` (`id`, `user_id`, `employee_id`, `lastname`, `firstname`, `middlename`, `address`, `contact`, `department_id`, `position_id`, `type`, `manager_id`, `supervisor_id`) VALUES
(2, 5, '51842843', 'Smith', 'John', 'C', 'Sample', '123246548798', 1, 1, 2, 0, 0),
(3, 7, '97558385', 'Wilson', 'George', 'D', 'Sample Address', '+0123456789', 1, 2, 3, 0, 0),
(4, 2, '39303658', 'Blake', 'Claire', 'E', 'Sample', '065465425', 1, 5, 5, 3, 6),
(5, 4, '83534061', 'Martin', 'Ben', 'C', 'Sample', 'Sample', 1, 5, 5, 3, 0),
(6, 6, '69930211', 'Williams', 'Mike', 'B', 'Sample', '45621', 1, 6, 4, 3, 0),
(7, 3, '05785111', 'Link', 'Jackie', 'S', 'Sample', '1324347', 3, 7, 1, 0, 0),
(8, 9, '46858358', 'Giàu', 'Đinh', 'Đức', 'aaaa', '098978941', 2, 4, 3, 0, 0),
(9, 10, '01235535', 'Chúc', 'Nguyễn', 'Văn', 'aaaa', '45452', 4, 9, 3, 0, 0),
(10, 11, '62277935', 'Van', 'Cao', 'Thuy', 'aaa', '5120', 4, 8, 5, 9, 0),
(11, 12, '72275214', 'Hân', 'Dương', 'Lạc', 'aaa', '09099', 6, 10, 1, 0, 0),
(12, 13, '28946244', 'Tu', 'Ly ', 'Thi Cam', 'aaaa', '0909000', 6, 11, 1, 0, 0),
(13, 14, '23403024', 'Thoa', 'Ly', 'Thi Kim', 'aaa', '09095657', 6, 12, 1, 0, 0),
(14, 15, '55206317', 'Yen', 'Ly', 'Thi Hai', 'aaa', '090999999', 6, 14, 1, 0, 0),
(15, 16, '54111043', 'Hoa', 'Ly', 'Thuy', 'aaa', '09999999', 6, 13, 1, 0, 0),
(16, 17, '04112302', 'Thong', 'Tiet', 'Hoang', 'aaa', '0999999', 6, 15, 1, 0, 0),
(17, 18, '47608211', 'Thuy', 'Vu', 'Thi Anh', 'aaa', '0666666', 4, 8, 5, 9, 0),
(18, 19, '53564274', 'Dung', 'Ta ', 'Thi Ngoc', 'aaa', '06866666', 4, 8, 5, 9, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `leave_credits`
--

CREATE TABLE `leave_credits` (
  `id` int(30) NOT NULL,
  `leave_type_id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `credits` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `leave_credits`
--

INSERT INTO `leave_credits` (`id`, `leave_type_id`, `employee_id`, `credits`) VALUES
(1, 3, 4, 10),
(2, 4, 4, 10),
(3, 2, 4, 10),
(4, 1, 4, 10),
(5, 3, 5, 10),
(6, 4, 5, 10),
(7, 2, 5, 10),
(8, 1, 5, 10),
(9, 3, 2, 10),
(10, 4, 2, 10),
(11, 2, 2, 10),
(12, 1, 2, 10),
(13, 3, 6, 10),
(14, 4, 6, 10),
(15, 2, 6, 10),
(16, 1, 6, 10),
(17, 3, 3, 10),
(18, 4, 3, 10),
(19, 2, 3, 10),
(20, 1, 3, 10),
(21, 1, 10, 2),
(22, 3, 10, 10),
(23, 4, 10, 10),
(24, 2, 10, 1),
(25, 3, 18, 6),
(26, 4, 18, 8),
(27, 1, 18, 7),
(28, 2, 18, 4);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `leave_list`
--

CREATE TABLE `leave_list` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `customer_id` varchar(14) NOT NULL,
  `supplier_id` varchar(14) NOT NULL,
  `leave_type_id` int(30) NOT NULL,
  `date_from` date NOT NULL,
  `money` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1= Chi KH, 2= Chi NCC, 3 = Chi\r\n4= Thu, 5= thu KH, 6= thu NCC',
  `reason` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1= approved,2 = disapproved',
  `approved_by` int(30) NOT NULL,
  `date_approved` date NOT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `quy` int(30) DEFAULT NULL,
  `status_chi` int(11) DEFAULT NULL,
  `duyetchi_id` int(11) DEFAULT NULL,
  `ngayduyet_chi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `leave_list`
--

INSERT INTO `leave_list` (`id`, `employee_id`, `customer_id`, `supplier_id`, `leave_type_id`, `date_from`, `money`, `type`, `reason`, `status`, `approved_by`, `date_approved`, `date_created`, `quy`, `status_chi`, `duyetchi_id`, `ngayduyet_chi`) VALUES
(63, 10, '0', '0', 3, '2022-12-24', 500000, 2, 'a', 0, 0, '0000-00-00', '2022-12-05', NULL, 1, 10, '2022-12-14'),
(64, 10, '0', '0', 3, '2022-12-06', 500000, 2, 'a', 0, 0, '0000-00-00', '2022-12-05', NULL, 1, 10, '2022-12-14'),
(65, 10, '0', '0', 3, '2022-12-29', 50000, 5, 'aaa', 0, 0, '0000-00-00', '2022-12-05', NULL, NULL, NULL, '0000-00-00'),
(66, 5, '0', '0', 3, '2023-01-01', 50000, 2, 'demo\r\n', 1, 2, '2022-12-14', '2022-12-05', NULL, 1, 10, '2022-12-14'),
(67, 2, 'C105LVL', '0', 3, '2023-01-14', 950000, 2, 'demo customer\r\n', 0, 0, '0000-00-00', '2022-12-05', NULL, NULL, NULL, '0000-00-00'),
(68, 5, 'C158NGT', '0', 4, '2023-02-01', 590000, 2, 'test112', 1, 2, '2022-12-14', '2022-12-05', NULL, 1, 13, '2022-12-13'),
(69, 5, 'C167THD', '0', 1, '2022-11-25', 500000, 2, 'test55', 1, 2, '2022-12-14', '2022-12-05', NULL, 1, 18, '2022-12-11'),
(89, 5, 'CC9CPC', '', 3, '2023-01-01', 150000, 2, 'demo', 1, 2, '2022-12-14', '2022-12-06', NULL, NULL, NULL, '0000-00-00'),
(95, 5, 'ANHTHO', '', 3, '2023-01-15', 150000, 2, 'aNV', 0, 0, '0000-00-00', '2022-12-06', NULL, NULL, NULL, '0000-00-00'),
(100, 5, 'ANHLUAN', '', 3, '2023-01-01', 15000, 5, '', 0, 0, '0000-00-00', '2022-12-07', NULL, NULL, NULL, '0000-00-00'),
(101, 5, 'ANHTHO', '', 3, '2023-01-01', 15000, 5, '123', 0, 0, '0000-00-00', '2022-12-07', NULL, NULL, NULL, '0000-00-00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `leave_type`
--

CREATE TABLE `leave_type` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `is_payable` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0= not payable, 1 = payable'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `leave_type`
--

INSERT INTO `leave_type` (`id`, `name`, `description`, `is_payable`) VALUES
(1, '11/2022', '', 0),
(2, '12/2022', '', 0),
(3, '01/2023', '', 0),
(4, '02/2023', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note_credits`
--

CREATE TABLE `note_credits` (
  `id` int(11) NOT NULL,
  `note_type_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL,
  `credits` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `note_credits`
--

INSERT INTO `note_credits` (`id`, `note_type_id`, `employee_id`, `credits`) VALUES
(1, 1, 9, 1000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note_list`
--

CREATE TABLE `note_list` (
  `id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `note_type_id` int(30) NOT NULL,
  `date` date NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = Phiếu Chi, 2= Phiếu Thu',
  `reason` text COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=pending,1= approved,2 = disapproved	',
  `approved_by` int(11) NOT NULL,
  `date_approved` date NOT NULL,
  `date_create` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `note_type`
--

CREATE TABLE `note_type` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 NOT NULL,
  `description` text CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `note_type`
--

INSERT INTO `note_type` (`id`, `name`, `description`) VALUES
(1, 'hihi', 'hihi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `offer_credits`
--

CREATE TABLE `offer_credits` (
  `id` int(30) NOT NULL,
  `offer_type_id` int(30) NOT NULL,
  `employee_id` int(30) NOT NULL,
  `credits` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `offer_credits`
--

INSERT INTO `offer_credits` (`id`, `offer_type_id`, `employee_id`, `credits`) VALUES
(1, 1, 8, 0),
(2, 1, 5, 10),
(3, 1, 4, 10),
(4, 2, 4, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `offer_list`
--

CREATE TABLE `offer_list` (
  `id` int(30) NOT NULL,
  `employeed_id` int(30) NOT NULL,
  `offer_type_id` int(30) NOT NULL,
  `noidung` text COLLATE utf8_unicode_ci NOT NULL,
  `soluong` int(11) NOT NULL,
  `donvitinh` text COLLATE utf8_unicode_ci NOT NULL,
  `sotien` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL COMMENT '0=pending,1= approved,2 = disapproved',
  `approved_by` int(30) NOT NULL,
  `date_approved` date NOT NULL,
  `date_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `offer_type`
--

CREATE TABLE `offer_type` (
  `id` int(30) NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `offer_type`
--

INSERT INTO `offer_type` (`id`, `name`, `description`) VALUES
(1, 'Mua mới', 'phụ tùng, vật tư'),
(2, 'Sửa chữa', 'Vật tư, máy móc');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `position`
--

CREATE TABLE `position` (
  `id` int(30) NOT NULL,
  `name` varchar(200) NOT NULL,
  `department_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `position`
--

INSERT INTO `position` (`id`, `name`, `department_id`) VALUES
(1, 'Trưởng phòng', 1),
(2, 'Người quản lí', 1),
(3, 'Trưởng phòng', 2),
(4, 'Người quản lí', 2),
(5, 'Lập trình viên', 1),
(6, 'Giám đốc', 1),
(7, 'Trưởng phòng', 3),
(8, 'Nhân viên', 4),
(9, 'Trưởng phòng', 4),
(10, 'Thư Kí', 6),
(11, 'Chủ tịch', 6),
(12, 'Thủ quỹ', 6),
(13, 'Giám đốc Điều Hành', 6),
(14, 'Giám đốc kinh doanh', 6),
(15, 'Giám đốc sản xuất', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplier`
--

CREATE TABLE `supplier` (
  `id` int(11) NOT NULL,
  `mancc` varchar(29) DEFAULT NULL,
  `sup_name` varchar(97) DEFAULT NULL,
  `sup_address` varchar(123) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`id`, `mancc`, `sup_name`, `sup_address`) VALUES
(1, 'BPGIAONHAN', 'Bộ Phận Tài Xế, Áp Tải', NULL),
(2, 'CAMBT', 'Nhà Thuốc ánh Mai', '203N Gò Xoài,P.Bình Hưng Hòa A,Bình Tân,Tphcm'),
(3, 'CDVDAIPHAT', 'Công Ty TNHH Kỹ Thuật Tự Động Đại Phát', '03 Quách Vũ, P Hiệp Tân, Q Tân Phú, TPHCM'),
(4, 'CDVHANTECH', 'Công Ty TNHH Kỹ Thuật Tự Động HANTECH', '47 Đường T8, Phường Tây Thạnh, Quận Tân Phú, Tp. HCM'),
(5, 'CDVHONGLOINAM', 'Công Ty TNHH Hồng Lợi Nam', '79 Phạm Đình Hổ, Phường 2, Quận 6, TPHCM'),
(6, 'CDVMTD', 'Công Ty TNHH Quốc Tế MTD', '183 Xuân Hồng, P 12, Q Tân Bình, TPHCM'),
(7, 'CDVPHUCDUYEN', 'Công Ty TNHH XD DV TM Phúc Duyên', 'Số 29 Đường B4, P. Tây Thạnh, Q. Tân Phú, TPHCM'),
(8, 'CDVTPT', 'Công Ty Cp Cơ Điện Thuận Phong Thủy', '901 Kinh Dương Vương, KP1, P An Lạc, Q. Bình Tân'),
(9, 'CDVWIN168', 'Công Ty Cp Cơ Điện Win 168', '270 Lý Thường Kiệt, P.14, Q.10, TPHCM'),
(10, 'CTTRUONGHUNG', 'CÔNG TY TRƯỜNG HƯNG', 'E9/199D Thế Lữ, Bình Chánh'),
(11, 'NNBCONGDOAN', 'Công Đoàn Cơ Sở Công Ty TNHH MTV Sản Xuất Trường Hưng', NULL),
(12, 'SBBANHMY', 'Công Ty TNHH SX TM Anh My', '815/4/32 Hương Lộ 2, KP 8, P Bình Trị Đông A, Q Bình Tân, TP.HCM'),
(13, 'SBBANHTRINH', 'Công Ty TNHH Bao Bì Ánh Trinh', '9/89-KP Bình Đức , P Bình Hòa, TX Thuận An, Bình Dường'),
(14, 'SBBCHIENOANH', 'Cơ Sở SX Túi Pp Kiến Chiến - Oanh', '360/17/2 Kp5, Đường Tân Hòa Đông, P Bình Trị Đông, Q Bình Tân'),
(15, 'SBBCHILAN', 'Chị Lan - Bao Xanh', '264 Lê Văn Lương, P Tân Hưng, Q7, TPHCM'),
(16, 'SBBFOSHAN', 'Foshan Jian - Cheng Economic And Trade (Pvc)', 'Foshan Jian __PVC NK'),
(17, 'SBBHIEPLIENPHAT', 'Công Ty TNHH Hiệp Liên Phát', '284-288 Lê Đình Cẩn, KP5, P Tân Tạo, Q Bình Tân, Tp HCM'),
(18, 'SBBHONGPHONG', 'Công Ty Pe Hồng Phong', '58-60, Nguyễn Chí Thanh nối dài , P16, Q11, TPHCM'),
(19, 'SBBHUYPHAT', 'Cơ Sở Huy Phát', '115 Nguyễn Thị Nhỏ, P16, Q11, TPHCM'),
(20, 'SBBJULONG', 'Julong - NK Túi Drap', NULL),
(21, 'SBBKHANGTHINH', 'Công Ty TNHH SX TM Khang Thịnh', '171 Hậu Giang P.5, Q6, TP.HCM 0908 444 546 / 083 9694 512'),
(22, 'SBBMINHHIENDAT', 'Công Ty TNHH SX Và TM Minh Hiển Đạt', '453/14 Tân Hòa Đông, Phường Bình Trị Đông, Quận Bình Tân, TP.HCM.'),
(23, 'SBBMINHNGUYEN', 'Công Ty TNHH SX - TM XNK Minh Nguyên', 'F26/74 Đường Hưng Long Quy Đức, xã Hưng Long, H. Bình Chánh, TP. HCM'),
(24, 'SBBPENCOM', 'Công Ty TNHH Pencom Vn', '864/64 Thoại Ngọc Hầu, P. Phú thạnh, q. Tân Phú, Tp.HCM'),
(25, 'SBBPHUTHINHBINHDUONG', 'Công Ty TNHH Bao Bì Phú Thịnh Bình Dương', 'Thửa đất số 1450, tờ bản đồ số 24, khu phố Nội Hóa 1, Phường Bình An, Thành phố Dĩ An, Bình Dương, Việt Nam'),
(26, 'SBBQUANGMINH', 'Cơ Sở Quang Minh -0918345246 ( Ms Hương)', '80, Đường 5A, (đường Bình Long chạy thẳng đến Cầu trắng )'),
(27, 'SBBQUYETTHANG', 'Công Ty Tnhh Công Ty Cổ Phần Sản Xuất Bao Bì Quyết Thắng', 'C279 Đường Nguyễn Hữu Cảnh, Khu phố Bình Hòa, Phường Bình Nhâm, Thành phố Thuận An, Tỉnh Bình Dương'),
(28, 'SBBTAILOC', 'Cơ Sở Bao Bì Tài Lộc _Nguyễn Trọng Tài', 'A9/19 Ấp 1, đường 1A, huyện Bình Chánh, TPHCM'),
(29, 'SBBTANTHANH', 'Công Ty Tân Thanh', '277-279 Hàn Hải Nguyên,P2 ,Q11, TPHCM'),
(30, 'SBBTHECOOL', 'Công Ty TNHH The Cool Ntv', '340/4 Lê Văn Quới, P Bình Hưng Hòa A, Bình Tân, TPHCM'),
(31, 'SBBTHIENQUAN', 'Công Ty TNHH Nhựa Thiên Quân', '92C4 Dương Công Khi, Ấp 6, Xã Xuân Thới Sơn, Hóc Môn, TPHCM'),
(32, 'SBBTULAP', 'Công Ty TNHH SX - TM Tự Lập 132D (Công Ty Minh Nguyên)', 'F26/74 Hưng Long Quy Đức, X. Hưng Long, Bình Chánh'),
(33, 'SBBTUONGPHAT', 'Cơ Sở Tường Phát (Thùng Carton)', '77/13 Đường Phạm Đăng Giảng, P. Bình Hưng Hòa, q. Bình Tân'),
(34, 'SBBVIETTHANH', 'Công Ty TNHH Bao Bì Nhựa Việt Thành', '3/45/14 Thành Thái, P14, Q 10, TP.HCM'),
(35, 'SBBVIHAPACK', 'Công Ty TNHH SX In Ấn TM DV Bao Bì Vihan Pack', '62/65/10 Lâm Văn Bền, P Tân Kiểng, Q7, TP HCM'),
(36, 'SBHABIC', 'Công Ty Cổ Phần Bảo Hiểm Ngân Hàng Nông Nghiệp - CN TPHCM', '38 Phan Đăng Lưu, Phường 05, Quận Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam'),
(37, 'SBHBAOVIET', 'Công Ty Bảo Hiểm Nhà Xưởng Bảo Việt', NULL),
(38, 'SBHBINHCHANH', 'Bảo Hiểm Xã Hội Bình Chánh', NULL),
(39, 'SBHBINHTAN', 'Bảo Hiểm Xã Hội Bình Tân', NULL),
(40, 'SBHPVI', 'Công Ty Bảo Hiểm PVI Sài Gòn', '75 Ngô Thời Nhiệm, Phường 6, Quận 3, TP HCM'),
(41, 'SBHSBSMIENNAM', 'Công Ty Bảo Hiểm BSH Miền Nam', 'Lầu 3, Tòa nhà 33 Quách Văn Tuấn, Phường 12, Quận Tân Bình, TPHCM'),
(42, 'SCHIGIADUONG', 'Công Ty TNHH Gia Dương', '168/2 A KP Đông An,P.Tân Đông Hiệp,Dĩ An, Bình Dương'),
(43, 'SCHIMENGLI', 'Mengli Tread (Chỉ NK)', 'CHI GUANGZHOU'),
(44, 'SCHIMUOI', 'A Muối ( Chỉ Thêu)', '23 Tống Duy Tân, F14, Q5, TPHCM'),
(45, 'SCHIPHONGPHUGIA', 'Công Ty Phong Phú Gia 090 300 9679 Mr Vũ', 'Số 11A, Bàu Cát 2, P14, Q Tân Bình, TPHCM'),
(46, 'SCOPHANWOW', 'Công ty Cổ Phần Truyền thông Đa phương tiện Wow', '90-92 Lê Thị Riêng, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh, Việt Nam'),
(47, 'SCPJOBSGO', 'Công ty Cổ Phần JOBSGO', 'Phòng 302 Tầng 3, nhà G1, tòa nhà Five Star Garden, Số 2 Kim, Phường Kim Giang, Quận Thanh Xuân, Thành phố Hà Nội, Việt Nam'),
(48, 'SCPMATBAO', 'CÔNG TY CỔ PHẦN MẮT BÃO', 'Tầng 3 Anna Building, Công viên phần mềm Quang Trung, phường Tân Chánh Hiệp, Quận 12, Thành phố Hồ Chí Minh, Việt Nam'),
(49, 'SCPTHAOVIET', 'CÔNG TY CỔ PHẦN THIẾT KẾ KIẾN TRÚC THẢO VIỆT', '175 Nguyễn Thiện Thuật, Phường 01, Quận 3, Thành phố Hồ Chí Minh, Việt Nam'),
(50, 'SCTVIENTHONG911', 'Công ty TNHH Tin Học Viễn Thông 911', '90 Bắc Hải, Phường 6, Quận Tân Bình, Thành phố Hồ Chí Minh, Việt Nam'),
(51, 'SDIENLUCBINHCHANH', 'CN Tổng công ty Điện Lực TP .HCM TNHH - Công ty Điện Lực Bình Chánh', 'D15/10C Thế Lữ, ấp 4, Xã Tân Kiên, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam'),
(52, 'SDKBAOSON', 'Công Ty TNHH Đầu Tư Thương Mại Dịch Vụ Sản Xuất Bảo Sơn', '25 Đường 22, Khu phố 4, Phường Linh Đông, Quận Thủ Đức, TP Hồ Chí Minh, Việt Nam'),
(53, 'SDKHOAMINH', 'Công Ty TNHH SX Thương Mại Dịch Vụ Hoa Minh', '185/8A Đường số 435, ấp Phú Hòa, Xã Phú Hòa Đông, Huyện Củ Chi, TP Hồ Chí Minh, Việt Nam'),
(54, 'SDKHOMINH', 'Công Ty Hồ Minh', '74/22 Nguyễn Phúc Chu, P15, Q Tân Bình, TPHCM'),
(55, 'SDKPHUCTIEN', 'Công Ty TNHH TM Phụ Liệu May Mặc Phúc Tiến', '237/32/42 Phạm Văn Chiêu, F14m, Q Gò Vấp, TPHCM'),
(56, 'SDVBAOVENAMA', 'Công Ty TNHH Dịch Vụ Bảo Vệ Nam Á', '79/42 Phan Anh, Phường Bình Trị Đông, Quận Bình Tân, TP Hồ Chí Minh, Việt Nam'),
(57, 'SDVBKAV', 'Công ty cổ phần BKAV', 'Tầng 2, tòa nhà HH1-khu đô thị Yên Hòa, Phường Yên Hoà, Quận Cầu Giấy, Thành phố Hà Nội, Việt Nam'),
(58, 'SDVBLUESEA', 'Công Ty TNHH TMDV SX Blue Sea', '231 – 233 Lê Thánh Tôn, P.Bến Thành, Q.1, TP.HCM'),
(59, 'SDVBRANDIDEA', 'Công Ty Cổ Phần Brand Idea Group', '63/58 Đường 8, Khu phố 1, Phường Linh Xuân, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam'),
(60, 'SDVBVPLH', 'Công Ty CP TM DV Bảo Vệ - Vệ Sĩ Phi Long Hải', '76 Đường S5, Phường Tây Thạnh, Quận Tân phú, Thành phố Hồ Chí Minh, Việt Nam'),
(61, 'SDVCAPNUOC', 'Xí Nghiệp Cấp Nước Sài Gòn', ''),
(62, 'SDVCUONGKHANH', 'Công Ty Cường Khanh', '38 Trần Quang Cơ, Phường Phú Thạnh, Quận Tân Phú'),
(63, 'SDVDAITIENTHANH', 'Công Ty TNHH TM - DV Đại Tiến Thành', '117 Đường số 26, Phường Bình Trị Đông B, Quận Bình Tân, TPHCM'),
(64, 'SDVDIENLUCEVN', 'Điện Thoại Điện Lực Evn', '( 3 số máy 22452292-3-4-...)'),
(65, 'SDVDIEUBANG', 'Công Ty TNHH MTV Thương Mại Sản Xuất Diệu Bằng', 'C11/1A ấp 3, Xã Tân Kiên, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam'),
(66, 'SDVGIAITHUONG', 'Công Ty TNHH MTV DV Đại Lý Vận Tải Giải Thưởng', 'Lầu 8, Tòa nhà Thế Tài, 81-83 Nguyễn Hữu Cầu, Phường Tân Định, Quận 1, TP Hồ Chí Minh, Việt Nam'),
(67, 'SDVHAIQUAN', 'Chênh lệch tỷ giá ngoại tệ', ''),
(68, 'SDVHOANGVIET', 'Công Ty TNHH MTV SXKD DV Du Lịch & Cung Ứng XNK Hoàng Việt', NULL),
(69, 'SDVHUYHOANG', 'Công Ty TNHH MTV SX TM DV & Quảng Cáo Huy Hoàng', '1583 Huỳnh Tấn Phatsm P Phú mỹ, Q7, TPHCM'),
(70, 'SDVISUZU', 'Xí Nghiệp DV Ôtô Isuzu An Lạc', NULL),
(71, 'SDVKHANH', 'Cửa Hàng Khanh ( Áo Thun)', '044 lô B C/C Nguyễn Thiện Thuật, P1, Q3 , TP HCM // 359 Nguyễn Thiện Thuật, P1, Q3, TPHCM'),
(72, 'SDVKHOADANG', 'Công Ty TNHH SX TM Khoa Đăng', '100/13A Ấp Chánh 1, Xã Tân Xuân, huyện Hóc Môn , TP HCM'),
(73, 'SDVKIMVANG', 'Công Ty May Kim Vàng', '127/38 Hoàng Hoa Thám Phường 13 , Tân Bình , TP HCM'),
(74, 'SDVLETRI', 'Cơ sở Lê Trí - Lê Nguyên Trí', '28/1F, ấp 3, Xuân Thới Sơn, Hóc Môn, TPHCM'),
(75, 'SDVLEVINH', 'Cơ Sở PCCC Lê Vinh', '179 Đất mới,P.Bình trị đông A,Q.Bình Tân'),
(76, 'SDVLEXES', 'Xí Nghiệp DV Ôtô LEXES-', 'Trần Hưng Đạo Q1'),
(77, 'SDVLIENSON', 'Công Ty Giấy Vi Tính Liên Sơn', '34 Nguyễn Bỉnh Khiêm, Q.1, TP.HCM - ms Thanh Kiều 098 3155 835'),
(78, 'SDVMINHANH', 'Cửa Hàng Minh Ánh', '608 lê Văn Quới, P Bình Hưng Hòa B, Q Bình Tân, TP HCM'),
(79, 'SDVMINHPHUONG', 'DNTN Sản Xuất May Mặc Minh Phương', 'Số 18 Đường số 2, KDC Đường Sắt Dĩ An, Thị xã Dĩ An, Bình Dương ( Bên hong KCN Sóng Thần)'),
(80, 'SDVMOBI', 'Điện Thoại Mobifone', ''),
(81, 'SDVMYGIAVIET', 'Công Ty TNHH Quảng Cáo Và Trang Trí Nội Thất Mỹ Gia Việt', '11 Đường số 17, Phường An Lạc A, Quận Bình Tân, TP Hồ Chí Minh, Việt Nam'),
(82, 'SDVNGOISAOVANG', 'Công ty Cổ Phần Du Lịch Quốc Tế Ngôi Sao Vàng', '29 Nguyễn Trãi, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh, Việt Nam'),
(83, 'SDVNHAPKHAU', 'Dịch vụ nhập khẩu', ''),
(84, 'SDVNOIDIA', 'Cảng Vụ đường thủy nội địa TP.HCM', '167 Lưu Hữu Phước, Phường 15, Quận 8, Thành phố Hồ Chí Minh, Việt Nam'),
(85, 'SDVNPT', 'Viễn Thông VNPT', ''),
(86, 'SDVSAIGONTOURIST', 'Công Ty TNHH MTV Dịch Vụ Lữ Hành Saigontourist', '45 Lê Thánh Tôn, Phường Bến Nghé, Quận 1, TP.HCM'),
(87, 'SDVSAITHANH', 'Công Ty Môi Trường Sài Thành', NULL),
(88, 'SDVSONGLUAT', 'Công Ty Song Luật (Đăng Kí Nhãn Hiệu)', '216 Nguyễn Hồng Đào, Phường 14, Quận Tân Bình, Tphcm'),
(89, 'SDVSUCMANHVIET', 'Công Ty TNHH TM DV Truyền Thông Sức Mạnh Việt', '86/9A, Cách Mạng Tháng Tám - Phường Bùi Hữu Nghĩa - Quận Bình Thuỷ - Cần Thơ.'),
(90, 'SDVSUTUVANG', 'Công Ty TNHH May Sư Tử Vàng', '81 Trần Mai, P 12, Q Tân Bình , TPHCM _Ms Loan 0902.708.669 Mail:phuongloan@sutuvang.net'),
(91, 'SDVTHEGIOIMOI', 'Công Ty TNHH TM DV Quảng Cáo & Nội Thất Thế Giới Mới', '123/4 Liên khu 4-5, P. BHH B, Q Bình Tân, TPHCM'),
(92, 'SDVTHO', 'Anh Thọ ( Thêu gia công)', 'Ao Đôi'),
(93, 'SDVTHONGQUAN', 'Công Ty TNHH Thông Quan', 'Số 1A, tổ 10, KP 5, Phường An Bình, Thành phố Biên Hoà, Tỉnh Đồng Nai, Việt Nam'),
(94, 'SDVTHUANQUAN', 'Công Ty Thuận Quân', '1101-1103, Tạ Quang Bữu, P8, Q8 , TPHCm'),
(95, 'SDVTOANTHANG', 'HTX Vận Tải Du Lịch Dịch Vụ Toàn Thắng', '532/28/34/20 Khu Y Tế Kỹ Thuật Cao, Phường Bình Trị Đông B, Quận Bình Tân, Thành phố Hồ Chí Minh, Việt Nam'),
(96, 'SDVTRUNGVIET', 'Công Ty TNHH Dệt May Trung Việt', '89 Xuân Thới Thượng 1, Xã Xuân Thới Thượng, Huyện Hóc Môn, TPHCM'),
(97, 'SDVVIETMAP', 'Công Ty TNHH Ứng Dụng Bản Đồ Việt', '160 Trần Bình Trọng, Phường 03, Quận 5, TP HCM'),
(98, 'SDVVIETTEL', 'Điện Thoại Viettel', '( 3 số máy 22452292-3-4-...)'),
(99, 'SDVVNPTHCM', 'Trung tâm Kinh doanh VNPT thành phố Hồ Chí Minh - Chi nhánh Tổng công ty Dịch vụ Viễn thông', '121 Pasteur, Phường Võ Thị Sáu, Quận 3, Thành phố Hồ Chí Minh, Việt Nam'),
(100, 'SDVVTANTHINH', 'Công Ty TNHH Tin Học Và Viễn Thông An Thịnh', '62 Thân Nhân Trung, Phường 13, Quận Tân Bình, TP HCM'),
(101, 'SDVVTMN', 'Công Ty Cp Phần Mềm Viễn Thông Miền Nam', ''),
(102, 'SDVVUBAOANH', 'Công Ty TNHH MTV Vũ Bảo Anh', 'K246/34 Ông Ích Khiêm, phường Tân Chính, quận Thanh Khê, Tp.Đà Nẵng'),
(103, 'SDVXESAIGON', 'Công Ty Cổ Phần Ô Tô Tây Bắc Sài Gòn', '43/7A ấp Xuân Thới Đông 2, Xã Xuân Thới Đông, Huyện Hóc Môn, Thành phố Hồ Chí Minh, Việt Nam'),
(104, 'SDVXNACHAU', 'Công Ty TNHH TM DV Xe Nâng Á Châu', '160/10 Phan Huy ích - Phường 12 - Quận Gò Vấp - TP Hồ Chí Minh.'),
(105, 'SEPASS', 'Công ty Cổ Phần Giao thông số Việt Nam', 'Số 01 đường Trần Hữu Dực, Phường Mỹ Đình 2, Quận Nam Từ Liêm, Thành phố Hà Nội, Việt Nam'),
(106, 'SGONANHVIETA', 'Công Ty Cổ Phần Anh Việt Á', 'Toà Nhà Newton Residence, NTR-05.22, Số 38 Trương Quốc Dung, Phường 08, Quận Phú Nhuận, TP Hồ Chí Minh, Việt Nam'),
(107, 'SGONBOGO', 'Công Ty Cổ Phần Sản Xuất Thương Mại BOGO', 'Số 405A, ấp Bình ý, Xã Tân Bình, Huyện Vĩnh Cửu, Tỉnh Đồng Nai, Việt Nam'),
(108, 'SGONECO', 'Chi Nhánh - Công Ty TNHH TM Quốc Tế Eco', 'Tổ 6, KP Tân Cảng - P Phước Tân - TP Biên Hòa - Đồng Nai'),
(109, 'SGONGHOME', 'Công Ty TNHH MTV Đệm Và Nội Thất G.Home', 'Khu CN Hải Sơn, Ấp Bình Tiền 2, xã Đức Hòa Hạ, huyện Đức Hòa, Long An'),
(110, 'SGONGOLDENVTEC', 'Công Ty TNHH Golden Vtec', 'Lô G1-G2-G25-G26, Đường số 9,KCN Hải Sơn, Ấp Bình Tiền 2, Xã Đức Hòa Hạ, Huyện Đức Hòa, Long An'),
(111, 'SGONHAINAM', 'Công Ty TNHH TM DV Bông Gòn Hải Nam- 0937 106 099- 9', '136/17 đường TCH 05, KP 11, P. Tân Chánh Hiệp, Q12, TPHCM'),
(112, 'SGONMIRAE', 'Công Ty Cổ Phần Mirae', 'Khu phố 1B, Phường An Phú, Thành phố Thuận An, Bình Dương, Việt Nam'),
(113, 'SGONNGOCHOANGGIA', 'Công Ty TNHH SX TM Ngọc Hoàng Gia', '409 ấp 1, Xã Đông Thạnh, Huyện Hóc Môn, Thành phố Hồ Chí Minh, Việt Nam'),
(114, 'SGONTAILOC', 'Cửa hàng Tài Lộc', NULL),
(115, 'SGONTRANVAN', 'Công Ty TNHH Trần Văn', '133/67 ấp 3, Xã Xuân Thới Thượng, Huyện Hóc Môn, TP Hồ Chí Minh, Việt Nam'),
(116, 'SHCANHOANGLONG', 'Công Ty TNHH Thương Mại Sản Xuất An Hoàng Long (Bột Đá)', '67/15/5 Huỳnh Khương An, Phường 5, Quận Gò Vấp, Thành phố Hồ Chí Minh 0908 953 783 - 0898 940 611'),
(117, 'SHCANHUONG', 'Công Ty Cổ Phần Đầu Tư An Hương', '463/70/36 KP5, Lê Văn Khương, P Hiệp Thành, Q12, TPHCM (CH: 2724 QL1A, P Trung Mỹ Tây, Q12, TPHCM)'),
(118, 'SHCBEHNMEYER', 'Công Ty TNHH Behn Meyer', '36 - Đường số 6, KCN Việt Nam - Singapore, Thuận An , Bình Dương'),
(119, 'SHCCHIYOWA', 'Chiyowa Tsusho Corp.,Ltd', 'HongKong'),
(120, 'SHCCHORI', 'Chori Co.,Ltd', 'Tower C, Shinagawa intercity, 15-3, Konan 2 - Chome, Minato-ku Toyo 108-6216, Japan, Section 1681'),
(121, 'SHCDINHVANG', 'Chi Nhánh Công Ty Trách Nhiệm Hữu Hạn Đỉnh Vàng', 'ấp Bình Tiền 2, Xã Đức Hòa Hạ, Huyện Đức Hoà, Long An, Việt Nam'),
(122, 'SHCDONGDANEWMATERIAL', 'Công Ty TNHH Dongda New Matirial', '68 đường ĐX51, P Phú Mỹ, TP Thủ Dầu Một, Bình Dương'),
(123, 'SHCDWKLEBSTOFFE', 'Công ty TNHH DW KLEBSTOFFE (Thái Lan)', '3/10 Nonsee Road, Chongnonsee Yannawa Bangkok 10120'),
(124, 'SHCHANTHAO', 'Công Ty TNHH TM DV Hàn Thảo (Bột Đá)', NULL),
(125, 'SHCHOCHIMINH', 'Công Ty CP Hóa Chất TP. Hồ Chí Minh', '938 KCN Cát Lái, Nguyễn Thị Định, P TML, Q2, TPHCM'),
(126, 'SHCKHAIQUANG', 'Công Ty Hóa Chất Khải Quang', NULL),
(127, 'SHCKHOIMINH', 'Công Ty Khôi Minh', 'BB5 Cư Xá Bắc Hải, Đường Trường Sơn, P15, Q10, TPHCM'),
(128, 'SHCKIMNGUU', 'Công Ty CP XNK Hóa Chất Và Thiết Bị Kim Ngưu', 'VPGD: số 09, Ngõ 51 Lãng Yên, P Lương Yên, Q Hai Bà Trưng, Hà Nội'),
(129, 'SHCKUKDO', 'Kukdo - Kukdo Chemical Co.,Ltd', 'No.1 Shan Pu Zhong Roand, Qian Deng Tơn, Kunshan City, Jiangsu province, China'),
(130, 'SHCMINHKHAI', 'Công Ty TNHH Thương Mại Xuất Nhập Khẩu Minh Khải', '12-14 Đường số 6, Cư xá Bình Thới, Phường 8, Quận 11, TP Hồ Chí Minh, Việt Nam'),
(131, 'SHCOODA', 'Công Ty TNHH Công Nghiệp Ooda', 'Xưởng 06 Lô số 8 -10-12, Đường số 3, KCN Tân Đức, xã Đức Hòa Hạ, Huyện Đức Hòa , Tỉnh Long An'),
(132, 'SHCPHONGSACVIETNAM', 'Công Ty TNHH Phong Sắc Việt Nam', 'Lô O đường số 2, KCN Hải SƠn (GD314), ấp Bình Tiền 2, Xã Đức Hòa, Tỉnh Long An'),
(133, 'SHCQUACAU', 'Công Ty Cổ Phần Sam Chem Quả Cầu', 'Lầu 7, số 82 Trần Huy Liệu, Phường 15, Quận Phú Nhuận, TP Hồ Chí Minh, Việt Nam'),
(134, 'SHCQUANGVIET', 'Công Ty TNHH Thương Mại - Dịch Vụ Quảng Việt', '366/19B đường Lê Văn Quới, Phường Bình Hưng Hòa A, Quận Bình Tân, TP Hồ Chí Minh, Việt Nam'),
(135, 'SHCSANEX', 'Công Ty Sanex Marketing ( Natural 18 Polyol)', NULL),
(136, 'SHCSTEINERT', 'Công Ty TNHH STEINERT (Việt Nam)', '68 Nguyễn Huệ, P Bến Nghé, Q 1, TPHCM'),
(137, 'SHCTECHBON', 'Công Ty TNHH Techbond Việt Nam 84-650 3770717', 'KP 4, P An Phú, TX Thuận An, Bình Dương FAX; 84-650-3781780'),
(138, 'SHCTECOLONGAN', 'Công Ty TNHH MTV SX TM Thiết Bị Và Hóa Chất Te Co Long An', 'Lô I-11, Đường Số 4, Khu Công Nghiệp Hải Sơn, ấp Bình Tiền 2, Xã Đức Hòa Hạ, Huyện Đức Hoà, Long An, Việt Nam'),
(139, 'SHCTHUANTHIEN', 'Công Ty TNHH Đầu Tư Phát Triển XNK TM Thuận Thiên', '10/16 Thoại Ngọc Hầu, P Hòa Thạnh, Q Tân Phú, TP HCM'),
(140, 'SHCVIETQUANG', 'Công Ty Hóa Chất Việt Quang', 'Số 16/4Đ, E - Mỹ Huế, Trung Chánh, Hóc Môn, Thành phố Hồ Chí Minh.'),
(141, 'SHHDUCKHAI', 'Công Ty TNHH XNK Đức Khải', '39 Hậu Giang, P4, Q.Tân Bình, TP HCM'),
(142, 'SHHVY', 'Công Ty TNHH Quảng Cáo Vy', '103 Xô Viết Nghệ Tĩnh, P.1, Tp Sóc Trăng, T. Sóc Trăng'),
(143, 'SINCHIKHANH', 'Công Ty TNHH TM - In Chi Khanh', '151/12 Mai XUân Thưởng, P4, Q 6, TPHCM'),
(144, 'SINHOANGLIENPHAT', 'Công Ty TNHH SX Hoàng Liên Phát', '1/24 Nguyễn Văn Yến, P Tân Thới Hòa, Q Tân Phú, TPHCM'),
(145, 'SINHUONGTRANG', 'Công Ty Văn Hóa Hương Trang ( Lịch Tết)', '416 Nguyễn Thị Minh Khai, P5, Q3, TP HCM'),
(146, 'SINKIMDAILOAN', 'Công Ty TNHHMTV SX TM Kim Đài Loan', '547/3A KP. Tanh Bình, P An Thạnh, TX Thuận An, Bình Dương'),
(147, 'SINMEKONG', 'Công Ty TNHH TM SX Bao Bì Giấy Mekong', '151/10 Gò Xoài, P Bình Hưng Hòa, Q. Bình Tân, TP HCM'),
(148, 'SINNHATQUANG', 'Nhật Quang Label Co.,Ltd - 08 3716 6504 / Trâm', '315/7 To Ngoc Van Street, Thanh Xuan Ward, Dist.12, HCM City'),
(149, 'SINNHATTUYENTHIEN', 'Công Ty Nhất Tuyến Thiên', NULL),
(150, 'SINPAYEDGE', 'Công Ty Cổ Phần Pay Edge', '347/92 - 347/94 Phan Văn Hớn, P Tân Thới Nhất, Q12, TP HCM'),
(151, 'SINPHONGY', 'Công Ty Phong Ý (Bao Gối In , Bộ Number One Đỏ Mới)', NULL),
(152, 'SINPHUCLONG', 'Công Ty TNHH SX Và TM Phúc Long ( Lịch Tết)', '7/9R tổ 5 ấp 2, X XTT, H Hóc Môn. TPHCM / 5C đường Đông Hưng Thuận 42, P THT, Q 12, TPHCM'),
(153, 'SINPHUDUONG', 'Công Ty TNHH & TM SX Phú Đường', 'Số 17, đường Trường Chinh, P Kiến An, TP Hải Phòng'),
(154, 'SINTHIENQUANGVU', 'Công Ty TNHH In Ấn Thiên Quang Vũ', '286B Hòa Bình, P. Hiệp Tân, Q. Tân Phú'),
(155, 'SINTHIENTHANH', 'Công Ty TNHH MTV NPL May Mặc Thiên Thanh', '86/5 BIS - Trường Chinh, Tân Thới Nhất, Q12'),
(156, 'SINTRONGHUYHOANG', 'Công Ty Cp SX & Thiết Kế In Ấn Trọng Huy Hoàng', '263/10 Thành Công, P. Tân Thành, Q. Tân Phú, TP Hồ Chí Minh'),
(157, 'SINVANCATTUONG', 'Công Ty Cp Vạn Cát Tường', '66/99 Huỳnh Văn Nghệ, P.15, Q.Tân Bình, TP HCM'),
(158, 'SKH47', 'Cửa Hàng Vải 47 ( Vải Chăn Ga Áo Gối....)', '47 Tân Tiến, P8, Q Tân Bình, TPHCM 090 859 5452'),
(159, 'SKHANPHU', 'Công Ty TNHH Giải Pháp Công Nghệ An Phú\n(Giấy In Mã Vạch)', 'N3-N5 Điện Biên Phủ, P25,Q Bình Thạnh, TP HCM - Xuân Mr. 085 401 8485'),
(160, 'SKHANTOAN', 'Cơ sở sản xuất găng tay bảo hộ lao động an toàn', '29/12/9 đường số 8, khu phố 16, phường Bình Hưng Hoà A, quận Bình Tân, TPHCM'),
(161, 'SKHBACNAMTHINHHOA', 'Công ty TNHH MTV Bắc - Nam Thịnh Hòa', 'ấp Tân Hiệp, Xã Tân Bình, Huyện Phụng Hiệp, Tỉnh Hậu Giang, Việt Nam'),
(162, 'SKHBAOHIEM', 'Công ty cổ phần bảo hiểm ngân hàng nông nghiệp - Chi nhánh HCM', '38 Phan Đăng Lưu, Phường 05, Quận Phú Nhuận, Thành phố Hồ Chí Minh, Việt Nam'),
(163, 'SKHBRAND2', 'Công Ty Brand 2', NULL),
(164, 'SKHCATDANG', 'Công Ty TNHH XNK - TM Cát Đằng', '170/10 Lê Đức Thọ, Phường 06,Quận Gò Vấp,HCM'),
(165, 'SKHCENTRALBUSINESSDEVELOPMENT', 'Công ty TNHH Central Business Development', '90-92 Lê Thị Riêng, Phường Bến Thành, Quận 1, Thành phố Hồ Chí Minh, Việt Nam'),
(166, 'SKHCHANGSHENG', 'Công Ty TNHH Dao Cưa Chang Sheng Việt Nam _ Ms Trang 0345 875 112', 'Đường số 9, KCN Tam Phước, Biên Hòa , Đồng Nai Mail: vncsdj@gmail.com'),
(167, 'SKHCHANNGHIEP', 'Công Ty Đại Chấn Nghiệp - CS Tân Cường Phát', 'G8/13 TL 10, ấp 7, lê Minh Xuân, Bình Chánh'),
(168, 'SKHDAILOI', 'Công Ty Tnhh Thương Mại Dịch Vụ Và Xuất Nhập Khẩu Đại Lợi', '408 Trần Phú, Phường 07, Quận 5, Thành phố Hồ Chí Minh, Việt Nam'),
(169, 'SKHDAITHANHBINH', 'Công Ty TNHH BĐS Đại Thanh Bình', '911-913-915 Nguyễn Trãi, P.14, Q.5, TP.HCM'),
(170, 'SKHDANTU', 'Cửa Hàng Sắt Đan Tú', 'Nguyễn Cửu Phú'),
(171, 'SKHDJW', 'Công Ty TNHH DJW (VN)', '22 đường số 64, Phường 10, Quận 6, TPHCM'),
(172, 'SKHDUCHUY', 'Công Ty TNHH Phát Triển SX Đức Huy (Nón Bảo Hiểm)', 'A6/177 đường Trần Đại Nghĩa, ấp 1, xã Tân Nhựt, huyện Bình Chánh – TP. HCM'),
(173, 'SKHGIAHUNG', 'Công ty TNHH Điện Gia Hưng', '60/403E7 Phan Huy Ích, P12, Q Gò Vấp, TP HCM _ Mr Hòa 0935168822'),
(174, 'SKHGIAIMINH', 'Công Ty TNHH Giai Minh', '415/21 Trường Chinh, Phường 14, Quận Tân Bình, TP Hồ Chí Minh, Việt Nam'),
(175, 'SKHHAISON', 'Cơ Sở Drap - Mền Hải Sơn ( Mền Nỉ)', '1052/3 Lạc Long Quân , P8, Q Tân Bình, TPHCM'),
(176, 'SKHHAIVUONG', 'Công Ty TNHH Hải Vươn (Chi Nhánh SX Ván Ép Hoàn Cầu) (Anh Chánh- Ván Ép)', '2 Võ Hoành, Phú Thọ Hòa, Tân Phú (xưỡng)'),
(177, 'SKHHALONG', 'Công Ty TNHH Thương Mại Và DV Hà Long', '340B Hoàng Văn Thụ, P.4, Q. Tân Bình, TP. HCM'),
(178, 'SKHHONGPHAT', 'Công Ty TNHH Hơi Công Nghiệp Hồng Phát -22428999', 'Chi nhánh: 200-202 Đường số 55, KP9, P Tân Tạo, Bình Tân'),
(179, 'SKHHUNGPHU', 'Công Ty TNHH Xây Dựng Hưng Phú', '739-741 Âu Cơ, P. Tân Thành, Q. Tân Phu - 0915 255 502'),
(180, 'SKHKHANHLONG', 'Cửa Hàng Khánh Long', '76-78 Phùng Hưng, P13, Q5, TP HCM'),
(181, 'SKHKIMNGAN', 'Công Ty TNHH Kim Ngân 08 39163688', '1331/15/210 Lê Đức Thọ P14 Gò Vấp TPHCM'),
(182, 'SKHKIMTHAC', 'Công Ty TNHH Khoa Học Kĩ Thuật Kim Thạc Việt Nam (Dao Cắt Mousse)', '230 đường số 7A, KP2, P. Bình Trị Đông B, Q. Bình Tân'),
(183, 'SKHKIMVANTHINHPHAT', 'Công Ty TNHH SX-TM-DV Kim Vạn Thịnh Phát ( Dao Cắt Mousse)', 'Số 13/2, Đường TH007, Ấp An Hòa , Xã Tây Hòa, Huyện Trảng Bom , Đồng Nai'),
(184, 'SKHLACHUNG', 'Công Ty TNHH DV TM & SX Lạc Hưng', '340A Hoàng Văn Thụ, Phường 4, Quận Tân Bình, Thành Phố Hồ Chí Minh'),
(185, 'SKHLETHANH', 'Công Ty SX TM XNK Lê Thanh_Ms.Hương_0907273367', 'Số 3, Đường G5, Khu dân cư Vĩnh Lộc, P Bình Hưng Hòa B, Q Bình Tân, TPHCM'),
(186, 'SKHMAITHI', 'Công Ty CP Thiết Bị Mai Thị', '1153 Quốc Lộ 1 A, P Thới An, Q 12, TP HCM'),
(187, 'SKHMINHHIEU', 'Cửa hàng Minh Hiếu', 'Sạp 6A, TX Đại Quang Minh số 31-33 Châu Văn Liêm, P14, Q 5'),
(188, 'SKHNAMTINPHAT', 'Công Ty Tnhh Sản Xuất Thương Mại Dịch Vụ Nam Tín Phát', '116/70/7 TX13, Quận 12, Thành phố Hồ Chí Minh'),
(189, 'SKHNGUYENDUNG', 'CÔNG TY TNHH MỘT THÀNH VIÊN CƠ KHÍ XÂY DỰNG NGUYỄN DŨNG', '1A.48/1 ấp 1, Xã Phạm Văn Hai, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam'),
(190, 'SKHOBAC', 'Kho Bạc Nhà Nước', 'QUẬN 2 TPHCM'),
(191, 'SKHPHATTAI', 'Cửa Hàng Phát Tài', '364-366 Đất mới, P Bình Trị Đông, Q Bình Tân'),
(192, 'SKHQUANLI', 'Công Ty Quanli - Hanmei - NK Khung Lò Xo', NULL),
(193, 'SKHQUOCTIN', 'Công Ty TNHH DV & TM Quốc Tin', NULL),
(194, 'SKHRICHPEACE', 'Công Ty Rich Peace', NULL),
(195, 'SKHSAMCO', 'Công Ty TNHH Ô Tô Toyotsu Samco', 'Số 264, Đường Trần Hưng Đạo, Phường Nguyễn Cư Trinh, Quận 1, Thành phố Hồ Chí Minh, Việt Nam'),
(196, 'SKHSIEUTHIKYTHUATSO', 'Siêu Thị Kỹ Thuật Số', '118/10 Phan Huy Ích P15, Q Tân Bình 240/2 Cách Mạng Tháng 8, P10, Q3'),
(197, 'SKHSONGMA', 'Công ty TNHH TM & DV Phát Triển Song Mã', ''),
(198, 'SKHSUNKIST', 'Công Ty Sunkist ( Máy Cắt Mousse )', NULL),
(199, 'SKHTABICO', 'Công Ty TNHH SX May Thêu Tân Phú (TaBiCo)', '9 Nguyễn Quý Anh, P Tân Sơn Nhì, Q Tân Phú, TPHCM'),
(200, 'SKHTECHNET', 'Công ty cổ phần Technet', 'Số 3/3 Nguyễn Thái Sơn, Phường 3, Quận Gò Vấp, Thành phố Hồ Chí Minh, Việt Nam'),
(201, 'SKHTHANG', 'Tiệm Mài Kim Loại Thắng', '121 Triệu Quang Phục, P11, Q5, TPHCM (đối diện chùa Tam Sơn)'),
(202, 'SKHTHANHBINHGROUP', 'Công Ty Cổ Phần Thanh BÌnh Group', '112/42 Trần Thị Hè, Tổ 45, KP4, P Hiệp Thành, Q 12, TPHCM'),
(203, 'SKHTHANHGIA', 'Công Ty TNHH BĐS Thành Gia', 'E9 /199D THE LU'),
(204, 'SKHTHUANPHONGTHUY', 'Công Ty Cổ Phần Cơ Điện Thuận Phong Thủy', '901 KInh Dương Vương, P An Lạc, Q Bình Tân, TP HCM'),
(205, 'SKHTHUNGAN', 'Cở Sở Thu Ngân ( Chăn Ga Áo Gối....) Ms Dung 079 276 2923', '803 Ba Đình, P10, Q 8, TPHCM 0909 22 8900 / 0906 745 300'),
(206, 'SKHTRANTRUNGANH', 'Công Ty TNHH MTV TM Trần Trung Anh', '19 Trịnh Hoài đức, P.13, Q.5'),
(207, 'SKHTRUNGTHAI', 'Công ty TNHH MTV XNK Trung Thái', '406/22 Cộng Hòa, P 13, Q Bình Tân, TP.HCM'),
(208, 'SKHTRUNGTHINHPHAT', 'Công Ty TNHH TM DV Trung Thịnh Phát (Nhãn Dệt)', NULL),
(209, 'SKHTRUNGUYENNGUYEN', 'Công Ty TNHH Trung Tuyến Nguyễn', '258 Võ Văn Ngân, KP5, P Linh Chiểu, Q Thủ Đức, TPHCM'),
(210, 'SKHTRUONGTHU', 'Cửa Hàng Sắt Trường Thụ 08.62795088', '721 Tỉnh Lộ 10, P. Bình Trị Đông B, Bình Tân 0946.215977'),
(211, 'SKHTUANKHUONG', 'CÔNG TY TNHH DỊCH VỤ THƯƠNG MẠI VẬN TẢI HOÀNG TUẤN KHƯƠNG', '42/48 Đường Trần Đại Nghĩa, Phường Tân Tạo A, Quận Bình Tân, Thành phố Hồ Chí Minh, Việt Nam'),
(212, 'SKHTUONGTHAI', 'Thương Xá Đại Quang Minh Tường Thái', '4 Bis Tống Duy Tân - P14 - Q5_0934 188 767 ms Thu'),
(213, 'SKHUNGSHENZHENCHINA', 'Shenzhen Xinrongtong Import And Export Co.,Ltd. Shenzhen China (Khung)', 'Room 506 Number 1133 changan Building Shennan east road luohu district shenzhen china'),
(214, 'SKHUYPHAT', 'Công Ty TNHH Sản Xuất Uy Phát Mr. Uy 0965 215 279', '19/21 KP Bình Phước B, Bình Chuẩn, Thuận An, Bình Dương'),
(215, 'SKHVANPHUOC', 'Công Ty Cổ Phần Sản Xuất - Thương Mại Băng Keo Vạn Phước', '1/3 Tô Ký, ấp Đông, Xã Thới Tam Thôn, Huyện Hóc Môn, TP Hồ Chí Minh, Việt Nam'),
(216, 'SKHVIETHUONG', 'Công Ty TNHH TM - DV - SX Việt Hương (Giấy In Mã Vạch)', '187/7 Điện Biên Phủ, P Đakao, Q1, TP HCM'),
(217, 'SKHVIHAND', 'Công Ty TNHH Vihand', '150/14 Nguyễn Hữu Tiến, P Tây Thạnh, Q Tân Phú,HCM'),
(218, 'SKHWONDERLAND', 'Công Ty TNHH Sản Xuất Wonderland', 'C8/3T âp 3, Xã Vĩnh Lộc B, Huyện Bình Chánh, TP Hồ Chí Minh, Việt Nam'),
(219, 'SKMINHQUANG', 'Cữa Hàng Minh Quang (nẹp gỗ)', '400A Mã Lò, Bình Hưng Hòa A, Bình Tân'),
(220, 'SMAYDONGUANERS', 'Dongzuan Ers Machinery (May Cat)', 'DONGGUAN'),
(221, 'SMAYFOSHAN', 'Foshan Yuantian Mattress Machinery Co,.Ltd', 'Guangdong Province, China'),
(222, 'SMAYFOSHANYUANTIAN', 'Foshan Yuantian Mattress Machinery Co., Ltd ( Máy May Viền )', 'China'),
(223, 'SMAYHUAJIAN', 'Hua Jian (May Lo Xo)', NULL),
(224, 'SMAYNAMTHIENSON', 'Nam Thiên Sơn Co.,Ltd', '1/45 Nguyễn Văn Quá , F ĐHT , Q12, TPHCM'),
(225, 'SMAYQUOCHUNG', 'Công Ty TNHH Quốc Hùng', '86/56 Phổ Quang, Phường 2, Quận Tân Bình, Thành phố Hồ Chí Minh, Việt Nam'),
(226, 'SMAYSLM', 'Công Ty Cổ Phần Store Làm Mộc', '234 Bình Thới, P.10, Q.11, TpHCM'),
(227, 'SMAYSONGTOAN', 'Công Ty TNHH Thiết Bị Công Nghiệp Song Toàn', '652/27/2 Quốc Lộ 13, KP4, P. Hiệp Bình Phước, Q. Thủ Đức'),
(228, 'SMAYTICHPEACE', 'Công Ty Rich Peace ( Máy thêu)', 'HONG KONG'),
(229, 'SMAYZHENBU', 'Shuzhou Zhenbu Machinery (Máy Chần 1 Kim )', 'SHUZHOU (TO CHAU )'),
(230, 'SMISA', 'Công Ty Phần Mềm Misa', NULL),
(231, 'SMOAA', 'Công Ty Aa (Mousse Vụn)', NULL),
(232, 'SMOANHDUNG', 'Công Ty Nhựa Anh Dũng', '03 Hồ Học Lãm, P.16, Q.8, TPHCM'),
(233, 'SMOHUNGSUNG', 'Công Ty TNHH Sản Xuất Thương Mại Dịch Vụ Kinh Doanh Hùng Sung', 'Ấp Bàu Sen, xã Đức Lập Hạ, huyện Đức Hòa, Tỉnh Long An'),
(234, 'SMONAMLOIHUNG', 'Công Ty Nam Lợi Hưng', 'Ấp Bình Tiền 2, xã Đức Hòa Hạ, Huyện Đức Hòa, Tỉnh Long An'),
(235, 'SMOPHUONGHOANG', 'Không dùng', 'Lô B7-B8, đường D9, KCN Rcahj Bắp, Bến Cát, Bình Dương'),
(236, 'SMOPHUQUY', 'Công Ty Phú Quý', ''),
(237, 'SMOPHUTHINHTIEN', 'Công Ty TNHH TM Phú Thịnh Tiến', 'C3/29 Đ. Sư Đoàn 9, Ấp 3, Vĩnh Lộc A, H Bình Chánh, TPHCM'),
(238, 'SMOSAIKAN', 'Saikan (Mousse Vụn) (Không Nhập Vô Kho)', 'Ms Nhung_ vn.factory@skfoam.com'),
(239, 'SMOTOANHUNG', 'Công Ty TNHH Toàn Hưng Việt Nam', 'Đức Hòa, Long An'),
(240, 'SMOTYMOUSSE', 'CTy TNHH SX TM Huê Thuận Tài (Tỷ Mousse)', '858/62/2 QL1A, P. Bình Trị Đông A, Q. Bình Tân, TP HCM'),
(241, 'SMOVINHDUC', 'Công Ty TNHH Vĩnh Đức', 'Ấp mới 2, Mỹ Hạnh Nam, Đức Hòa, Long An'),
(242, 'SMUALE', 'Mua Lẻ', NULL),
(243, 'SMUALENHAPKHAU', 'Mua Lẻ Nhập Khẩu', NULL),
(244, 'SNHAGIBANK', 'Ngân Hàng Agribank Cn Tân Tạo', NULL),
(245, 'SNHAGRIBANKCTY', 'Ngân Hàng Agribank- Công Ty - Cn Kcn Tân Tạo', NULL),
(246, 'SNHEXIMBANKCTY', 'Ngân Hàng Eximbank - Công Ty - Cn Kcn Tân Tạo', '141 Nguyễn Chí Thanh, Phường 9, Quận 5, TP HCM'),
(247, 'SNHSACOMBANK', 'Ngân Hàng Sacombank -B Tân', NULL),
(248, 'SNHTECHCOMBANK', 'Ngan Hang Techcom Cn Phu Tho', 'LE DAI HANH Q11'),
(249, 'SNHVIETCOMBANK', 'Ngân Hàng Viet Com Bank', NULL),
(250, 'SNIDIENPHONG', 'Công Ty TNHH Sản Xuất Vải Không Dệt Điền Phong', '1570 Tỉnh lộ 8, Ấp 4, Xã Hoà Phú, Huyện Củ Chi, Thành phố Hồ Chí Minh'),
(251, 'SNITANHUNGTHINH', 'Công Ty Tân Hưng Thịnh - An Trí', 'KCN Tân Thới Hiệp, P Hiệp Thành, Q12, TPHCM'),
(252, 'SNITHINHGIAHUY', 'Thinh Gia Huy Co.,Ltd', '39/16 Nguyen Cuu dam St., Tan Son Nhi Ward, Tan Phu Dist., HoChiMinh City'),
(253, 'SNIUYVU', 'Công Ty TNHH Vải Không Dệt Xăm Kim Uy Vũ', '1484 tỉnh lộ 8, Ấp 12, xã Tân Thạnh Đông, Huyện Củ Chi, Thành phố Hồ Chí Minh'),
(254, 'SPEGIATHANH', 'Công Ty TNHH MTV Đầu Tư Sản Xuất Gia Thành', 'KCN Hải Sơn, ấp Bình Tiến 2, Đức Hòa Hạ, Đức Hòa, Long An'),
(255, 'SPL', 'Bán phế liệu', ''),
(256, 'SPVCPHULAM', 'Chi Nhánh Công Ty Cổ Phần Công Nghiệp Nhựa Phú Lâm', 'Lô 109, KCN Amata, Phường Long Bình, Thành phố Biên Hoà, Đồng Nai, Việt Nam'),
(257, 'SPVCSHENZHEN', 'Shenzhen Speedy Imp & Exp Co., Ltd (Pvc)', NULL),
(258, 'SPVCSUNLUNG', 'Sunlung Industrial Limited', 'TAN TOWN, BAIYU DIST,GUANGZHOU'),
(259, 'SR06BT', 'Showroom Bình Tân', '06 đường số 1 bình Tân'),
(260, 'SSFHOANGHIEP', 'Cơ Sở Salon - Nệm Giường Hoàng Hiệp', '657/7 Hương Lộ 3, P. BHH, Q. Bình Tân 0946.053.343 __0913 680 745'),
(261, 'SSFNAMTINH', 'Công Ty TNHH Sản Xuất Thương Mại Nam Tinh Sg', '1028/11-1028/13 Tân Kỳ Tân Quý , P Bình Hưng Hòa , Q Bình Tân, TPHCM'),
(262, 'SSFTAILOC', 'Công Ty TNHH Thương Mại - Dịch Vụ - Sản Xuất Và Trang Trí Nội - Ngoại Thất Tài Lộc', 'VP: 16 Trần Bá Giao, p5, Gò Vấp / / Xưởng: 195 Trần Bá Giao, p5, Gò Vấp'),
(263, 'SSHTT', 'Văn phòng đại diện Cục SHTT tại TP.HCM', NULL),
(264, 'STHEPBEKAERT', 'Nantong Yongsheng Wire Co.,Ltd / Bekaert Southern Wire (Nhập Thép)', NULL),
(265, 'STHEPDALIN', 'CÔNG TY TNHH THƯƠNG MẠI DA LIN', 'Số 43, Lô E, Đường Đồng Khởi, Khu phố 2, Phường Hoà Phú, Thành phố Thủ Dầu Một, Tỉnh Bình Dương, Việt Nam'),
(266, 'STHEPTHAIPHU', 'Công Ty An Thái Phú ( Thép Ống Khoan Lo)', '30/14 duong 743 bình phước b ,bình chuẩn ,bd'),
(267, 'STMAY002', 'Công Ty TNHH SX TM Toàn Phát Gia', '16 Đường TL 15, KP 3C, P. thạnh Lộc, Quận 12, TPHCM'),
(268, 'STNHHGIANGUYEN', 'Công ty TNHH Vật Liệu Mới Gia Nguyễn', '56/5H, Tổ 3, ấp 5, Xã Xuân Thới Thượng, Huyện Hóc Môn, Thành phố Hồ Chí Minh, Việt Nam'),
(269, 'STNHHHUANLUYENMIENNAM', 'Công Ty TNHH Huấn Luyện An Toàn Miền Nam', 'Số 65 Đường B2, Phường Tây Thạnh, Quận Tân phú, Thành phố Hồ Chí Minh, Việt Nam'),
(270, 'STNHHKHOINGUYEN', 'Công ty TNHH Dịch Vụ Tin Học Khôi Nguyễn', '331/70/7 Phan Huy ích, Phường 14, Quận Gò Vấp, Thành phố Hồ Chí Minh, Việt Nam'),
(271, 'STNHHMIS', 'Công Ty TNHH Thương Mại - Dịch Vụ Công Nghệ Mis', '176/19/6B Quốc lộ 13 cũ, Phường Hiệp Bình Phước, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam'),
(272, 'STNHHMYKIENANH', 'Công ty TNHH Cool Mỹ Kiến Anh', '640/1 Hồng Bàng, Phường 16, Quận 11, Thành phố Hồ Chí Minh, Việt Nam'),
(273, 'STNHHNHATTRAMANH', 'Công ty TNHH TMDV Nhật Trâm Anh', 'C2/8 Bùi Thanh Khiết, Khu phố 3, Thị Trấn Tân Túc, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam'),
(274, 'STNHHPAVIETNAM', 'CÔNG TY TNHH P.A VIỆT NAM', '833 Lê Hồng Phong, Phường 12, Quận 10, Thành phố Hồ Chí Minh, Việt Nam'),
(275, 'SVAIANBINHPHAT', 'Công Ty TNHH Đầu Tư SX TM An Bình Phát (Vải Không Dệt)', NULL),
(276, 'SVAIANHDUONG', 'Công Ty TNHH Dệt Ánh Dương Vn ( Vải Lưới Túi Giặc)', '83-85 Phạm Phú Thứ, Phường 11, Quận Tân Bình, TP Hồ Chí Minh'),
(277, 'SVAIANHHONG', 'Dntn Ánh Hồng_Lại Thị Ánh Hồng', NULL),
(278, 'SVAIANVIET', 'Công Ty Cổ Phần Sợi An Việt', 'Lô số 2-4, đường số 7, khu công nghiệp Tân Đức, Xã Đức Hòa Hạ, Huyện Đức Hoà, Long An, Việt Nam'),
(279, 'SVAIBESTWISHES', 'Vai NK _ Guangzhou Best Wishes Import & Export Co,. LTD', 'ROOM 706, NO.29, ZIWEI ROAD, HUACHENG STREET, HUADU DISTRICT, GUANGZHOU, CHINA'),
(280, 'SVAIBLUEWEL', 'Công Ty Vải Blue Wel', NULL),
(281, 'SVAIBUJIANG', 'Bujang NK Vải Cotton 2M3', NULL),
(282, 'SVAICAIYUN', 'Caiyun - NK Drap Lụa', NULL),
(283, 'SVAICAOTUONG', 'Cao Tường - NK Vải Xoa 2M1 (Hồng)', NULL),
(284, 'SVAICHITHUY', 'Tiệm Vải Chí Thủy', '178 Lý Thường Kiệt, F8, Q. Tân Bình'),
(285, 'SVAIDAINAMTAN', 'Đại Nam Tân', '399/35 Nguyễn Đình Chiểu,Q3'),
(286, 'SVAIDONGPHUONGMINHCHAU', 'Công Ty Vải Đông Phương Minh Châu', NULL),
(287, 'SVAIDUCGIANG', 'Công Ty TNHH MTV TM XNK Đức Giảng', '94 đường 27 tổ 7, ấp Tân Lập, xã Tân Thông Hội, huyện Củ Chi, TP Hồ Chí Minh'),
(288, 'SVAIDUCMY', 'Cửa Hàng Đức My', '29 Tân Tiến, Quận Tân Bình, TPHCM_ Mr Đức 0902787099'),
(289, 'SVAIDUNGTHANG', 'Cửa Hàng Vải Dung Thắng', '1 Trần Triệu Luật, P.7 , Q.TB'),
(290, 'SVAIGIAHAN', 'Cửa Hàng Vải Sợi Gia Hân', NULL),
(291, 'SVAIGZGENTLE', 'Vai NK _ Guangzhou Gentle Foreign Trade Co.,Ltd', 'Guang Zhou'),
(292, 'SVAIHANGZHOU', 'Zhejiang Zhongda Yuantong Industrial Corporation', 'HANGZHOU, ZHEJIANG'),
(293, 'SVAIHIEPHUNG', 'Cửa Hàng Hiệp Hưng Simili', '102 Cư Xá Lý Thường Kiệt, P7, Q10, TPHCM'),
(294, 'SVAIHONGTHUY', 'Cửa Hàng Hồng Thúy', '58/8A Thạch Lam, P Phú Thạnh, Q Tân Phú, TP HCM'),
(295, 'SVAIHUYTHINH', 'Công Ty TNHH Dệt Huy Thịnh ( Vải Lưới Túi Giặc)', 'B47-48 đường số 11, KCN Lê Minh Xuân, Bình Chánh, TP Hồ Chí Minh'),
(296, 'SVAIJIAN', 'Jian An Co.,Ltd Of Dongquan City', NULL),
(297, 'SVAIKIMSANDHT', 'Công ty TNHH Tư Vấn Thương Mại Dịch Vụ KIM SAND HT', 'Số c24, The Oais 2, Đường D11, KDC Việt Sing, P An Phú, TP Thuận An, Bình Dương'),
(298, 'SVAIKYQUANG', 'Cửa Hàng Vải Kỳ Quang', '579 Hòa Hảo, P.7, Q11'),
(299, 'SVAILANHUONG', 'Cửa Hàng Lan Hương', '33 Lý Thường Kiệt, P7, Q11, TPHCM'),
(300, 'SVAILAVA', 'LavaTextiles BVBA Indonesia PT', 'Indonesia'),
(301, 'SVAILEMY', 'Cửa Hàng Lệ Mỹ', '98 C/X Lý Thường Kiệt, P7, Q10, TPHCM'),
(302, 'SVAILONGTHAI', 'Công Ty Vải Long Thái', NULL),
(303, 'SVAILUOICHANGSHU', 'Changshu Zhengfangyi Manufacture Co.,Ltd', 'No 68, Hualian road, Tonggang Industrial zone, Meili Town, Changshu city, Jiangsu Provice China'),
(304, 'SVAIMYLE', 'Mỹ Lệ - Chuyên Mua Bán Các Loại Vải', 'số 4 Long Hưng, P7, Q. Tân Bình - 0903.847.262 (lệ) - 3971.5484'),
(305, 'SVAINAMSON', 'Cửa Hàng Nam Sơn ( Simili + Nhung)', '500U Hòa Hảo, P7, Q11, TPHCM'),
(306, 'SVAINANTONG', 'Nantong - NK Vải 3D', NULL),
(307, 'SVAIPHONGHIEPTHANH', 'Công Ty Phó Nghiệp Thành_ Vinh Dũng', 'số 6-8 đường 320 Bông Sao, P5, quận 8 , TPHCM 096.888.2287 Quý'),
(308, 'SVAIPHUONGHOA', 'Công Ty TNHH MTV Vải Sợi Phương Hòa', '86/98 Ông ích Khiêm, P14, Q11, TP HCM ̣_ Kho:81/3 Bùi Tư Toàn, P An Lạc, Q Bình Tân'),
(309, 'SVAIPOLYSHW', 'Poly Shwy - NK Vải Trắng Gối', NULL),
(310, 'SVAIRUBI', 'Công Ty Vải Rubi', NULL),
(311, 'SVAIRUDONGXIANFENG', 'Rudong Xianfeng Textile Co.Ltd ( Tân Đông Phương) Nantong Kefa International Trade Co..Ltd (NKut)', 'NO.88 Jinsan Road, Chuanjiang Town, Nantong, Jiangsu, China'),
(312, 'SVAISAOHAIVUONG', 'Công Ty TNHH TM DV Sao Hải Vương (Mr Kiệm 09 79 900 950)', 'Số 84B Đường Ao Đôi, Khu phố 10, Phường Bình Trị Đông A, Quận Bình Tân, TP Hồ Chí Minh'),
(313, 'SVAISHENZEN', 'NK-Shenzhen Miti Import & Export Trading Co.Ltd', 'RM1707, Jingguang centernshennanroad'),
(314, 'SVAISITOAN', 'Cửa Hàng Si Toàn', '95 Lý Thường Kiệt, P7, Q10, TPHCM'),
(315, 'SVAISONGHAIYEN', 'Chi Nhánh - Công Ty TNHH SX TM DV Song Hải Yến', NULL),
(316, 'SVAITANPHUMINH', 'Công Ty Cổ Phần Đa Quốc Gia Tân Phú Minh', '7-9-11 Đường 24, Phường Bình Trị Đông B, Quận Bình Tân, TP Hồ Chí Minh, Việt Nam'),
(317, 'SVAITANTHANHDAT', 'Công Ty TNHH SX_KD_TM Tân Thành Đạt TN', 'Tờ Bản đồ số 2, KP Hòa Lợi, P An Hòa, TX Trảng Bàng, Tỉnh Tây Ninh, Việt Nam'),
(318, 'SVAITHUANPHAT', 'Cửa Hàng Thuận Phát', 'số 1 Trần Quý, Phường 4, Quận 11, TPHCM'),
(319, 'SVAITHUYEN', 'Cửa hàng Thu Yến', '32/5 và 32/45 Phan Sào Nam, P 11, Q Tân Bình, TP HCM'),
(320, 'SVAITRANGLE', 'Cửa Hàng Vải Trang Lê', '121 Thành Mỹ, Phường 8, Quận Tân Bình, TPHCM'),
(321, 'SVAIVINHLAN', 'Công Ty TNHH Thương Mại Vinh Lan', '19 Lê Minh Xuân , p7, Q Bình Tân, TPHCM'),
(322, 'SVIENKACHI', 'Kachi - NK Viền Nệm - Dây Gân', NULL),
(323, 'SVIENKIMBINHVAN', 'Công Ty TNHH Dệt Kim Bình Vân', '91đường số 4, KP 4, P Tam Phú, Q Thủ Đức, TP HCM'),
(324, 'SVIENVIKAY', 'Công Ty TNHH Thương Mại Sản Xuất Vikay', '60/5F ấp Dân Thắng 1, Xã Tân Thới Nhì, Huyện Hóc Môn, TP Hồ Chí Minh, Việt Nam'),
(325, 'SVTLEHUY', 'Công Ty TNHH MTV TM-DV Tin Học Lê Huy', '48 Chấn Hưng - Phường 6 - Quận Tân Bình - TP. Hồ Chí Minh.'),
(326, 'SVTPHATDAT', 'Cửa hàng Phát Đạt Computer', '140/1 Lý Thường Kiệt, F.7, Q.10, TP.HCM'),
(327, 'SVTSIEUSIEUNHO', 'Công Ty TNHH Siêu Siêu Nhỏ', '750 Sư Vạn Hạnh, P12, Q 10, TP HCM'),
(328, 'SYUANXINGYUN', 'Huaxingyun Hongkong Limited', 'UNIT 2508A,25F BANK OF AMERICA TOWER 12 HARCOURT RD HONGKONG'),
(335, '', 'Đức giàu', 'TP.HCM'),
(336, 'DUCGIAU', 'đức giàu', 'Long Xuyên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 2 COMMENT '1 = Admin, 2=employee',
  `username` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `auto_generated` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `type`, `username`, `password`, `auto_generated`) VALUES
(1, 'Administrator', 1, 'admin', '0192023a7bbd73250516f069df18b500', ''),
(2, 'Claire Blake', 2, 'CBlake_39303658', 'a06d46beed6a0968520950e25a281e34', ''),
(3, 'Kho1', 2, 'Kho1', '202cb962ac59075b964b07152d234b70', ''),
(4, 'Ben Martin', 2, 'BMar', '202cb962ac59075b964b07152d234b70', ''),
(5, 'John Smith', 2, 'giau1', '202cb962ac59075b964b07152d234b70', ''),
(6, 'Mike Williams', 2, 'MWilliams_69930211', '563a60169e3bf2ca437dd384edcbdd03', ''),
(7, 'Kho2', 2, 'kho2', '202cb962ac59075b964b07152d234b70', ''),
(9, 'Đinh Giàu', 2, 'Giau', '202cb962ac59075b964b07152d234b70', ''),
(10, 'Nguyễn Chúc', 2, 'vanchuc', '202cb962ac59075b964b07152d234b70', ''),
(11, 'Cao Van', 2, 'vancao', '202cb962ac59075b964b07152d234b70', ''),
(12, 'Dương Hân', 2, 'lachan', '202cb962ac59075b964b07152d234b70', ''),
(13, 'Ly  Tu', 2, 'camtu', '202cb962ac59075b964b07152d234b70', ''),
(14, 'Ly Thoa', 2, 'kimthoa', '202cb962ac59075b964b07152d234b70\r\n', ''),
(15, 'Ly Yen', 2, 'LYen_55206317', 'c32de2cce838a925e082fa7b40099676', ''),
(16, 'Ly Hoa', 2, 'LHoa_54111043', '202cb962ac59075b964b07152d234b70', ''),
(17, 'Tiet Thong', 2, 'TThong_04112302', '17a07301218588bb335aa1856c271fc0', ''),
(18, 'Vu Thuy', 2, 'VThuy_47608211', '5c202583b86d616cf64187499bde48c6', ''),
(19, 'Ta  Dung', 2, 'ngocdung', '202cb962ac59075b964b07152d234b70', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `de_xuat`
--
ALTER TABLE `de_xuat`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `employee_details`
--
ALTER TABLE `employee_details`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `leave_credits`
--
ALTER TABLE `leave_credits`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `leave_list`
--
ALTER TABLE `leave_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `leave_type`
--
ALTER TABLE `leave_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `note_credits`
--
ALTER TABLE `note_credits`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `note_list`
--
ALTER TABLE `note_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `note_type`
--
ALTER TABLE `note_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `offer_credits`
--
ALTER TABLE `offer_credits`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `offer_list`
--
ALTER TABLE `offer_list`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `offer_type`
--
ALTER TABLE `offer_type`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `position`
--
ALTER TABLE `position`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1311;

--
-- AUTO_INCREMENT cho bảng `department`
--
ALTER TABLE `department`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `de_xuat`
--
ALTER TABLE `de_xuat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `employee_details`
--
ALTER TABLE `employee_details`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `leave_credits`
--
ALTER TABLE `leave_credits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `leave_list`
--
ALTER TABLE `leave_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `leave_type`
--
ALTER TABLE `leave_type`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `note_credits`
--
ALTER TABLE `note_credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `note_list`
--
ALTER TABLE `note_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `note_type`
--
ALTER TABLE `note_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `offer_credits`
--
ALTER TABLE `offer_credits`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `offer_list`
--
ALTER TABLE `offer_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `offer_type`
--
ALTER TABLE `offer_type`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `position`
--
ALTER TABLE `position`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=337;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
