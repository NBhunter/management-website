-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 05, 2022 lúc 02:59 AM
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
-- Cơ sở dữ liệu: `leave_dv8`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `makh` varchar(14) DEFAULT NULL,
  `tenkh` varchar(62) DEFAULT NULL,
  `diachi` varchar(101) DEFAULT NULL,
  `qlkhuvuc` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`makh`, `tenkh`, `diachi`, `qlkhuvuc`) VALUES
('ANHDUNG', 'Anh Dũng chào mẫu', NULL, 'KD04'),
('ANHHOANG', 'Anh Hoàng chào mẫu', NULL, 'KD04'),
('ANHKHOA', 'Anh Khoa chào mẫu', NULL, 'KD04'),
('ANHLUAN', 'Anh Luân chào mẫu', NULL, 'KD04'),
('ANHPHU', 'Anh Phú chào mẫu', NULL, 'KD04'),
('ANHTHO', 'Anh Thọ chào mẫu', NULL, 'KD04'),
('ANHTRUNG', 'Anh Trung chào mẫu', NULL, 'KD04'),
('ANHTUNG', 'Anh Tùng chào mẫu', NULL, 'KD04'),
('ANHVIET', 'Anh Việt chào mẫu', NULL, 'KD04'),
('ANHVUONG', 'Anh Vương chào mẫu', NULL, 'KD04'),
('C105LVL', 'Chị Phương - Cửa hàng Anh Phương', '105 Lê Văn Lương, P Tân Kiểng, Q7. 8', 'KD06'),
('C158NGT', 'Công Ty Tường Thái', '158 Ngô Gia Tự, Q.10, tp.hcm', 'KD04'),
('C15NGT', 'Cửa Hàng 15 Ngô Gia Tự', '15 Ngô Gia Tự, P2, Q10, Tphcm', 'KD04'),
('C167THD', 'Cửa Hàng Chế Trân', '167 Trần Hưng Đạo,Sóc Trăng', 'KD09'),
('C177PCD', 'Chị Hương - Cửa hàng Kymdan PCD', '177 Phó Cơ Điều, Quận 11. 10', 'KD02'),
('C2LTV', 'Hai Liêm Trà Vinh', 'Hai Liêm Trà Vinh', 'KD04'),
('C49HBT', 'Cửa Hàng 49H Bình Thạnh', '49 Phan Đăng Lưu , F13, Bình Thạnh. 8', 'KD06'),
('C9NGT', 'Cửa Hàng: 09 Ngô Gia Tự', NULL, 'KD08'),
('CACPH', 'Anh cẩn - Cửa Hàng Ngọc Lợi', '69 Lý Thường Kiệt, Ngã Bảy, Phụng Hiệp, hậu Giang', 'KD07'),
('CACPQ', 'Anh Cường- Sun Địa Trung Hải', 'Shophouse Ven26 , Sun Địa Trung Hải, An Thới ,Phú Quốc, Kiên Giang.', 'KD10'),
('CADHT', 'Chị Vân - Nội Thất Anh Duy - Hà Tiên', '73_75 Trần Hầu. P. Bình San. Tx hà tiên. 8', 'KD01'),
('CADPT', 'Cửa hàng Màn Cửa Anh Duy- Phan Thiết', '701 Trần Hưng Đạo - Tp. Phan Thiết. 8', 'KD06'),
('CADTH', 'Cửa Hàng Nệm Êm Ái', 'Hòn Đất, Kiên Giang', 'KD04'),
('CAKDN', 'Cửa hàng Nội thất Anh Khoa', 'Số 150. Đường 762, Tổ 8, Ấp Tân Thành, Xã Thanh Bình, H.Trảng Bom ,T. Đồng Nai', 'KD07'),
('CALGV', 'Anh Lộc Gò Vấp ( 0967 893 368)', '92 Quang Trung, F10, Gò 8', 'KD06'),
('CAMBT', 'Nhà Thuốc ánh Mai', '203N Gò Xoài,P.Bình Hưng Hòa A,Bình Tân,Tphcm', 'KD04'),
('CAMCM', 'Anh Miền Cà Mau : 0942 879911', '30/4 K.1 Thị Trấn Cái Nước ,Cà Mau . 6', 'KD08'),
('CAMQN', 'Cửa Hàng ái My- Quy Nhơn ( Không ghi Giá)', '38-40 Trần Quý Cáp- TP Quy Nhơn, T. Bình Định. 10', 'KD06'),
('CANHTQ12', 'Cửa Hàng Bảo Ngọc', '139 Dương Thị Mời ,Q12 :096.910.5831', 'KD06'),
('CAQBD', 'Anh Qúy - CH Vivabon Nguyễn', '27 Nguyễn văn Tiết, KP Bình Hòa, p.Lái Thiêu, Thuận An, BD. 8', 'KD07'),
('CAQTC', 'Anh Quý Trường Chinh (Hoàng Gia)', '419A Ngô Gia Tự, Phường 3, Quận 10, HCM 10', 'KD02'),
('CASVL', 'Anh Sơn - Vĩnh Lộc', 'Giao đường 3 Khu Dân Cư Vĩnh Lộc. 8', 'KD02'),
('CAT2LT', 'Cửa hàng Anh Tài 02 .', 'Đường Lê Duẩn, Khu 1, Ấp 3, An Phước Long Thành. 8', 'KD07'),
('CATBHDN', 'Cửa Hàng Anh Thư', '48/2-KP1,P.Tân Hòa,Biên Hòa ,Đồng nai', 'KD06'),
('CATBMT', 'Cửa Hàng An Thy- Buôn Mê Thuột', '90 Nguyễn văn Cừ, TP Buôn Mê Thuột', 'KD09'),
('CATCM', 'Chị Như - DNTN Anh Thư- Cà Mau', '42 Phan Ngọc Hiển, P.4, Cà Mau', 'KD01'),
('CATDH', 'Anh Thắng- Đức Hòa', 'đường Gò Hưu, ấp Mới Hai, xã Mỹ Hạnh Nam huyện Đức Hòa, LA. 8', 'KD02'),
('CATDL', 'Cửa Hàng Anh Thư- ĐakLak', '285 Lê Duẫn, F EaTam, TP BMT', 'KD09'),
('CATGV', 'Anh Thành - Gò Vấp (Đại Lý Kymdan)', 'Số 3 Phạm Ngũ Lão,Gò Vấp', 'KD06'),
('CATKG', 'Anh Tài Kiên Giang', '58 Trần Phú, Kiên Giang', 'KD01'),
('CATLD', 'Công Ty TNHH DV SX Anh Thắng. Lâm Đồng', '223 đường 2/4 TT Thạnh Mỹ, Đơn Dương. Lâm Đồng. 8', 'KD09'),
('CATLT', 'Chị Trinh - Cửa hàng Anh Tài- Long Thành', 'ấp Thành Gòn, Lộc An, Bình Sơn, Long Thành, Đồng Nai. 8', 'KD07'),
('CATNT', 'Anh Tuấn : Công ty VIOLET ,Nha Trang', 'Xe : 79C-00608 - Tài xế: Anh Hoàng : 0914.1423.20', 'KD08'),
('CATPL', 'Anh Thuận - Cửa Hàng Phú Lâm', '66/2 Quốc Lộ 22, Tân Thới Nhì, Hóc Môn', 'KD09'),
('CATQ12', 'Anh Tuấn - Đại lý Vạn Thành', '164 Lê văn Khương,Q12,Tphcm', 'KD07'),
('CATQ2', 'Cửa Hàng Anh Thư Q.2', '324 Nguyễn Duy Trinh, P. Bình Trưng Tây, Quận 02, 8', 'KD07'),
('CATQ7', 'Anh Tùng', '176 Lê Văn Bền', 'KD07'),
('CATQ9', 'Chị Ba - Cửa hàng Anh Thư Q9 (Gia Khiêm)', '820 Nguyễn Duy Trinh, Bình Trưng Tây, Quận 9,Tphcm', 'KD06'),
('CAVBT', 'DNTN Nam việt Cát Tường- (Không Ghi Giá )', '27A1 Bình Khởi ,p6, Bến tre. 8', 'KD02'),
('CBDDT', 'Cửa Hàng Bích Đào - Đồng Tháp', 'Số 539 Điện Biên Phủ, TP.Cao Lãnh, Tỉnh Đồng Tháp', 'KD02'),
('CBDPY', 'Cửa Hàng Bửu Dung - Phú Yên', '231 Trần Hưng Đạo . TP. Tuy Hòa, Phú Yên. Liên hệ anh Dũng (0965324345) nhận hàng (lấy màu tối)', 'KD06'),
('CBGBT', 'Cửa Hàng Bảy Giàu - Bến Tre', '152/01 Ấp Quí Đức A, xã Quới Điền, huyện Thạnh Phú, xã Bến Tre', 'KD02'),
('CBHVT', 'Cửa Hàng Bảo Hiền - Vũng Tàu', '285 Lê Hồng Phong, TT Ngãi Giao, Châu Đức, Bà Rịa. 8', 'KD07'),
('CBLLA', 'Chị Thủy - Cửa Hàng Bảo Lâm', '349 Nguyễn Huỳnh Đức,P.khánh Hậu,Tân An,Long An. 8', 'KD01'),
('CBMQ12', 'Chị Thuý- Cửa Hàng Ban Mai- Q12', '277 Nguyễn Văn Quá, F. Đông Hưng Thuận, Q12.', 'KD03'),
('CBN2', 'Nguyễn Thị Thanh Trinh (Ba Nhỏ 2) 0939113557', '315 Khóm 1, Thị Trấn Lai Vung, Huyện Lai Vung, Tỉnh Đồng Tháp', 'KD03'),
('CBNI', 'KHÁCH HÀNG BNI', NULL, 'KD04'),
('CBNNDN', 'Cửa Hàng Bình Ngọc Nhi - Đồng Nai', 'Ấp Cơ Dầu, xã Xuân Đông, Huyện Cẩm Mỹ, Đồng Nai. 10', 'KD07'),
('CBNQ1', 'Cửa hàng Bảo Ngọc Q1', '149 Nguyễn Thị Minh Khai, F. Phạm Ngũ Lão, Q1. 8', 'KD06'),
('CBNQ3', 'Anh Khoa - Cửa hàng Bảo Ngọc', '149 Nguyễn Thị Minh Khai, Q3,Tphcm', 'KD08'),
('CBNVL', 'Cửa Hàng Bảo Ngọc VL', 'Số 10, Đường 3/4, Chợ Vĩnh Long. 8', 'KD08'),
('CBNVT', 'Anh Bảo - Cửa Hàng Bảo Ngọc VT', '210 Lê Lợi, Phường 4, TP.Vũng Tàu', 'KD07'),
('CBTLA', 'Cửa Hàng Ba Tuyển Long An', '84 đường 3/2, KP Gò Tuyền A, TT Tân Hưng, H Tân Hưng, Long An', 'KD02'),
('CBTPL', 'Cửa Hàng Bích Trâm- Pleiku 0394 005 049', '35 Cách mạng tháng 8, pleiku, Gia . 10', 'KD09'),
('CBV2VL', 'Anh Phong- Cửa Hàng Kymdan Vĩnh Long', 'Khóm 6 thị trấn Long Hồ, Vĩnh Long', 'KD08'),
('CBVVL', 'Chị Yến - Cửa Hàng Kymdan Vĩnh Long', 'Khóm 1, Thị Trấn Long Hồ, Vĩnh Long', 'KD01'),
('CC9CPC', 'Cô Chín - Campuchia', 'Campuchia', 'KD04'),
('CCADA', 'anh Toàn - Công ty TNHH Cách Âm Đông Á', '540 Dương Thị Mười , F Hiệp Thành , Q.12, TP.HCM ( bao 50 tấm / 1 kiện)', 'KD03'),
('CCANEBH', 'Cty Chăn Ấm Nệm Êm - biên Hòa', 'Số 1099 Phạm văn Thuận ,TP.Biên Hòa', 'KD07'),
('CCBAC', 'Chị Bích- Cửa Hàng Đức Phát', '499-451 Hậu Giang,q6,TP.HCM', 'KD06'),
('CCBD', 'Cửa Hàng Chánh - Bình Dương', '18/2 KP3, Dầu Tiếng, Bình Dương. 8', 'KD07'),
('CCBHG', 'Chị Bích Hậu Giang, CH Hoàn Mỹ', '445,447 Hậu Giang F11, Quận 6. 10', 'KD02'),
('CCBLA', 'Chị Bích- Long An', 'Khu Phố Bàu Xậy,Thị Trấn Vĩnh Hưng,Huyện Vĩnh Hưng,Long An', 'KD01'),
('CCDCHM', 'Anh Phong - Cứu Dân Chành', '3/22 Đường Quang Trung , Thị trấn Hóc Môn. 10', 'KD09'),
('CCDCL', 'Chị Điệp -Nhà Thuốc Tây Cửu Long', '150CTrưng Nữ Vương,P1,Vĩnh Long', 'KD07'),
('CCDN', 'Cửa Hàng Chương- Đồng Nai', '207 Đường 3/2,KP5,TT.Trảng Bom,Đồng Nai.6', 'KD07'),
('CCDPVT', 'Cửa hàng Châu Đại Phát', '102 /16 Chợ Phước Hải . Thị Trấn Phước HảI, BRVT. 10', 'KD07'),
('CCDTC', 'Chị Điệp', '157 Trường Chinh, Tân Bình,Tphcm', 'KD07'),
('CCDTD', 'Chị Diễm - Cửa Hàng Phương Thảo .', '1134 Kha Vạn Cân, Thủ Đức. 8', 'KD07'),
('CCDTHBT', 'Chị Dung - Tiên Hoàng Bình Tân', '699 Lê Trọng Tấn', 'KD07'),
('CCHHN', 'Cửa Hàng Chấn Huê- Hồng Ngự', '43 Nguyễn Trãi, Hồng Ngự, Đồng Tháp. 10', 'KD02'),
('CCHKCT', 'Cửa Hàng Kha', 'Thạnh An,Thốt Nốt,Cần Thơ', 'KD07'),
('CCHOMG', 'Chị Hà - cty Omega (lê ngân)', '58/9 Tân Thành, P. Tân Thành, Tân Phú', 'KD04'),
('CCHTB', 'Cửa Hàng Chí Hùng- Tân Bình', '297 Hồng Lạc, F10 Quận Tân Bình', 'KD02'),
('CCKPC', 'Chị Kiều - Đại Lý Vinh Thuận Phát', '271 ấp A, Khu 5, Chợ Phú Cường, Tam Nông, Đồng Tháp. 8', 'KD02'),
('CCLBL', 'Chị Sen / chị Lễ - Cửa hàng Vạn Thành', '351 Nguyễn Văn Cừ, P.Lộc Phát, T.X Bảo Lộc', 'KD09'),
('CCLDA', 'Anh Cường Dĩ An - CH Chị Lam cũ( Không Ghi Giá)', '8 Nguyễn Thái Học, Dĩ An, Binh Dương. 10', 'KD07'),
('CCLLK', 'TTNT Chín Long- Long Khánh', '12 Duy Tân, Tổ 21, Xã Bảo Vinh A, Long Khánh, ĐN. 10', 'KD07'),
('CCLMT', 'Chị Hai - Cửa Hàng Minh Lệ', '21 Lê Thị Phí F1 , TP.Mỹ Tho, Tiền Giang ( Cập nhật CN lên phiếu))', 'KD01'),
('CCMBT', 'Chị Mơ-Đại Lý Bảo Phúc', 'Ấp Tân Phong,xã thành thới A,H.mỏ cày Nam . 8', 'KD02'),
('CCMSR', 'Chị Mai - SARI', 'Ngã ba cái bè tiền giang ,vô 3 cây số(kế bên khách sạn yến Ngân).8', 'KD02'),
('CCMVN', 'Công Ty TNHH Chumy Việt Nam', '282/13 đường TA28 KP5. F Thới An, Quận 12.. 10', 'KD09'),
('CCN2DN', 'Cửa Hàng Cao Nguyên 2- Đắk Nông', '64 Nguyễn Tất Thành Dak Mil, Dak Nong', 'KD09'),
('CCNDA', 'Chị Cẩm- Công Ty Tnhh Cách Nhiệt Đông Á', 'Q20 đường 15, KP4, F. Tân Thới nhất, Q12.Tp. HCM ( đóng bọc nilon trắng)', 'KD03'),
('CCNSG', 'Chị Tâm - Công Ty Cách Nhiệt Sài Gòn', '258 Tây Thạnh,KCN Tân Bình ( đóng kiện =50 tấm / 1 kiện). Bao bọc PVC màu trằng', 'KD03'),
('CCOCOBD', 'Công ty TNHH COCO FURNITURE', '139 Kp Hưng Phước, F Hưng Định, Thuận An, BD.', 'KD07'),
('CCPBC', 'Chị Phượng', 'Ba càng,vĩnh long', 'KD08'),
('CCPBL', 'Chị mai: TTNT Chánh Phát', '80B Nguyễn Công Trứ, P2, Bảo Lộc, Lâm Đồng', 'KD09'),
('CCPBT', 'Chị Hương -Cửa Hàng Cường Phát', '180 Đường số 01- Bình Tân,Tphcm. 8', 'KD02'),
('CCPDT', 'Chị Phương', 'Dầu Tiếng', 'KD08'),
('CCPRG', 'Chị Phương- Cửa Hàng Bình Minh', '986 Nguyễn Trung Trực, Rạch Giá, Kiên Giang', 'KD08'),
('CCQAG', 'CH Lê Văn Tiền 3 (Chị Quý)', '1321/67 Trần Hưng Đạo,TP Long Xuyên,An Giang (không giá,không HDD)', 'KD01'),
('CCQTN', 'Chị Quyên - Cửa hàng Chị Quyên', 'Khu Phố 4,T.T Bến Cầu,Tây Ninh', 'KD08'),
('CCSMP', 'Cửa Hàng Vạn Thành- chị Uyên', '143 Tân Hòa Đông. 10', 'KD02'),
('CCTBH', 'Cửa Hàng Cát Tường- Biên Hòa', '719/5 KP4 FTam Hiệp, Biên Hòa, ĐN. 10', 'KD07'),
('CCTCD', 'Cửa Hàng Cẩm Tú - Cần Đước', '120 ấp Chợ Trạm xã Mỹ Lệ huyện Cần Đước, LA', 'KD02'),
('CCTDA', 'Chị Trang - Dĩ An Hưng Thịnh', '28/20A Nguyễn Trãi ,KP Thống Nhất, Dĩ An , Bình Dương. 10', 'KD07'),
('CCTDC', 'CTY TNHH KL Decor', '49K, Phan Đăng Lưu, P. 3, Q. Bình Thạnh, Tp. HCM', 'KD06'),
('CCTDL', 'Cửa Hàng Công Thành- Đà Lạt.', '63B - 3/2 Đà Lạt-. 8', 'KD09'),
('CCTHG', 'Anh Cường - Cửa Hàng Cường Thịnh', 'Khu Thương Mại Thị Trấn Ngã Sáu,Huyện Châu Thành,Tỉnh Hậu Giang. 8', 'KD01'),
('CCTKPST', 'Cửa Hàng Kim Phượng(KP Phước Long)', '39-41 CMT8, Ngã Tư Xô Viết Nghệ Tỉnh, TX Sóc Trăng(dst) Plus', 'KD01'),
('CCTNT', 'Cửa Hàng Chi Thính Ninh Thuận ( Không Ghi Giá)', 'KP2, TT Phước Dân, Ninh Phước, Ninh Thuận 8', 'KD06'),
('CCTQ4', 'Chị Thúy', '33 Nguyễn Tất Thành,Q4 - ĐT:38.455.313', 'KD07'),
('CCTQ8', 'Cửa Hàng Chí Tâm- Quận 08', '158 B An Dương Vương F16 Quận 08', 'KD06'),
('CCTRS', 'Chị Đan - Cửa Hàng Công Tiến', '46 Mai Thị Hồng Hạnh, Rạch Sỏi, Kiên Giang ( Gom 1 toa chung )', 'KD01'),
('CCTTA', 'Cửa Hàng Cát Tường- Tân An', '147 QL62 F2 Tp Tân An, LA. 8', 'KD02'),
('CCTTN', 'Chị Thuận- Cửa hàng Thanh Tâm Tây Ninh', 'D06/07 khu phố 4,Thị trấn châu thành,Tây ninh. 8', 'KD07'),
('CCTTP', 'ChịThúy : Cửa hàng Thanh Thúy', '76A Vườn Lài,Q.Tân phú:0903.000.2586', 'KD07'),
('CCTTT', 'Chị Thúy - Công Ty Thiên Thanh', NULL, 'KD09'),
('CCTVT', 'Chị Trang Everon', '352- 354 Nguyễn An Ninh. P8. Vũng Tàu. 8', 'KD07'),
('CCVAPT', 'Chị Vân - An Phú Tây', 'Chợ Thuận Đạt , Hưng Long, Bình Chánh', 'KD02'),
('CCVBD', 'Chị Vân - Cửa Hàng Cẩm Vân', '38 Nguyễn Thái Học, Thủ Dầu 1, Bình Dương', 'KD06'),
('CCVQ2', 'Cửa Hàng Cường Vy- Quận2', 'Số 164C Lê văn Thịnh, F Cát Lái, Q2', 'KD07'),
('CDADN', 'Cửa Hàng Diệu Anh Đồng Nai', 'Khu A1C1 Lập Thành, TT Dầu Giây. 8', 'KD07'),
('CDAQ4', 'Anh Trung - Cửa Hàng Duy Anh', '269 Tôn Đản, Quận 04, Tphcm', 'KD07'),
('CDCLBD', 'Công Ty Dương Châu Loan- Bình Dương', '298 Đại Lộ Bình Dương, Phú Hoà, Thủ Dầu 1. 8', 'KD07'),
('CDHDN', 'Cửa Hàng Đức Huy- ( Đức Thư) Đồng Nai', 'D1/034B Quang Trung Thống Nhất Đồng Nai . 8', 'KD07'),
('CDHHB', 'Cửa Hàng Đức Hạnh', '479 Nguyễn Văn Tăng, Phường Long Thạnh Mỹ, Quận 9, Tphcm', 'KD07'),
('CDHQ8', 'Anh Hải - Cửa Hàng Đức Hải', '529 Phạm Thế Hiển,Q8, Tphcm', 'KD08'),
('CDHTNGT', 'Chị Lan - Cty TNHH Đại Hòa Thịnh', '206 Ngô Gia Tự, P4, Quận 10,Tphcm', 'KD02'),
('CDHTST', 'Anh Quân - TTNT Đức Hiệp Thuận', '651 ấp Ngãi Hội 1, Đại ngãi, Long Phú, Sóc trăng', 'KD01'),
('CDKBL', 'Cửa Hàng Duy Khánh -Bến Lức', '37C ấp 2 xã Phước Lợi, Bến Lức, Long An. 8', 'KD02'),
('CDKGV', 'Cửa Hàng Duy Khánh', '29 Nguyễn Oanh, P10, Gò Vấp.', 'KD09'),
('CDLBR', 'Cửa Hàng Dương Long', 'Sap H12. TT Thương Mại - Bà Rịa . Tp Bà Rịa. BRVT', 'KD07'),
('CDLDT', 'Chị Thảo - Trang Trí Nội Thất Đại Lộc', '50-52 Thống nhất,liên nghĩa,Đức Trọng,Lâm Đồng. 8', 'KD09'),
('CDLPN', 'Cửa Hàng Đức Lợi- Phú Nhuận', '258 Phan đình phùng,p1,phú nhuận. 8', 'KD06'),
('CDLQ10', 'Chị Mười - Cửa Hàng Đồng Lợi', '469A Cách Mạng Tháng Tám, P13, Q10 ,Tphcm', 'KD02'),
('CDNBL', 'Cửa Hàng Đức Ngân Bạc Liêu', '0949.030.802 Anh Thiết', 'KD02'),
('CDNCM', 'Anh Đức - DNTN Đức Ngân', '149 Nguyễn Tất Thành, Phường 8, Cà Mau (Dán toa vô Nệm)', 'KD01'),
('CDNNT', 'Cửa Hàng Diệu Ninh- CÀ NÁ', 'Thôn Lạc Tân, X.Phước Diêm, Huyện Thuận Nam, Ninh Thuận .8', 'KD06'),
('CDPBL', 'Cửa Hàng Duy Phát - Bến Lức', '76 Nguyễn Hữu Thọ . 8', 'KD02'),
('CDPHCD', 'Chị Hoàng - Cửa Hàng Đại Phước Hàng', '39 Nguyễn Văn Thoại, P.13, Châu Đốc, An Giang', 'KD08'),
('CDPTAG', 'Cửa Hàng Đại Phát Thành- An Giang', 'Ấp An Hưng, TT An Phú, Huyện An Phú, Tỉnh An Giang', 'KD08'),
('CDREAMTEX', 'Công ty TNHH Dreamtex Việt Nam', '12/21A Đường TL27, phường Thạnh Lộc, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
('CDSBC', 'Cửa Hàng Đức Sang', 'F7/2, Tỉnh lộ 10, Xã Lê Minh Xuân, Huyện Bình Chánh', 'KD02'),
('CDSDCM', 'Duy Sông Đốc Cà Mau', 'Duy Sông Đốc Cà Mau', 'KD07'),
('CDTAVT', 'Chị Thanh Anh - Cửa Hàng Dũ Thanh Anh', '555 Trần Hưng Đạo, KV1, Phường 3, Vị Thanh. 10', 'KD01'),
('CDTBP', 'Cửa Hàng Đức Tài- Bình Phước', 'Đường 8, Phạm Hồng Thái, Tổ 1, KP3 , Chơn Thành, Bình Phước', 'KD09'),
('CDTDT', 'Cửa Hàng Đức Trí - Đồng Tháp', 'Chợ Trường Xuân, Tháp Mười, Đồng Tháp', 'KD02'),
('CDTHN', 'Cửa Hàng Đại Thành- Hồng Ngự', '45 Thiên Hộ Dương, Hồng Ngự, Đồng Tháp.', 'KD02'),
('CDTLG', 'Nội thất 123A', '123 Nguyễn Ngọc Kỳ, Phước Hội, TX Lagi, Bình Thuận', 'KD07'),
('CDTTV', 'CTY TNHH ĐẠI THÀNH', 'ấp Sâm Bua, xã Lương Hòa, Châu Thành, Trà Vinh. 8', 'KD08'),
('CDUADN', 'Dì út Ái - Cửa Hàng Đăng Khoa', '71 Đường 23/3 Tổ Dân Phố 1, P.Nghĩa Đức, Giai Nghĩa, Đăk Nông.', 'KD09'),
('CGBHM', 'Cửa Hàng Gia Bảo- Hóc Môn', '37/06 KP3 Lý Thường Kiệt, Hóc Môn', 'KD09'),
('CGBNH', 'Chị Viên - Cửa Hàng Gia Bảo', 'Ninh Hòa : 058.363.0574', 'KD06'),
('CGHNT', 'Cửa Hàng Gia Hân - 10 (Nệm CSDC chỉ lấy màu xám) Không ghi giá', '164 đường Thống Nhất, Nha Trang. (Giao trước 8h sáng hoặc 2hchiều) 10,chân Drap cao 30cm (ko ghi giá)', 'KD06'),
('CGHOM', 'Chị Duyên - Cửa Hàng Tân Gia Hưng', '30/1 Trần Hưng Đạo , KV.3, P.Châu Văn Liêm, Quận Ô Môn, TP. Cần', 'KD08'),
('CGKDT', 'Cửa Hàng Gia Khiêm- Đồng Tháp', 'Khóm 4, thị trấn Mỹ An, h Tháp Mười, Đồng Tháp', 'KD02'),
('CGLGV', 'Chị Linh - Cửa Hàng Gia Linh', 'Gò Vấp', 'KD02'),
('CGREENTEX', 'HKD-Cơ sở Sản xuất Greentex', 'Tờ bản đồ Số 1, thửa 10, Lê Lợi, Bàu Hàm 2 ,Thống Nhất, Đồng Nai', 'KD10'),
('CHACM', 'Cửa Hàng Hoàng Anh Cà Mau', 'chợ Kiot số 32,chợ Tấc Vân,Cà Mau', 'KD08'),
('CHAGL', 'Cửa Hàng Hồng Anh Gia Lai', '218 Trần Hưng Đạo, TX Ayun Pa, Gia Lai. 10', 'KD09'),
('CHAGLCT', 'Anh Đức - Hoàng Anh Gia Lai', '60A Mậu thân,P.An Hiệp,Ninh Kiều ,Cấn Thơ. 10', 'KD01'),
('CHAGLLX', 'Anh Dũng :Cửa Hàng Hoàng Anh Gia Lai:', '349/30D Trần Hưng Đạo,Long Xuyên (Ngay ngã ba), 10', 'KD08'),
('CHAMT', 'DNTN TTNT Hoàng Anh Mỹ Tho', '198A Nguyễn Thị Thập , xã Trung An TP Mỹ Tho ( đối diện Big C) . 6', 'KD01'),
('CHANVIETHAI', 'Công ty TNHH TM SX Hàn Việt Hải', '149 Lê Đức Thọ, P7, Q Gò Vấp, TPHCM', 'KD09'),
('CHAVT', 'Cửa Hàng Hoàng Anh Vũng Tàu', '330 Đường 30/4 F , Phường Rạch Dừa, Vũng Tàu. 8', 'KD07'),
('CHCVB', 'Hội chợ VIETBUILD', 'Q7', 'KD03'),
('CHDBD', 'Cửa Hàng Hoàng Duy- Bình Dương', '237 Yersin, F. Phú Cường, Thủ Dầu Một, BD. 8', 'KD07'),
('CHĐDN', 'Cửa Hàng Huỳnh Điểu- Đồng Nai', '1410 QL1A, Xuân Hưng, Xuân Lộc, Đồng Nai', 'KD07'),
('CHDKG', 'Cửa Hàng Hữu Đức- Kiên Giang', 'chợ thứ 7, ấp 7, xã đông thái, huyện an biên, tỉnh kiên giang.', 'KD08'),
('CHDTB', 'Cửa Hàng Hoàng Dũng- Tân Bình', '92 Phan Huy Ích, F15, Tân Bình', 'KD02'),
('CHDVT', 'Cửa Hàng Hoàng Dung - Vũng Tàu', 'Ấp 1, Bung Riềng, Xuyên Mộc, Vũng Tàu', 'KD07'),
('CHGBT', 'Cửa Hàng Hoàng Gia- Bình Tân', '1120 Tỉnh lộ 10, Bình Tân', 'KD08'),
('CHGD', 'Cửa Hàng Hiếu- Gò Đen', 'Ngay chợ Gò Đen', 'KD02'),
('CHGGV', 'Chị Xuân-Công Ty Hoàng Gia', 'Giao 41/76 Hương Lộ 80b, ấp 6, đông thạnh HM', 'KD03'),
('CHGPK', 'Đại Lý Hai Gắt- Phước Khánh', 'Chợ Phước Khánh, Xã Phước Khánh, huyện Nhơn Trạch, tỉnh Đồng Nai. 10', 'KD07'),
('CHH2BR', 'Cô Thuỷ - Huy Hoàng 2 Bà Rịa', 'Thành phố Bà Rịa ( kế bên Thúy Lan Bà Rịa)', 'KD07'),
('CHHAG', 'Cửa Hàng Hoàn Hảo- An Giang', '80 Tôn Đức Thắng, Phú Mỹ, Phú Tân, An Giang.', 'KD08'),
('CHHBC', 'Cửa Hàng Huy Hoàng - Bến Cát', 'KP1, Đường Hùng Vương, Bến Cát, Bình Dương', 'KD07'),
('CHHBD', 'Cửa Hàng Hoàng Hiệp- Bình Dương', '529 Phạm Ngọc Thạch Tp Thủ Dầu Một, Bình Dương', 'KD07'),
('CHHBL', 'Chị Ngân : Trung Tâm Nội Thất Hoàng Huy-0944.94.94.94', '68 Ninh Bình P2,TX.Bạc Liêu (Không ghi Giá). Không gửi toa', 'KD01'),
('CHHBR', 'DNTN Huy Hoàng ( Không Ghi Giá)', '102 Cách Mạng Tháng Tám, p Long Hương, Thành phố Bà Rịa', 'KD07'),
('CHHCR', 'Anh Dũng - Cửa Hàng Hòa Hiệp', '88 đường 22/8 Phường Cam Thuận, Cam Ranh', 'KD06'),
('CHHNB', 'Cửa Hàng Huy Hoàng - Nam Ban', 'TDP Bạch Đằng, TT. Nam Ban, H. Lâm Hà, Lâm Đồng.', 'KD09'),
('CHHQ4', 'Cửa hàng Huy Hoàng - Quận 4', '97 Khánh Hội, F3,Q4. 10', 'KD06'),
('CHHTV', 'Cửa Hàng Hồng Hưng - Trà Vinh', 'Khóm 4 , thị trấn Trà Cú, Huyện Trà Cú. Tỉnh Trà Vinh', 'KD08'),
('CHHVL', 'Cửa Hàng Hùng Hương- Vĩnh Long', 'Tổ 17, ấp Phú Cường, xã Hiếu Thuận, H. Vũng Liêm, T. Vĩnh Long', 'KD08'),
('CHKCM', 'Cửa hàng Hồng Kông - Cà Mau', 'ấp Đông Hưng, xã Tân Hưng Đông, huyện Cái Nước, tỉnh Cà Mau', 'KD08'),
('CHKNGT', 'Chị hạnh- Cửa hàng Hùng Ký', '347 Ngô gia tự', 'KD02'),
('CHKTN', 'Chị Hằng - Cửa Hàng Hồng Khánh:', 'Đối diện cổng chợ Gò dầu,tây ninh,Hướng đi mộc bài', 'KD02'),
('CHLBD', 'Chị Linh- Cửa hàng Hải Linh', '.Chợ tân phước khánh,bình chuẩn,bình dương', 'KD04'),
('CHLNT', 'Cửa Hàng Hồng Linh - Nha Trang', '295 Thống Nhất, Phường Phương Sơn, Nha Trang (ko ghi giá)', 'KD06'),
('CHLQ3', 'Cửa Hàng Hoàng Long Quận 3', '590 Nguyễn Đình Chiểu P4 Quận 3. 10', 'KD06'),
('CHMCT', 'Chị Thu - Cửa Hàng Hoàn Mỹ', '118 Lý Tự Trọng, Cần Thơ', 'KD02'),
('CHMQ7', 'Chị Trang - CTY TNHH TTNT Hoàn Mỹ', 'D56 Nam Long,đường Phú Thuận ,Quận 7 . 10', 'KD06'),
('CHNBC', 'Cửa Hàng Hoàng Phát ( Hoàng Nguyên cũ)', 'D15/40 Đinh Đức Thiện,Bình chánh', 'KD02'),
('CHNLD', 'Cửa Hàng Hải Nam- Lâm Đồng', '677 Hùng Vương. Di Linh, Lâm Đồng', 'KD09'),
('CHNNH', 'Công ty TNHH SX TM và DV Hồng Nguyễn', '56 Võ Tánh, Ninh Hòa. Đối diện chợ Dinh Ninh ( Không lấy màu trắng) ko ghi giá', 'KD06'),
('CHNT', 'Cửa Hàng', 'Công Hải, Thuận Bắc, Ninh Thuận', 'KD07'),
('CHNTD', 'Anh Nhuận - Hữu Nhuận', '9/14 Quốc lộ 13, Hiệp Bình Phước, Thủ Đức', 'KD07'),
('CHP', 'Cửa Hàng Hòa Phú -', NULL, 'KD08'),
('CHPBC', 'Cửa Hàng Hoàng Phát _ Bình Chánh', 'D15/40 đường Đinh Đức Thiện, xã Bình Chánh, Huyện BC', 'KD02'),
('CHPBR', 'Cửa Hàng Hiệp Phát- Bà Rịa', '16/10 Ấp Phước Lâm xã Phước Hưng, Long Điền, BRVT. 8', 'KD07'),
('CHPBRVT', 'Cửa Hàng Hồng Phát- Bà Rịa Vũng Tàu', '333 đường 27/04. TT Phước Bửu, Xuyên Mộc, BRVT', 'KD07'),
('CHPBT', 'Cửa Hàng Hoàng Phúc -Bến Tre', '75/4 Ấp 10 TT Thạnh Phú, Thạnh Phúc, Bến Tre', 'KD02'),
('CHPKG', 'Cửa Hàng Hoàng Phát - Kiên Giang', '467A Nguyễn Trung Trực, F, Vĩnh Lạc, Rạch Giá, Kiên Giang', 'KD08'),
('CHPQ8', 'Chị Hằng - Cửa Hàng Hồng Phát', '352C Tùng Thiện Vương, Phường 13, Quận 8, Tphcm', 'KD02'),
('CHPTC', 'Chị Dung- Cửa Hàng Hưng Phát', '698 Trường Chinh,P.15,Q.Tân Bình, Tphcm', 'KD07'),
('CHQPL', 'Cửa Hàng Hồng Quân', 'Chợ Phương Lâm (2h)', 'KD07'),
('CHQTN', 'Chị Châu Hồng Quế:01234590522', '04/22 ThịTrấn Gò Dầu,Tây Ninh', 'KD04'),
('CHSBL', 'Chị Trang- Trang Trí Nội Thất Hải Sơn Bạc Liêu', '156 Trần Phú, P7, Bạc Liêu. 10', 'KD01'),
('CHSBP', 'Cửa Hàng Điện Máy & NT Hồng Sơn - Bình Phước', '364 Nguyễn Tất Thành, Kp2, P. Phước Bình, Tx. Phước Long, Bình Phước.6', 'KD09'),
('CHSBT', 'Cửa Hàng Hương Sơn- Bình Thuận', '29 Phú Thọ, Hàm Cường, Thuận Nam, Bình Thuận. 8', 'KD06'),
('CHTBC', 'Cửa Hàng Hữu Thắng', '232/11 Hương lộ 80,KP2, F, Bình Hưng Hoà B, Bình Tân. 8', 'KD02'),
('CHTBD', 'Công ty CP Hữu Toàn (GROUP)', 'Tầng 01 Tòa nhà BlueSky: 01 Bạch Đằng, F2. Tân Bình', 'KD03'),
('CHTCM', 'Cửa Hàng Hữu Tín- Cà Mau', 'Khóm 8, TT Thới Bình, H. Thới Bình, T. Cà Mau', 'KD08'),
('CHTCT', 'Cửa Hàng Hoa Tím - Cần Thơ', '250A, kv Thới Hưng, P. Thới An Đông, Q. Bình Thuỷ, Cần Thơ', 'KD08'),
('CHTGC', 'Anh Hoàng - Cửa Hàng Hoàng Thúy', '142 Nguyễn Huệ, TX. Gò Công, Tiền Giang', 'KD02'),
('CHTLD', 'Cửa Hàng Hà Tiến - Lâm Đồng', '11 Lê Lợi - TT Dran - Đơn Dương- Lâm Đồng. 8', 'KD09'),
('CHTLVQ', 'Cửa Hàng Hà Thành- Lê Văn Quới', '582 Lê Văn Quới. 6', 'KD02'),
('CHTNTN', 'Cửa Hàng Hoàng Thúy Nga- Tây Ninh', '450 Điện Biên Phủ, Ninh Hoà, Ninh Thuận, Tây Ninh. 8', 'KD07'),
('CHTQ8', 'Cửa Hàng Nội Thất Hiệp Thành -Q8', '232 Liên Tỉnh 5 , F6, Q8.10', 'KD06'),
('CHTQL1A', 'Cửa Hàng Hưng Thịnh- Quốc lộ 1A Bình chánh', 'A13/53 QL1A Bình Chánh. 8', 'KD02'),
('CHTTKTQ', 'Cửa hàng Hưng Thịnh', '798 Tân kỳ tân quý. 6', 'KD02'),
('CHTTV', 'Cô Thu - Cửa Hàng Hiệp Thành', '582-583 Trần Phú , Phường 7, TX. Trà Vinh. 10', 'KD01'),
('CHTVT', 'Cửa Hàng Hải Triều - Vũng Tàu', '276 Lê Hồng Phong, F.4, Tp. Vũng Tàu', 'KD07'),
('CHVBR', 'Cửa Hàng Hồng Vân - Bà Rịa Vũng Tàu', '24/3 ấp 1, xã Bưng Riềng, Xuyên Mộc,Bà Rịa VT', 'KD07'),
('CHVVT', 'Cửa Hàng Huyền Vy- Vũng Tàu', '597 Nguyễn An Ninh, F9, Tp, Vũng Tàu. ( Không Ghi Giá ) . 8', 'KD07'),
('CHYBMT', 'Cửa Hàng Hoàng Yến Buôn Mê Thuột', '166 Y Jut . Buôn Ma Thuột SDT . 8', 'KD09'),
('CHYBP', 'Cửa Hàng Hải Yến - Bình Phước', 'Kp. Thanh Xuân, TT. Thanh Bình, H. Bù Đăng, Bình Phước.6', 'KD09'),
('CHYCT', 'Cửa Hàng Hải Yến - Cần Thơ', '660C1/10 kv bình trung, P. Long Hoà, Q. Bình Thuỷ, TPCT', 'KD08'),
('CHYDN', 'Cửa Hàng Hải Yến Đắc Nông', '04 Huỳnh Thúc Kháng, TX Gia Nghĩa, Đắc Nông, (Ép KL không lấy đỏ, vàng)', 'KD09'),
('CIDC', 'Công Ty INDOCHINE', '01 Lê Qúi Đôn, Quận 3,TPHCM', 'KD09'),
('CISML', 'Chị Cúc - TTNT Ich Sanh', '502 KP Minh Phú, TT Minh Lương, Rạch Sỏi, Kiên Giang', 'KD07'),
('CKACG', 'Cửa Hàng Khang Anh, Chợ Gạo', '332/1 Tỉnh lộ 879, chợ gạo, Tiền Giang. 8', 'KD02'),
('CKATAQ10', 'Chị Liên ( 0902 991394)- Công ty Kata', '193 Nguyễn Lâm, F6, Q10', 'KD07'),
('CKC', 'Khánh Chi', '93/47 ấp chiến lược :ĐT: 5407.6229', 'KD07'),
('CKCCM', 'Cửa hàng Kim Chi - Cà Mau', 'khóm 7, TT Sông Đốc, H. Trần Văn Thời, T. Cà Mau', 'KD08'),
('CKDBP', 'CH Nội Thất Kim Đào, Bình Phước', 'Ấp 7, Thanh Hoà, Huyện Bù Đốp, Bình Phước. 10 (Ko ghi giá)', 'KD09'),
('CKDCM', 'Cửa hàng Kiều Diễm - Cà Mau', 'Khóm 1 , Thị Trấn Cái Nước, H. Cái Nước, T. Cà Mau', 'KD08'),
('CKDDL', 'Chị Thanh - Cửa Hàng Kymdan Đức Linh', 'Thôn 4, Xã Đức Hạnh, Huyện Đức Linh, Tỉnh Bình Thuận. 10', 'KD06'),
('CKDMT', 'DNTN -TTNT Kim Dung:', '99 Lý Thường Kiệt,p4,TP Mỹ Tho,Tiền Giang. 8', 'KD01'),
('CKDNVT', 'Cửa Hàng Kinh Đô Nệm- Vũng Tàu ( Không Ghi Giá)', '71-73 Lê Lợi, TP Vũng Tàu . 8', 'KD07'),
('CKDQ2', 'Chú Tư - Cửa Hàng Kymdan Quận 2', 'B1/9 Lương Định Của, Bình An, Quận 2', 'KD07'),
('CKDTB', 'Chị Thuỳ - Kymdan Tân Bình', '636Bis Luỹ Bán Bích, P17, Q.Tân Bình', 'KD09'),
('CKENTASZOBT', 'Cửa Hàng KenTasZo - Bình Tân', '113 đường gò Xoài, F Bình Hưng Hòa, Bình Tân', 'KD02'),
('CKHBMT', 'Cửa Hàng Khánh Hồng - Buôn Mê Thuột', '203 Võ Văn Kiệt, F Khánh Xuân, TP BMT', 'KD09'),
('CKHGL', 'Cửa hàng Rèm Màn Kim Hiền- Gia Lai ( 0905 69 7299)', 'Hoàng Văn Thụ, TT Chư Sê, Gia Lai. 10', 'KD09'),
('CKHL', 'Bán Lẻ:', NULL, 'KD04'),
('CKHM', 'KHÁCH HÀNG MOUSSELY ( KHÔNG ĐẶT HÀNG)', 'KHÔNG ĐẶT HÀNG', 'KD07'),
('CKMHM', 'Chị Kim Thành - Công Ty Kinh Môn', '172A/T Đường Hà Đặc,Phường Trung Mỹ Tây,Q12,Tphcm', 'KD07'),
('CKNBT1', 'khong dung', NULL, 'KD07'),
('CKNTD', 'Chị Ngân - Cửa Hàng Kim Ngân', '44 Võ Văn Ngân, Phường Trường Thọ, Quận Thủ Đức. 8', 'KD07'),
('CKPHCM', 'Cty CP NT Kim Phụng Hảo ( Toa chành ko giá)', '65 Lý Bôn, Phừơng 2, Cà Mau', 'KD01'),
('CKPKG', 'Cửa Hàng Kiều Phụng', 'Chợ Kênh 8,Huyện Tân Hiệp,Kiên Giang', 'KD07'),
('CKPMCM', 'Cô Phụng - Cửa Hàng Kim Phụng (mẹ)', '51 Lý Bôn, Phường 2, Cà Mau : luôn lấy kích thước 200', 'KD01'),
('CKPQ5', 'Cửa hàng Kim Phụng - Q5', '98 Phùng Hưng, - Phường 13 - Quận 5 - TP Hồ Chí Minh', 'KD02'),
('CKSQA', 'Chị Hương - Khách Sạn Quỳnh Anh', '54-56 Đường 24A - A. Tiến: 0903.8820.84', 'KD07'),
('CKTAG', 'Cửa Hàng Kim Thoa- An Giang', 'chợ tân phú, ấp phú lợi, xã phú lâm, huyện phú tân, tỉnh an giang', 'KD08'),
('CKTBT', 'Cửa Hàng Kim Thanh', '1341 Tỉnh lộ 10,P.Tân Tạo,Bình Tân. 8', 'KD02'),
('CKTDN', 'Đại Lý Nệm Kim Trang', '91/5B Khu phố 9,P.Tân Biên,Thành phố Biên Hòa,Đồng Nai. 10', 'KD01'),
('CKTDTSD', 'Kim Khí Điện Máy Duy - Sông Đốc', 'Trần Văn Thời ,Cà Mau', 'KD03'),
('CKTGV', 'Cửa Hàng Kim Thành- Gò Vấp', '308 Nguyễn Văn Nghi, F7, Gò Vấp', 'KD02'),
('CKTHG', 'Cửa hàng Kiều Trinh - Hậu Giang', 'Ấp Phú Khởi, Xã Thạnh Hoà, Huyện Phụng Hiệp, Tỉnh Hậu Giang', 'KD08'),
('CKTQT', 'Cửa Hàng Nệm Kim Thoại', '98/1C Quang Trung, P8, Q Gò Vấp', 'KD02'),
('CKTTC', 'Chị Kiêm - Cửa Hàng Kiết Tường', '51 Nguyễn Văn Cừ, Tân Châu, An Giang. 10', 'KD08'),
('CKVBT', 'Cửa Hàng Khánh Vy', '462 đường số 7, P. Tân Tạo, Q. Bình Tân', 'KD02'),
('CKVLT', 'Cửa Hàng Kim Vân- Long Thành ( Không Ghi Giá)', '87-88 Tổ 5, Khu Phước Hải, Long Thành, Đồng Nai', 'KD07'),
('CKVQ9', 'Anh Khanh :Cửa Hàng Khánh Vân', '28 Tây hòa,P. Phước Long, Q9', 'KD07'),
('CLHTHD', 'Cửa Hàng Liên Hương', '457 Tân Hoà Đông, Phường Bình Trị Đông, Quận Bình Tân', 'KD08'),
('CLIMARESORT', 'RESORT LIMA - NHA TRANG', 'Sao Mai Anh resort, số 02 Phạm Văn Đồng, P. Vĩnh Hòa, TP.Nha Trang, Khánh Hòa', 'KD10'),
('CLPTN', 'Anh Lô - Cửa Hàng Lợi Phát', 'Khu Phố 2, Cầu Mới, Trần Quốc Toản, P.2, T.X Tây Ninh', 'KD09'),
('CLTN2CM', 'Cửa Hàng Lịnh_ Tú Nữ 2 ( Cà Mau)', 'Khóm 5, Thị Trấn Trần Văn Thời, H. Trần Văn Thời, Tp. Cà Mau', 'KD08'),
('CLTTP', 'Cửa Hàng Lý Thế.', '54 Tân Quý, F. Tân Quý. Tân Phú', 'KD02'),
('CMADT', 'Cửa Hàng Mai Anh- Đồng Tháp', '132 QL80, Khóm Phú Mỹ, TT Cái Tàu Hạ, Đồng Tháp', 'KD02'),
('CMBDL', 'Cửa Hàng Mai Bình - Đăk Lăk', '422-424-426 Giải Phóng, TT Phước An, huyện Hrong Păk, Đăk . 10', 'KD09'),
('CMCHHBD', 'Cửa Hàng Màn Cửa Huy Hoàng- Bình Dương', 'Kp2-TT Tân Bình , Bắc Tân Uyên, Bình Dương', 'KD07'),
('CMCLD', 'Cửa Hàng Minh Chung Lâm Đồng', 'Số 6/1 Xô Viết Nghệ Tĩnh, F7, Đà Lạt. Tỉnh Lâm Đồng. 8', 'KD09'),
('CMCQ11', 'Cửa Hàng Minh Chánh Quận 11', 'Giao ở Kho 224 phan anh Tân thới hoà Q Tân phú,', 'KD03'),
('CMCTL10', 'Chị Phương - Cửa hàng Minh Châu', '1694 Tỉnh Lộ 10. 6', 'KD02'),
('CMDLK', 'Cửa Hàng Mỹ Duyên', 'Ấp Bình Lộc, Long Khánh, Đồng Nai', 'KD02'),
('CMGDL', 'Trung Tâm Nội Thất Mỹ Gia', '18A1 Yersin,Đà Lạt: ( Không Ghi Giá )', 'KD09'),
('CMH2NT', 'Cô Hải- Công Ty TNHH TM - DV - SX Minh Hải', '(128 Thủy Tú, Xã Vĩnh Thái, Nha Trang)', 'KD06'),
('CMHBH', 'Cửa Hàng Mạnh Hiển - Biên Hòa', '225 CMT8, F. Hòa Bình, Tp. Biên Hòa. 6', 'KD07'),
('CMHBL', 'Chị Trinh - Cửa Hàng Mai quỳnh', '75 Bà Triệu, P.3, TP. Bạc Liêu', 'KD09'),
('CMHBT', 'Cửa Hàng Minh Hoàng', 'ấP 2 ,Tân Thủy,Ba Tri. 8', 'KD02'),
('CMHCL', 'Cửa Hàng Minh Hiếu - Chợ Lách', 'QL57, Hoà Nghĩa, Chợ Lách, Bến Tre. 8', 'KD02'),
('CMHCT', 'Chị Mười - Cửa hàng Mười Hùng', '71 Quốc Lộ 61, ấp Tân Phú A,T.T Cái Tắc, Châu Thành A, Hậu Giang. 10', 'KD08'),
('CMHNT', 'Chị Phương Công Ty TNHH TM - DV - SX Minh Hải ( Không Ghi Giá)', '233 Thống Nhất, Phương Sài, Nha Trang ( ( Không Ghi Giá))', 'KD06'),
('CMHQ3', 'Cửa Hàng Minh Hằng', '262A Nguyễn Thị Minh Khai, Quận 3', 'KD07'),
('CMHST', 'Chị Hoa - Cửa Hàng Mỹ Hoa', '2-4-6 Điện Biên Phủ, Sóc Trăng (TH không lấy xám, đen, góc sọc đỏ)', 'KD01'),
('CMHTC', 'Chị Hạnh - Mỹ Hạnh', '436 Trường Chinh, Phường 13, Quận Tân Bình', 'KD03'),
('CMKTP', 'Cửa Hàng Minh Khôi - Tân Phú', '465 Lê Trọng Tấn, Tân Phú. (ko ghi giá) 8', 'KD02'),
('CMLBC', 'Cửa Hàng Minh Long- Bình Chánh', 'D18/46C ấp 4, Hưng Long, Bình Chánh', 'KD02'),
('CMLKT', 'Cửa Hàng Mai Lân KonTum', '944-946 Hùng Vương - TT PleiKần- H. Ngọc Hồi - Kon Tum. 10', 'KD09'),
('CMLTDM', 'Cửa Hàng Mộc Linh- Thủ Dầu Một', '647 Huỳnh văn Lũy , Phú Mỹ, Thủ Dầu Một, BD', 'KD07'),
('CMLTN', 'Cửa hàng My Ly- Tây Ninh', '878 CMT8- Khu Phố 1, F4, Tây Ninh. 6', 'KD07'),
('CMNBMT', 'Chị Nguyệt- CH Minh Nguyệt Buôn Mê Thuột', 'Số 2 Lê Thánh Tông, Buôn Mê Thuột. 10', 'KD09'),
('CMNDH', 'Cửa hàng Minh Nghi - Đức Hòa', 'Ấp Bình Thúy, xã Hòa Khánh Đông, huyện Đức Hòa, LA.', 'KD02'),
('CMNDN', 'Cửa hàng Minh Nhựt- Đồng Nai', 'Gần chợ Phương Lâm', 'KD07'),
('CMPBT', 'Cửa Hàng Mỹ Phương', '112 KP1,Thị trấn Bình Đại, Bến Tre. 10', 'KD02'),
('CMPKBD', 'CH Nội Thất Mai Phước Khang', '1062 CMT8, Thủ Dầu 1, Bình Dương ( ép lấy màu trắng + NBO kem)', 'KD07'),
('CMPLD', 'Cửa Hàng Minh Phi (PM) 0985 622 212', '18 Quang Trung P9 Đà Lạt, Lâm Đồng (Hóa đơn dán ở ngoài bao chành) 8', 'KD09'),
('CMPLX', 'Cửa Hàng Minh Phát Long Xuyên', 'Long Xuyên', 'KD02'),
('CMPTDT', 'Cửa Hàng Mai Phương Thảo', 'Nhà số 6- 8 Nguyễn Doãn Phong, P.Mỹ Phú, TP Cao lãnh, Đồng Tháp. 8', 'KD02'),
('CMQBL', 'Cửa Hàng Mai Quỳnh', '75 Bà Triệu, P.3, TP. Bạc Liêu', 'KD07'),
('CMQBT', 'Cửa Hàng nệm Minh Quân', '269 Nguyễn Tất Thành - Chợ Lầu - Bắc Bình - Bình Thuận', 'KD06'),
('CMQST', 'Cửa Hàng Mỹ Quang', 'SócTrăng,Cửa Hàng Mỹ Quang', 'KD02'),
('CMQVL', 'Cửa Hàng Mỹ Quyên - Vĩnh Long', '4535, tổ 25, ấp Đông Lợi, xã Đông Bình, Thị xã Bình Minh, Tỉnh Vĩnh Long.', 'KD08'),
('CMSTN', 'Cửa hàng Màn Cửa Minh Sang - Tây Ninh', '137, Ấp Phước Đức B, Xã Phước Đông, Gò Dầu, Tây Ninh', 'KD07'),
('CMT2CL', 'Chị Hồng - Cửa Hàng Minh Thiện', 'chợ Mỹ Long, xã Mỹ Long, Cai Lậy, Tiền Giang. 8', 'KD02'),
('CMTCL', 'Chị Yến- Cửa Hàng Thầy Minh ( Minh Thiện cũ)', 'Chợ nhị Qúy ,Cai Lậy,Tiền Giang. 8', 'KD02'),
('CMTDN', 'Cửa Hàng Mạnh Tùng', '1925 QL20, Phú Xuân, Tân Phú , Đồng Nai. 8', 'KD07'),
('CMTHM', 'Cửa Hàng Minh Thảo', '28 Nguyễn Văn Bứa, Xuân Thới Sơn, Hóc Môn. 8', 'KD09'),
('CMTLA', 'Cửa Hàng Minh Trí Long An', 'KP3. TT Thạnh Hóa, Long An', 'KD02'),
('CMTLD', 'Cửa Hàng Minh Thông - Lâm Đồng', '137 Hà Giang Bảo Lộc- Lâm Đồng. 10', 'KD09'),
('CMTNT', 'Cửa Hàng Minh Tín- Nha Trang', '21 Ngô Gia Tự , TP Nha Trang', 'KD06'),
('CMTTB', 'Cửa Hàng Minh Tâm - Trảng Bom', '26 Bắc Sơn , ấp Bùi Chu, xã Bắc Sơn, Trảng Bom', 'KD07'),
('CMTTL10', 'Cửa Hàng Minh Thảo- Tỉnh lộ 10', '1584 Tỉnh lộ 10, Tân Tạo, Bình Tân. 8', 'KD02'),
('CMTTP', 'Cửa Hàng Minh Trang', '54 Tân Qúy,Tân phú', 'KD02'),
('CMTVL', 'CH Trang Trí Nội Thất - VP Mai Trang', 'Số 1B, Trưng Nữ Vương, P1, TP VL - 68/3B Phạm Thái Bường,P4,VL. 10', 'KD01'),
('CMVBP', 'Cửa Hàng Mỹ Vượng - Bình Phước', '13 Nguyễn Huệ, TT. Chơn Thành, H. Chơn Thành, Bình Phước', 'KD09'),
('CMVQ11', 'Cửa Hàng Mỹ Vân- Quận 11', '220 Phó Cơ Điều, F6,Q11', 'KD03'),
('CMYM', 'Anh Hiền - Công Ty Tnhh Mỹ ý Mỹ', '84/86/8 Tân Sơn Nhì, P.Tân Sơn Nhì,Q.Tân Phú', 'KD06'),
('CNABL', 'Anh Mạnh - Cửa Hàng Ngọc ánh', '51A/24 Hà giang, bảo Lộc, lâm Đồng', 'KD07'),
('CNACT', 'Cửa Hàng Ngọc Ánh - Cần Thơ', 'ấp Thới Thuận A, TT Thới Lai, huyện Thới Lai, TP Cần Thơ.', 'KD08'),
('CNAMN', 'Cửa Hàng Nội Thất Nhật Anh Mũi Né', '316 Huỳnh Thúc Kháng , Mũi Né, Phan Thiết. 10', 'KD06'),
('CNAMTBT', 'Anh Nam/Chị Ngọc : Nội Thất Nam Thành', 'ấp 1,xã bình thới,bình đại,Bến tre', 'KD02'),
('CNAQ8', 'Cửa Hàng Nguyên Anh', '1981 Phạm Thế Hiển,P6,Q8', 'KD06'),
('CNATD', 'Cửa Hàng Ngọc Anh- Thủ Đức', '967 Tỉnh Lộ 43, Phường Bình Chiểu, Thủ Đức', 'KD07'),
('CNB2TL', 'Cửa Hàng Ngọc Bích 2 (Thái Nương)', 'Lạc Hóa 2, TT Lạc Tánh, H. Tánh Linh, Bình Thuận. 8', 'KD06'),
('CNBGL', 'Cửa Hàng Nhật Bảo Gia Lai- 0908 06 1088', '09 Quang Trung - Pleiku- Gia Lai. 10', 'KD09'),
('CNBTL', 'Cửa Hàng Ngọc Bích', 'Lạc Hóa 2, TT Lạc Tánh, H. Tánh Linh, Bình Thuận. 8', 'KD06'),
('CNCBT', 'Chị Loan/Anh Hùng: Cửa Hàng Nhã Ca', '146 Nguyễn Văn Đậu,P7,Q.Bình Thạnh,TPHCM', 'KD09'),
('CNCHM', 'Chú Châu - Cửa Hàng Năm Châu', '131/2 ấp Trung Chánh, Xã Tân Xuân, Hóc Môn', 'KD09'),
('CNCQ9', 'Cửa Hàng Ngân Cương- Q9', '317 Đỗ Xuân Hợp, Q9. 8', 'KD07'),
('CNCST', 'Cửa Hàng Năm Châu - Sóc Trăng (HKD Thanh Mỹ)', 'Đường 3/2, ấp Cầu Đồn, TT Huỳnh Hữu Nghĩa, H. Mỹ Tú, T. Sóc Trăng', 'KD08'),
('CNCTV', 'Cửa Hàng Nam Cường ( Không ghi giá)', '217 Nguyễn Thị Minh Khai, Khóm 8, P.7, TP. Trà Vinh. 10', 'KD01'),
('CNDBC', 'Ngọc Diệp - Đại Lý Liên á', 'C1/3A Đường Võ Văn Vân,ấp 3 ,Vĩnh Lộc B,Bình Chánh ĐT:62666896', 'KD07'),
('CNDBD', 'Cửa Hàng Năm Dân Bình Dương', '266 xã Long Hoà, huyện Dầu Tiếng, Bình Dương. 10', 'KD07'),
('CNGBMT', 'Cửa Hàng Ngọc Giàu- Buôn Mê Thuột', '267 Nguyễn Thị Định, Tân Tiến, Buôn Mê Thuột. 8', 'KD09'),
('CNHBR', 'Cửa Hàng Ngân Hường - Bà Rịa', '96 Võ Thị Sáu Long An, Long Điền, Huyện Đất Đỏ, Bà Rịa Vũng Tàu', 'KD07'),
('CNHKG', 'Chị Hiền - Cửa Hàng Ngọc Hiền', '15 Nguyễn Chí thanh,Rạch Sỏi,Kiên Giang', 'KD08'),
('CNHTG', 'CH Ngọc Hương - Tiền giang', '351 Ấp Mới, Xã Long Định, Huyện Châu Thành, Tiền Giang', 'KD02'),
('CNHVL', 'Cty TNHH TM Ngọc Hưng', 'Số 11 đường Trưng Nữ Vương, Phường 1, Tp Vĩnh Long', 'KD08'),
('CNKBD', 'Chị Kiều - TTNT Ngọc Khôi', '179/1 Bình Chiến,TT.Bình Đại,Bến Tre. 6', 'KD02'),
('CNKDN', 'Cửa Hàng Ngọc Khánh - Đồng Nai', 'Đường Hùng Vương, TT. Hiệp Phước, Đồng Nai', 'KD07'),
('CNKV', 'Cửa Hàng Khánh Vy', '462 Đường Số 7, P.Tân Tạo, Q.Bình Tân', 'KD08'),
('CNLDN', 'Cửa hàng Nhật Lệ- Đồng Nai ( Giao hàng trước 1h)', '571 Tây Lạc, Bắc Sơn, Trảng Bom, Đồng Nai (giao hàng đến kho - Cầu Sập). 10', 'KD07'),
('CNLGK', 'Chị Lan - Cửa Hàng Ngọc Lan', '7/1 Gia Kiệm, Thống Nhất, Đồng Nai', 'KD07'),
('CNLTN', 'Chị Lan:Cửa hàng Ngọc Lan', '302 Lạc long Quân,kp4,p4,Tây Ninh: 0949.118009', 'KD02'),
('CNMBR', 'Cửa Hàng Ngọc Mai Bà Rịa', '249 Hùng vương, Ngãi giao , Châu Đức, Bà Rịa VT. 10', 'KD07'),
('CNMBT', 'Cửa Hàng Ngọc Mai - Bình Thạnh', '33 Bạch Đằng , F15, Bình Thạnh', 'KD06'),
('CNNBD', 'Cửa Hàng Ngọc Nam Bình Đại', 'ấp 3 xã bình thới, bình đại , bến tre. 8', 'KD02'),
('CNNBT', 'Chị Diệu -Cừa Hàng Ngô Nguyễn Bình Thạnh', '100 Xô Viết Nghệ Tỉnh,p21,Bình Thạnh', 'KD06'),
('CNNQ9', 'Cửa Hàng Nệm Tốt- Quận 9 ( Ngọc Nguyên cũ)', '181 Đỗ Xuân Hợp ,P. Phước Long,Q9,TPHCM. 10', 'KD07'),
('CNPBD', 'Cửa Hàng Ngọc Phi', '20/22 ấp Bình Đường, Ngã Ba Bình Đường, Bình Dương', 'KD02'),
('CNPCT', 'Anh Minh - Cơ Sở Đồ gỗ Ngọc Phú', 'KV10,P.Châu văn liêm ,Q.Ô Môn,TP.Cần thơ. 8', 'KD08'),
('CNPDL', 'Cửa Hàng Ngọc Phương - Đắc Lăk', '149 Nguyễn Tất Thành, Khối 7, TT M\'Drak, H. M\'Drak, DakLak', 'KD09'),
('CNPQ9', 'Cửa Hàng Ngọc Phát - Quận 9', '188 Lê Văn Việt, Tăng Nhơn Phú B, Quận 9. 8', 'KD07'),
('CNPTN', 'Cửa Hàng Ngọc Phi - Tây Ninh', '487 Lạc Long Quân, Hiệp Tân, Hòa Thành, Tây Ninh', 'KD07'),
('CNQ9', 'Cô Ngọc -Cửa Hàng Ngọc', '263 Lê Văn Việt, Phường Hiệp Phú, Quận 9', 'KD03'),
('CNSTV', 'DNTN Năm Sỹ - Trà Vinh ( Không Gửi Toa Chành)', 'Khóm Phước Trị, F1, TX Duyên Hải, Trà Vinh. 8', 'KD01'),
('CNT231Q2', 'Cửa Hàng Nội Thất 231 - 233 - Quận 02', '231 Nguyễn Duy Trinh Quận 02', 'KD07'),
('CNTAG', 'Cửa Hàng Ngọc Trân- An Giang', 'Cây số 3, Gần UBND phường Long Sơn, Tx. Tân Châu, An Giang.', 'KD08'),
('CNTBD', 'Nội Thất Ngọc Thủy- Bình Định', '375 Trần Phú , TT Diệu Trì, Tuy Phước,Bình Định. 10', 'KD06'),
('CNTCG', 'Cửa Hàng Nhựt Tân - Cần Giuộc ( CH Xe Đạp)', 'Tổ 14 ấp Tây, xã Đông Thạnh, Cần Giuộc , LA', 'KD02'),
('CNTDDN', 'Cửa hàng Nội Thất Dũng- Đồng Nai', 'B115 Phước Lý, xã Đại Phước, Huyện Nhơn Trạch, Đồng Nai, 10', 'KD07'),
('CNTDT', 'Cửa Hàng Nhân Trung- Đồng Tháp', '77 Nguyễn Huệ, Phường 1, Tp Cao Lãnh, Đồng Tháp.', 'KD02'),
('CNTDTTV', 'Cửa Hàng NT Dân Tiến- Trà Vinh', 'Khóm Mỹ Cẩm A, Thị Trấn Cầu Ngang, H. Cầu Ngang, T. Trà Vinh', 'KD08'),
('CNTHNBT', 'Cửa Hàng NT Hai Nhựt - Bến Tre', 'QL57, TT. Thạnh Phú, Thạnh Phú, Bến Tre, Việt Nam', 'KD02'),
('CNTHNT', 'Cửa Hàng Nội Thất Hồng Ninh Thuận', 'Công Hải, Hàm Thuận Bắc, Ninh Thuận. 8', 'KD06'),
('CNTHTBT', 'Cửa Hàng TTNT Hải Triều- Bình Thuận', 'Thôn Dân Phú, xã Hàm Kiệm, H Hàm Thuận Nam, Bình Thuận', 'KD06'),
('CNTHTCT', 'Cửa Hàng NT Hoàn Thành - Cần Thơ', 'ấp Phú Thọ, xã Trường Xuân, huyện Thới Lai, TP Cần Thơ', 'KD08'),
('CNTLA', 'Cô Tuyết - Cửa Hàng Năm Trước', 'Chợ Thanh Hóa,Long An ( 0948.464.742). 8', 'KD02'),
('CNTLX', 'Cửa Hàng Nguyên Thanh- Long Xuyên', '48 Ngô Gia Tự, P.Mỹ Long, Long Xuyên, An Giang', 'KD08'),
('CNTML', 'Cửa Hàng Nam Tịnh - Mã Lò', '2028/11 Tân Kỳ Tân Quý / . 6', 'KD02'),
('CNTMNDN', 'Cửa Hàng Nội Thất Minh Nhật - Đồng Nai', '2395 Ấp Phương Lâm, xã Phú Lâm, H.Tân Phú, Đồng Nai', 'KD09'),
('CNTPR', 'Cửa hàng Nệm Tốt- Phan Rang - 093 122 9729', 'Số 22 đường 16-4, F. Kinh Dinh, Phan Rang, T. Ninh thuận. 8', 'KD06'),
('CNTQ8', 'Cửa Hàng Nhật Tân - Q8', '78-79 Lên Tỉnh 5, F5, Q8. 10', 'KD06'),
('CNTQDN', 'Cửa Hàng Ngọc Tùng Quân - Đà Nẵng', '191 Núi Thành Quận Hải Châu. ( Giá dành riêng).', 'KD11'),
('CNTTADN', 'Cửa hàng TTNT Trung Anh - Đà Nẵng', '104 Trần Đại Nghĩa, F Hòa Hải. Ngũ hành Sơn, Đà Nẵng. 13', 'KD11'),
('CNTTC', 'Chị Thảo - cửa hàng Ngọc Thảo', '832 Trường Chinh, P13, Q.Tân Bình', 'KD02'),
('CNTTDBP', 'Cửa Hàng Nội Thất Thành Dương - Bình Phước', '19 KP2 TT Chơn Thành , huyện Chơn Thành, BP', 'KD09'),
('CNTTGV', 'Cửa Hàng New Trung Thành - Gò Vấp', '185B Nguyễn Oanh, F10 Gò Vấp. 8', 'KD06'),
('CNTTNBD', 'Nội Thất Tuấn Ngân- Bình Định', 'đường Thanh Long 4, Phước Mỹ, Quy Nhơn, Bình Định', 'KD06'),
('CNTTNDN', 'Cửa Hàng Thanh Nhã - Đồng Nai', 'Thị trấn Tân Phú, Đồng Nai', 'KD07'),
('CNTTNTN', 'Cửa hàng Thanh Nga- Tây Ninh', '701 CMT8, KP.2, F.3, TP. Tây Ninh', 'KD07'),
('CNTTTBP', 'Cửa Hàng Thanh Thúy- Bình Phước', 'số 63 QL13, Ấp 5 xã Lộc Thái, Huyện Lộc Ninh, Bình Phước', 'KD09'),
('CNTTTCT', 'Cửa Hàng Nội Thất Toàn Thịnh- Cần Thơ', '464 đường CMT8, Phường Bùi Hữu Nghĩa, Quận Bình Thuỷ, Tp.Cần Thơ.', 'KD08'),
('CNTTTHG', 'Cửa Hàng Nội Thất Trường Thịnh- Hậu Giang', '237 - đường 30/4 - KV5 - F Thuận An -TX Long Mỹ - Tỉnh Hậu Giang. 8', 'KD01'),
('CNTVBL', 'Cửa Hàng Nội Thất Việt -Bến Lức', '214 Quốc Lộ 1A, KP4, TT Bến Lức, Long An.', 'KD02'),
('CNTVL', 'Cửa hàng Ngọc Thu', 'F1/48 ấp 6, Xã Vĩnh Lộc A, Huyện Bình Chánh. 10', 'KD02'),
('CNTXTD', 'Cửa Hàng Nội Thất Xanh - Thủ Đức ( BINGBEE VIỆT NAM)', '1/4B Đường số 18, KP4, Linh Đông, Thủ Đức.', 'KD07'),
('CNVDDN', 'Cửa Hàng Nguyễn Văn Du - Đồng Nai', 'Đường Nguyễn Hoàng, Tổ 4, Ấp 2, Sông Trầu, Trảng Bom, Đồng Nai', 'KD07'),
('CNVPL', 'Cửa Hàng Nam Việt - PleiKu', '30 CMT8 Phường. Hoa Lư, Pleiku, Gia Lai', 'KD09'),
('CNVTN', 'Cửa hàng Ngọc Vân Thốt Nốt', 'KV Thới An 3, P. Thuận An, Q Thốt Nốt, TP Cần Thơ', 'KD08'),
('CNYCT', 'Cửa Hàng Như Ý - Cần Thơ', '112B, CMT8, P. Cái Khế, Q. Ninh Kiều, TP. CT', 'KD08'),
('CNYDM', 'Cửa Hàng Như Ý ((Đăk Min)', '205 Nguyễn Tất Thành,TT Đắk Min,H.Đắk Min,8', 'KD09'),
('CNYHM', 'Cửa Hàng Như Ý Hóc Môn', '63 Đặng Thúc Vinh, Hóc Môn', 'KD09'),
('CPARADISE', 'Dự án Paradise - Dốc Lết', 'DỐC LẾT- KHÁNH HÒA', 'KD10'),
('CPATD', 'Cửa Hàng Phương Anh', '170 Quốc lộ 13,P.Hiệp Bình Chánh,Thủ Đức', 'KD07'),
('CPCDL', 'Chị Phúc - Cửa Hàng Phúc Chiến', 'Số 9 Lý Tự Trọng TP Đà Lạt ( dán toa vô nệm)', 'KD09'),
('CPDQ12', 'Chị Đông - CH.Phương Đông', '19/1A,Phan văn hớn,P.Tân Thới nhất,Q12', 'KD07'),
('CPDTB', 'Anh Phát - Cửa hàng Phát Đạt Tân Biên', 'Khu phố 2 Thị trấn Tân Biên, Tây Ninh', 'KD07'),
('CPDTN', 'Anh Sỹ - Phước Đa', 'Chợ Long Hoa, Tây Ninh', 'KD09'),
('CPGMBT', 'Cửa Hàng Phúc Gia Minh - Bến Tre', 'KP2, TT Châu Thành, huyện Châu Thành, Bến TRe (không giá)', 'KD02'),
('CPLBD', 'Chị Linh : Cửa Hàng Phương Linh', 'Tỉnh lộ 743,Bình Dương: 0903.527.271', 'KD03'),
('CPLBR', 'Cửa Hàng Phi Long- Bà Rịa', 'chợ Mỹ Xuân, Huyện Tân Thành, Bà Rịa Vũng Tàu. 10', 'KD07'),
('CPLLX', 'Cửa hàng Pha Lê - Long Xuyên', '1254 Trần Hưng Đạo, P. Mỹ Xuyên, TP Long Xuyên, T. An Giang', 'KD08'),
('CPLNH', 'Anh Bình - CH Phát Lợi - Ninh Hòa', '404 Trần Quý Cáp, Ninh Hòa', 'KD06'),
('CPLTBR', 'Cửa Hàng Phước Long Thọ - Bà Rịa', 'Tổ 22, Ấp Phước Thới, Xã Phước Long Thọ, Huyện Đất Đỏ, BRVT', 'KD07'),
('CPMDN', 'Cửa Hàng Phương Mai Đắc Nông', 'Tôn ĐứcThắng , Gia Nghĩa, Đắc Nông. 8', 'KD09'),
('CPNBD', 'Chị Phượng :Cửa hàng Phượng Nhàn', 'ấp 8,lộc thuận,bình đại,bến tre . 10', 'KD02'),
('CPNHG', 'Cửa hàng Phương Nhung- Hậu Giang', 'ấp Hoà Phụng B, TT Kinh Cùng, H. Phụng Hiệp, T. Hậu Giang', 'KD08'),
('CPNQ2', 'Cửa Hàng Phương Nghi', '607 Nguyễn Duy Trinh', 'KD02'),
('CPTADN', 'Công ty Phúc Tiên An - Đồng Nai', '31A/20 Bùi Trọng Nghĩa, Tổ 42. KP3, Trảng Dài, Đồng Nai', 'KD07'),
('CPTBH', 'Cô Bích - Cửa Hàng Phước Thịnh ( Nệm lấy màu đậm)', '1/2 KP1, Tân Hoà, Biên Hoà, Đồng Nai (12h xe về)', 'KD07'),
('CPTBP', 'Cửa Hàng Phước Thịnh - Bình Phước', '443 QL14, F Tân Bình, TX Đồng Xoài, Bình Phước. 8', 'KD09'),
('CPTBT', 'Cửa Hàng Phương Tuyền - Bến Tre', 'Ấp An Hội A, xã An Thuận, Huyện Thạnh Phú, Bến Tre', 'KD02'),
('CPTCL', 'Cửa hàng Phúc Thịnh - Cam Lâm', '340 Trường chinh, Cam Đức,Cam lâm,khánh hòa. 10', 'KD06'),
('CPTDN', 'Cửa Hàng Phương Thảo - Đắc Nông', '28 Nguyễn Tất Thành, TT Ea T\'Ling, H.Cư Jut, Dak Nông', 'KD09'),
('CPTHACH', 'Công Ty Phú Thạch', '859 Hương Lộ 2,khu phố 8,Bình trị đông A,Bình tân', 'KD04'),
('CPTHG', 'Chị Thảo - Cửa Hàng Phú Thịnh', '442 Hậu giang, Phường 12, quận 6. 10', 'KD02'),
('CPTKG', 'Cửa hàng Phương thúy', 'rạch giá,kiên giang', 'KD02'),
('CPTLA', 'Chị Thủy- Phước Thành', 'Quốc lộ 1S,Tân Hiệp,Long an', 'KD09'),
('CPTTD', 'Chị Thảo - Cửa Hàng Phương Thảo', '79 Võ Văn Ngân,F Linh Chiểu,Q.Thủ Đức. 8', 'KD07'),
('CQAG', 'Cửa Hàng Quang- An Giang', 'Ấp Phú Xương, Chợ Vàm, Phú Tân, An Giang', 'KD08'),
('CQDHM', 'Cửa Hàng Quốc Dũng', '31/4 Phan văn đối,Tiền lâm,Bà điểm ,Hóc môn', 'KD08'),
('CQH2TN', 'Cửa Hàng Quỳnh Hương II- Tây Ninh', 'Ngã 3 An Hoà, Chợ An Hoà, KCN Thành Thành Công, Trảng Bàng. 8', 'KD07'),
('CQH3TN', 'Cửa Hàng Quỳnh Hương 3 - Tây Ninh', 'Đường Bời Lời, KP Gia Quỳnh, TT Trảng Bàng, 8', 'KD07'),
('CQHBD', 'Anh Ngọc, Cửa Hàng Quỳnh Hoa', 'Bình Dương', 'KD09'),
('CQHTN', 'Cửa Hàng Quỳnh Hương- Tây Ninh', '19 QL22, Lộc Thành, Trảng Bàng, Tây Ninh. 8', 'KD07'),
('CQKBD', 'Anh Hòa CH Quốc Khánh (Sông Bé)', '23/17 khu phố bình phước B,Bình chuẩn,thuận an ,bình dương. 10', 'KD07'),
('CQNKG', 'Cửa Hàng Quốc Nam- Kiên Giang', 'khu phố 2, TT Thứ 3, H. An Biên, T. Kiên Giang', 'KD08'),
('CQODT', 'Cửa Hàng Quốc Oai- Dầu Tiếng', '45 Thống Nhất, Dầu Tiếng , Bình Dương', 'KD07'),
('CQPBH', 'Cửa hàng Quang Phương', '164 Đường 30/4 , Biên Hoà, Đồng Nai', 'KD07'),
('CQTLG', 'Cửa Hàng Quãng Thành- Lagi', '532B Thống Nhất, F. Tân An, Lagi. 8', 'KD06'),
('CQTQ7', 'Cửa hàng Quỳnh Trâm', '176 Lâm văn bền,q7', 'KD02'),
('CQTTN', 'Chị Thuý - Cửa hàng Quốc Tế', '282 Cách Mạng Tháng Tám, KP2, P.2, T.X Tây Ninh', 'KD07'),
('CQTVT', 'Cửa Hàng Quốc Toản- Vũng Tàu', '1133 đường 30/4, Phường 11, TP. Vũng Tàu, Tỉnh Bà Rịa - Vũng Tàu', 'KD07'),
('CQVBP', 'Cửa Hàng Quang Vân- Bình Phước', 'chợ Bù Nho, huyện Phú Riềng , Bình Phước', 'KD09'),
('CRCHDKG', 'Cửa Hàng Rèm cửa Hoàng Duyên- Kiên Giang', '200A Nguyễn Trung Trực, kp5, thị trấn Dương Đông, huyện Phú Quốc, tỉnh Kiên Giang', 'KD08'),
('CSBBD', 'Cửa Hàng Phúc Gia An ( AN NGUYÊN FURNITURE)', '22/6 QL13 F Thuận Giao, TX Thuận An, Bình Dương. 8', 'KD07'),
('CSD2LT', 'anh Duy - Công ty TNHH NT Mỹ Phát', '327-329 QL51 , Long Bình Tân, tp, Biên Hoà. 8', 'KD07'),
('CSDLT', 'Chị Nga - DNTN TM-DV Sáu Duy', '1073 Quốc Lộ 51, F, Long Bình Tân,Tp Biên Hoà, Đồng Nai. 8', 'KD07'),
('CSGPQ', 'SUN GROUP - CÔNG TY TNHH XÂY DỰNG NAM ĐẢO', 'dự án LÀNG NHIỆT ĐỚI', 'KD10'),
('CSHLD', 'Cửa Hàng Sơn Hà', '873B hùng Vương -Di Linh - Lâm Đồng. 8', 'KD09'),
('CSKBT', 'Cửa Hàng Trang Trí Nội Thất Sang Kiều', 'Quốc lộ 1A ,TT.Lương sơn ,Bắc ninh,Bình thuận', 'KD09'),
('CSLPT', 'Cô Lâm - Cửa Hàng Sơn Lâm', '507 Trần hưng đạo, Phan Thiết, Bình thuận', 'KD06'),
('CSNCD', 'Cửa hàng Sáu Ngợi', 'A13/8 Nguyễn Hữu Trí, KP1, T.T Tân Túc, Bình Chánh. 8', 'KD02'),
('CSNGL', 'Chị Nguyên - Công Ty Song Nam', '70B Nguyễn Trãi, Pleiku, gia lai', 'KD08'),
('CSOLA', 'Cửa Hàng: Shop Oanh', 'đường Trưng Trắc, TT Thủ Thừa, Long An.10 ( Tất Cả nệm đóng bao chành)', 'KD02'),
('CSOTEL', 'Công Ty CP Cung ứng dịch vụ Sotel', '53 Đường số 18, Phường Hiệp Bình Chánh, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
('CSP', 'Shopee', NULL, 'KD04'),
('CSRDD', 'Showrom Văn Phòng Đại Diện', '15-17-19, Đường Số 2, KDC Phạm Văn Hai, Xã Phạm Văn Hai, Quận Bình Chánh', 'KD04'),
('CSRLA', 'Công ty TNHH SAM RAN', 'Ấp 5A, xã Lương Bình, huyện Bến Lức, Long An', 'KD03'),
('CSSQ5', 'anh Trí - Cửa Hàng San San Q5', '257 Trần Phú F8 Quận 05', 'KD02'),
('CSTBD', 'Tiêu ái Thu - Cửa Hàng Sơn Thủy', '56/1 Khu Phố 3,Thị Trấn Bình Đại', 'KD07'),
('CSTCT', 'Cô Sáu - Cửa Hàng Sáu Tỷ', 'Quốc Lộ 91, Thốt Nốt, Cần Thơ', 'KD08'),
('CSTDBT', 'Anh Thắng - Công ty Sao Thái Dương', 'Ao Đôi,Bình tân', 'KD07'),
('CSTMTB', 'Chị Thanh - Cửa hàng Sáu Trang Minh', 'QL22, Trảng bàng, Tây Ninh ( Gần Bánh Canh Cô BA)', 'KD07'),
('CSTNGD', 'Cửa Hàng Siêu Thị Nệm- Gò Dầu', '04 Gò Dầu Phường Tân Sơn Nhì, Quận Tân Phú . 6', 'KD02'),
('CSTNQ2', 'Cửa Hàng Siêu Thị Nệm Q2 ( Không Ghi Giá )', '363 Nguyễn Duy Trinh Q2. 8 %', 'KD07'),
('CSTSTN', 'Chị Vui - Cửa hàng Sáu Trang Sơn', 'Long chí,long thành trung,hòa thành,tây ninh (chợ long hoa)', 'KD07'),
('CSTTN', 'Chị Mai - Cửa hàng Sáu Trang', 'f55/4 Lạc Long Quân, Hoà Thành, Tây Ninh', 'KD07'),
('CSVTBD', 'Anh Vương / Anh Khoa - Công Ty Song Việt Tiến', 'Lô J2 Đường số 10,KCN sóng than,dĩ an ,bình dương', 'KD02'),
('CTABR', 'Bác Tám Âu - Cửa hàng Tám Âu', 'ấp bắc,xã hòa long,TX.Bà rịa', 'KD02'),
('CTABT', 'Cửa Hàng Tuyết Anh (Đăng Vũ) Bình Thuận', 'KP4, TT Tân Nghĩa, Hàm Tân, Bình Thuận. 8', 'KD06'),
('CTADN', 'Cửa Hàng Trung Ánh- Đồng Nai', '1008 Ấp Tân Lập 2, xã Cây Gáo, h. Trảng Bom, Đồng Nai. 6', 'KD07'),
('CTALX', 'Chị Hằng :Cửa hàng Tiến An', '40-42 Ngô Gia Tự, Long Xuyên', 'KD08'),
('CTAQ7', 'Cửa Hàng Thiên An - Quận 7', '793/51/24 Trần Xuân Soạn, F, Tân Hưng, Quận 7. 8', 'KD10'),
('CTATP', 'Cửa Hàng Trâm Anh Tân Phú', '04 Tân Quý. 6', 'KD02'),
('CTBBP', 'Cửa Hàng Thái Bình- Bình Phước', 'Thị Trấn Đức Phong, Huyện Bù Đăng- Bình Phước. 10', 'KD09'),
('CTBH', 'Cửa Hàng Tuyết - Biên Hòa (Tuyết Bedding)', '63A/4, Kp10, tân biên, biên hòa', 'KD07'),
('CTBL', 'Cửa Hàng TTNN Toàn- Bến Lức', '227- 229 QL1A, KP3, TT Bến Lức, Long An. 8', 'KD02'),
('CTCC', 'Cửa Hàng Tâm (củ chi)', '90 Tỉnh Lộ 8,KP2,Thị trấn củ chi. 10', 'KD09'),
('CTCMT', 'Cửa Hàng Thành Công - Mỹ Tho', '10 Ấp Bắc, Mỹ Tho, Tiền Giang', 'KD02'),
('CTCP', 'Công ty Toàn Châu Phát', 'Nữ Dân Công, Vĩnh Lộc A, Bình Chánh', 'KD02'),
('CTD1BD', 'Cửa Hàng Thành Đạt 1 Bình Dương', '494-496 CMT8, Thủ Dầu Một, BD. 10', 'KD07'),
('CTDBC', 'Chị Hương - Cửa Hàng Thành Đạt', 'A26/5A, Ấp 1,Bình Hưng,Bình Chánh. 8', 'KD02'),
('CTDBT', 'Chị Thương :TTNT Thành Đạt', '321/1B ấp 1,xã quới sơn,H.Châu Thành,Bến tre. 8', 'KD02'),
('CTDCD', 'Cửa Hàng Trúc Đào- Châu Đốc', '21 Lê Lợi, Phường B, Châu Đốc, An Giang. 10', 'KD08'),
('CTDDN', 'Cửa hàng TTNT Trang Dung', 'K4/171A, Tân Mỹ, Tổ 94, KP 5, F. Bửu Hòa, Biên Hòa, Đồng Nai.', 'KD07'),
('CTDLA', 'Cửa Hàng Thành Đạt', 'ấp Bình Tả, Xã Đức Hòa Hạ ,Đức Hòa , Long An', 'KD09'),
('CTĐLA', 'Chị Vân - Cửa Hàng Tuyết Đông', '47 Nguyễn Trung Trực,TX.Tân An,Long An', 'KD09'),
('CTDNGT', 'Cửa Hàng Thuận Dũng Ngô Gia Tự', '241 Ngô Gia Tự, Q10. 10 (nhớ vô bao)', 'KD02'),
('CTDNS', 'Trang Trí Nội Thất Tiến Đạt', '211 Nguyễn Sơn,P.Phú Thạnh,Q.Tân Phú,TP.HCM', 'KD02'),
('CTDQ12', 'Cửa Hàng Thành Đạt Quận 12', '345 Hà Huy Giáp, F, Thanh Lộc, Quận 12. 8', 'KD09'),
('CTDQ7', 'Cửa Hàng Thành Đạt', '310 Huỳnh Tấn Phát,Phú Xuân,Nhà Bè', 'KD07'),
('CTDTN', 'Cửa Hàng Thanh Duyên - Tây Ninh', 'ấp Bình Thuận, xã Phước Bình, TX Trảng Bàng, Tây Ninh', 'KD07'),
('CTGCT', 'CH Nệm Trường Giang (cty việt hải) - (báo trước giờ giao tới)', '11 Mậu Thân,Xuân Khánh,Ninh Kiều,(đem theo xe kéo) .10', 'KD01'),
('CTGDG', 'Thế Giới Drap Gối -Q7', '255A Nguyễn Thị Thập- F. Tân Phú, Q7 . 10', 'KD06'),
('CTGNTCR', 'Cửa Hàng Thế Giới Nội Thất - Cam Ranh ( Không ghi Giá)', '205 đường 22 tháng 8, Cam Ranh ( CSDC : vàng+ xám),EP1 viền : Trắng', 'KD06'),
('CTHAG', 'Cửa Hàng Thành Hương Mẹ ( 0902 3535 75)', '39 Trần Hưng Đạo Thị Trấn Tri Tôn,An Giang (cấm xe 2.5 tấn)', 'KD08'),
('CTHBD', 'Cửa Hàng Thanh Hằng', '94 Bạch Đằng ,P.24, Q. Bình Thạnh,TPHCM. 10', 'KD06'),
('CTHBH', 'Chị Nga - Cửa Hàng Thuận Phát', '449 Tỉnh Lộ 10, An Lạc, bình Tân', 'KD09'),
('CTHBT', 'Cửa Hàng Thanh Hải', '21 Nguyễn Đình Chiểu, H.Mỏ Cày,Bến Tre. 10 (Th lấy kem)', 'KD02'),
('CTHBTr', 'Cửa Hàng Thảo Hà - Bến Tre', '12 THÁI HỮU KIỄM BA TRI, -', 'KD02'),
('CTHCL', 'Cửa Hàng Thanh Hùng', 'Chi Lăng,An giang', 'KD02'),
('CTHDTV', 'CH Thuận Hòa Duy - Liêu Minh Duy', 'Khóm 8, Cầu Kè, Trà . 10', 'KD01'),
('CTHGV', 'Cửa Hàng Thanh Hường- Gò Vấp', '562 - 564 Lê Đức Thọ, P.17, Gò Vấp', 'KD06'),
('CTHHG', 'Cửa Hàng Thái Hưng- Hậu Giang', '841 Hùng Vương, KV5, F, Ngã Bảy, TP ngã Bảy, Hậu Giang.', 'KD08'),
('CTHKG', 'Cửa Hàng Thái Hoà ( Thứ 9,5 Kiên Giang)', NULL, 'KD08'),
('CTHLA', 'Chị Hòa - Cửa hàng Thuận Hòa', '72 Nguyễn Trung Trực, TP. Tân An, Long An_E2v . 10', 'KD01'),
('CTHLD', 'Cửa Hàng Tú Hoa - Lâm Đồng', '19 Hai Bà Trưng - Liên Nghĩa- Đức Trọng , Lâm Đồng. 8', 'KD09'),
('CTHQ8', 'Cửa Hàng Thu Hà - Q8', '26 Cao Xuân Dục, F13, Quận 08', 'KD06'),
('CTHSRG', 'Chị Dung- CH Hải Sơn Rạch Gía', '382 Lạc Hồng,tp rạch giá ,kiên giang (không ghi giá+HD bỏ bao thư). 10', 'KD01'),
('CTHSST', 'Anh Trung - Tân Hải Sơn', 'Số 10,Nguyễn Chí Thanh, P6, TP. Sóc Trăng. 10', 'KD01'),
('CTHTDM', 'Cửa Hàng Thuận Hưng- Thủ Dầu Một( Xuất cho NT Thanh Sương)', '11 Phú Lợi, F. Phú Lợi , TP Thủ Dầu Một, Bình Dương. 8', 'KD07'),
('CTKAG', 'Cửa hàng Thanh Kiều', 'Chợ Tổng đội,Hòn Đất,Kiên giang', 'KD09'),
('CTKDN', 'Cửa Hàng Trung Kiên Đồng Nai', '1433 QL1A ngã 3 Trà Cổ, An Điền, Trảng Bom, Đồng Nai. 10', 'KD07'),
('CTKG', 'Cửa Hàng Tạo - Kiên Giang', 'ấp thứ nhất, xã tây yên, huyện An Biên. T. Kiên Giang', 'KD08'),
('CTKNB', 'Cửa Hàng Trung Kiên- Nhà Bè - (HKD Nguyễn Yến Nhi)', '514 Nguyễn văn Tạo, Nhà Bè. HCM (ko ghi giá)', 'KD06'),
('CTKPY', 'Chị Vân - Cửa Hàng Thủy Kim', '107 Trần Hưng Đạo,Tuy Hòa,Phú Yên', 'KD07'),
('CTLBP', 'Cửa Hàng Thanh Long Bình Phước', 'chợ Bù Na, xã Nghĩa Bình , Bù Đăng, Bình Phước. 8', 'KD09'),
('CTLBR', 'Cửa Hàng Nội Thất Thuý Lan - Bà Rịa', '93-101 Nguyễn Hữu Thọ, Tp, Bà Rịa. 8', 'KD07'),
('CTLDL', 'Cửa hàng Thanh Loan - Đắk Lăk', '196 Nguyễn Tất Thành , EARAR, Đắk Lăk. 8', 'KD09'),
('CTLDN', 'Chị Nhung- Cửa hàng Thành Lâm', '463 Phạm văn thuận,Tân Mai,Đồng Nai,gần chợ tân mai', 'KD07'),
('CTLLA', 'Chị Hoa - CH Thành Lợi - Long An ( ko ghi giá)', '8D chợ Bàu Trai, Thị trấn Hậu Nghĩa, Đức Hòa, Long An', 'KD01'),
('CTLLH', 'chị Hoàng Anh - cửa hàng Thuý Lan', 'Thị trấn Long Hải', 'KD07'),
('CTLPR', 'Chị Ninh- cửa hàng Thành Lợi- Phan Rang', '138 Thống Nhất, Phan Rang, Bình Thuận ( Nệm lấy màu đậm)', 'KD06'),
('CTLPY', 'Rèm Cửa Tuyết Loan (Không ghi giá)', '75 Lê Thành Phương -TT Chí Thạnh, Huyện Tuy An, Phú Yên ( không lấy kem bông nổi và trắng). 10', 'KD06');
INSERT INTO `customer` (`makh`, `tenkh`, `diachi`, `qlkhuvuc`) VALUES
('CTLTB', 'Cửa Hàng Thanh Long Tân Bình', '1094 CMT8, F4, Tân Bình. 8', 'KD02'),
('CTLTN', 'Cửa Hàng Thanh Liễu - Tây Ninh', '432 CMT8 Tây Ninh', 'KD07'),
('CTMBT', 'Cửa Hàng Tiến Mỹ- Bình Thuận', '27 Hai Bà Trưng, TT Phan Rí, Tuy Phong, Bình Thuận. 8', 'KD06'),
('CTMLK', 'Chị Minh :Thanh Minh -Long khánh', 'A105 Hùng Vương,Thị Xã Long Khánh,Đồng Nai', 'KD02'),
('CTMMT', 'chị Nhân - cửa hàng Thanh minh', '454A ấp Bắc, Phường 5, TP.Mỹ Tho (không ghi giá)', 'KD01'),
('CTMPH', 'Anh Thiện - Cửa Hàng Thiện Mỹ', '58 Lê Lợi ,KV1,P.ngã bảy,TX.Ngã bảy,Hậu Giang', 'KD01'),
('CTMVL', 'Anh Tùng - Trang trí nội thất Toàn Miền', 'chợ mai phốp,trung hiếu,vũng liêm,vĩnh long. 10', 'KD08'),
('CTNBP', 'Cửa Hàng Tài Ngân - Bình Phước', '30 Nguyễn Huệ, TX. Bình Long. T. Bình Phước', 'KD09'),
('CTNBT', 'Trang Trí Nội Thất Thiên Nga Bến Tre', 'ấp 5,Thị Trấn Giồng Trôm,Bến tre . 8', 'KD02'),
('CTNCG', 'Cửa Hàng Tuyết Nhung- Cần Giờ', 'đường Đào Cừ, ( đoạn gần siêu thị)', 'KD06'),
('CTNCT', 'Công ty TNHH SX TM DV Trăng Non', '27 Nguyễn Khuyến, An Cư, Ninh Kiều, Cần Thơ', 'KD10'),
('CTNCV', 'Chị Trúc - Cửa hàng Thanh Nhạn', '0439 tổ 24 ấp thuận tiến A,Xã thuận an,H. bình minh,T.vĩnh long. 8', 'KD08'),
('CTNDN', 'Cửa hàng Thiên Ngọc- Quãng Ngãi 0906409168', '563 Quang Trung,TP.Quãng Ngãi', 'KD06'),
('CTNGD', 'Chị Dung - cửa hàng Tín Nghĩa Gò Dầu', 'Khu phố 1, Thị trấn Gò Dầu, Tây Ninh', 'KD07'),
('CTNQ5', 'Cô Minh : Trung Tâm Tín Nghĩa MINH A1', '144 Phạm Đình Hổ Q6,TPHCM. 8', 'KD02'),
('CTNTN', 'Cửa hàng Thu Ngân - Tây Ninh', '002A đường 30/4 KP4, F3, TX Tây Ninh, Tây Ninh', 'KD07'),
('CTNTV', 'Cửa Hàng Tâm Nga - Trà Vinh', 'Trà Vinh', 'KD04'),
('CTNXQ5', 'Hiệu Buôn Tân Nam Xương- Q5', '17 Phan Văn Khoẻ, F13,Q5', 'KD03'),
('CTOCT', 'Cửa Hàng Tân Oanh', '100 Nguyễn Đức Cảnh, Cái Khế, Ninh Kiêu TP Cần Thơ. 10', 'KD08'),
('CTP2BH', 'Chị Hương - Cửa Hàng Thiên Phước II', '47/1KP4 Nguyễn ái Quốc,TP.Biên hòa. 10', 'KD01'),
('CTP2CL', 'Chị My -Cửa Hàng TƯỜNG PHÁT 2', 'Thôn Bắc Vĩnh, xã Cam Hải Tây, Huyện Cam Lâm, KH', 'KD06'),
('CTP3TL10', 'Anh Vũ - cửa hàng Thuận Phát 3', '3A 63 Trần Văn Giàu, Cầu Xáng, Phạm Văn Hai, Bình Chánh. 6', 'KD02'),
('CTP4HL2', 'Cửa hàng Thuận Phát 4', '796 Hương lộ 2, P Bình Trị Đông A, Q Bình Tân. 8', 'KD02'),
('CTP5DT', 'Cửa Hàng Thuận Phát 5', 'ÂP 2,Xã Mỹ Long ,cao lãnh -Đồng tháp:0975575095Yên. 6', 'KD02'),
('CTPBC', 'Cửa hàng Thanh Phong - 0913.112489', 'D3/18 Nguyễn Thị Tú,ấp 4,Vĩnh lộc B,Bình chánh. 8', 'KD02'),
('CTPBD', 'Thành Phát Bình Dương', '478 CMT8,P.Hiệp Thành,TXTDM,BD', 'KD07'),
('CTPBMT', 'Chị Tuyền - Công ty TNHH tư vấn thiết kế nội thất Tuấn Phát', 'Số 129 Y Jút, Phường Thống Nhất, TP.Buôn Ma Thuột, Tỉnh Đắk Lắk, Việt Nam', 'KD09'),
('CTPBT', 'Chị Mai - CH Tân Phát', '11 Nguyễn Đình Chiểu, P.2, Bến Tre. 8', 'KD02'),
('CTPCL', 'Cô Phát - Công Ty TNHH TM Tường Phát', 'Thôn Tân thành, Cam Thành Bắc, Cam Lâm, cam Ranh (KHÔNG GHI GIÁ)', 'KD06'),
('CTPCT', 'Cửa Hàng Trường Phát - Cần Thơ', '325 Võ Văn Kiệt, P,An Thới, Q. Bình Thủy, TP. CT', 'KD08'),
('CTPDL', 'Cửa Hàng Thịnh Phát- Đăk Lăk', '507 Giải Phóng, TT Ea Drăng, H, Ea H\' Leo. T, Đăk . 8', 'KD09'),
('CTPDT', 'Chị Phương CH Thanh Phương Hồng Ngự', 'Hồng Ngự 0907 555 299 c.Phương.10', 'KD02'),
('CTPLA', 'Cửa Hàng Thuận Phát- Long An', '260 Quốc lộ 62 Long An. 8', 'KD02'),
('CTPNB', 'Chị Phương - Cửa Hàng Tâm Phương', '1382 Lê Văn Lương,ấp 2, Xã Phước Kiểng ,Huyện Nhà Bè,Tphcm', 'KD06'),
('CTPNDT', 'Cửa Hàng Thuận Phát- Nguyễn Duy Trinh', '509 Nguyễn Duy Trinh P.Binh Trưng Đông Q 2', 'KD07'),
('CTPNK', 'Thuận Phát Ninh Kiều', '509 đường 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ.6', 'KD08'),
('CTPNS', 'cửa hàng Tấn Phát - Nguyễn Sơn', '325B Nguyễn Sơn, Phường Phú Thọ Hòa, Quận Tân Phú 8', 'KD02'),
('CTPNT', 'Cửa Hàng Trường Phát Nha Trang', 'Số 427 ,đường 2/4 ,vĩnh hải ,nha trang ( Đóng chành). 10', 'KD06'),
('CTPOM', 'Cửa Hàng Thuận Phát- Ô Môn', '1088 KV4, Phường Châu Văn Liêm, Quận Ô Môn, TP.Cần Thơ', 'KD08'),
('CTPPL', 'Cửa Hàng Thanh Phong -PleiKu', '243 Nguyễn Tất Thành Pleiku Gia Lai. 8', 'KD09'),
('CTPQ12', 'Chị Trâm - Cửa Hàng Thịnh Phát', '197 Phan Văn Hớn,Q.12 ĐT: 66.523.451', 'KD09'),
('CTPQ2', 'Cửa Hàng Tâm Phát Quận 2', '295 Nguyễn Thị Định, F Bình Trưng Tây Quận 2', 'KD07'),
('CTPQ6', 'Thiên phú - Q6', '61-63 Cao văn lầu,F1,Q6,TP.HCM. 10', 'KD02'),
('CTPQ8', 'Cửa Hàng Màn Cửa Thuận Phát- Q.8', '229 Liên Tỉnh, F.5, Quận 8', 'KD06'),
('CTPQ9', 'Cửa hàng Nội thất Tín Phát Quận 9', '490 Lã Xuân Oai Quận 9. 8', 'KD07'),
('CTPQNGT', 'Cửa Hàng Trần Phú Quý', '409 Ngô Gia tự', 'KD02'),
('CTPTB', 'Cửa Hàng Tân Phú- Tân Bình', '66 Ba Vân F14 Quận Tân Bình', 'KD02'),
('CTPTD', 'Cửa Hàng Thành Phát- Thủ Đức', '598 Tô Ngọc Vân, Thủ Đức', 'KD07'),
('CTPTN', 'Cửa Hàng Thiên Phúc- Tây Ninh', '499 Bời Lời, Ninh Sơn, Tây ninh. 8', 'KD07'),
('CTPTNH', 'Anh Phú Cửa Hàng Thuận Phát- Thoại Ngọc Hầu', '140A Thoại Ngọc Hầu, Q, Tân Phú. 8', 'KD02'),
('CTPTP', 'Cửa hàng Thuận Phát Tân Phú', '489 Luỹ Bán Bích,Phường Hiệp Tân, Quận Tân phú. 8', 'KD02'),
('CTQBL', 'Cửa Hàng Tú Quyên - Bạc Liêu', 'ấp Tam Hưng xã Vĩnh Hưng, Vĩnh Lợi, Bạc Liêu', 'KD08'),
('CTQBP', 'Cửa Hàng Nội Thất Thiện Quý - Bình Phước', 'Khu 8, Phường Long Phước, Thị xã Phước Long, Bình Phước', 'KD09'),
('CTS2VT', 'Cửa Hàng Trường Sơn - Bình Giả', '762 Bình Giả , F10, Tp Vũng Tàu', 'KD07'),
('CTSAG', 'Cửa Hàng Thanh Sang - An Giang', 'Trần Hưng Đạo, Thị Trấn Tri Tôn, An Giang', 'KD08'),
('CTSDL', 'chị Thanh - cửa hàng Trường Sanh ( Không Ghi Nhớ)', '849 Hùng Vương, Di Linh, Lâm Đồng 8', 'KD09'),
('CTSHP', 'Cô Tám - cửa hàng Tám Sỹ', '68 ấp 1, thị trấn Hộ Phòng, Huyện Giá Rai, tỉnh Bạc Liêu. (nệm dài 1m95). 10', 'KD01'),
('CTSKG', 'Cửa hàng Tân sơn', 'Hà tiên,Kiên giang', 'KD02'),
('CTSVT', 'Cửa hàng Trường Sơn. Chị Loan', '300 đường 30-4 , P, Rạch Dừa, Vũng tàu. 10', 'KD07'),
('CTT2AG', 'Cửa Hàng Thanh Tùng 2- An Giang (0939 922 104)', 'Khóm Thới Hòa, Thị trấn Nhà Bàng, Tịnh Biên, AG', 'KD08'),
('CTTAG', 'Cửa hàng Tân Thanh - Tân Châu An Giang', '44 Trần Hưng Đạo, TX Tân Châu, An Giang. 10', 'KD08'),
('CTTBC', 'Chị Thoa - Công Ty Tường Thái', 'A22/2 Quốc lộ 50,Bình Chánh', 'KD04'),
('CTTBL', 'Cửa Hàng Trần Tỷ _ Bạc Liêu', 'ấp nội ô, TT Ngan Dừa, H. Hồng Dân, T. Bạc Liêu', 'KD08'),
('CTTCC', 'Cửa Hàng Trọng Tín- Củ Chi', '16 Tỉnh lộ 8, Củ Chi.', 'KD09'),
('CTTCL', 'Cửa Hàng Thanh Tùng Chợ Lách', '304/22 Ấp An Hoà, xã Long Thới, Huyện Chợ Lách, BTre. 6', 'KD02'),
('CTTCMDN', 'Chị Trinh : Cửa hàng Trường Thanh Cẩm Mỹ', 'Ngã tư Sông Ray,cẩm mỹ,đồng nai. 8', 'KD07'),
('CTTDK', 'Cửa hàng TTNT Tiến Thanh', '57 Lac Long Quan,Dien Khanh , T. Khánh Hòa(Dau cau Tran Quy Giap)10', 'KD06'),
('CTTDL', 'Cửa Hàng Thuận Thành Đà Lạt (0792078240)', '206 Bùi Thị Xuân,P2, Đà Lạt, Lâm Đồng(Hóa đơn dán ở ngoài bao chành)8', 'KD09'),
('CTTDT', 'Chị Thoa- cửa hàng Thuận Thiên (Không ghi giá)', '120/D Nguyễn thị minh khai,mỹ an,đồng tháp 10,ĐT. 6', 'KD02'),
('CTTGT', 'Đại lý : Thuận Phát - Giồng Trôm ( Thuận Thành cũ)', 'Ấp 8 Tân Lợi Thạnh, ,giồng trôm,bến tre (Gần cây xăng Mai Hương). 8', 'KD02'),
('CTTHM', 'Cửa Hàng Quỳnh Như (Trường Tuyền )', '323 Tô Ký Hóc Môn', 'KD09'),
('CTTLD', 'Cửa Hàng Trường Thịnh Lâm Đồng', '146 Hùng Vương- TT Lộc Thắng- Huyện Bảo Lâm, Lâm Đồng 8', 'KD09'),
('CTTLG', 'Cửa Hàng Tiến Trinh- Lagi', '89-91 Nguyễn Ngọc Kỳ, TX Lagi, Bình Thuận. 8', 'KD06'),
('CTTLTT', 'Cửa Hàng Tuấn Thoa- Lê Trọng Tấn', '706 Lê Trọng Tấn, F, Bình Hưng Hoà, Bình Tân.8', 'KD02'),
('CTTNB', 'Chị Thủy - Cửa hàng Nệm Thanh Thủy', '302 Nguyễn Văn Tạo,Ấp 2,Long Thới, P.Nhà Bè, TPHCM', 'KD06'),
('CTTNTTTDL', 'Cửa Hàng TTNT Trường Thịnh - Đắc Lắc', 'Km38 EAphe Krongpac , Đăk Lắc', 'KD09'),
('CTTPL', 'Chị Cúc :Thu Thủy - Pleiku', 'Số 2A Trần Phú Nối Dài - Chị Cúc :0593.824.804', 'KD09'),
('CTTPN', 'Chị Thuý - Trường Thịnh PN', '24C/24D Phan Đình Phùng, P2, Q.Phú Nhuận', 'KD06'),
('CTTPSD', 'Cửa Hàng Trung Thành Phát - Sa Đéc', '45X Nguyễn Sinh Sắc, Khóm 2 , F2, Sa Đéc, Đồng Tháp', 'KD02'),
('CTTQ10', 'Cửa Hàng Thanh Thúy Quận 10', '475F, CMT8, F13, Q10. 8', 'KD02'),
('CTTQ11', 'Cửa Hàng Tài Trương -Quận 11', '68 Lý Nam Đế, F3, Quận 11', 'KD03'),
('CTTQ2', 'Cửa Hàng Tuấn Thảo- Q2', '68 Trần Não, F. Bình An .Q 2. 10', 'KD07'),
('CTTQ7', 'Cửa hàng Trường Thịnh Q7', '1516 Huỳnh Tấn Phát, Phường Phú Mỹ Hưng, Quận 7. 10', 'KD06'),
('CTTTL10', 'Cửa hàng Thanh Thanh ( Đại Lý Hoàng Anh)', '124 đường số 12, P.Bình Hưng Hòa, Q. Bình Tân. 8', 'KD02'),
('CTTTN', 'Cô Lệ/ Chị Hoa :Cửa hàng Trường Thịnh TB', '14 Quốc lộ 22, Lộc Trát, Gia Lộc, Trảng Bàng, Tây Ninh', 'KD07'),
('CTTVC', 'Cửa hàng Thanh Thủy - Vincom', '249/15 Lê Duẩn, H. Long Thành, Đồng Nai. 8', 'KD07'),
('CTTVL', 'Cửa hàng Thanh Thúy', 'ấp Vĩnh Trinh , Xã Vĩnh Xuân, Huyện Trà Ôn, Tỉnh Vĩnh Long. 8', 'KD01'),
('CTTVT', 'Công Ty TNHH Nội Thất Tiến Thắng', '39 Lê Lợi, F4, tp,Vũng Tàu. 8', 'KD07'),
('CTVBD', 'Cửa Hàng Thanh Vân - Bình Định', '118 Lê Lợi, TP Quy Nhơn, Bình Định', 'KD06'),
('CTVGV', 'Cửa Hàng Tường Vy- Gò Vấp', '1032 quang trung, F8, Gò Vấp. 10', 'KD06'),
('CTVLT', 'Cửa Hàng Thiên Văn- Long Thành', '009, ấp 1C, Phước Thái, QL51, Long Thành. 8', 'KD07'),
('CUTBC', 'Chị út - Cửa hàng út Tiên', 'D1/3 quốc Lộ 1A, ấp 4, xã Bình Chánh, Bình Chánh. 10', 'KD02'),
('CUTLA', 'Cửa Hàng Út Tân - Long An', 'Khu phố 3, Thị trấn Đông Thành, Huyện Đức Huệ, Long An.', 'KD02'),
('CVADN', 'Cửa Hàng Vân Anh- Đồng Nai', 'Ql1A Ấp Bàu Cá, Tuy Hòa, Trảng Bom, ĐN. 10', 'KD07'),
('CVASGBP', 'Cửa Hàng Vân Anh Sài gòn - Bình Phước', '261A TT Lộc Ninh, huyện Lộc Ninh, Bình Phước', 'KD09'),
('CVDBC', 'CÔNG TY TNHH VĨNH ĐỨC', 'G4/30A ấp 7, Xã Lê Minh Xuân, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', 'KD03'),
('CVHBR', 'Cửa hàng Vỹ Hào 2 -BRVT', 'Căn A, tổ 12, ấp Hải Sơn, Phước Hưng, Long Điền, BRVT', 'KD07'),
('CVHVC', 'Cửa Hàng Văn Hiếu - Vĩnh Châu (Tô Quốc Thái)', '117 đường 30/4 F1, TX Vĩnh Châu, Sóc Trăng', 'KD08'),
('CVIRGONT', 'Công ty TNHH TM VIRGO Nha Trang', '39-41 Nguyễn Thị Minh Khai. F Tân Lập TP Nha Trang', 'KD10'),
('CVIVIAN', 'Công ty TNHH SX TM Nệm VIVIAN', '51 Đường Số 6, Khu Phố 1, Phường Bình Trị Đông B, Quận Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
('CVLCL', 'Cửa Hàng Vân Linh', 'Chợ Mỹ Phước Tây,Cai Lậy,Tiền Giang', 'KD02'),
('CVLK', 'Chị Thoa - Cửa Hàng Vui', '939 Quốc Lộ 1, T.X Long Khánh, Đồng Nai. 10', 'KD07'),
('CVNBL', 'Hia Quến - cửa hàng Vĩnh Nguyên', '35 Hoàng Văn Thụ, Bạc Liêu. 8', 'KD01'),
('CVNDN', 'Cửa Hàng Văn Ngọc- Đồng Nai', '01 ấp Tân Bình, xã Bình Minh, h. Trảng Bom, Đồng Nai. 8', 'KD07'),
('CVNT', 'Cửa Hàng Vàng- Ninh Thuận', 'làng chài Cà Ná', 'KD06'),
('CVPHCG', 'Cửa Hàng Vạn Phước Hưng - Chợ Gạo', 'Ấp Mỹ Thạnh, Hòa Định, Chợ Gạo , TG', 'KD02'),
('CVPTV', 'Cửa Hàng Vạn Phước- Trà Vinh', 'Khóm 1, thị trấn Tiểu Cần, Huyện Tiểu Cần, Tỉnh Trà Vinh', 'KD08'),
('CVQPY', 'Cửa Hàng Quỳnh Quang ( Vĩnh Quang- Phú Yên)', '190 Phạm văn Đồng, TX Sông Cầu, Phú Yên. 10', 'KD06'),
('CVTBD', 'CÔNG TY TNHH TM VÀ SX VIỆT THÀNH', '89/16 KP Bình Phước A, F Bình Chuẩn, TX Thuận An, Bình Dương', 'KD04'),
('CVTBL', 'Cửa Hàng Vương Thành - Bảo Lộc', '44 Hà Giang, P.Lộc Sơn, TP Bảo Lộc, Lâm Đồng (ko ghi giá)', 'KD09'),
('CVTBP', 'Cửa Hàng Vĩnh Thuỷ- Bình Phước', '154 ,QL13, Tân Khai, Hớn Quản, Bình Phước. 8', 'KD09'),
('CVTHG', 'Chị Hạnh - CH Vạn Thành ( Xuất cho toàn phúc)', '525-527 Hậu giang, Quận 6. (vô bao) 10', 'KD02'),
('CVTTP', 'Cửa Hàng Việt Thắng- Tân Phú', '258 Tân Hương, Tân Quý, Tân Phú. 8', 'KD02'),
('CVTTV', 'Anh Vương - cửa hàng Vạn Thành', '100B2 trần Phú, Phường 2, TX. Trà Vinh .10', 'KD01'),
('CXBCT', 'Anh Sử :Cửa Hàng Xuân Bình- Cần Thơ', 'Số 16, Lộ vòng Cung, F Phước Thới,Q Ô Môn', 'KD08'),
('CXNBP', 'Cửa Hàng Xoan Nghinh - Bình Phước', '244 ấp chợ, xã Tân Tiến, Đồng Phú, Bình Phước. 8', 'KD09'),
('CXPKG', 'Cửa Hàng Xuân Phong - Kiên Giang', 'chợ công sự, ấp cạn ngọn A, xã thạnh yên, huyện u minh thượng, tỉnh kiên giang', 'KD08'),
('CYCVC', 'ý Chiêu - ĐT:079.224.7216', 'Hán chiêu,Vĩnh châu - 097.583.9229. 6', 'KD01'),
('CYTBD', 'Cô Sang - cửa hàng Yến Thanh', '390/1 Đông Trác, Tân Đông Hiệp, Dĩ An, Bình Dương', 'KD07'),
('CYVBD', 'Cửa Hàng Yến Vy- Bình Dương', '633 Phú giáo, Bình Dương', 'KD07'),
('CYVBP', 'Cửa Hàng Yến Vy (Bình Phước)', '1085 NGUYỄN TẤT THÀNH F LONG THỦY TX PHƯỚC LONG,BP. 10', 'KD09'),
('huynhton', 'Anh Tồn Chào mẫu', NULL, 'KD04'),
('KHONGDUNG1', 'Cửa Hàng Hoàng Phúc -Bến Tre', '75/4 Ấp 10 TT Thạnh Phú, Thạnh Phúc, Bến Tre', 'KD02'),
('ShowRoom06', 'Bán Tại ShowRoom 06 Bìnhtân', 'Số 6 , đường số 1.phường an lạc A.quận bình tân', 'KD04'),
('ShowRoom196', 'Bán Tại ShowRoom 196', '196 Tô Hiến Thành', 'KD04'),
('SMOVINHDUC', 'Công Ty TNHH Vĩnh Đức', 'Ấp mới 2, Mỹ Hạnh Nam, Đức Hòa, Long An', NULL),
('VPDDTRUONGHUNG', 'Văn phòng đại diện Trường Hưng', '17-19 Đường số 2, Xã Phạm Văn Hai, Bình Chánh', NULL),
('ANHDUNG', 'Anh Dũng chào mẫu', NULL, 'KD04'),
('ANHHOANG', 'Anh Hoàng chào mẫu', NULL, 'KD04'),
('ANHKHOA', 'Anh Khoa chào mẫu', NULL, 'KD04'),
('ANHLUAN', 'Anh Luân chào mẫu', NULL, 'KD04'),
('ANHPHU', 'Anh Phú chào mẫu', NULL, 'KD04'),
('ANHTHO', 'Anh Thọ chào mẫu', NULL, 'KD04'),
('ANHTRUNG', 'Anh Trung chào mẫu', NULL, 'KD04'),
('ANHTUNG', 'Anh Tùng chào mẫu', NULL, 'KD04'),
('ANHVIET', 'Anh Việt chào mẫu', NULL, 'KD04'),
('ANHVUONG', 'Anh Vương chào mẫu', NULL, 'KD04'),
('C105LVL', 'Chị Phương - Cửa hàng Anh Phương', '105 Lê Văn Lương, P Tân Kiểng, Q7. 8', 'KD06'),
('C158NGT', 'Công Ty Tường Thái', '158 Ngô Gia Tự, Q.10, tp.hcm', 'KD04'),
('C15NGT', 'Cửa Hàng 15 Ngô Gia Tự', '15 Ngô Gia Tự, P2, Q10, Tphcm', 'KD04'),
('C167THD', 'Cửa Hàng Chế Trân', '167 Trần Hưng Đạo,Sóc Trăng', 'KD09'),
('C177PCD', 'Chị Hương - Cửa hàng Kymdan PCD', '177 Phó Cơ Điều, Quận 11. 10', 'KD02'),
('C2LTV', 'Hai Liêm Trà Vinh', 'Hai Liêm Trà Vinh', 'KD04'),
('C49HBT', 'Cửa Hàng 49H Bình Thạnh', '49 Phan Đăng Lưu , F13, Bình Thạnh. 8', 'KD06'),
('C9NGT', 'Cửa Hàng: 09 Ngô Gia Tự', NULL, 'KD08'),
('CACPH', 'Anh cẩn - Cửa Hàng Ngọc Lợi', '69 Lý Thường Kiệt, Ngã Bảy, Phụng Hiệp, hậu Giang', 'KD07'),
('CACPQ', 'Anh Cường- Sun Địa Trung Hải', 'Shophouse Ven26 , Sun Địa Trung Hải, An Thới ,Phú Quốc, Kiên Giang.', 'KD10'),
('CADHT', 'Chị Vân - Nội Thất Anh Duy - Hà Tiên', '73_75 Trần Hầu. P. Bình San. Tx hà tiên. 8', 'KD01'),
('CADPT', 'Cửa hàng Màn Cửa Anh Duy- Phan Thiết', '701 Trần Hưng Đạo - Tp. Phan Thiết. 8', 'KD06'),
('CADTH', 'Cửa Hàng Nệm Êm Ái', 'Hòn Đất, Kiên Giang', 'KD04'),
('CAKDN', 'Cửa hàng Nội thất Anh Khoa', 'Số 150. Đường 762, Tổ 8, Ấp Tân Thành, Xã Thanh Bình, H.Trảng Bom ,T. Đồng Nai', 'KD07'),
('CALGV', 'Anh Lộc Gò Vấp ( 0967 893 368)', '92 Quang Trung, F10, Gò 8', 'KD06'),
('CAMBT', 'Nhà Thuốc ánh Mai', '203N Gò Xoài,P.Bình Hưng Hòa A,Bình Tân,Tphcm', 'KD04'),
('CAMCM', 'Anh Miền Cà Mau : 0942 879911', '30/4 K.1 Thị Trấn Cái Nước ,Cà Mau . 6', 'KD08'),
('CAMQN', 'Cửa Hàng ái My- Quy Nhơn ( Không ghi Giá)', '38-40 Trần Quý Cáp- TP Quy Nhơn, T. Bình Định. 10', 'KD06'),
('CANHTQ12', 'Cửa Hàng Bảo Ngọc', '139 Dương Thị Mời ,Q12 :096.910.5831', 'KD06'),
('CAQBD', 'Anh Qúy - CH Vivabon Nguyễn', '27 Nguyễn văn Tiết, KP Bình Hòa, p.Lái Thiêu, Thuận An, BD. 8', 'KD07'),
('CAQTC', 'Anh Quý Trường Chinh (Hoàng Gia)', '419A Ngô Gia Tự, Phường 3, Quận 10, HCM 10', 'KD02'),
('CASVL', 'Anh Sơn - Vĩnh Lộc', 'Giao đường 3 Khu Dân Cư Vĩnh Lộc. 8', 'KD02'),
('CAT2LT', 'Cửa hàng Anh Tài 02 .', 'Đường Lê Duẩn, Khu 1, Ấp 3, An Phước Long Thành. 8', 'KD07'),
('CATBHDN', 'Cửa Hàng Anh Thư', '48/2-KP1,P.Tân Hòa,Biên Hòa ,Đồng nai', 'KD06'),
('CATBMT', 'Cửa Hàng An Thy- Buôn Mê Thuột', '90 Nguyễn văn Cừ, TP Buôn Mê Thuột', 'KD09'),
('CATCM', 'Chị Như - DNTN Anh Thư- Cà Mau', '42 Phan Ngọc Hiển, P.4, Cà Mau', 'KD01'),
('CATDH', 'Anh Thắng- Đức Hòa', 'đường Gò Hưu, ấp Mới Hai, xã Mỹ Hạnh Nam huyện Đức Hòa, LA. 8', 'KD02'),
('CATDL', 'Cửa Hàng Anh Thư- ĐakLak', '285 Lê Duẫn, F EaTam, TP BMT', 'KD09'),
('CATGV', 'Anh Thành - Gò Vấp (Đại Lý Kymdan)', 'Số 3 Phạm Ngũ Lão,Gò Vấp', 'KD06'),
('CATKG', 'Anh Tài Kiên Giang', '58 Trần Phú, Kiên Giang', 'KD01'),
('CATLD', 'Công Ty TNHH DV SX Anh Thắng. Lâm Đồng', '223 đường 2/4 TT Thạnh Mỹ, Đơn Dương. Lâm Đồng. 8', 'KD09'),
('CATLT', 'Chị Trinh - Cửa hàng Anh Tài- Long Thành', 'ấp Thành Gòn, Lộc An, Bình Sơn, Long Thành, Đồng Nai. 8', 'KD07'),
('CATNT', 'Anh Tuấn : Công ty VIOLET ,Nha Trang', 'Xe : 79C-00608 - Tài xế: Anh Hoàng : 0914.1423.20', 'KD08'),
('CATPL', 'Anh Thuận - Cửa Hàng Phú Lâm', '66/2 Quốc Lộ 22, Tân Thới Nhì, Hóc Môn', 'KD09'),
('CATQ12', 'Anh Tuấn - Đại lý Vạn Thành', '164 Lê văn Khương,Q12,Tphcm', 'KD07'),
('CATQ2', 'Cửa Hàng Anh Thư Q.2', '324 Nguyễn Duy Trinh, P. Bình Trưng Tây, Quận 02, 8', 'KD07'),
('CATQ7', 'Anh Tùng', '176 Lê Văn Bền', 'KD07'),
('CATQ9', 'Chị Ba - Cửa hàng Anh Thư Q9 (Gia Khiêm)', '820 Nguyễn Duy Trinh, Bình Trưng Tây, Quận 9,Tphcm', 'KD06'),
('CAVBT', 'DNTN Nam việt Cát Tường- (Không Ghi Giá )', '27A1 Bình Khởi ,p6, Bến tre. 8', 'KD02'),
('CBDDT', 'Cửa Hàng Bích Đào - Đồng Tháp', 'Số 539 Điện Biên Phủ, TP.Cao Lãnh, Tỉnh Đồng Tháp', 'KD02'),
('CBDPY', 'Cửa Hàng Bửu Dung - Phú Yên', '231 Trần Hưng Đạo . TP. Tuy Hòa, Phú Yên. Liên hệ anh Dũng (0965324345) nhận hàng (lấy màu tối)', 'KD06'),
('CBGBT', 'Cửa Hàng Bảy Giàu - Bến Tre', '152/01 Ấp Quí Đức A, xã Quới Điền, huyện Thạnh Phú, xã Bến Tre', 'KD02'),
('CBHVT', 'Cửa Hàng Bảo Hiền - Vũng Tàu', '285 Lê Hồng Phong, TT Ngãi Giao, Châu Đức, Bà Rịa. 8', 'KD07'),
('CBLLA', 'Chị Thủy - Cửa Hàng Bảo Lâm', '349 Nguyễn Huỳnh Đức,P.khánh Hậu,Tân An,Long An. 8', 'KD01'),
('CBMQ12', 'Chị Thuý- Cửa Hàng Ban Mai- Q12', '277 Nguyễn Văn Quá, F. Đông Hưng Thuận, Q12.', 'KD03'),
('CBN2', 'Nguyễn Thị Thanh Trinh (Ba Nhỏ 2) 0939113557', '315 Khóm 1, Thị Trấn Lai Vung, Huyện Lai Vung, Tỉnh Đồng Tháp', 'KD03'),
('CBNI', 'KHÁCH HÀNG BNI', NULL, 'KD04'),
('CBNNDN', 'Cửa Hàng Bình Ngọc Nhi - Đồng Nai', 'Ấp Cơ Dầu, xã Xuân Đông, Huyện Cẩm Mỹ, Đồng Nai. 10', 'KD07'),
('CBNQ1', 'Cửa hàng Bảo Ngọc Q1', '149 Nguyễn Thị Minh Khai, F. Phạm Ngũ Lão, Q1. 8', 'KD06'),
('CBNQ3', 'Anh Khoa - Cửa hàng Bảo Ngọc', '149 Nguyễn Thị Minh Khai, Q3,Tphcm', 'KD08'),
('CBNVL', 'Cửa Hàng Bảo Ngọc VL', 'Số 10, Đường 3/4, Chợ Vĩnh Long. 8', 'KD08'),
('CBNVT', 'Anh Bảo - Cửa Hàng Bảo Ngọc VT', '210 Lê Lợi, Phường 4, TP.Vũng Tàu', 'KD07'),
('CBTLA', 'Cửa Hàng Ba Tuyển Long An', '84 đường 3/2, KP Gò Tuyền A, TT Tân Hưng, H Tân Hưng, Long An', 'KD02'),
('CBTPL', 'Cửa Hàng Bích Trâm- Pleiku 0394 005 049', '35 Cách mạng tháng 8, pleiku, Gia . 10', 'KD09'),
('CBV2VL', 'Anh Phong- Cửa Hàng Kymdan Vĩnh Long', 'Khóm 6 thị trấn Long Hồ, Vĩnh Long', 'KD08'),
('CBVVL', 'Chị Yến - Cửa Hàng Kymdan Vĩnh Long', 'Khóm 1, Thị Trấn Long Hồ, Vĩnh Long', 'KD01'),
('CC9CPC', 'Cô Chín - Campuchia', 'Campuchia', 'KD04'),
('CCADA', 'anh Toàn - Công ty TNHH Cách Âm Đông Á', '540 Dương Thị Mười , F Hiệp Thành , Q.12, TP.HCM ( bao 50 tấm / 1 kiện)', 'KD03'),
('CCANEBH', 'Cty Chăn Ấm Nệm Êm - biên Hòa', 'Số 1099 Phạm văn Thuận ,TP.Biên Hòa', 'KD07'),
('CCBAC', 'Chị Bích- Cửa Hàng Đức Phát', '499-451 Hậu Giang,q6,TP.HCM', 'KD06'),
('CCBD', 'Cửa Hàng Chánh - Bình Dương', '18/2 KP3, Dầu Tiếng, Bình Dương. 8', 'KD07'),
('CCBHG', 'Chị Bích Hậu Giang, CH Hoàn Mỹ', '445,447 Hậu Giang F11, Quận 6. 10', 'KD02'),
('CCBLA', 'Chị Bích- Long An', 'Khu Phố Bàu Xậy,Thị Trấn Vĩnh Hưng,Huyện Vĩnh Hưng,Long An', 'KD01'),
('CCDCHM', 'Anh Phong - Cứu Dân Chành', '3/22 Đường Quang Trung , Thị trấn Hóc Môn. 10', 'KD09'),
('CCDCL', 'Chị Điệp -Nhà Thuốc Tây Cửu Long', '150CTrưng Nữ Vương,P1,Vĩnh Long', 'KD07'),
('CCDN', 'Cửa Hàng Chương- Đồng Nai', '207 Đường 3/2,KP5,TT.Trảng Bom,Đồng Nai.6', 'KD07'),
('CCDPVT', 'Cửa hàng Châu Đại Phát', '102 /16 Chợ Phước Hải . Thị Trấn Phước HảI, BRVT. 10', 'KD07'),
('CCDTC', 'Chị Điệp', '157 Trường Chinh, Tân Bình,Tphcm', 'KD07'),
('CCDTD', 'Chị Diễm - Cửa Hàng Phương Thảo .', '1134 Kha Vạn Cân, Thủ Đức. 8', 'KD07'),
('CCDTHBT', 'Chị Dung - Tiên Hoàng Bình Tân', '699 Lê Trọng Tấn', 'KD07'),
('CCHHN', 'Cửa Hàng Chấn Huê- Hồng Ngự', '43 Nguyễn Trãi, Hồng Ngự, Đồng Tháp. 10', 'KD02'),
('CCHKCT', 'Cửa Hàng Kha', 'Thạnh An,Thốt Nốt,Cần Thơ', 'KD07'),
('CCHOMG', 'Chị Hà - cty Omega (lê ngân)', '58/9 Tân Thành, P. Tân Thành, Tân Phú', 'KD04'),
('CCHTB', 'Cửa Hàng Chí Hùng- Tân Bình', '297 Hồng Lạc, F10 Quận Tân Bình', 'KD02'),
('CCKPC', 'Chị Kiều - Đại Lý Vinh Thuận Phát', '271 ấp A, Khu 5, Chợ Phú Cường, Tam Nông, Đồng Tháp. 8', 'KD02'),
('CCLBL', 'Chị Sen / chị Lễ - Cửa hàng Vạn Thành', '351 Nguyễn Văn Cừ, P.Lộc Phát, T.X Bảo Lộc', 'KD09'),
('CCLDA', 'Anh Cường Dĩ An - CH Chị Lam cũ( Không Ghi Giá)', '8 Nguyễn Thái Học, Dĩ An, Binh Dương. 10', 'KD07'),
('CCLLK', 'TTNT Chín Long- Long Khánh', '12 Duy Tân, Tổ 21, Xã Bảo Vinh A, Long Khánh, ĐN. 10', 'KD07'),
('CCLMT', 'Chị Hai - Cửa Hàng Minh Lệ', '21 Lê Thị Phí F1 , TP.Mỹ Tho, Tiền Giang ( Cập nhật CN lên phiếu))', 'KD01'),
('CCMBT', 'Chị Mơ-Đại Lý Bảo Phúc', 'Ấp Tân Phong,xã thành thới A,H.mỏ cày Nam . 8', 'KD02'),
('CCMSR', 'Chị Mai - SARI', 'Ngã ba cái bè tiền giang ,vô 3 cây số(kế bên khách sạn yến Ngân).8', 'KD02'),
('CCMVN', 'Công Ty TNHH Chumy Việt Nam', '282/13 đường TA28 KP5. F Thới An, Quận 12.. 10', 'KD09'),
('CCN2DN', 'Cửa Hàng Cao Nguyên 2- Đắk Nông', '64 Nguyễn Tất Thành Dak Mil, Dak Nong', 'KD09'),
('CCNDA', 'Chị Cẩm- Công Ty Tnhh Cách Nhiệt Đông Á', 'Q20 đường 15, KP4, F. Tân Thới nhất, Q12.Tp. HCM ( đóng bọc nilon trắng)', 'KD03'),
('CCNSG', 'Chị Tâm - Công Ty Cách Nhiệt Sài Gòn', '258 Tây Thạnh,KCN Tân Bình ( đóng kiện =50 tấm / 1 kiện). Bao bọc PVC màu trằng', 'KD03'),
('CCOCOBD', 'Công ty TNHH COCO FURNITURE', '139 Kp Hưng Phước, F Hưng Định, Thuận An, BD.', 'KD07'),
('CCPBC', 'Chị Phượng', 'Ba càng,vĩnh long', 'KD08'),
('CCPBL', 'Chị mai: TTNT Chánh Phát', '80B Nguyễn Công Trứ, P2, Bảo Lộc, Lâm Đồng', 'KD09'),
('CCPBT', 'Chị Hương -Cửa Hàng Cường Phát', '180 Đường số 01- Bình Tân,Tphcm. 8', 'KD02'),
('CCPDT', 'Chị Phương', 'Dầu Tiếng', 'KD08'),
('CCPRG', 'Chị Phương- Cửa Hàng Bình Minh', '986 Nguyễn Trung Trực, Rạch Giá, Kiên Giang', 'KD08'),
('CCQAG', 'CH Lê Văn Tiền 3 (Chị Quý)', '1321/67 Trần Hưng Đạo,TP Long Xuyên,An Giang (không giá,không HDD)', 'KD01'),
('CCQTN', 'Chị Quyên - Cửa hàng Chị Quyên', 'Khu Phố 4,T.T Bến Cầu,Tây Ninh', 'KD08'),
('CCSMP', 'Cửa Hàng Vạn Thành- chị Uyên', '143 Tân Hòa Đông. 10', 'KD02'),
('CCTBH', 'Cửa Hàng Cát Tường- Biên Hòa', '719/5 KP4 FTam Hiệp, Biên Hòa, ĐN. 10', 'KD07'),
('CCTCD', 'Cửa Hàng Cẩm Tú - Cần Đước', '120 ấp Chợ Trạm xã Mỹ Lệ huyện Cần Đước, LA', 'KD02'),
('CCTDA', 'Chị Trang - Dĩ An Hưng Thịnh', '28/20A Nguyễn Trãi ,KP Thống Nhất, Dĩ An , Bình Dương. 10', 'KD07'),
('CCTDC', 'CTY TNHH KL Decor', '49K, Phan Đăng Lưu, P. 3, Q. Bình Thạnh, Tp. HCM', 'KD06'),
('CCTDL', 'Cửa Hàng Công Thành- Đà Lạt.', '63B - 3/2 Đà Lạt-. 8', 'KD09'),
('CCTHG', 'Anh Cường - Cửa Hàng Cường Thịnh', 'Khu Thương Mại Thị Trấn Ngã Sáu,Huyện Châu Thành,Tỉnh Hậu Giang. 8', 'KD01'),
('CCTKPST', 'Cửa Hàng Kim Phượng(KP Phước Long)', '39-41 CMT8, Ngã Tư Xô Viết Nghệ Tỉnh, TX Sóc Trăng(dst) Plus', 'KD01'),
('CCTNT', 'Cửa Hàng Chi Thính Ninh Thuận ( Không Ghi Giá)', 'KP2, TT Phước Dân, Ninh Phước, Ninh Thuận 8', 'KD06'),
('CCTQ4', 'Chị Thúy', '33 Nguyễn Tất Thành,Q4 - ĐT:38.455.313', 'KD07'),
('CCTQ8', 'Cửa Hàng Chí Tâm- Quận 08', '158 B An Dương Vương F16 Quận 08', 'KD06'),
('CCTRS', 'Chị Đan - Cửa Hàng Công Tiến', '46 Mai Thị Hồng Hạnh, Rạch Sỏi, Kiên Giang ( Gom 1 toa chung )', 'KD01'),
('CCTTA', 'Cửa Hàng Cát Tường- Tân An', '147 QL62 F2 Tp Tân An, LA. 8', 'KD02'),
('CCTTN', 'Chị Thuận- Cửa hàng Thanh Tâm Tây Ninh', 'D06/07 khu phố 4,Thị trấn châu thành,Tây ninh. 8', 'KD07'),
('CCTTP', 'ChịThúy : Cửa hàng Thanh Thúy', '76A Vườn Lài,Q.Tân phú:0903.000.2586', 'KD07'),
('CCTTT', 'Chị Thúy - Công Ty Thiên Thanh', NULL, 'KD09'),
('CCTVT', 'Chị Trang Everon', '352- 354 Nguyễn An Ninh. P8. Vũng Tàu. 8', 'KD07'),
('CCVAPT', 'Chị Vân - An Phú Tây', 'Chợ Thuận Đạt , Hưng Long, Bình Chánh', 'KD02'),
('CCVBD', 'Chị Vân - Cửa Hàng Cẩm Vân', '38 Nguyễn Thái Học, Thủ Dầu 1, Bình Dương', 'KD06'),
('CCVQ2', 'Cửa Hàng Cường Vy- Quận2', 'Số 164C Lê văn Thịnh, F Cát Lái, Q2', 'KD07'),
('CDADN', 'Cửa Hàng Diệu Anh Đồng Nai', 'Khu A1C1 Lập Thành, TT Dầu Giây. 8', 'KD07'),
('CDAQ4', 'Anh Trung - Cửa Hàng Duy Anh', '269 Tôn Đản, Quận 04, Tphcm', 'KD07'),
('CDCLBD', 'Công Ty Dương Châu Loan- Bình Dương', '298 Đại Lộ Bình Dương, Phú Hoà, Thủ Dầu 1. 8', 'KD07'),
('CDHDN', 'Cửa Hàng Đức Huy- ( Đức Thư) Đồng Nai', 'D1/034B Quang Trung Thống Nhất Đồng Nai . 8', 'KD07'),
('CDHHB', 'Cửa Hàng Đức Hạnh', '479 Nguyễn Văn Tăng, Phường Long Thạnh Mỹ, Quận 9, Tphcm', 'KD07'),
('CDHQ8', 'Anh Hải - Cửa Hàng Đức Hải', '529 Phạm Thế Hiển,Q8, Tphcm', 'KD08'),
('CDHTNGT', 'Chị Lan - Cty TNHH Đại Hòa Thịnh', '206 Ngô Gia Tự, P4, Quận 10,Tphcm', 'KD02'),
('CDHTST', 'Anh Quân - TTNT Đức Hiệp Thuận', '651 ấp Ngãi Hội 1, Đại ngãi, Long Phú, Sóc trăng', 'KD01'),
('CDKBL', 'Cửa Hàng Duy Khánh -Bến Lức', '37C ấp 2 xã Phước Lợi, Bến Lức, Long An. 8', 'KD02'),
('CDKGV', 'Cửa Hàng Duy Khánh', '29 Nguyễn Oanh, P10, Gò Vấp.', 'KD09'),
('CDLBR', 'Cửa Hàng Dương Long', 'Sap H12. TT Thương Mại - Bà Rịa . Tp Bà Rịa. BRVT', 'KD07'),
('CDLDT', 'Chị Thảo - Trang Trí Nội Thất Đại Lộc', '50-52 Thống nhất,liên nghĩa,Đức Trọng,Lâm Đồng. 8', 'KD09'),
('CDLPN', 'Cửa Hàng Đức Lợi- Phú Nhuận', '258 Phan đình phùng,p1,phú nhuận. 8', 'KD06'),
('CDLQ10', 'Chị Mười - Cửa Hàng Đồng Lợi', '469A Cách Mạng Tháng Tám, P13, Q10 ,Tphcm', 'KD02'),
('CDNBL', 'Cửa Hàng Đức Ngân Bạc Liêu', '0949.030.802 Anh Thiết', 'KD02'),
('CDNCM', 'Anh Đức - DNTN Đức Ngân', '149 Nguyễn Tất Thành, Phường 8, Cà Mau (Dán toa vô Nệm)', 'KD01'),
('CDNNT', 'Cửa Hàng Diệu Ninh- CÀ NÁ', 'Thôn Lạc Tân, X.Phước Diêm, Huyện Thuận Nam, Ninh Thuận .8', 'KD06'),
('CDPBL', 'Cửa Hàng Duy Phát - Bến Lức', '76 Nguyễn Hữu Thọ . 8', 'KD02'),
('CDPHCD', 'Chị Hoàng - Cửa Hàng Đại Phước Hàng', '39 Nguyễn Văn Thoại, P.13, Châu Đốc, An Giang', 'KD08'),
('CDPTAG', 'Cửa Hàng Đại Phát Thành- An Giang', 'Ấp An Hưng, TT An Phú, Huyện An Phú, Tỉnh An Giang', 'KD08'),
('CDREAMTEX', 'Công ty TNHH Dreamtex Việt Nam', '12/21A Đường TL27, phường Thạnh Lộc, Quận 12, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
('CDSBC', 'Cửa Hàng Đức Sang', 'F7/2, Tỉnh lộ 10, Xã Lê Minh Xuân, Huyện Bình Chánh', 'KD02'),
('CDSDCM', 'Duy Sông Đốc Cà Mau', 'Duy Sông Đốc Cà Mau', 'KD07'),
('CDTAVT', 'Chị Thanh Anh - Cửa Hàng Dũ Thanh Anh', '555 Trần Hưng Đạo, KV1, Phường 3, Vị Thanh. 10', 'KD01'),
('CDTBP', 'Cửa Hàng Đức Tài- Bình Phước', 'Đường 8, Phạm Hồng Thái, Tổ 1, KP3 , Chơn Thành, Bình Phước', 'KD09'),
('CDTDT', 'Cửa Hàng Đức Trí - Đồng Tháp', 'Chợ Trường Xuân, Tháp Mười, Đồng Tháp', 'KD02'),
('CDTHN', 'Cửa Hàng Đại Thành- Hồng Ngự', '45 Thiên Hộ Dương, Hồng Ngự, Đồng Tháp.', 'KD02'),
('CDTLG', 'Nội thất 123A', '123 Nguyễn Ngọc Kỳ, Phước Hội, TX Lagi, Bình Thuận', 'KD07'),
('CDTTV', 'CTY TNHH ĐẠI THÀNH', 'ấp Sâm Bua, xã Lương Hòa, Châu Thành, Trà Vinh. 8', 'KD08'),
('CDUADN', 'Dì út Ái - Cửa Hàng Đăng Khoa', '71 Đường 23/3 Tổ Dân Phố 1, P.Nghĩa Đức, Giai Nghĩa, Đăk Nông.', 'KD09'),
('CGBHM', 'Cửa Hàng Gia Bảo- Hóc Môn', '37/06 KP3 Lý Thường Kiệt, Hóc Môn', 'KD09'),
('CGBNH', 'Chị Viên - Cửa Hàng Gia Bảo', 'Ninh Hòa : 058.363.0574', 'KD06'),
('CGHNT', 'Cửa Hàng Gia Hân - 10 (Nệm CSDC chỉ lấy màu xám) Không ghi giá', '164 đường Thống Nhất, Nha Trang. (Giao trước 8h sáng hoặc 2hchiều) 10,chân Drap cao 30cm (ko ghi giá)', 'KD06'),
('CGHOM', 'Chị Duyên - Cửa Hàng Tân Gia Hưng', '30/1 Trần Hưng Đạo , KV.3, P.Châu Văn Liêm, Quận Ô Môn, TP. Cần', 'KD08'),
('CGKDT', 'Cửa Hàng Gia Khiêm- Đồng Tháp', 'Khóm 4, thị trấn Mỹ An, h Tháp Mười, Đồng Tháp', 'KD02'),
('CGLGV', 'Chị Linh - Cửa Hàng Gia Linh', 'Gò Vấp', 'KD02'),
('CGREENTEX', 'HKD-Cơ sở Sản xuất Greentex', 'Tờ bản đồ Số 1, thửa 10, Lê Lợi, Bàu Hàm 2 ,Thống Nhất, Đồng Nai', 'KD10'),
('CHACM', 'Cửa Hàng Hoàng Anh Cà Mau', 'chợ Kiot số 32,chợ Tấc Vân,Cà Mau', 'KD08'),
('CHAGL', 'Cửa Hàng Hồng Anh Gia Lai', '218 Trần Hưng Đạo, TX Ayun Pa, Gia Lai. 10', 'KD09'),
('CHAGLCT', 'Anh Đức - Hoàng Anh Gia Lai', '60A Mậu thân,P.An Hiệp,Ninh Kiều ,Cấn Thơ. 10', 'KD01'),
('CHAGLLX', 'Anh Dũng :Cửa Hàng Hoàng Anh Gia Lai:', '349/30D Trần Hưng Đạo,Long Xuyên (Ngay ngã ba), 10', 'KD08'),
('CHAMT', 'DNTN TTNT Hoàng Anh Mỹ Tho', '198A Nguyễn Thị Thập , xã Trung An TP Mỹ Tho ( đối diện Big C) . 6', 'KD01'),
('CHANVIETHAI', 'Công ty TNHH TM SX Hàn Việt Hải', '149 Lê Đức Thọ, P7, Q Gò Vấp, TPHCM', 'KD09'),
('CHAVT', 'Cửa Hàng Hoàng Anh Vũng Tàu', '330 Đường 30/4 F , Phường Rạch Dừa, Vũng Tàu. 8', 'KD07'),
('CHCVB', 'Hội chợ VIETBUILD', 'Q7', 'KD03'),
('CHDBD', 'Cửa Hàng Hoàng Duy- Bình Dương', '237 Yersin, F. Phú Cường, Thủ Dầu Một, BD. 8', 'KD07'),
('CHĐDN', 'Cửa Hàng Huỳnh Điểu- Đồng Nai', '1410 QL1A, Xuân Hưng, Xuân Lộc, Đồng Nai', 'KD07'),
('CHDKG', 'Cửa Hàng Hữu Đức- Kiên Giang', 'chợ thứ 7, ấp 7, xã đông thái, huyện an biên, tỉnh kiên giang.', 'KD08'),
('CHDTB', 'Cửa Hàng Hoàng Dũng- Tân Bình', '92 Phan Huy Ích, F15, Tân Bình', 'KD02'),
('CHDVT', 'Cửa Hàng Hoàng Dung - Vũng Tàu', 'Ấp 1, Bung Riềng, Xuyên Mộc, Vũng Tàu', 'KD07'),
('CHGBT', 'Cửa Hàng Hoàng Gia- Bình Tân', '1120 Tỉnh lộ 10, Bình Tân', 'KD08'),
('CHGD', 'Cửa Hàng Hiếu- Gò Đen', 'Ngay chợ Gò Đen', 'KD02'),
('CHGGV', 'Chị Xuân-Công Ty Hoàng Gia', 'Giao 41/76 Hương Lộ 80b, ấp 6, đông thạnh HM', 'KD03'),
('CHGPK', 'Đại Lý Hai Gắt- Phước Khánh', 'Chợ Phước Khánh, Xã Phước Khánh, huyện Nhơn Trạch, tỉnh Đồng Nai. 10', 'KD07'),
('CHH2BR', 'Cô Thuỷ - Huy Hoàng 2 Bà Rịa', 'Thành phố Bà Rịa ( kế bên Thúy Lan Bà Rịa)', 'KD07'),
('CHHAG', 'Cửa Hàng Hoàn Hảo- An Giang', '80 Tôn Đức Thắng, Phú Mỹ, Phú Tân, An Giang.', 'KD08'),
('CHHBC', 'Cửa Hàng Huy Hoàng - Bến Cát', 'KP1, Đường Hùng Vương, Bến Cát, Bình Dương', 'KD07'),
('CHHBD', 'Cửa Hàng Hoàng Hiệp- Bình Dương', '529 Phạm Ngọc Thạch Tp Thủ Dầu Một, Bình Dương', 'KD07'),
('CHHBL', 'Chị Ngân : Trung Tâm Nội Thất Hoàng Huy-0944.94.94.94', '68 Ninh Bình P2,TX.Bạc Liêu (Không ghi Giá). Không gửi toa', 'KD01'),
('CHHBR', 'DNTN Huy Hoàng ( Không Ghi Giá)', '102 Cách Mạng Tháng Tám, p Long Hương, Thành phố Bà Rịa', 'KD07'),
('CHHCR', 'Anh Dũng - Cửa Hàng Hòa Hiệp', '88 đường 22/8 Phường Cam Thuận, Cam Ranh', 'KD06'),
('CHHNB', 'Cửa Hàng Huy Hoàng - Nam Ban', 'TDP Bạch Đằng, TT. Nam Ban, H. Lâm Hà, Lâm Đồng.', 'KD09'),
('CHHQ4', 'Cửa hàng Huy Hoàng - Quận 4', '97 Khánh Hội, F3,Q4. 10', 'KD06'),
('CHHTV', 'Cửa Hàng Hồng Hưng - Trà Vinh', 'Khóm 4 , thị trấn Trà Cú, Huyện Trà Cú. Tỉnh Trà Vinh', 'KD08'),
('CHHVL', 'Cửa Hàng Hùng Hương- Vĩnh Long', 'Tổ 17, ấp Phú Cường, xã Hiếu Thuận, H. Vũng Liêm, T. Vĩnh Long', 'KD08'),
('CHKCM', 'Cửa hàng Hồng Kông - Cà Mau', 'ấp Đông Hưng, xã Tân Hưng Đông, huyện Cái Nước, tỉnh Cà Mau', 'KD08'),
('CHKNGT', 'Chị hạnh- Cửa hàng Hùng Ký', '347 Ngô gia tự', 'KD02'),
('CHKTN', 'Chị Hằng - Cửa Hàng Hồng Khánh:', 'Đối diện cổng chợ Gò dầu,tây ninh,Hướng đi mộc bài', 'KD02'),
('CHLBD', 'Chị Linh- Cửa hàng Hải Linh', '.Chợ tân phước khánh,bình chuẩn,bình dương', 'KD04'),
('CHLNT', 'Cửa Hàng Hồng Linh - Nha Trang', '295 Thống Nhất, Phường Phương Sơn, Nha Trang (ko ghi giá)', 'KD06'),
('CHLQ3', 'Cửa Hàng Hoàng Long Quận 3', '590 Nguyễn Đình Chiểu P4 Quận 3. 10', 'KD06'),
('CHMCT', 'Chị Thu - Cửa Hàng Hoàn Mỹ', '118 Lý Tự Trọng, Cần Thơ', 'KD02'),
('CHMQ7', 'Chị Trang - CTY TNHH TTNT Hoàn Mỹ', 'D56 Nam Long,đường Phú Thuận ,Quận 7 . 10', 'KD06'),
('CHNBC', 'Cửa Hàng Hoàng Phát ( Hoàng Nguyên cũ)', 'D15/40 Đinh Đức Thiện,Bình chánh', 'KD02'),
('CHNLD', 'Cửa Hàng Hải Nam- Lâm Đồng', '677 Hùng Vương. Di Linh, Lâm Đồng', 'KD09'),
('CHNNH', 'Công ty TNHH SX TM và DV Hồng Nguyễn', '56 Võ Tánh, Ninh Hòa. Đối diện chợ Dinh Ninh ( Không lấy màu trắng) ko ghi giá', 'KD06'),
('CHNT', 'Cửa Hàng', 'Công Hải, Thuận Bắc, Ninh Thuận', 'KD07'),
('CHNTD', 'Anh Nhuận - Hữu Nhuận', '9/14 Quốc lộ 13, Hiệp Bình Phước, Thủ Đức', 'KD07'),
('CHP', 'Cửa Hàng Hòa Phú -', NULL, 'KD08'),
('CHPBC', 'Cửa Hàng Hoàng Phát _ Bình Chánh', 'D15/40 đường Đinh Đức Thiện, xã Bình Chánh, Huyện BC', 'KD02'),
('CHPBR', 'Cửa Hàng Hiệp Phát- Bà Rịa', '16/10 Ấp Phước Lâm xã Phước Hưng, Long Điền, BRVT. 8', 'KD07'),
('CHPBRVT', 'Cửa Hàng Hồng Phát- Bà Rịa Vũng Tàu', '333 đường 27/04. TT Phước Bửu, Xuyên Mộc, BRVT', 'KD07'),
('CHPBT', 'Cửa Hàng Hoàng Phúc -Bến Tre', '75/4 Ấp 10 TT Thạnh Phú, Thạnh Phúc, Bến Tre', 'KD02'),
('CHPKG', 'Cửa Hàng Hoàng Phát - Kiên Giang', '467A Nguyễn Trung Trực, F, Vĩnh Lạc, Rạch Giá, Kiên Giang', 'KD08'),
('CHPQ8', 'Chị Hằng - Cửa Hàng Hồng Phát', '352C Tùng Thiện Vương, Phường 13, Quận 8, Tphcm', 'KD02'),
('CHPTC', 'Chị Dung- Cửa Hàng Hưng Phát', '698 Trường Chinh,P.15,Q.Tân Bình, Tphcm', 'KD07'),
('CHQPL', 'Cửa Hàng Hồng Quân', 'Chợ Phương Lâm (2h)', 'KD07'),
('CHQTN', 'Chị Châu Hồng Quế:01234590522', '04/22 ThịTrấn Gò Dầu,Tây Ninh', 'KD04'),
('CHSBL', 'Chị Trang- Trang Trí Nội Thất Hải Sơn Bạc Liêu', '156 Trần Phú, P7, Bạc Liêu. 10', 'KD01'),
('CHSBP', 'Cửa Hàng Điện Máy & NT Hồng Sơn - Bình Phước', '364 Nguyễn Tất Thành, Kp2, P. Phước Bình, Tx. Phước Long, Bình Phước.6', 'KD09'),
('CHSBT', 'Cửa Hàng Hương Sơn- Bình Thuận', '29 Phú Thọ, Hàm Cường, Thuận Nam, Bình Thuận. 8', 'KD06'),
('CHTBC', 'Cửa Hàng Hữu Thắng', '232/11 Hương lộ 80,KP2, F, Bình Hưng Hoà B, Bình Tân. 8', 'KD02'),
('CHTBD', 'Công ty CP Hữu Toàn (GROUP)', 'Tầng 01 Tòa nhà BlueSky: 01 Bạch Đằng, F2. Tân Bình', 'KD03'),
('CHTCM', 'Cửa Hàng Hữu Tín- Cà Mau', 'Khóm 8, TT Thới Bình, H. Thới Bình, T. Cà Mau', 'KD08'),
('CHTCT', 'Cửa Hàng Hoa Tím - Cần Thơ', '250A, kv Thới Hưng, P. Thới An Đông, Q. Bình Thuỷ, Cần Thơ', 'KD08'),
('CHTGC', 'Anh Hoàng - Cửa Hàng Hoàng Thúy', '142 Nguyễn Huệ, TX. Gò Công, Tiền Giang', 'KD02'),
('CHTLD', 'Cửa Hàng Hà Tiến - Lâm Đồng', '11 Lê Lợi - TT Dran - Đơn Dương- Lâm Đồng. 8', 'KD09'),
('CHTLVQ', 'Cửa Hàng Hà Thành- Lê Văn Quới', '582 Lê Văn Quới. 6', 'KD02'),
('CHTNTN', 'Cửa Hàng Hoàng Thúy Nga- Tây Ninh', '450 Điện Biên Phủ, Ninh Hoà, Ninh Thuận, Tây Ninh. 8', 'KD07'),
('CHTQ8', 'Cửa Hàng Nội Thất Hiệp Thành -Q8', '232 Liên Tỉnh 5 , F6, Q8.10', 'KD06'),
('CHTQL1A', 'Cửa Hàng Hưng Thịnh- Quốc lộ 1A Bình chánh', 'A13/53 QL1A Bình Chánh. 8', 'KD02'),
('CHTTKTQ', 'Cửa hàng Hưng Thịnh', '798 Tân kỳ tân quý. 6', 'KD02'),
('CHTTV', 'Cô Thu - Cửa Hàng Hiệp Thành', '582-583 Trần Phú , Phường 7, TX. Trà Vinh. 10', 'KD01'),
('CHTVT', 'Cửa Hàng Hải Triều - Vũng Tàu', '276 Lê Hồng Phong, F.4, Tp. Vũng Tàu', 'KD07'),
('CHVBR', 'Cửa Hàng Hồng Vân - Bà Rịa Vũng Tàu', '24/3 ấp 1, xã Bưng Riềng, Xuyên Mộc,Bà Rịa VT', 'KD07'),
('CHVVT', 'Cửa Hàng Huyền Vy- Vũng Tàu', '597 Nguyễn An Ninh, F9, Tp, Vũng Tàu. ( Không Ghi Giá ) . 8', 'KD07'),
('CHYBMT', 'Cửa Hàng Hoàng Yến Buôn Mê Thuột', '166 Y Jut . Buôn Ma Thuột SDT . 8', 'KD09'),
('CHYBP', 'Cửa Hàng Hải Yến - Bình Phước', 'Kp. Thanh Xuân, TT. Thanh Bình, H. Bù Đăng, Bình Phước.6', 'KD09'),
('CHYCT', 'Cửa Hàng Hải Yến - Cần Thơ', '660C1/10 kv bình trung, P. Long Hoà, Q. Bình Thuỷ, TPCT', 'KD08'),
('CHYDN', 'Cửa Hàng Hải Yến Đắc Nông', '04 Huỳnh Thúc Kháng, TX Gia Nghĩa, Đắc Nông, (Ép KL không lấy đỏ, vàng)', 'KD09'),
('CIDC', 'Công Ty INDOCHINE', '01 Lê Qúi Đôn, Quận 3,TPHCM', 'KD09'),
('CISML', 'Chị Cúc - TTNT Ich Sanh', '502 KP Minh Phú, TT Minh Lương, Rạch Sỏi, Kiên Giang', 'KD07'),
('CKACG', 'Cửa Hàng Khang Anh, Chợ Gạo', '332/1 Tỉnh lộ 879, chợ gạo, Tiền Giang. 8', 'KD02'),
('CKATAQ10', 'Chị Liên ( 0902 991394)- Công ty Kata', '193 Nguyễn Lâm, F6, Q10', 'KD07'),
('CKC', 'Khánh Chi', '93/47 ấp chiến lược :ĐT: 5407.6229', 'KD07'),
('CKCCM', 'Cửa hàng Kim Chi - Cà Mau', 'khóm 7, TT Sông Đốc, H. Trần Văn Thời, T. Cà Mau', 'KD08'),
('CKDBP', 'CH Nội Thất Kim Đào, Bình Phước', 'Ấp 7, Thanh Hoà, Huyện Bù Đốp, Bình Phước. 10 (Ko ghi giá)', 'KD09'),
('CKDCM', 'Cửa hàng Kiều Diễm - Cà Mau', 'Khóm 1 , Thị Trấn Cái Nước, H. Cái Nước, T. Cà Mau', 'KD08'),
('CKDDL', 'Chị Thanh - Cửa Hàng Kymdan Đức Linh', 'Thôn 4, Xã Đức Hạnh, Huyện Đức Linh, Tỉnh Bình Thuận. 10', 'KD06'),
('CKDMT', 'DNTN -TTNT Kim Dung:', '99 Lý Thường Kiệt,p4,TP Mỹ Tho,Tiền Giang. 8', 'KD01'),
('CKDNVT', 'Cửa Hàng Kinh Đô Nệm- Vũng Tàu ( Không Ghi Giá)', '71-73 Lê Lợi, TP Vũng Tàu . 8', 'KD07'),
('CKDQ2', 'Chú Tư - Cửa Hàng Kymdan Quận 2', 'B1/9 Lương Định Của, Bình An, Quận 2', 'KD07'),
('CKDTB', 'Chị Thuỳ - Kymdan Tân Bình', '636Bis Luỹ Bán Bích, P17, Q.Tân Bình', 'KD09'),
('CKENTASZOBT', 'Cửa Hàng KenTasZo - Bình Tân', '113 đường gò Xoài, F Bình Hưng Hòa, Bình Tân', 'KD02'),
('CKHBMT', 'Cửa Hàng Khánh Hồng - Buôn Mê Thuột', '203 Võ Văn Kiệt, F Khánh Xuân, TP BMT', 'KD09'),
('CKHGL', 'Cửa hàng Rèm Màn Kim Hiền- Gia Lai ( 0905 69 7299)', 'Hoàng Văn Thụ, TT Chư Sê, Gia Lai. 10', 'KD09'),
('CKHL', 'Bán Lẻ:', NULL, 'KD04'),
('CKHM', 'KHÁCH HÀNG MOUSSELY ( KHÔNG ĐẶT HÀNG)', 'KHÔNG ĐẶT HÀNG', 'KD07'),
('CKMHM', 'Chị Kim Thành - Công Ty Kinh Môn', '172A/T Đường Hà Đặc,Phường Trung Mỹ Tây,Q12,Tphcm', 'KD07'),
('CKNBT1', 'khong dung', NULL, 'KD07'),
('CKNTD', 'Chị Ngân - Cửa Hàng Kim Ngân', '44 Võ Văn Ngân, Phường Trường Thọ, Quận Thủ Đức. 8', 'KD07'),
('CKPHCM', 'Cty CP NT Kim Phụng Hảo ( Toa chành ko giá)', '65 Lý Bôn, Phừơng 2, Cà Mau', 'KD01'),
('CKPKG', 'Cửa Hàng Kiều Phụng', 'Chợ Kênh 8,Huyện Tân Hiệp,Kiên Giang', 'KD07'),
('CKPMCM', 'Cô Phụng - Cửa Hàng Kim Phụng (mẹ)', '51 Lý Bôn, Phường 2, Cà Mau : luôn lấy kích thước 200', 'KD01'),
('CKPQ5', 'Cửa hàng Kim Phụng - Q5', '98 Phùng Hưng, - Phường 13 - Quận 5 - TP Hồ Chí Minh', 'KD02'),
('CKSQA', 'Chị Hương - Khách Sạn Quỳnh Anh', '54-56 Đường 24A - A. Tiến: 0903.8820.84', 'KD07'),
('CKTAG', 'Cửa Hàng Kim Thoa- An Giang', 'chợ tân phú, ấp phú lợi, xã phú lâm, huyện phú tân, tỉnh an giang', 'KD08'),
('CKTBT', 'Cửa Hàng Kim Thanh', '1341 Tỉnh lộ 10,P.Tân Tạo,Bình Tân. 8', 'KD02'),
('CKTDN', 'Đại Lý Nệm Kim Trang', '91/5B Khu phố 9,P.Tân Biên,Thành phố Biên Hòa,Đồng Nai. 10', 'KD01'),
('CKTDTSD', 'Kim Khí Điện Máy Duy - Sông Đốc', 'Trần Văn Thời ,Cà Mau', 'KD03'),
('CKTGV', 'Cửa Hàng Kim Thành- Gò Vấp', '308 Nguyễn Văn Nghi, F7, Gò Vấp', 'KD02'),
('CKTHG', 'Cửa hàng Kiều Trinh - Hậu Giang', 'Ấp Phú Khởi, Xã Thạnh Hoà, Huyện Phụng Hiệp, Tỉnh Hậu Giang', 'KD08'),
('CKTQT', 'Cửa Hàng Nệm Kim Thoại', '98/1C Quang Trung, P8, Q Gò Vấp', 'KD02'),
('CKTTC', 'Chị Kiêm - Cửa Hàng Kiết Tường', '51 Nguyễn Văn Cừ, Tân Châu, An Giang. 10', 'KD08'),
('CKVBT', 'Cửa Hàng Khánh Vy', '462 đường số 7, P. Tân Tạo, Q. Bình Tân', 'KD02'),
('CKVLT', 'Cửa Hàng Kim Vân- Long Thành ( Không Ghi Giá)', '87-88 Tổ 5, Khu Phước Hải, Long Thành, Đồng Nai', 'KD07'),
('CKVQ9', 'Anh Khanh :Cửa Hàng Khánh Vân', '28 Tây hòa,P. Phước Long, Q9', 'KD07'),
('CLHTHD', 'Cửa Hàng Liên Hương', '457 Tân Hoà Đông, Phường Bình Trị Đông, Quận Bình Tân', 'KD08'),
('CLIMARESORT', 'RESORT LIMA - NHA TRANG', 'Sao Mai Anh resort, số 02 Phạm Văn Đồng, P. Vĩnh Hòa, TP.Nha Trang, Khánh Hòa', 'KD10'),
('CLPTN', 'Anh Lô - Cửa Hàng Lợi Phát', 'Khu Phố 2, Cầu Mới, Trần Quốc Toản, P.2, T.X Tây Ninh', 'KD09'),
('CLTN2CM', 'Cửa Hàng Lịnh_ Tú Nữ 2 ( Cà Mau)', 'Khóm 5, Thị Trấn Trần Văn Thời, H. Trần Văn Thời, Tp. Cà Mau', 'KD08'),
('CLTTP', 'Cửa Hàng Lý Thế.', '54 Tân Quý, F. Tân Quý. Tân Phú', 'KD02'),
('CMADT', 'Cửa Hàng Mai Anh- Đồng Tháp', '132 QL80, Khóm Phú Mỹ, TT Cái Tàu Hạ, Đồng Tháp', 'KD02'),
('CMBDL', 'Cửa Hàng Mai Bình - Đăk Lăk', '422-424-426 Giải Phóng, TT Phước An, huyện Hrong Păk, Đăk . 10', 'KD09'),
('CMCHHBD', 'Cửa Hàng Màn Cửa Huy Hoàng- Bình Dương', 'Kp2-TT Tân Bình , Bắc Tân Uyên, Bình Dương', 'KD07'),
('CMCLD', 'Cửa Hàng Minh Chung Lâm Đồng', 'Số 6/1 Xô Viết Nghệ Tĩnh, F7, Đà Lạt. Tỉnh Lâm Đồng. 8', 'KD09'),
('CMCQ11', 'Cửa Hàng Minh Chánh Quận 11', 'Giao ở Kho 224 phan anh Tân thới hoà Q Tân phú,', 'KD03'),
('CMCTL10', 'Chị Phương - Cửa hàng Minh Châu', '1694 Tỉnh Lộ 10. 6', 'KD02'),
('CMDLK', 'Cửa Hàng Mỹ Duyên', 'Ấp Bình Lộc, Long Khánh, Đồng Nai', 'KD02'),
('CMGDL', 'Trung Tâm Nội Thất Mỹ Gia', '18A1 Yersin,Đà Lạt: ( Không Ghi Giá )', 'KD09'),
('CMH2NT', 'Cô Hải- Công Ty TNHH TM - DV - SX Minh Hải', '(128 Thủy Tú, Xã Vĩnh Thái, Nha Trang)', 'KD06'),
('CMHBH', 'Cửa Hàng Mạnh Hiển - Biên Hòa', '225 CMT8, F. Hòa Bình, Tp. Biên Hòa. 6', 'KD07'),
('CMHBL', 'Chị Trinh - Cửa Hàng Mai quỳnh', '75 Bà Triệu, P.3, TP. Bạc Liêu', 'KD09'),
('CMHBT', 'Cửa Hàng Minh Hoàng', 'ấP 2 ,Tân Thủy,Ba Tri. 8', 'KD02'),
('CMHCL', 'Cửa Hàng Minh Hiếu - Chợ Lách', 'QL57, Hoà Nghĩa, Chợ Lách, Bến Tre. 8', 'KD02'),
('CMHCT', 'Chị Mười - Cửa hàng Mười Hùng', '71 Quốc Lộ 61, ấp Tân Phú A,T.T Cái Tắc, Châu Thành A, Hậu Giang. 10', 'KD08'),
('CMHNT', 'Chị Phương Công Ty TNHH TM - DV - SX Minh Hải ( Không Ghi Giá)', '233 Thống Nhất, Phương Sài, Nha Trang ( ( Không Ghi Giá))', 'KD06'),
('CMHQ3', 'Cửa Hàng Minh Hằng', '262A Nguyễn Thị Minh Khai, Quận 3', 'KD07'),
('CMHST', 'Chị Hoa - Cửa Hàng Mỹ Hoa', '2-4-6 Điện Biên Phủ, Sóc Trăng (TH không lấy xám, đen, góc sọc đỏ)', 'KD01'),
('CMHTC', 'Chị Hạnh - Mỹ Hạnh', '436 Trường Chinh, Phường 13, Quận Tân Bình', 'KD03'),
('CMKTP', 'Cửa Hàng Minh Khôi - Tân Phú', '465 Lê Trọng Tấn, Tân Phú. (ko ghi giá) 8', 'KD02'),
('CMLBC', 'Cửa Hàng Minh Long- Bình Chánh', 'D18/46C ấp 4, Hưng Long, Bình Chánh', 'KD02'),
('CMLKT', 'Cửa Hàng Mai Lân KonTum', '944-946 Hùng Vương - TT PleiKần- H. Ngọc Hồi - Kon Tum. 10', 'KD09'),
('CMLTDM', 'Cửa Hàng Mộc Linh- Thủ Dầu Một', '647 Huỳnh văn Lũy , Phú Mỹ, Thủ Dầu Một, BD', 'KD07'),
('CMLTN', 'Cửa hàng My Ly- Tây Ninh', '878 CMT8- Khu Phố 1, F4, Tây Ninh. 6', 'KD07'),
('CMNBMT', 'Chị Nguyệt- CH Minh Nguyệt Buôn Mê Thuột', 'Số 2 Lê Thánh Tông, Buôn Mê Thuột. 10', 'KD09'),
('CMNDH', 'Cửa hàng Minh Nghi - Đức Hòa', 'Ấp Bình Thúy, xã Hòa Khánh Đông, huyện Đức Hòa, LA.', 'KD02'),
('CMNDN', 'Cửa hàng Minh Nhựt- Đồng Nai', 'Gần chợ Phương Lâm', 'KD07'),
('CMPBT', 'Cửa Hàng Mỹ Phương', '112 KP1,Thị trấn Bình Đại, Bến Tre. 10', 'KD02'),
('CMPKBD', 'CH Nội Thất Mai Phước Khang', '1062 CMT8, Thủ Dầu 1, Bình Dương ( ép lấy màu trắng + NBO kem)', 'KD07'),
('CMPLD', 'Cửa Hàng Minh Phi (PM) 0985 622 212', '18 Quang Trung P9 Đà Lạt, Lâm Đồng (Hóa đơn dán ở ngoài bao chành) 8', 'KD09'),
('CMPLX', 'Cửa Hàng Minh Phát Long Xuyên', 'Long Xuyên', 'KD02'),
('CMPTDT', 'Cửa Hàng Mai Phương Thảo', 'Nhà số 6- 8 Nguyễn Doãn Phong, P.Mỹ Phú, TP Cao lãnh, Đồng Tháp. 8', 'KD02'),
('CMQBL', 'Cửa Hàng Mai Quỳnh', '75 Bà Triệu, P.3, TP. Bạc Liêu', 'KD07'),
('CMQBT', 'Cửa Hàng nệm Minh Quân', '269 Nguyễn Tất Thành - Chợ Lầu - Bắc Bình - Bình Thuận', 'KD06'),
('CMQST', 'Cửa Hàng Mỹ Quang', 'SócTrăng,Cửa Hàng Mỹ Quang', 'KD02'),
('CMQVL', 'Cửa Hàng Mỹ Quyên - Vĩnh Long', '4535, tổ 25, ấp Đông Lợi, xã Đông Bình, Thị xã Bình Minh, Tỉnh Vĩnh Long.', 'KD08'),
('CMSTN', 'Cửa hàng Màn Cửa Minh Sang - Tây Ninh', '137, Ấp Phước Đức B, Xã Phước Đông, Gò Dầu, Tây Ninh', 'KD07'),
('CMT2CL', 'Chị Hồng - Cửa Hàng Minh Thiện', 'chợ Mỹ Long, xã Mỹ Long, Cai Lậy, Tiền Giang. 8', 'KD02'),
('CMTCL', 'Chị Yến- Cửa Hàng Thầy Minh ( Minh Thiện cũ)', 'Chợ nhị Qúy ,Cai Lậy,Tiền Giang. 8', 'KD02'),
('CMTDN', 'Cửa Hàng Mạnh Tùng', '1925 QL20, Phú Xuân, Tân Phú , Đồng Nai. 8', 'KD07'),
('CMTHM', 'Cửa Hàng Minh Thảo', '28 Nguyễn Văn Bứa, Xuân Thới Sơn, Hóc Môn. 8', 'KD09'),
('CMTLA', 'Cửa Hàng Minh Trí Long An', 'KP3. TT Thạnh Hóa, Long An', 'KD02'),
('CMTLD', 'Cửa Hàng Minh Thông - Lâm Đồng', '137 Hà Giang Bảo Lộc- Lâm Đồng. 10', 'KD09'),
('CMTNT', 'Cửa Hàng Minh Tín- Nha Trang', '21 Ngô Gia Tự , TP Nha Trang', 'KD06'),
('CMTTB', 'Cửa Hàng Minh Tâm - Trảng Bom', '26 Bắc Sơn , ấp Bùi Chu, xã Bắc Sơn, Trảng Bom', 'KD07'),
('CMTTL10', 'Cửa Hàng Minh Thảo- Tỉnh lộ 10', '1584 Tỉnh lộ 10, Tân Tạo, Bình Tân. 8', 'KD02'),
('CMTTP', 'Cửa Hàng Minh Trang', '54 Tân Qúy,Tân phú', 'KD02'),
('CMTVL', 'CH Trang Trí Nội Thất - VP Mai Trang', 'Số 1B, Trưng Nữ Vương, P1, TP VL - 68/3B Phạm Thái Bường,P4,VL. 10', 'KD01'),
('CMVBP', 'Cửa Hàng Mỹ Vượng - Bình Phước', '13 Nguyễn Huệ, TT. Chơn Thành, H. Chơn Thành, Bình Phước', 'KD09'),
('CMVQ11', 'Cửa Hàng Mỹ Vân- Quận 11', '220 Phó Cơ Điều, F6,Q11', 'KD03'),
('CMYM', 'Anh Hiền - Công Ty Tnhh Mỹ ý Mỹ', '84/86/8 Tân Sơn Nhì, P.Tân Sơn Nhì,Q.Tân Phú', 'KD06'),
('CNABL', 'Anh Mạnh - Cửa Hàng Ngọc ánh', '51A/24 Hà giang, bảo Lộc, lâm Đồng', 'KD07'),
('CNACT', 'Cửa Hàng Ngọc Ánh - Cần Thơ', 'ấp Thới Thuận A, TT Thới Lai, huyện Thới Lai, TP Cần Thơ.', 'KD08'),
('CNAMN', 'Cửa Hàng Nội Thất Nhật Anh Mũi Né', '316 Huỳnh Thúc Kháng , Mũi Né, Phan Thiết. 10', 'KD06'),
('CNAMTBT', 'Anh Nam/Chị Ngọc : Nội Thất Nam Thành', 'ấp 1,xã bình thới,bình đại,Bến tre', 'KD02'),
('CNAQ8', 'Cửa Hàng Nguyên Anh', '1981 Phạm Thế Hiển,P6,Q8', 'KD06'),
('CNATD', 'Cửa Hàng Ngọc Anh- Thủ Đức', '967 Tỉnh Lộ 43, Phường Bình Chiểu, Thủ Đức', 'KD07'),
('CNB2TL', 'Cửa Hàng Ngọc Bích 2 (Thái Nương)', 'Lạc Hóa 2, TT Lạc Tánh, H. Tánh Linh, Bình Thuận. 8', 'KD06'),
('CNBGL', 'Cửa Hàng Nhật Bảo Gia Lai- 0908 06 1088', '09 Quang Trung - Pleiku- Gia Lai. 10', 'KD09'),
('CNBTL', 'Cửa Hàng Ngọc Bích', 'Lạc Hóa 2, TT Lạc Tánh, H. Tánh Linh, Bình Thuận. 8', 'KD06'),
('CNCBT', 'Chị Loan/Anh Hùng: Cửa Hàng Nhã Ca', '146 Nguyễn Văn Đậu,P7,Q.Bình Thạnh,TPHCM', 'KD09'),
('CNCHM', 'Chú Châu - Cửa Hàng Năm Châu', '131/2 ấp Trung Chánh, Xã Tân Xuân, Hóc Môn', 'KD09'),
('CNCQ9', 'Cửa Hàng Ngân Cương- Q9', '317 Đỗ Xuân Hợp, Q9. 8', 'KD07'),
('CNCST', 'Cửa Hàng Năm Châu - Sóc Trăng (HKD Thanh Mỹ)', 'Đường 3/2, ấp Cầu Đồn, TT Huỳnh Hữu Nghĩa, H. Mỹ Tú, T. Sóc Trăng', 'KD08'),
('CNCTV', 'Cửa Hàng Nam Cường ( Không ghi giá)', '217 Nguyễn Thị Minh Khai, Khóm 8, P.7, TP. Trà Vinh. 10', 'KD01'),
('CNDBC', 'Ngọc Diệp - Đại Lý Liên á', 'C1/3A Đường Võ Văn Vân,ấp 3 ,Vĩnh Lộc B,Bình Chánh ĐT:62666896', 'KD07'),
('CNDBD', 'Cửa Hàng Năm Dân Bình Dương', '266 xã Long Hoà, huyện Dầu Tiếng, Bình Dương. 10', 'KD07'),
('CNGBMT', 'Cửa Hàng Ngọc Giàu- Buôn Mê Thuột', '267 Nguyễn Thị Định, Tân Tiến, Buôn Mê Thuột. 8', 'KD09'),
('CNHBR', 'Cửa Hàng Ngân Hường - Bà Rịa', '96 Võ Thị Sáu Long An, Long Điền, Huyện Đất Đỏ, Bà Rịa Vũng Tàu', 'KD07'),
('CNHKG', 'Chị Hiền - Cửa Hàng Ngọc Hiền', '15 Nguyễn Chí thanh,Rạch Sỏi,Kiên Giang', 'KD08'),
('CNHTG', 'CH Ngọc Hương - Tiền giang', '351 Ấp Mới, Xã Long Định, Huyện Châu Thành, Tiền Giang', 'KD02'),
('CNHVL', 'Cty TNHH TM Ngọc Hưng', 'Số 11 đường Trưng Nữ Vương, Phường 1, Tp Vĩnh Long', 'KD08'),
('CNKBD', 'Chị Kiều - TTNT Ngọc Khôi', '179/1 Bình Chiến,TT.Bình Đại,Bến Tre. 6', 'KD02'),
('CNKDN', 'Cửa Hàng Ngọc Khánh - Đồng Nai', 'Đường Hùng Vương, TT. Hiệp Phước, Đồng Nai', 'KD07'),
('CNKV', 'Cửa Hàng Khánh Vy', '462 Đường Số 7, P.Tân Tạo, Q.Bình Tân', 'KD08'),
('CNLDN', 'Cửa hàng Nhật Lệ- Đồng Nai ( Giao hàng trước 1h)', '571 Tây Lạc, Bắc Sơn, Trảng Bom, Đồng Nai (giao hàng đến kho - Cầu Sập). 10', 'KD07'),
('CNLGK', 'Chị Lan - Cửa Hàng Ngọc Lan', '7/1 Gia Kiệm, Thống Nhất, Đồng Nai', 'KD07'),
('CNLTN', 'Chị Lan:Cửa hàng Ngọc Lan', '302 Lạc long Quân,kp4,p4,Tây Ninh: 0949.118009', 'KD02'),
('CNMBR', 'Cửa Hàng Ngọc Mai Bà Rịa', '249 Hùng vương, Ngãi giao , Châu Đức, Bà Rịa VT. 10', 'KD07'),
('CNMBT', 'Cửa Hàng Ngọc Mai - Bình Thạnh', '33 Bạch Đằng , F15, Bình Thạnh', 'KD06'),
('CNNBD', 'Cửa Hàng Ngọc Nam Bình Đại', 'ấp 3 xã bình thới, bình đại , bến tre. 8', 'KD02'),
('CNNBT', 'Chị Diệu -Cừa Hàng Ngô Nguyễn Bình Thạnh', '100 Xô Viết Nghệ Tỉnh,p21,Bình Thạnh', 'KD06'),
('CNNQ9', 'Cửa Hàng Nệm Tốt- Quận 9 ( Ngọc Nguyên cũ)', '181 Đỗ Xuân Hợp ,P. Phước Long,Q9,TPHCM. 10', 'KD07'),
('CNPBD', 'Cửa Hàng Ngọc Phi', '20/22 ấp Bình Đường, Ngã Ba Bình Đường, Bình Dương', 'KD02'),
('CNPCT', 'Anh Minh - Cơ Sở Đồ gỗ Ngọc Phú', 'KV10,P.Châu văn liêm ,Q.Ô Môn,TP.Cần thơ. 8', 'KD08'),
('CNPDL', 'Cửa Hàng Ngọc Phương - Đắc Lăk', '149 Nguyễn Tất Thành, Khối 7, TT M\'Drak, H. M\'Drak, DakLak', 'KD09'),
('CNPQ9', 'Cửa Hàng Ngọc Phát - Quận 9', '188 Lê Văn Việt, Tăng Nhơn Phú B, Quận 9. 8', 'KD07'),
('CNPTN', 'Cửa Hàng Ngọc Phi - Tây Ninh', '487 Lạc Long Quân, Hiệp Tân, Hòa Thành, Tây Ninh', 'KD07'),
('CNQ9', 'Cô Ngọc -Cửa Hàng Ngọc', '263 Lê Văn Việt, Phường Hiệp Phú, Quận 9', 'KD03'),
('CNSTV', 'DNTN Năm Sỹ - Trà Vinh ( Không Gửi Toa Chành)', 'Khóm Phước Trị, F1, TX Duyên Hải, Trà Vinh. 8', 'KD01'),
('CNT231Q2', 'Cửa Hàng Nội Thất 231 - 233 - Quận 02', '231 Nguyễn Duy Trinh Quận 02', 'KD07'),
('CNTAG', 'Cửa Hàng Ngọc Trân- An Giang', 'Cây số 3, Gần UBND phường Long Sơn, Tx. Tân Châu, An Giang.', 'KD08'),
('CNTBD', 'Nội Thất Ngọc Thủy- Bình Định', '375 Trần Phú , TT Diệu Trì, Tuy Phước,Bình Định. 10', 'KD06'),
('CNTCG', 'Cửa Hàng Nhựt Tân - Cần Giuộc ( CH Xe Đạp)', 'Tổ 14 ấp Tây, xã Đông Thạnh, Cần Giuộc , LA', 'KD02'),
('CNTDDN', 'Cửa hàng Nội Thất Dũng- Đồng Nai', 'B115 Phước Lý, xã Đại Phước, Huyện Nhơn Trạch, Đồng Nai, 10', 'KD07'),
('CNTDT', 'Cửa Hàng Nhân Trung- Đồng Tháp', '77 Nguyễn Huệ, Phường 1, Tp Cao Lãnh, Đồng Tháp.', 'KD02'),
('CNTDTTV', 'Cửa Hàng NT Dân Tiến- Trà Vinh', 'Khóm Mỹ Cẩm A, Thị Trấn Cầu Ngang, H. Cầu Ngang, T. Trà Vinh', 'KD08'),
('CNTHNBT', 'Cửa Hàng NT Hai Nhựt - Bến Tre', 'QL57, TT. Thạnh Phú, Thạnh Phú, Bến Tre, Việt Nam', 'KD02'),
('CNTHNT', 'Cửa Hàng Nội Thất Hồng Ninh Thuận', 'Công Hải, Hàm Thuận Bắc, Ninh Thuận. 8', 'KD06'),
('CNTHTBT', 'Cửa Hàng TTNT Hải Triều- Bình Thuận', 'Thôn Dân Phú, xã Hàm Kiệm, H Hàm Thuận Nam, Bình Thuận', 'KD06'),
('CNTHTCT', 'Cửa Hàng NT Hoàn Thành - Cần Thơ', 'ấp Phú Thọ, xã Trường Xuân, huyện Thới Lai, TP Cần Thơ', 'KD08'),
('CNTLA', 'Cô Tuyết - Cửa Hàng Năm Trước', 'Chợ Thanh Hóa,Long An ( 0948.464.742). 8', 'KD02'),
('CNTLX', 'Cửa Hàng Nguyên Thanh- Long Xuyên', '48 Ngô Gia Tự, P.Mỹ Long, Long Xuyên, An Giang', 'KD08'),
('CNTML', 'Cửa Hàng Nam Tịnh - Mã Lò', '2028/11 Tân Kỳ Tân Quý / . 6', 'KD02'),
('CNTMNDN', 'Cửa Hàng Nội Thất Minh Nhật - Đồng Nai', '2395 Ấp Phương Lâm, xã Phú Lâm, H.Tân Phú, Đồng Nai', 'KD09'),
('CNTPR', 'Cửa hàng Nệm Tốt- Phan Rang - 093 122 9729', 'Số 22 đường 16-4, F. Kinh Dinh, Phan Rang, T. Ninh thuận. 8', 'KD06'),
('CNTQ8', 'Cửa Hàng Nhật Tân - Q8', '78-79 Lên Tỉnh 5, F5, Q8. 10', 'KD06'),
('CNTQDN', 'Cửa Hàng Ngọc Tùng Quân - Đà Nẵng', '191 Núi Thành Quận Hải Châu. ( Giá dành riêng).', 'KD11'),
('CNTTADN', 'Cửa hàng TTNT Trung Anh - Đà Nẵng', '104 Trần Đại Nghĩa, F Hòa Hải. Ngũ hành Sơn, Đà Nẵng. 13', 'KD11'),
('CNTTC', 'Chị Thảo - cửa hàng Ngọc Thảo', '832 Trường Chinh, P13, Q.Tân Bình', 'KD02'),
('CNTTDBP', 'Cửa Hàng Nội Thất Thành Dương - Bình Phước', '19 KP2 TT Chơn Thành , huyện Chơn Thành, BP', 'KD09'),
('CNTTGV', 'Cửa Hàng New Trung Thành - Gò Vấp', '185B Nguyễn Oanh, F10 Gò Vấp. 8', 'KD06'),
('CNTTNBD', 'Nội Thất Tuấn Ngân- Bình Định', 'đường Thanh Long 4, Phước Mỹ, Quy Nhơn, Bình Định', 'KD06'),
('CNTTNDN', 'Cửa Hàng Thanh Nhã - Đồng Nai', 'Thị trấn Tân Phú, Đồng Nai', 'KD07'),
('CNTTNTN', 'Cửa hàng Thanh Nga- Tây Ninh', '701 CMT8, KP.2, F.3, TP. Tây Ninh', 'KD07'),
('CNTTTBP', 'Cửa Hàng Thanh Thúy- Bình Phước', 'số 63 QL13, Ấp 5 xã Lộc Thái, Huyện Lộc Ninh, Bình Phước', 'KD09'),
('CNTTTCT', 'Cửa Hàng Nội Thất Toàn Thịnh- Cần Thơ', '464 đường CMT8, Phường Bùi Hữu Nghĩa, Quận Bình Thuỷ, Tp.Cần Thơ.', 'KD08'),
('CNTTTHG', 'Cửa Hàng Nội Thất Trường Thịnh- Hậu Giang', '237 - đường 30/4 - KV5 - F Thuận An -TX Long Mỹ - Tỉnh Hậu Giang. 8', 'KD01'),
('CNTVBL', 'Cửa Hàng Nội Thất Việt -Bến Lức', '214 Quốc Lộ 1A, KP4, TT Bến Lức, Long An.', 'KD02'),
('CNTVL', 'Cửa hàng Ngọc Thu', 'F1/48 ấp 6, Xã Vĩnh Lộc A, Huyện Bình Chánh. 10', 'KD02'),
('CNTXTD', 'Cửa Hàng Nội Thất Xanh - Thủ Đức ( BINGBEE VIỆT NAM)', '1/4B Đường số 18, KP4, Linh Đông, Thủ Đức.', 'KD07');
INSERT INTO `customer` (`makh`, `tenkh`, `diachi`, `qlkhuvuc`) VALUES
('CNVDDN', 'Cửa Hàng Nguyễn Văn Du - Đồng Nai', 'Đường Nguyễn Hoàng, Tổ 4, Ấp 2, Sông Trầu, Trảng Bom, Đồng Nai', 'KD07'),
('CNVPL', 'Cửa Hàng Nam Việt - PleiKu', '30 CMT8 Phường. Hoa Lư, Pleiku, Gia Lai', 'KD09'),
('CNVTN', 'Cửa hàng Ngọc Vân Thốt Nốt', 'KV Thới An 3, P. Thuận An, Q Thốt Nốt, TP Cần Thơ', 'KD08'),
('CNYCT', 'Cửa Hàng Như Ý - Cần Thơ', '112B, CMT8, P. Cái Khế, Q. Ninh Kiều, TP. CT', 'KD08'),
('CNYDM', 'Cửa Hàng Như Ý ((Đăk Min)', '205 Nguyễn Tất Thành,TT Đắk Min,H.Đắk Min,8', 'KD09'),
('CNYHM', 'Cửa Hàng Như Ý Hóc Môn', '63 Đặng Thúc Vinh, Hóc Môn', 'KD09'),
('CPARADISE', 'Dự án Paradise - Dốc Lết', 'DỐC LẾT- KHÁNH HÒA', 'KD10'),
('CPATD', 'Cửa Hàng Phương Anh', '170 Quốc lộ 13,P.Hiệp Bình Chánh,Thủ Đức', 'KD07'),
('CPCDL', 'Chị Phúc - Cửa Hàng Phúc Chiến', 'Số 9 Lý Tự Trọng TP Đà Lạt ( dán toa vô nệm)', 'KD09'),
('CPDQ12', 'Chị Đông - CH.Phương Đông', '19/1A,Phan văn hớn,P.Tân Thới nhất,Q12', 'KD07'),
('CPDTB', 'Anh Phát - Cửa hàng Phát Đạt Tân Biên', 'Khu phố 2 Thị trấn Tân Biên, Tây Ninh', 'KD07'),
('CPDTN', 'Anh Sỹ - Phước Đa', 'Chợ Long Hoa, Tây Ninh', 'KD09'),
('CPGMBT', 'Cửa Hàng Phúc Gia Minh - Bến Tre', 'KP2, TT Châu Thành, huyện Châu Thành, Bến TRe (không giá)', 'KD02'),
('CPLBD', 'Chị Linh : Cửa Hàng Phương Linh', 'Tỉnh lộ 743,Bình Dương: 0903.527.271', 'KD03'),
('CPLBR', 'Cửa Hàng Phi Long- Bà Rịa', 'chợ Mỹ Xuân, Huyện Tân Thành, Bà Rịa Vũng Tàu. 10', 'KD07'),
('CPLLX', 'Cửa hàng Pha Lê - Long Xuyên', '1254 Trần Hưng Đạo, P. Mỹ Xuyên, TP Long Xuyên, T. An Giang', 'KD08'),
('CPLNH', 'Anh Bình - CH Phát Lợi - Ninh Hòa', '404 Trần Quý Cáp, Ninh Hòa', 'KD06'),
('CPLTBR', 'Cửa Hàng Phước Long Thọ - Bà Rịa', 'Tổ 22, Ấp Phước Thới, Xã Phước Long Thọ, Huyện Đất Đỏ, BRVT', 'KD07'),
('CPMDN', 'Cửa Hàng Phương Mai Đắc Nông', 'Tôn ĐứcThắng , Gia Nghĩa, Đắc Nông. 8', 'KD09'),
('CPNBD', 'Chị Phượng :Cửa hàng Phượng Nhàn', 'ấp 8,lộc thuận,bình đại,bến tre . 10', 'KD02'),
('CPNHG', 'Cửa hàng Phương Nhung- Hậu Giang', 'ấp Hoà Phụng B, TT Kinh Cùng, H. Phụng Hiệp, T. Hậu Giang', 'KD08'),
('CPNQ2', 'Cửa Hàng Phương Nghi', '607 Nguyễn Duy Trinh', 'KD02'),
('CPTADN', 'Công ty Phúc Tiên An - Đồng Nai', '31A/20 Bùi Trọng Nghĩa, Tổ 42. KP3, Trảng Dài, Đồng Nai', 'KD07'),
('CPTBH', 'Cô Bích - Cửa Hàng Phước Thịnh ( Nệm lấy màu đậm)', '1/2 KP1, Tân Hoà, Biên Hoà, Đồng Nai (12h xe về)', 'KD07'),
('CPTBP', 'Cửa Hàng Phước Thịnh - Bình Phước', '443 QL14, F Tân Bình, TX Đồng Xoài, Bình Phước. 8', 'KD09'),
('CPTBT', 'Cửa Hàng Phương Tuyền - Bến Tre', 'Ấp An Hội A, xã An Thuận, Huyện Thạnh Phú, Bến Tre', 'KD02'),
('CPTCL', 'Cửa hàng Phúc Thịnh - Cam Lâm', '340 Trường chinh, Cam Đức,Cam lâm,khánh hòa. 10', 'KD06'),
('CPTDN', 'Cửa Hàng Phương Thảo - Đắc Nông', '28 Nguyễn Tất Thành, TT Ea T\'Ling, H.Cư Jut, Dak Nông', 'KD09'),
('CPTHACH', 'Công Ty Phú Thạch', '859 Hương Lộ 2,khu phố 8,Bình trị đông A,Bình tân', 'KD04'),
('CPTHG', 'Chị Thảo - Cửa Hàng Phú Thịnh', '442 Hậu giang, Phường 12, quận 6. 10', 'KD02'),
('CPTKG', 'Cửa hàng Phương thúy', 'rạch giá,kiên giang', 'KD02'),
('CPTLA', 'Chị Thủy- Phước Thành', 'Quốc lộ 1S,Tân Hiệp,Long an', 'KD09'),
('CPTTD', 'Chị Thảo - Cửa Hàng Phương Thảo', '79 Võ Văn Ngân,F Linh Chiểu,Q.Thủ Đức. 8', 'KD07'),
('CQAG', 'Cửa Hàng Quang- An Giang', 'Ấp Phú Xương, Chợ Vàm, Phú Tân, An Giang', 'KD08'),
('CQDHM', 'Cửa Hàng Quốc Dũng', '31/4 Phan văn đối,Tiền lâm,Bà điểm ,Hóc môn', 'KD08'),
('CQH2TN', 'Cửa Hàng Quỳnh Hương II- Tây Ninh', 'Ngã 3 An Hoà, Chợ An Hoà, KCN Thành Thành Công, Trảng Bàng. 8', 'KD07'),
('CQH3TN', 'Cửa Hàng Quỳnh Hương 3 - Tây Ninh', 'Đường Bời Lời, KP Gia Quỳnh, TT Trảng Bàng, 8', 'KD07'),
('CQHBD', 'Anh Ngọc, Cửa Hàng Quỳnh Hoa', 'Bình Dương', 'KD09'),
('CQHTN', 'Cửa Hàng Quỳnh Hương- Tây Ninh', '19 QL22, Lộc Thành, Trảng Bàng, Tây Ninh. 8', 'KD07'),
('CQKBD', 'Anh Hòa CH Quốc Khánh (Sông Bé)', '23/17 khu phố bình phước B,Bình chuẩn,thuận an ,bình dương. 10', 'KD07'),
('CQNKG', 'Cửa Hàng Quốc Nam- Kiên Giang', 'khu phố 2, TT Thứ 3, H. An Biên, T. Kiên Giang', 'KD08'),
('CQODT', 'Cửa Hàng Quốc Oai- Dầu Tiếng', '45 Thống Nhất, Dầu Tiếng , Bình Dương', 'KD07'),
('CQPBH', 'Cửa hàng Quang Phương', '164 Đường 30/4 , Biên Hoà, Đồng Nai', 'KD07'),
('CQTLG', 'Cửa Hàng Quãng Thành- Lagi', '532B Thống Nhất, F. Tân An, Lagi. 8', 'KD06'),
('CQTQ7', 'Cửa hàng Quỳnh Trâm', '176 Lâm văn bền,q7', 'KD02'),
('CQTTN', 'Chị Thuý - Cửa hàng Quốc Tế', '282 Cách Mạng Tháng Tám, KP2, P.2, T.X Tây Ninh', 'KD07'),
('CQTVT', 'Cửa Hàng Quốc Toản- Vũng Tàu', '1133 đường 30/4, Phường 11, TP. Vũng Tàu, Tỉnh Bà Rịa - Vũng Tàu', 'KD07'),
('CQVBP', 'Cửa Hàng Quang Vân- Bình Phước', 'chợ Bù Nho, huyện Phú Riềng , Bình Phước', 'KD09'),
('CRCHDKG', 'Cửa Hàng Rèm cửa Hoàng Duyên- Kiên Giang', '200A Nguyễn Trung Trực, kp5, thị trấn Dương Đông, huyện Phú Quốc, tỉnh Kiên Giang', 'KD08'),
('CSBBD', 'Cửa Hàng Phúc Gia An ( AN NGUYÊN FURNITURE)', '22/6 QL13 F Thuận Giao, TX Thuận An, Bình Dương. 8', 'KD07'),
('CSD2LT', 'anh Duy - Công ty TNHH NT Mỹ Phát', '327-329 QL51 , Long Bình Tân, tp, Biên Hoà. 8', 'KD07'),
('CSDLT', 'Chị Nga - DNTN TM-DV Sáu Duy', '1073 Quốc Lộ 51, F, Long Bình Tân,Tp Biên Hoà, Đồng Nai. 8', 'KD07'),
('CSGPQ', 'SUN GROUP - CÔNG TY TNHH XÂY DỰNG NAM ĐẢO', 'dự án LÀNG NHIỆT ĐỚI', 'KD10'),
('CSHLD', 'Cửa Hàng Sơn Hà', '873B hùng Vương -Di Linh - Lâm Đồng. 8', 'KD09'),
('CSKBT', 'Cửa Hàng Trang Trí Nội Thất Sang Kiều', 'Quốc lộ 1A ,TT.Lương sơn ,Bắc ninh,Bình thuận', 'KD09'),
('CSLPT', 'Cô Lâm - Cửa Hàng Sơn Lâm', '507 Trần hưng đạo, Phan Thiết, Bình thuận', 'KD06'),
('CSNCD', 'Cửa hàng Sáu Ngợi', 'A13/8 Nguyễn Hữu Trí, KP1, T.T Tân Túc, Bình Chánh. 8', 'KD02'),
('CSNGL', 'Chị Nguyên - Công Ty Song Nam', '70B Nguyễn Trãi, Pleiku, gia lai', 'KD08'),
('CSOLA', 'Cửa Hàng: Shop Oanh', 'đường Trưng Trắc, TT Thủ Thừa, Long An.10 ( Tất Cả nệm đóng bao chành)', 'KD02'),
('CSOTEL', 'Công Ty CP Cung ứng dịch vụ Sotel', '53 Đường số 18, Phường Hiệp Bình Chánh, Thành phố Thủ Đức, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
('CSP', 'Shopee', NULL, 'KD04'),
('CSRDD', 'Showrom Văn Phòng Đại Diện', '15-17-19, Đường Số 2, KDC Phạm Văn Hai, Xã Phạm Văn Hai, Quận Bình Chánh', 'KD04'),
('CSRLA', 'Công ty TNHH SAM RAN', 'Ấp 5A, xã Lương Bình, huyện Bến Lức, Long An', 'KD03'),
('CSSQ5', 'anh Trí - Cửa Hàng San San Q5', '257 Trần Phú F8 Quận 05', 'KD02'),
('CSTBD', 'Tiêu ái Thu - Cửa Hàng Sơn Thủy', '56/1 Khu Phố 3,Thị Trấn Bình Đại', 'KD07'),
('CSTCT', 'Cô Sáu - Cửa Hàng Sáu Tỷ', 'Quốc Lộ 91, Thốt Nốt, Cần Thơ', 'KD08'),
('CSTDBT', 'Anh Thắng - Công ty Sao Thái Dương', 'Ao Đôi,Bình tân', 'KD07'),
('CSTMTB', 'Chị Thanh - Cửa hàng Sáu Trang Minh', 'QL22, Trảng bàng, Tây Ninh ( Gần Bánh Canh Cô BA)', 'KD07'),
('CSTNGD', 'Cửa Hàng Siêu Thị Nệm- Gò Dầu', '04 Gò Dầu Phường Tân Sơn Nhì, Quận Tân Phú . 6', 'KD02'),
('CSTNQ2', 'Cửa Hàng Siêu Thị Nệm Q2 ( Không Ghi Giá )', '363 Nguyễn Duy Trinh Q2. 8 %', 'KD07'),
('CSTSTN', 'Chị Vui - Cửa hàng Sáu Trang Sơn', 'Long chí,long thành trung,hòa thành,tây ninh (chợ long hoa)', 'KD07'),
('CSTTN', 'Chị Mai - Cửa hàng Sáu Trang', 'f55/4 Lạc Long Quân, Hoà Thành, Tây Ninh', 'KD07'),
('CSVTBD', 'Anh Vương / Anh Khoa - Công Ty Song Việt Tiến', 'Lô J2 Đường số 10,KCN sóng than,dĩ an ,bình dương', 'KD02'),
('CTABR', 'Bác Tám Âu - Cửa hàng Tám Âu', 'ấp bắc,xã hòa long,TX.Bà rịa', 'KD02'),
('CTABT', 'Cửa Hàng Tuyết Anh (Đăng Vũ) Bình Thuận', 'KP4, TT Tân Nghĩa, Hàm Tân, Bình Thuận. 8', 'KD06'),
('CTADN', 'Cửa Hàng Trung Ánh- Đồng Nai', '1008 Ấp Tân Lập 2, xã Cây Gáo, h. Trảng Bom, Đồng Nai. 6', 'KD07'),
('CTALX', 'Chị Hằng :Cửa hàng Tiến An', '40-42 Ngô Gia Tự, Long Xuyên', 'KD08'),
('CTAQ7', 'Cửa Hàng Thiên An - Quận 7', '793/51/24 Trần Xuân Soạn, F, Tân Hưng, Quận 7. 8', 'KD10'),
('CTATP', 'Cửa Hàng Trâm Anh Tân Phú', '04 Tân Quý. 6', 'KD02'),
('CTBBP', 'Cửa Hàng Thái Bình- Bình Phước', 'Thị Trấn Đức Phong, Huyện Bù Đăng- Bình Phước. 10', 'KD09'),
('CTBH', 'Cửa Hàng Tuyết - Biên Hòa (Tuyết Bedding)', '63A/4, Kp10, tân biên, biên hòa', 'KD07'),
('CTBL', 'Cửa Hàng TTNN Toàn- Bến Lức', '227- 229 QL1A, KP3, TT Bến Lức, Long An. 8', 'KD02'),
('CTCC', 'Cửa Hàng Tâm (củ chi)', '90 Tỉnh Lộ 8,KP2,Thị trấn củ chi. 10', 'KD09'),
('CTCMT', 'Cửa Hàng Thành Công - Mỹ Tho', '10 Ấp Bắc, Mỹ Tho, Tiền Giang', 'KD02'),
('CTCP', 'Công ty Toàn Châu Phát', 'Nữ Dân Công, Vĩnh Lộc A, Bình Chánh', 'KD02'),
('CTD1BD', 'Cửa Hàng Thành Đạt 1 Bình Dương', '494-496 CMT8, Thủ Dầu Một, BD. 10', 'KD07'),
('CTDBC', 'Chị Hương - Cửa Hàng Thành Đạt', 'A26/5A, Ấp 1,Bình Hưng,Bình Chánh. 8', 'KD02'),
('CTDBT', 'Chị Thương :TTNT Thành Đạt', '321/1B ấp 1,xã quới sơn,H.Châu Thành,Bến tre. 8', 'KD02'),
('CTDCD', 'Cửa Hàng Trúc Đào- Châu Đốc', '21 Lê Lợi, Phường B, Châu Đốc, An Giang. 10', 'KD08'),
('CTDDN', 'Cửa hàng TTNT Trang Dung', 'K4/171A, Tân Mỹ, Tổ 94, KP 5, F. Bửu Hòa, Biên Hòa, Đồng Nai.', 'KD07'),
('CTDLA', 'Cửa Hàng Thành Đạt', 'ấp Bình Tả, Xã Đức Hòa Hạ ,Đức Hòa , Long An', 'KD09'),
('CTĐLA', 'Chị Vân - Cửa Hàng Tuyết Đông', '47 Nguyễn Trung Trực,TX.Tân An,Long An', 'KD09'),
('CTDNGT', 'Cửa Hàng Thuận Dũng Ngô Gia Tự', '241 Ngô Gia Tự, Q10. 10 (nhớ vô bao)', 'KD02'),
('CTDNS', 'Trang Trí Nội Thất Tiến Đạt', '211 Nguyễn Sơn,P.Phú Thạnh,Q.Tân Phú,TP.HCM', 'KD02'),
('CTDQ12', 'Cửa Hàng Thành Đạt Quận 12', '345 Hà Huy Giáp, F, Thanh Lộc, Quận 12. 8', 'KD09'),
('CTDQ7', 'Cửa Hàng Thành Đạt', '310 Huỳnh Tấn Phát,Phú Xuân,Nhà Bè', 'KD07'),
('CTDTN', 'Cửa Hàng Thanh Duyên - Tây Ninh', 'ấp Bình Thuận, xã Phước Bình, TX Trảng Bàng, Tây Ninh', 'KD07'),
('CTGCT', 'CH Nệm Trường Giang (cty việt hải) - (báo trước giờ giao tới)', '11 Mậu Thân,Xuân Khánh,Ninh Kiều,(đem theo xe kéo) .10', 'KD01'),
('CTGDG', 'Thế Giới Drap Gối -Q7', '255A Nguyễn Thị Thập- F. Tân Phú, Q7 . 10', 'KD06'),
('CTGNTCR', 'Cửa Hàng Thế Giới Nội Thất - Cam Ranh ( Không ghi Giá)', '205 đường 22 tháng 8, Cam Ranh ( CSDC : vàng+ xám),EP1 viền : Trắng', 'KD06'),
('CTHAG', 'Cửa Hàng Thành Hương Mẹ ( 0902 3535 75)', '39 Trần Hưng Đạo Thị Trấn Tri Tôn,An Giang (cấm xe 2.5 tấn)', 'KD08'),
('CTHBD', 'Cửa Hàng Thanh Hằng', '94 Bạch Đằng ,P.24, Q. Bình Thạnh,TPHCM. 10', 'KD06'),
('CTHBH', 'Chị Nga - Cửa Hàng Thuận Phát', '449 Tỉnh Lộ 10, An Lạc, bình Tân', 'KD09'),
('CTHBT', 'Cửa Hàng Thanh Hải', '21 Nguyễn Đình Chiểu, H.Mỏ Cày,Bến Tre. 10 (Th lấy kem)', 'KD02'),
('CTHBTr', 'Cửa Hàng Thảo Hà - Bến Tre', '12 THÁI HỮU KIỄM BA TRI, -', 'KD02'),
('CTHCL', 'Cửa Hàng Thanh Hùng', 'Chi Lăng,An giang', 'KD02'),
('CTHDTV', 'CH Thuận Hòa Duy - Liêu Minh Duy', 'Khóm 8, Cầu Kè, Trà . 10', 'KD01'),
('CTHGV', 'Cửa Hàng Thanh Hường- Gò Vấp', '562 - 564 Lê Đức Thọ, P.17, Gò Vấp', 'KD06'),
('CTHHG', 'Cửa Hàng Thái Hưng- Hậu Giang', '841 Hùng Vương, KV5, F, Ngã Bảy, TP ngã Bảy, Hậu Giang.', 'KD08'),
('CTHKG', 'Cửa Hàng Thái Hoà ( Thứ 9,5 Kiên Giang)', NULL, 'KD08'),
('CTHLA', 'Chị Hòa - Cửa hàng Thuận Hòa', '72 Nguyễn Trung Trực, TP. Tân An, Long An_E2v . 10', 'KD01'),
('CTHLD', 'Cửa Hàng Tú Hoa - Lâm Đồng', '19 Hai Bà Trưng - Liên Nghĩa- Đức Trọng , Lâm Đồng. 8', 'KD09'),
('CTHQ8', 'Cửa Hàng Thu Hà - Q8', '26 Cao Xuân Dục, F13, Quận 08', 'KD06'),
('CTHSRG', 'Chị Dung- CH Hải Sơn Rạch Gía', '382 Lạc Hồng,tp rạch giá ,kiên giang (không ghi giá+HD bỏ bao thư). 10', 'KD01'),
('CTHSST', 'Anh Trung - Tân Hải Sơn', 'Số 10,Nguyễn Chí Thanh, P6, TP. Sóc Trăng. 10', 'KD01'),
('CTHTDM', 'Cửa Hàng Thuận Hưng- Thủ Dầu Một( Xuất cho NT Thanh Sương)', '11 Phú Lợi, F. Phú Lợi , TP Thủ Dầu Một, Bình Dương. 8', 'KD07'),
('CTKAG', 'Cửa hàng Thanh Kiều', 'Chợ Tổng đội,Hòn Đất,Kiên giang', 'KD09'),
('CTKDN', 'Cửa Hàng Trung Kiên Đồng Nai', '1433 QL1A ngã 3 Trà Cổ, An Điền, Trảng Bom, Đồng Nai. 10', 'KD07'),
('CTKG', 'Cửa Hàng Tạo - Kiên Giang', 'ấp thứ nhất, xã tây yên, huyện An Biên. T. Kiên Giang', 'KD08'),
('CTKNB', 'Cửa Hàng Trung Kiên- Nhà Bè - (HKD Nguyễn Yến Nhi)', '514 Nguyễn văn Tạo, Nhà Bè. HCM (ko ghi giá)', 'KD06'),
('CTKPY', 'Chị Vân - Cửa Hàng Thủy Kim', '107 Trần Hưng Đạo,Tuy Hòa,Phú Yên', 'KD07'),
('CTLBP', 'Cửa Hàng Thanh Long Bình Phước', 'chợ Bù Na, xã Nghĩa Bình , Bù Đăng, Bình Phước. 8', 'KD09'),
('CTLBR', 'Cửa Hàng Nội Thất Thuý Lan - Bà Rịa', '93-101 Nguyễn Hữu Thọ, Tp, Bà Rịa. 8', 'KD07'),
('CTLDL', 'Cửa hàng Thanh Loan - Đắk Lăk', '196 Nguyễn Tất Thành , EARAR, Đắk Lăk. 8', 'KD09'),
('CTLDN', 'Chị Nhung- Cửa hàng Thành Lâm', '463 Phạm văn thuận,Tân Mai,Đồng Nai,gần chợ tân mai', 'KD07'),
('CTLLA', 'Chị Hoa - CH Thành Lợi - Long An ( ko ghi giá)', '8D chợ Bàu Trai, Thị trấn Hậu Nghĩa, Đức Hòa, Long An', 'KD01'),
('CTLLH', 'chị Hoàng Anh - cửa hàng Thuý Lan', 'Thị trấn Long Hải', 'KD07'),
('CTLPR', 'Chị Ninh- cửa hàng Thành Lợi- Phan Rang', '138 Thống Nhất, Phan Rang, Bình Thuận ( Nệm lấy màu đậm)', 'KD06'),
('CTLPY', 'Rèm Cửa Tuyết Loan (Không ghi giá)', '75 Lê Thành Phương -TT Chí Thạnh, Huyện Tuy An, Phú Yên ( không lấy kem bông nổi và trắng). 10', 'KD06'),
('CTLTB', 'Cửa Hàng Thanh Long Tân Bình', '1094 CMT8, F4, Tân Bình. 8', 'KD02'),
('CTLTN', 'Cửa Hàng Thanh Liễu - Tây Ninh', '432 CMT8 Tây Ninh', 'KD07'),
('CTMBT', 'Cửa Hàng Tiến Mỹ- Bình Thuận', '27 Hai Bà Trưng, TT Phan Rí, Tuy Phong, Bình Thuận. 8', 'KD06'),
('CTMLK', 'Chị Minh :Thanh Minh -Long khánh', 'A105 Hùng Vương,Thị Xã Long Khánh,Đồng Nai', 'KD02'),
('CTMMT', 'chị Nhân - cửa hàng Thanh minh', '454A ấp Bắc, Phường 5, TP.Mỹ Tho (không ghi giá)', 'KD01'),
('CTMPH', 'Anh Thiện - Cửa Hàng Thiện Mỹ', '58 Lê Lợi ,KV1,P.ngã bảy,TX.Ngã bảy,Hậu Giang', 'KD01'),
('CTMVL', 'Anh Tùng - Trang trí nội thất Toàn Miền', 'chợ mai phốp,trung hiếu,vũng liêm,vĩnh long. 10', 'KD08'),
('CTNBP', 'Cửa Hàng Tài Ngân - Bình Phước', '30 Nguyễn Huệ, TX. Bình Long. T. Bình Phước', 'KD09'),
('CTNBT', 'Trang Trí Nội Thất Thiên Nga Bến Tre', 'ấp 5,Thị Trấn Giồng Trôm,Bến tre . 8', 'KD02'),
('CTNCG', 'Cửa Hàng Tuyết Nhung- Cần Giờ', 'đường Đào Cừ, ( đoạn gần siêu thị)', 'KD06'),
('CTNCT', 'Công ty TNHH SX TM DV Trăng Non', '27 Nguyễn Khuyến, An Cư, Ninh Kiều, Cần Thơ', 'KD10'),
('CTNCV', 'Chị Trúc - Cửa hàng Thanh Nhạn', '0439 tổ 24 ấp thuận tiến A,Xã thuận an,H. bình minh,T.vĩnh long. 8', 'KD08'),
('CTNDN', 'Cửa hàng Thiên Ngọc- Quãng Ngãi 0906409168', '563 Quang Trung,TP.Quãng Ngãi', 'KD06'),
('CTNGD', 'Chị Dung - cửa hàng Tín Nghĩa Gò Dầu', 'Khu phố 1, Thị trấn Gò Dầu, Tây Ninh', 'KD07'),
('CTNQ5', 'Cô Minh : Trung Tâm Tín Nghĩa MINH A1', '144 Phạm Đình Hổ Q6,TPHCM. 8', 'KD02'),
('CTNTN', 'Cửa hàng Thu Ngân - Tây Ninh', '002A đường 30/4 KP4, F3, TX Tây Ninh, Tây Ninh', 'KD07'),
('CTNTV', 'Cửa Hàng Tâm Nga - Trà Vinh', 'Trà Vinh', 'KD04'),
('CTNXQ5', 'Hiệu Buôn Tân Nam Xương- Q5', '17 Phan Văn Khoẻ, F13,Q5', 'KD03'),
('CTOCT', 'Cửa Hàng Tân Oanh', '100 Nguyễn Đức Cảnh, Cái Khế, Ninh Kiêu TP Cần Thơ. 10', 'KD08'),
('CTP2BH', 'Chị Hương - Cửa Hàng Thiên Phước II', '47/1KP4 Nguyễn ái Quốc,TP.Biên hòa. 10', 'KD01'),
('CTP2CL', 'Chị My -Cửa Hàng TƯỜNG PHÁT 2', 'Thôn Bắc Vĩnh, xã Cam Hải Tây, Huyện Cam Lâm, KH', 'KD06'),
('CTP3TL10', 'Anh Vũ - cửa hàng Thuận Phát 3', '3A 63 Trần Văn Giàu, Cầu Xáng, Phạm Văn Hai, Bình Chánh. 6', 'KD02'),
('CTP4HL2', 'Cửa hàng Thuận Phát 4', '796 Hương lộ 2, P Bình Trị Đông A, Q Bình Tân. 8', 'KD02'),
('CTP5DT', 'Cửa Hàng Thuận Phát 5', 'ÂP 2,Xã Mỹ Long ,cao lãnh -Đồng tháp:0975575095Yên. 6', 'KD02'),
('CTPBC', 'Cửa hàng Thanh Phong - 0913.112489', 'D3/18 Nguyễn Thị Tú,ấp 4,Vĩnh lộc B,Bình chánh. 8', 'KD02'),
('CTPBD', 'Thành Phát Bình Dương', '478 CMT8,P.Hiệp Thành,TXTDM,BD', 'KD07'),
('CTPBMT', 'Chị Tuyền - Công ty TNHH tư vấn thiết kế nội thất Tuấn Phát', 'Số 129 Y Jút, Phường Thống Nhất, TP.Buôn Ma Thuột, Tỉnh Đắk Lắk, Việt Nam', 'KD09'),
('CTPBT', 'Chị Mai - CH Tân Phát', '11 Nguyễn Đình Chiểu, P.2, Bến Tre. 8', 'KD02'),
('CTPCL', 'Cô Phát - Công Ty TNHH TM Tường Phát', 'Thôn Tân thành, Cam Thành Bắc, Cam Lâm, cam Ranh (KHÔNG GHI GIÁ)', 'KD06'),
('CTPCT', 'Cửa Hàng Trường Phát - Cần Thơ', '325 Võ Văn Kiệt, P,An Thới, Q. Bình Thủy, TP. CT', 'KD08'),
('CTPDL', 'Cửa Hàng Thịnh Phát- Đăk Lăk', '507 Giải Phóng, TT Ea Drăng, H, Ea H\' Leo. T, Đăk . 8', 'KD09'),
('CTPDT', 'Chị Phương CH Thanh Phương Hồng Ngự', 'Hồng Ngự 0907 555 299 c.Phương.10', 'KD02'),
('CTPLA', 'Cửa Hàng Thuận Phát- Long An', '260 Quốc lộ 62 Long An. 8', 'KD02'),
('CTPNB', 'Chị Phương - Cửa Hàng Tâm Phương', '1382 Lê Văn Lương,ấp 2, Xã Phước Kiểng ,Huyện Nhà Bè,Tphcm', 'KD06'),
('CTPNDT', 'Cửa Hàng Thuận Phát- Nguyễn Duy Trinh', '509 Nguyễn Duy Trinh P.Binh Trưng Đông Q 2', 'KD07'),
('CTPNK', 'Thuận Phát Ninh Kiều', '509 đường 30/4, P. Hưng Lợi, Q. Ninh Kiều, TP. Cần Thơ.6', 'KD08'),
('CTPNS', 'cửa hàng Tấn Phát - Nguyễn Sơn', '325B Nguyễn Sơn, Phường Phú Thọ Hòa, Quận Tân Phú 8', 'KD02'),
('CTPNT', 'Cửa Hàng Trường Phát Nha Trang', 'Số 427 ,đường 2/4 ,vĩnh hải ,nha trang ( Đóng chành). 10', 'KD06'),
('CTPOM', 'Cửa Hàng Thuận Phát- Ô Môn', '1088 KV4, Phường Châu Văn Liêm, Quận Ô Môn, TP.Cần Thơ', 'KD08'),
('CTPPL', 'Cửa Hàng Thanh Phong -PleiKu', '243 Nguyễn Tất Thành Pleiku Gia Lai. 8', 'KD09'),
('CTPQ12', 'Chị Trâm - Cửa Hàng Thịnh Phát', '197 Phan Văn Hớn,Q.12 ĐT: 66.523.451', 'KD09'),
('CTPQ2', 'Cửa Hàng Tâm Phát Quận 2', '295 Nguyễn Thị Định, F Bình Trưng Tây Quận 2', 'KD07'),
('CTPQ6', 'Thiên phú - Q6', '61-63 Cao văn lầu,F1,Q6,TP.HCM. 10', 'KD02'),
('CTPQ8', 'Cửa Hàng Màn Cửa Thuận Phát- Q.8', '229 Liên Tỉnh, F.5, Quận 8', 'KD06'),
('CTPQ9', 'Cửa hàng Nội thất Tín Phát Quận 9', '490 Lã Xuân Oai Quận 9. 8', 'KD07'),
('CTPQNGT', 'Cửa Hàng Trần Phú Quý', '409 Ngô Gia tự', 'KD02'),
('CTPTB', 'Cửa Hàng Tân Phú- Tân Bình', '66 Ba Vân F14 Quận Tân Bình', 'KD02'),
('CTPTD', 'Cửa Hàng Thành Phát- Thủ Đức', '598 Tô Ngọc Vân, Thủ Đức', 'KD07'),
('CTPTN', 'Cửa Hàng Thiên Phúc- Tây Ninh', '499 Bời Lời, Ninh Sơn, Tây ninh. 8', 'KD07'),
('CTPTNH', 'Anh Phú Cửa Hàng Thuận Phát- Thoại Ngọc Hầu', '140A Thoại Ngọc Hầu, Q, Tân Phú. 8', 'KD02'),
('CTPTP', 'Cửa hàng Thuận Phát Tân Phú', '489 Luỹ Bán Bích,Phường Hiệp Tân, Quận Tân phú. 8', 'KD02'),
('CTQBL', 'Cửa Hàng Tú Quyên - Bạc Liêu', 'ấp Tam Hưng xã Vĩnh Hưng, Vĩnh Lợi, Bạc Liêu', 'KD08'),
('CTQBP', 'Cửa Hàng Nội Thất Thiện Quý - Bình Phước', 'Khu 8, Phường Long Phước, Thị xã Phước Long, Bình Phước', 'KD09'),
('CTS2VT', 'Cửa Hàng Trường Sơn - Bình Giả', '762 Bình Giả , F10, Tp Vũng Tàu', 'KD07'),
('CTSAG', 'Cửa Hàng Thanh Sang - An Giang', 'Trần Hưng Đạo, Thị Trấn Tri Tôn, An Giang', 'KD08'),
('CTSDL', 'chị Thanh - cửa hàng Trường Sanh ( Không Ghi Nhớ)', '849 Hùng Vương, Di Linh, Lâm Đồng 8', 'KD09'),
('CTSHP', 'Cô Tám - cửa hàng Tám Sỹ', '68 ấp 1, thị trấn Hộ Phòng, Huyện Giá Rai, tỉnh Bạc Liêu. (nệm dài 1m95). 10', 'KD01'),
('CTSKG', 'Cửa hàng Tân sơn', 'Hà tiên,Kiên giang', 'KD02'),
('CTSVT', 'Cửa hàng Trường Sơn. Chị Loan', '300 đường 30-4 , P, Rạch Dừa, Vũng tàu. 10', 'KD07'),
('CTT2AG', 'Cửa Hàng Thanh Tùng 2- An Giang (0939 922 104)', 'Khóm Thới Hòa, Thị trấn Nhà Bàng, Tịnh Biên, AG', 'KD08'),
('CTTAG', 'Cửa hàng Tân Thanh - Tân Châu An Giang', '44 Trần Hưng Đạo, TX Tân Châu, An Giang. 10', 'KD08'),
('CTTBC', 'Chị Thoa - Công Ty Tường Thái', 'A22/2 Quốc lộ 50,Bình Chánh', 'KD04'),
('CTTBL', 'Cửa Hàng Trần Tỷ _ Bạc Liêu', 'ấp nội ô, TT Ngan Dừa, H. Hồng Dân, T. Bạc Liêu', 'KD08'),
('CTTCC', 'Cửa Hàng Trọng Tín- Củ Chi', '16 Tỉnh lộ 8, Củ Chi.', 'KD09'),
('CTTCL', 'Cửa Hàng Thanh Tùng Chợ Lách', '304/22 Ấp An Hoà, xã Long Thới, Huyện Chợ Lách, BTre. 6', 'KD02'),
('CTTCMDN', 'Chị Trinh : Cửa hàng Trường Thanh Cẩm Mỹ', 'Ngã tư Sông Ray,cẩm mỹ,đồng nai. 8', 'KD07'),
('CTTDK', 'Cửa hàng TTNT Tiến Thanh', '57 Lac Long Quan,Dien Khanh , T. Khánh Hòa(Dau cau Tran Quy Giap)10', 'KD06'),
('CTTDL', 'Cửa Hàng Thuận Thành Đà Lạt (0792078240)', '206 Bùi Thị Xuân,P2, Đà Lạt, Lâm Đồng(Hóa đơn dán ở ngoài bao chành)8', 'KD09'),
('CTTDT', 'Chị Thoa- cửa hàng Thuận Thiên (Không ghi giá)', '120/D Nguyễn thị minh khai,mỹ an,đồng tháp 10,ĐT. 6', 'KD02'),
('CTTGT', 'Đại lý : Thuận Phát - Giồng Trôm ( Thuận Thành cũ)', 'Ấp 8 Tân Lợi Thạnh, ,giồng trôm,bến tre (Gần cây xăng Mai Hương). 8', 'KD02'),
('CTTHM', 'Cửa Hàng Quỳnh Như (Trường Tuyền )', '323 Tô Ký Hóc Môn', 'KD09'),
('CTTLD', 'Cửa Hàng Trường Thịnh Lâm Đồng', '146 Hùng Vương- TT Lộc Thắng- Huyện Bảo Lâm, Lâm Đồng 8', 'KD09'),
('CTTLG', 'Cửa Hàng Tiến Trinh- Lagi', '89-91 Nguyễn Ngọc Kỳ, TX Lagi, Bình Thuận. 8', 'KD06'),
('CTTLTT', 'Cửa Hàng Tuấn Thoa- Lê Trọng Tấn', '706 Lê Trọng Tấn, F, Bình Hưng Hoà, Bình Tân.8', 'KD02'),
('CTTNB', 'Chị Thủy - Cửa hàng Nệm Thanh Thủy', '302 Nguyễn Văn Tạo,Ấp 2,Long Thới, P.Nhà Bè, TPHCM', 'KD06'),
('CTTNTTTDL', 'Cửa Hàng TTNT Trường Thịnh - Đắc Lắc', 'Km38 EAphe Krongpac , Đăk Lắc', 'KD09'),
('CTTPL', 'Chị Cúc :Thu Thủy - Pleiku', 'Số 2A Trần Phú Nối Dài - Chị Cúc :0593.824.804', 'KD09'),
('CTTPN', 'Chị Thuý - Trường Thịnh PN', '24C/24D Phan Đình Phùng, P2, Q.Phú Nhuận', 'KD06'),
('CTTPSD', 'Cửa Hàng Trung Thành Phát - Sa Đéc', '45X Nguyễn Sinh Sắc, Khóm 2 , F2, Sa Đéc, Đồng Tháp', 'KD02'),
('CTTQ10', 'Cửa Hàng Thanh Thúy Quận 10', '475F, CMT8, F13, Q10. 8', 'KD02'),
('CTTQ11', 'Cửa Hàng Tài Trương -Quận 11', '68 Lý Nam Đế, F3, Quận 11', 'KD03'),
('CTTQ2', 'Cửa Hàng Tuấn Thảo- Q2', '68 Trần Não, F. Bình An .Q 2. 10', 'KD07'),
('CTTQ7', 'Cửa hàng Trường Thịnh Q7', '1516 Huỳnh Tấn Phát, Phường Phú Mỹ Hưng, Quận 7. 10', 'KD06'),
('CTTTL10', 'Cửa hàng Thanh Thanh ( Đại Lý Hoàng Anh)', '124 đường số 12, P.Bình Hưng Hòa, Q. Bình Tân. 8', 'KD02'),
('CTTTN', 'Cô Lệ/ Chị Hoa :Cửa hàng Trường Thịnh TB', '14 Quốc lộ 22, Lộc Trát, Gia Lộc, Trảng Bàng, Tây Ninh', 'KD07'),
('CTTVC', 'Cửa hàng Thanh Thủy - Vincom', '249/15 Lê Duẩn, H. Long Thành, Đồng Nai. 8', 'KD07'),
('CTTVL', 'Cửa hàng Thanh Thúy', 'ấp Vĩnh Trinh , Xã Vĩnh Xuân, Huyện Trà Ôn, Tỉnh Vĩnh Long. 8', 'KD01'),
('CTTVT', 'Công Ty TNHH Nội Thất Tiến Thắng', '39 Lê Lợi, F4, tp,Vũng Tàu. 8', 'KD07'),
('CTVBD', 'Cửa Hàng Thanh Vân - Bình Định', '118 Lê Lợi, TP Quy Nhơn, Bình Định', 'KD06'),
('CTVGV', 'Cửa Hàng Tường Vy- Gò Vấp', '1032 quang trung, F8, Gò Vấp. 10', 'KD06'),
('CTVLT', 'Cửa Hàng Thiên Văn- Long Thành', '009, ấp 1C, Phước Thái, QL51, Long Thành. 8', 'KD07'),
('CUTBC', 'Chị út - Cửa hàng út Tiên', 'D1/3 quốc Lộ 1A, ấp 4, xã Bình Chánh, Bình Chánh. 10', 'KD02'),
('CUTLA', 'Cửa Hàng Út Tân - Long An', 'Khu phố 3, Thị trấn Đông Thành, Huyện Đức Huệ, Long An.', 'KD02'),
('CVADN', 'Cửa Hàng Vân Anh- Đồng Nai', 'Ql1A Ấp Bàu Cá, Tuy Hòa, Trảng Bom, ĐN. 10', 'KD07'),
('CVASGBP', 'Cửa Hàng Vân Anh Sài gòn - Bình Phước', '261A TT Lộc Ninh, huyện Lộc Ninh, Bình Phước', 'KD09'),
('CVDBC', 'CÔNG TY TNHH VĨNH ĐỨC', 'G4/30A ấp 7, Xã Lê Minh Xuân, Huyện Bình Chánh, Thành phố Hồ Chí Minh, Việt Nam', 'KD03'),
('CVHBR', 'Cửa hàng Vỹ Hào 2 -BRVT', 'Căn A, tổ 12, ấp Hải Sơn, Phước Hưng, Long Điền, BRVT', 'KD07'),
('CVHVC', 'Cửa Hàng Văn Hiếu - Vĩnh Châu (Tô Quốc Thái)', '117 đường 30/4 F1, TX Vĩnh Châu, Sóc Trăng', 'KD08'),
('CVIRGONT', 'Công ty TNHH TM VIRGO Nha Trang', '39-41 Nguyễn Thị Minh Khai. F Tân Lập TP Nha Trang', 'KD10'),
('CVIVIAN', 'Công ty TNHH SX TM Nệm VIVIAN', '51 Đường Số 6, Khu Phố 1, Phường Bình Trị Đông B, Quận Bình Tân, Thành phố Hồ Chí Minh, Việt Nam', 'KD10'),
('CVLCL', 'Cửa Hàng Vân Linh', 'Chợ Mỹ Phước Tây,Cai Lậy,Tiền Giang', 'KD02'),
('CVLK', 'Chị Thoa - Cửa Hàng Vui', '939 Quốc Lộ 1, T.X Long Khánh, Đồng Nai. 10', 'KD07'),
('CVNBL', 'Hia Quến - cửa hàng Vĩnh Nguyên', '35 Hoàng Văn Thụ, Bạc Liêu. 8', 'KD01'),
('CVNDN', 'Cửa Hàng Văn Ngọc- Đồng Nai', '01 ấp Tân Bình, xã Bình Minh, h. Trảng Bom, Đồng Nai. 8', 'KD07'),
('CVNT', 'Cửa Hàng Vàng- Ninh Thuận', 'làng chài Cà Ná', 'KD06'),
('CVPHCG', 'Cửa Hàng Vạn Phước Hưng - Chợ Gạo', 'Ấp Mỹ Thạnh, Hòa Định, Chợ Gạo , TG', 'KD02'),
('CVPTV', 'Cửa Hàng Vạn Phước- Trà Vinh', 'Khóm 1, thị trấn Tiểu Cần, Huyện Tiểu Cần, Tỉnh Trà Vinh', 'KD08'),
('CVQPY', 'Cửa Hàng Quỳnh Quang ( Vĩnh Quang- Phú Yên)', '190 Phạm văn Đồng, TX Sông Cầu, Phú Yên. 10', 'KD06'),
('CVTBD', 'CÔNG TY TNHH TM VÀ SX VIỆT THÀNH', '89/16 KP Bình Phước A, F Bình Chuẩn, TX Thuận An, Bình Dương', 'KD04'),
('CVTBL', 'Cửa Hàng Vương Thành - Bảo Lộc', '44 Hà Giang, P.Lộc Sơn, TP Bảo Lộc, Lâm Đồng (ko ghi giá)', 'KD09'),
('CVTBP', 'Cửa Hàng Vĩnh Thuỷ- Bình Phước', '154 ,QL13, Tân Khai, Hớn Quản, Bình Phước. 8', 'KD09'),
('CVTHG', 'Chị Hạnh - CH Vạn Thành ( Xuất cho toàn phúc)', '525-527 Hậu giang, Quận 6. (vô bao) 10', 'KD02'),
('CVTTP', 'Cửa Hàng Việt Thắng- Tân Phú', '258 Tân Hương, Tân Quý, Tân Phú. 8', 'KD02'),
('CVTTV', 'Anh Vương - cửa hàng Vạn Thành', '100B2 trần Phú, Phường 2, TX. Trà Vinh .10', 'KD01'),
('CXBCT', 'Anh Sử :Cửa Hàng Xuân Bình- Cần Thơ', 'Số 16, Lộ vòng Cung, F Phước Thới,Q Ô Môn', 'KD08'),
('CXNBP', 'Cửa Hàng Xoan Nghinh - Bình Phước', '244 ấp chợ, xã Tân Tiến, Đồng Phú, Bình Phước. 8', 'KD09'),
('CXPKG', 'Cửa Hàng Xuân Phong - Kiên Giang', 'chợ công sự, ấp cạn ngọn A, xã thạnh yên, huyện u minh thượng, tỉnh kiên giang', 'KD08'),
('CYCVC', 'ý Chiêu - ĐT:079.224.7216', 'Hán chiêu,Vĩnh châu - 097.583.9229. 6', 'KD01'),
('CYTBD', 'Cô Sang - cửa hàng Yến Thanh', '390/1 Đông Trác, Tân Đông Hiệp, Dĩ An, Bình Dương', 'KD07'),
('CYVBD', 'Cửa Hàng Yến Vy- Bình Dương', '633 Phú giáo, Bình Dương', 'KD07'),
('CYVBP', 'Cửa Hàng Yến Vy (Bình Phước)', '1085 NGUYỄN TẤT THÀNH F LONG THỦY TX PHƯỚC LONG,BP. 10', 'KD09'),
('huynhton', 'Anh Tồn Chào mẫu', NULL, 'KD04'),
('KHONGDUNG1', 'Cửa Hàng Hoàng Phúc -Bến Tre', '75/4 Ấp 10 TT Thạnh Phú, Thạnh Phúc, Bến Tre', 'KD02'),
('ShowRoom06', 'Bán Tại ShowRoom 06 Bìnhtân', 'Số 6 , đường số 1.phường an lạc A.quận bình tân', 'KD04'),
('ShowRoom196', 'Bán Tại ShowRoom 196', '196 Tô Hiến Thành', 'KD04'),
('SMOVINHDUC', 'Công Ty TNHH Vĩnh Đức', 'Ấp mới 2, Mỹ Hạnh Nam, Đức Hòa, Long An', NULL),
('VPDDTRUONGHUNG', 'Văn phòng đại diện Trường Hưng', '17-19 Đường số 2, Xã Phạm Văn Hai, Bình Chánh', NULL);

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
  `customer_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
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
(63, 10, 0, 0, 3, '2022-12-24', 500000, 2, 'a', 0, 0, '0000-00-00', '2022-12-05', NULL, NULL, NULL, '0000-00-00'),
(64, 10, 0, 0, 3, '2022-12-06', 500000, 2, 'a', 0, 0, '0000-00-00', '2022-12-05', NULL, NULL, NULL, '0000-00-00'),
(65, 10, 0, 0, 3, '2022-12-29', 50000, 5, 'aaa', 0, 0, '0000-00-00', '2022-12-05', NULL, NULL, NULL, '0000-00-00');

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
  `sup_name` varchar(50) NOT NULL,
  `sup_address` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `supplier`
--

INSERT INTO `supplier` (`id`, `sup_name`, `sup_address`) VALUES
(1, 'CTY van chuyen ABC', 'TP.HCM'),
(2, 'CTY van chuyen Bắc  Nam', 'TP.HCM'),
(3, 'Cty chế biến AGITECH', ''),
(4, 'AGU', 'An Giang'),
(5, 'sắt thép Phước lộc', 'Tiền Giang');

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
(14, 'Ly Thoa', 2, 'kimthoa', '202cb962ac59075b964b07152d234b70', ''),
(15, 'Ly Yen', 2, 'LYen_55206317', 'c32de2cce838a925e082fa7b40099676', ''),
(16, 'Ly Hoa', 2, 'LHoa_54111043', '202cb962ac59075b964b07152d234b70', ''),
(17, 'Tiet Thong', 2, 'TThong_04112302', '17a07301218588bb335aa1856c271fc0', ''),
(18, 'Vu Thuy', 2, 'VThuy_47608211', '5c202583b86d616cf64187499bde48c6', ''),
(19, 'Ta  Dung', 2, 'ngocdung', '202cb962ac59075b964b07152d234b70', '');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `department`
--
ALTER TABLE `department`
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
-- AUTO_INCREMENT cho bảng `department`
--
ALTER TABLE `department`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
