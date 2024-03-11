-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 06, 2020 lúc 04:04 PM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.2.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `tmdt`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chi_tiet_don_hangs`
--

CREATE TABLE `chi_tiet_don_hangs` (
  `id` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `so_luong` int(11) NOT NULL,
  `id_Don_hang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chi_tiet_don_hangs`
--

INSERT INTO `chi_tiet_don_hangs` (`id`, `id_hang_hoa`, `so_luong`, `id_Don_hang`) VALUES
(319, 38, 1, 186),
(320, 33, 1, 186),
(321, 35, 2, 187),
(322, 33, 1, 187),
(323, 37, 1, 187),
(324, 43, 1, 188),
(325, 34, 2, 189),
(326, 36, 1, 189),
(327, 33, 1, 189),
(328, 42, 2, 190),
(329, 34, 1, 190),
(330, 33, 2, 190),
(331, 34, 1, 192),
(332, 37, 1, 192),
(333, 42, 2, 192),
(334, 35, 1, 193),
(335, 36, 2, 194),
(336, 37, 2, 194),
(337, 33, 3, 194);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `id_hang_hoa` int(11) NOT NULL,
  `id_khach_hang` int(11) NOT NULL,
  `noi_dung` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comment`
--

INSERT INTO `comment` (`id`, `id_hang_hoa`, `id_khach_hang`, `noi_dung`) VALUES
(62, 37, 70, 'sản phẩm tuyệt vời, Pin sd tốt,'),
(63, 35, 71, 'adsdsdds');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `don_hangs`
--

CREATE TABLE `don_hangs` (
  `id` int(11) NOT NULL,
  `ten_khach_hang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dia_chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Ngay_Dat_Hang` date NOT NULL,
  `Trang_Thai` int(11) NOT NULL,
  `tong_tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `don_hangs`
--

INSERT INTO `don_hangs` (`id`, `ten_khach_hang`, `so_dien_thoai`, `dia_chi`, `Ngay_Dat_Hang`, `Trang_Thai`, `tong_tien`) VALUES
(186, 'Võ Khánh Duy', '0123456789', 'sàdasdasdasd', '2020-10-25', 1, 30800000),
(187, 'Võ Khánh Duy', '0123456789', 'sàdasdasdasd', '2020-10-25', 1, 125700000),
(188, 'Võ Khánh Duy', '1111111111', 'sadsa', '2020-10-25', 1, 20900000),
(189, 'Võ Khánh Duy', '0123456789', 'Ninh kiều Cần Thơ', '2020-10-26', 1, 157700000),
(190, 'Võ Khánh Duy', '0123456789', 'sàdasdasdasd', '2020-11-02', 1, 120500000),
(192, 'Võ Khánh Duy', '0123456789', 'sàdasdasdasd', '2020-11-26', 2, 138700000),
(193, 'Võ Khánh Duy', '0123456789', 'sàdasdasdasd', '2020-11-26', 2, 29900000),
(194, 'Võ Khánh Duy', '0982824398', 'sàdasdasdasd', '2020-11-26', 2, 219700000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hang_hoas`
--

CREATE TABLE `hang_hoas` (
  `id` int(11) NOT NULL,
  `Ten_hang_hoa` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_search` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gia` int(11) NOT NULL,
  `so_luong_hang` int(11) NOT NULL,
  `hinh` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mo_ta` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_loai` int(11) NOT NULL,
  `lvproduct` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hang_hoas`
--

INSERT INTO `hang_hoas` (`id`, `Ten_hang_hoa`, `name_search`, `gia`, `so_luong_hang`, `hinh`, `mo_ta`, `id_loai`, `lvproduct`) VALUES
(33, 'Điện thoại Samsung Galaxy Note 10+', 'Điện-thoại-Samsung-Galaxy-Note-10-', 15900000, 90, 'public/uploads/12333.png', '<h2>Đặc điểm nổi bật của Samsung Galaxy Note 10+</h2>\r\n\r\n<h3>Tr&ocirc;ng ngoại h&igrave;nh kh&aacute; giống nhau, tuy nhi&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-note-10-plus\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung Galaxy Note 10+ chính hãng, giá rẻ\" type=\"Tham khảo điện thoại Samsung Galaxy Note 10+ chính hãng, giá rẻ\">Samsung Galaxy Note 10+</a>&nbsp;sở hữu kh&aacute; nhiều điểm kh&aacute;c biệt so với&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-note-10\" target=\"_blank\" title=\"Tham khảo điện thoại Samsung Galaxy Note 10 chính hãng, giá rẻ\" type=\"Tham khảo điện thoại Samsung Galaxy Note 10 chính hãng, giá rẻ\">Galaxy Note 10</a>&nbsp;v&agrave; đ&acirc;y được xem l&agrave; một trong những chiếc m&aacute;y đ&aacute;ng mua nhất trong năm 2019, đặc biệt d&agrave;nh cho những người th&iacute;ch một chiếc m&aacute;y m&agrave;n h&igrave;nh lớn, camera chất lượng h&agrave;ng đầu.</h3>\r\n\r\n<h3>Camera đứng đầu thế giới</h3>\r\n\r\n<p>DxOMark l&agrave; chuy&ecirc;n trang đ&aacute;nh gi&aacute; camera uy t&iacute;n thế giới mới đ&acirc;y đ&atilde; khẳng định, Galaxy Note 10+ l&agrave; chiếc smartphone c&oacute; camera tốt nhất hiện nay.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/samsung-galaxy-note-10-plus-tgdd-26.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Galaxy Note 10+ c&oacute; camera ch&iacute;nh 12 MP với khẩu độ c&oacute; thể thay đổi từ F/1.5 &ndash; F/2.4, hỗ trợ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/che-do-chong-rung-quang-hoc-ois-chup-anh-tren-sm-906416\" target=\"_blank\" title=\"Tìm hiểu về công nghệ chống rung quang học OIS\" type=\"Tìm hiểu về công nghệ chống rung quang học OIS\">chống rung quang học OIS</a>&nbsp;v&agrave; tự động lấy n&eacute;t dual-pixel.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/samsung-galaxy-note-10-plus-tgdd-34.jpg\" style=\"height:450px; width:600px\" /></p>\r\n\r\n<p>Tiếp theo l&agrave; cảm biến camera g&oacute;c si&ecirc;u rộng 16 MP khẩu độ F/2.2 c&ugrave;ng ống k&iacute;nh tele 12 MP khẩu độ F/2.1 v&agrave; n&oacute; cũng c&oacute; th&ecirc;m 1 cảm biến 3D ToF, điều m&agrave; Samsung Galaxy Note 10 kh&ocirc;ng được trang bị.</p>\r\n\r\n<p>Samsung đ&atilde; cải thiện c&aacute;c thuật to&aacute;n xử l&yacute; b&ecirc;n trong phần mềm gi&uacute;p m&aacute;y c&oacute; khả năng phơi s&aacute;ng tốt, nhất qu&aacute;n v&agrave; ch&iacute;nh x&aacute;c cho d&ugrave; trong điều kiện &aacute;nh s&aacute;ng thế n&agrave;o.</p>\r\n\r\n<p>Galaxy Note 10+ cũng hỗ trợ zoom quang 2x, n&oacute; c&oacute; thể chụp h&igrave;nh ảnh với m&agrave;u sắc sống động, độ chi tiết cao v&agrave; độ nhiễu thấp.</p>\r\n', 6, '0'),
(34, 'Điện thoại Samsung Galaxy A21s (6GB/64GB)', 'Điện-thoại-Samsung-Galaxy-A21s-(6GB-64GB)', 52900000, 96, 'public/uploads/samsung-galaxy-a21s-055620-045627-400x460.png', '<h3>Đặc điểm nổi bật của Samsung Galaxy A21s (6GB/64GB)</h3>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-a21s\" target=\"_blank\" title=\"Điện thoại Galaxy A21s\" type=\"Điện thoại Galaxy A21s\">Samsung Galaxy A21s</a>&nbsp;l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\" type=\"Tham khảo giá điện thoại smartphone chính hãng\">điện thoại</a>&nbsp;tầm trung mới của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Điện thoại Samsung\" type=\"Điện thoại Samsung\">Samsung</a>, mang trong m&igrave;nh c&oacute; thiết kế m&agrave;n h&igrave;nh nốt ruồi thời thượng, c&ugrave;ng cụm 4 camera sau độ ph&acirc;n giải l&ecirc;n đến 48 MP hỗ trợ nhiều t&iacute;nh năng chụp ảnh hấp dẫn.</h3>\r\n\r\n<h3>Thiết kế cao cấp, cảm biến v&acirc;n tay ở mặt lưng</h3>\r\n\r\n<p>Samsung Galaxy A21s sở hữu thiết kế&nbsp;<a href=\"https://www.thegioididong.com/dtdd-man-hinh-sieu-tran-vien\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone màn hình siêu tràn viền\" type=\"Tham khảo giá điện thoại smartphone màn hình siêu tràn viền\">si&ecirc;u tr&agrave;n viền</a>&nbsp;theo xu hướng 2020 với viền m&agrave;n h&igrave;nh tr&agrave;n ra c&aacute;c cạnh v&agrave; camera trước dạng nốt ruồi gi&uacute;p kh&ocirc;ng gian sử dụng rộng hơn, &iacute;t g&acirc;y cảm gi&aacute;c kh&oacute; chịu cho người d&ugrave;ng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/samsung-galaxy-a21s-tgdd2.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh ch&iacute;nh của m&aacute;y&nbsp;k&iacute;ch thước 6.5 inch&nbsp;với độ ph&acirc;n giải&nbsp;&nbsp;HD+ (720 x 1520 Pixels), mặc d&ugrave; m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải kh&aacute; thấp nhưng vẫn đảm bảo chất lượng hiển thị h&igrave;nh ảnh tốt, m&agrave;u sắc tự nhi&ecirc;n c&ugrave;ng độ chi tiết cao.</p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/do-phan-giai-man-hinh-qhd-hd-fullhd-2k-4k-la-gi--592178#hd\" target=\"_blank\" title=\"Độ phân giải màn hình qHD, HD, FullHD, 2K, 4K là gì?\" type=\"Độ phân giải màn hình qHD, HD, FullHD, 2K, 4K là gì?\">Độ ph&acirc;n giải m&agrave;n h&igrave;nh qHD, HD, FullHD, 2K, 4K l&agrave; g&igrave;?</a></p>\r\n\r\n<p>Mặt lưng của m&aacute;y được ho&agrave;n thiện bằng chất liệu nhựa giả k&iacute;nh cao cấp với độ bền cao, c&aacute;c cạnh v&agrave; g&oacute;c m&aacute;y được bo cong nhẹ nh&agrave;ng tạo cảm gi&aacute;c mềm mại, dễ d&agrave;ng cầm nắm v&agrave; thao t&aacute;c</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/samsung-galaxy-a21s-tgdd1.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y c&ograve;n được sử dụng cảm biến&nbsp;<a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone có bảo mật cảm biến vân tay\" type=\"Tham khảo giá điện thoại smartphone có bảo mật cảm biến vân tay\">v&acirc;n tay</a>&nbsp;một chạm ở mặt sau, c&ugrave;ng với cổng tai nghe 3.5 mm, điều m&agrave; một số m&aacute;y hiện nay đ&atilde; bỏ đi chuẩn tai nghe n&agrave;y.</p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ trong ph&acirc;n kh&uacute;c</h3>\r\n\r\n<p>Samsung Galaxy A21s được trang bị vi xử l&yacute; 8 nh&acirc;n tốc độ 2.0 GHz, đi k&egrave;m với dung lượng&nbsp; RAM 6 GB v&agrave; bộ nhớ trong l&ecirc;n đến 64 GB gi&uacute;p bạn thỏa sức lưu trữ h&igrave;nh ảnh, video giải tr&iacute; khi cần.</p>\r\n', 6, '0'),
(35, 'Điện thoại Samsung Galaxy Note 20 Ultra', 'Điện-thoại-Samsung-Galaxy-Note-20-Ultra', 29900000, 97, 'public/uploads/samsung-galaxy-note-20-ultra-vangdong-400x460-400x460.png', '<h4>Đặc điểm nổi bật của Samsung Galaxy Note 20 Ultra</h4>\r\n\r\n<h5>Sau&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-note-20\" target=\"_blank\" title=\"Tham khảo mẫu điện thoại Note 20 tại Thế Giới Di Động \" type=\"Tham khảo mẫu điện thoại Note 20 tại Thế Giới Di Động \">Galaxy Note 20</a>&nbsp;th&igrave;&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-note-20-ultra\" target=\"_blank\" title=\"Tham khảo điện thoại Note 20 Ultra tại Thế Giới Di Động \" type=\"Tham khảo điện thoại Note 20 Ultra tại Thế Giới Di Động \">Galaxy Note 20 Ultra</a>&nbsp;l&agrave; phi&ecirc;n bản tiếp theo&nbsp;cao cấp hơn thuộc d&ograve;ng Note 20 Series của Samsung, với nhiều thay đổi từ cụm camera hỗ trợ&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/lay-net-laser-la-gi-756447\" target=\"_blank\" title=\"Lấy nét Laser là gì?\" type=\"Lấy nét Laser là gì?\">lấy n&eacute;t laser AF</a>&nbsp;c&ugrave;ng ống k&iacute;nh g&oacute;c rộng mới, m&agrave;n h&igrave;nh tr&agrave;n viền l&ecirc;n đến 6.9 inch chắc chắn sẽ l&agrave; chiếc điện thoại được săn đ&oacute;n của fan y&ecirc;u th&iacute;ch c&ocirc;ng nghệ.</h5>\r\n\r\n<h5>M&agrave;n h&igrave;nh 2K+&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tim-hieu-man-hinh-dynamic-amoled-2x-tren-series-galaxy-s20-1245213\" target=\"_blank\" title=\"Tìm hiểu màn hình Dynamic AMOLED 2X trên smartphone Galaxy\" type=\"Tìm hiểu màn hình Dynamic AMOLED 2X trên smartphone Galaxy\">Dynamic AMOLED 2X</a>&nbsp;tr&agrave;n viền ho&agrave;n hảo, thiết kế thời thượng</h5>\r\n\r\n<p>M&agrave;n h&igrave;nh tr&agrave;n viền g&oacute;c cạnh tối đa, kế thừa những đặc t&iacute;nh từ thế hệ trước, c&ocirc;ng nghệ m&agrave;n h&igrave;nh&nbsp;Dynamic AMOLED 2X cho gam m&agrave;u ch&iacute;nh x&aacute;c chuẩn điện ảnh cho bạn những trải nghiệm những thước phim ch&acirc;n thật tr&ecirc;n ch&iacute;nh&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo mẫu điện thoại mới tại Thế Giới Di Động \" type=\"Tham khảo mẫu điện thoại mới tại Thế Giới Di Động \">smartphone</a>&nbsp;của m&igrave;nh.</p>\r\n\r\n<p>Ngo&agrave;i ra, bằng c&aacute;ch giảm thiểu tối đa &aacute;nh s&aacute;ng xanh g&acirc;y hại, Dynamic AMOLED 2X c&ograve;n gi&uacute;p hạn chế t&igrave;nh trạng mỏi mắt gi&uacute;p tối ưu trải nghiệm của người d&ugrave;ng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/samsung-galaxy-note-20-ultra3.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 6, '0'),
(36, 'Điện thoại Samsung Galaxy Z Flip', 'Điện-thoại-Samsung-Galaxy-Z-Flip', 36000000, 96, 'public/uploads/samsung-galaxy-z-flip-chitiet-2-788x544.png', '<h3>Đặc điểm nổi bật của Samsung Galaxy Z Flip</h3>\r\n\r\n<h4 dir=\"ltr\">Cuối c&ugrave;ng sau bao nhi&ecirc;u thời gian chờ đợi, chiếc điện thoại&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-flip\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy Z Flip chính hãng\" type=\"Tham khảo giá điện thoại Samsung Galaxy Z Flip chính hãng\">Samsung Galaxy Z Flip</a>&nbsp;đ&atilde; được&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone Samsung chính hãng\" type=\"Tham khảo giá điện thoại smartphone Samsung chính hãng\">Samsung</a>&nbsp;ra mắt tại sự kiện&nbsp;Unpacked 2020. Si&ecirc;u phẩm với thiết kế m&agrave;n h&igrave;nh gập vỏ s&ograve; độc đ&aacute;o, hiệu năng tuyệt đỉnh c&ugrave;ng nhiều c&ocirc;ng nghệ thời thượng, dẫn dầu 2020.</h4>\r\n\r\n<h4 dir=\"ltr\">Đột ph&aacute; với thiết kế m&agrave;n h&igrave;nh gập</h4>\r\n\r\n<p dir=\"ltr\">Samsung Galaxy Z Flip được thiết kế với kiểu d&aacute;ng m&agrave;n h&igrave;nh gập lấy &yacute; tưởng từ d&ograve;ng sản phẩm&nbsp;<a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-fold\" target=\"_blank\" title=\"Tham khảo giá điện thoại Samsung Galaxy Fold chính hãng\" type=\"Tham khảo giá điện thoại Samsung Galaxy Fold chính hãng\">Galaxy Fold</a>&nbsp;từng g&acirc;y nhiều tiếng vang trong năm 2019.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/samsung-galaxy-z-flip-tgdd4-1.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p dir=\"ltr\">Tuy nhi&ecirc;n điểm kh&aacute;c biệt l&agrave; m&agrave;n h&igrave;nh của Z Flip được&nbsp;thiết kế gập theo chiều dọc, khiến cho tổng thể m&aacute;y c&oacute; thể nằm gọn trong l&ograve;ng b&agrave;n tay của người d&ugrave;ng như một phụ kiện thời trang cao cấp.</p>\r\n\r\n<p dir=\"ltr\" style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/samsung-galaxy-z-flip-tgdd2-1.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p dir=\"ltr\">Bản lề của m&aacute;y cũng c&oacute; khả năng gập - mở với nhiều g&oacute;c độ kh&aacute;c nhau, khi thiết bị ở trạng th&aacute;i mở một nửa, m&agrave;n h&igrave;nh sẽ tự động chia th&agrave;nh hai m&agrave;n h&igrave;nh 4 inch vừa đủ để bạn c&oacute; thể dễ d&agrave;ng xem h&igrave;nh ảnh, nội dung hoặc video ở nửa tr&ecirc;n của m&agrave;n h&igrave;nh v&agrave; thao t&aacute;c điều khiển ch&uacute;ng ở nửa dưới.</p>\r\n', 6, '0'),
(37, 'Điện thoại Samsung Galaxy Z Fold2 5G', 'Điện-thoại-Samsung-Galaxy-20Z-Fold2-5G', 50000000, 97, 'public/uploads/samsung-galaxy-z-fold-2-123620-093621-400x460.png', '<h3>Đặc điểm nổi bật của Samsung Galaxy Z Fold2 5G</h3>\r\n\r\n<h4><a href=\"https://www.thegioididong.com/dtdd/samsung-galaxy-z-fold-2\" target=\"_blank\" title=\"Tham khảo giá điện thoại màn hình gập Samsung Galaxy Z Fold 2 chính hãng tại Thegioididong.com\" type=\"Tham khảo giá điện thoại màn hình gập Samsung Galaxy Z Fold 2 chính hãng tại Thegioididong.com\">Samsung Galaxy Z Fold 2</a>&nbsp;l&agrave; t&ecirc;n gọi ch&iacute;nh thức của&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại, smartphone chính hãng, nhiều khuyến mãi tại Thegioididong.com\" type=\"Tham khảo giá điện thoại, smartphone chính hãng, nhiều khuyến mãi tại Thegioididong.com\">điện thoại</a>&nbsp;m&agrave;n h&igrave;nh gập cao cấp nhất của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-samsung\" target=\"_blank\" title=\"Tham khảo giá điện thoại, smartphone Samsung chính hãng, giá tốt tại Thegioididong.com\" type=\"Tham khảo giá điện thoại, smartphone Samsung chính hãng, giá tốt tại Thegioididong.com\">Samsung</a>.&nbsp;Với nhiều n&acirc;ng cấp ti&ecirc;n phong về thiết kế, hiệu năng v&agrave; camera, hứa hẹn đ&acirc;y sẽ l&agrave; một si&ecirc;u phẩm th&agrave;nh c&ocirc;ng tiếp theo đến từ &ldquo;&ocirc;ng tr&ugrave;m&rdquo; sản xuất điện thoại lớn nhất thế giới.&nbsp;</h4>\r\n\r\n<h3>Thiết kế cải tiến hướng đến sự ho&agrave;n thiện</h3>\r\n\r\n<p>Samsung Galaxy Z Fold 2 vẫn giữ nguy&ecirc;n cơ chế m&agrave;n h&igrave;nh gập ở thế hệ tiền nhiệm. Như một quyển s&aacute;ch, chiếc điện thoại mở ra để hiển thị m&agrave;n h&igrave;nh lớn b&ecirc;n trong. B&ecirc;n ngo&agrave;i l&agrave; một m&agrave;n h&igrave;nh phụ&nbsp;<a href=\"https://www.thegioididong.com/dtdd-man-hinh-tran-vien\" target=\"_blank\" title=\"Tham khảo các mẫu điện thoại màn hình tràn viền tại Thegioididong.com\" type=\"Tham khảo các mẫu điện thoại màn hình tràn viền tại Thegioididong.com\">tr&agrave;n viền</a>&nbsp;với thiết kế đục lỗ.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/samsung-galaxy-z-fold-2-302920-012935.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Những chất liệu cao cấp nhất đ&atilde; được Samsung ưu &aacute;i trang bị l&ecirc;n Galaxy Z Fold 2, khung m&aacute;y được l&agrave;m từ nh&ocirc;m, vu&ocirc;ng vức hơn, gi&uacute;p cho si&ecirc;u phẩm m&agrave;n h&igrave;nh gập mới của Samsung c&oacute; một diện mạo nam t&iacute;nh v&agrave; sang trọng hơn</p>\r\n\r\n<p>&nbsp;</p>\r\n', 6, '0'),
(38, 'Điện thoại iPhone 8 Plus 128GB', 'Điện-thoại-iPhone-8-Plus-128GB', 14900000, 99, 'public/uploads/ip8s.jpg', '<h4>Fan trung th&agrave;nh của nh&agrave; T&aacute;o th&igrave; chắc hẳn kh&ocirc;ng n&ecirc;n bỏ qua&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-8-plus-128gb\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 8 Plus 128GB kinh doanh tại Thế Giới Di Động\">iPhone 8 Plus 128GB</a>, một bản n&acirc;ng cấp từ&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-7-plus\" target=\"_blank\" title=\"Tham khảo mẫu điện thoại iPhone 7 Plus tại Thế Giới Di Động \">iPhone 7 Plus</a>, được t&iacute;ch hợp th&ecirc;m sạc kh&ocirc;ng d&acirc;y, chipset A11 Bionic 6 nh&acirc;n mạnh mẽ c&ugrave;ng c&aacute;c t&iacute;nh năng mới gi&uacute;p cho việc trải nghiệm l&acirc;u d&agrave;i tốt hơn.</h4>\r\n\r\n<h4>Thiết kế sang trọng, b&oacute;ng bẩy</h4>\r\n\r\n<p>iPhone 8 Plus giữ nguy&ecirc;n thiết kế đ&atilde; ho&agrave;n thiện từ thế hệ đ&agrave;n em iPhone 7 Plus, b&ecirc;n cạnh đ&oacute; iPhone 8 Plus được bo tr&ograve;n g&oacute;c cạnh mềm mại gi&uacute;p cho m&aacute;y tăng độ sang trọng, th&ecirc;m bắt mắt. M&aacute;y được trang bị khung nh&ocirc;m cao cấp chắc chắn, v&agrave; mặt k&iacute;nh cường lực ở mặt trước v&agrave; phần lưng c&ugrave;ng với logo t&aacute;o khuyết quen thuộc</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/iphone-8-plus-128gb-130120-090150.jpg\" style=\"height:375px; width:600px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n', 10, '0.5'),
(39, 'Điện thoại iPhone 7 Plus 128GB', 'Điện-thoại-iPhone-7-Plus-128GB', 11490000, 99, 'public/uploads/iphone-7-plus-128gb-de-400x460.png', '<h4>Đặc điểm nổi bật của iPhone 7 Plus 128GB</h4>\r\n\r\n<h4>Được&nbsp;<a href=\"https://www.thegioididong.com/apple\" target=\"_blank\" title=\"Tham khảo thêm mẫu điện thoại Apple\" type=\"Tham khảo thêm mẫu điện thoại Apple\">Apple</a>&nbsp;c&ocirc;ng bố v&agrave;o th&aacute;ng 9/2016 đến nay cũng gần 3 năm nhưng&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-7-plus-128gb\" target=\"_blank\" title=\"Điện thoại iPhone 7 Plus\" type=\"Điện thoại iPhone 7 Plus\">iPhone 7 Plus 128 GB</a>&nbsp;vẫn chưa c&oacute; dấu hiệu hạ nhiệt. Được xem l&agrave; phi&ecirc;n bản chuyển m&igrave;nh của&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-6-plus-128gb\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 6 Plus\" type=\"Tham khảo điện thoại iPhone 6 Plus\">iPhone 6 Plus</a>&nbsp;c&oacute; tuy vẫn giữ nguy&ecirc;n k&iacute;ch thước nhưng vẫn một v&agrave;i sự thay đổi về camera, chất lượng pin v&agrave; hiệu năng được n&acirc;ng cấp.&nbsp;</h4>\r\n\r\n<h4>Thay đổi về thiết kế mặt lưng c&ugrave;ng với camera&nbsp;so với iPhone 6 Plus</h4>\r\n\r\n<p>Mặt lưng của iPhone 7 Plus được thiết kế với phần ăng-ten được đưa v&ograve;ng l&ecirc;n tr&ecirc;n thay v&igrave; cắt ngang mặt lưng như những phi&ecirc;n bản trước l&agrave; iPhone 6 Plus mang lại cảm gi&aacute;c thoải m&aacute;i khi cầm nắm.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/iphone-7-plus-128gb-272320-092340.jpg\" style=\"height:400px; width:600px\" /></p>\r\n', 10, '0.9'),
(40, 'Điện thoại iPhone SE 64GB (2020)', 'Điện-thoại-iPhone-SE-64GB-(2020)', 12900000, 49, 'public/uploads/iphone-se-2020-do-400x460-400x460.png', '<h4>Đặc điểm nổi bật của iPhone SE 64GB (2020)</h4>\r\n\r\n<h4><a href=\"https://www.thegioididong.com/dtdd/iphone-se-2020\" target=\"_blank\" title=\"Tham khảo giá điện thoại iPhone SE 2020 chính hãng\" type=\"Tham khảo giá điện thoại iPhone SE 2020 chính hãng\">iPhone SE 2020</a>&nbsp;đ&atilde; bất ngờ ra mắt với thiết kế 4.7 inch nhỏ gọn, chip A13 Bionic mạnh mẽ như tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-11\" target=\"_blank\" title=\"Tham khảo giá điện thoại iPhone 11 chính hãng\" type=\"Tham khảo giá điện thoại iPhone 11 chính hãng\">iPhone 11</a>&nbsp;v&agrave; đặc biệt sở hữu mức gi&aacute; tốt chưa từng c&oacute;.</h4>\r\n\r\n<h4>Thiết kế nhỏ gọn v&agrave; cao cấp</h4>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd-bao-mat-van-tay\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone có bảo mật cảm biến vân tay\" type=\"Tham khảo giá điện thoại smartphone có bảo mật cảm biến vân tay\">Cảm biến v&acirc;n tay</a>&nbsp;Touch ID huyền thoại đ&atilde; quay trở lại tr&ecirc;n iPhone SE 2020, c&ugrave;ng với đ&oacute; l&agrave; thiết kế gần như sao y của&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-8-64gb\" target=\"_blank\" title=\"Tham khảo giá điện thoại iPhone 8 chính hãng\" type=\"Tham khảo giá điện thoại iPhone 8 chính hãng\">iPhone 8</a>.&nbsp;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/iphone-se-2020-120420-070438.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Điểm kh&aacute;c biệt dễ thấy nhất l&agrave; logo Apple tr&ecirc;n mặt lưng nay đ&atilde; dời ra ch&iacute;nh giữa thay v&igrave; đặt lệch ở nửa tr&ecirc;n như tr&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chính hãng\" type=\"Tham khảo giá điện thoại smartphone chính hãng\">smartphone</a>&nbsp;đ&agrave;n anh.</p>\r\n\r\n<p>B&ecirc;n cạnh sự sang trọng vốn c&oacute; từ chất liệu kim loại v&agrave; k&iacute;nh, chiếc điện thoại&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\" type=\"Tham khảo giá điện thoại smartphone iPhone chính hãng\">iPhone</a>&nbsp;mới n&agrave;y cũng c&oacute; khả năng&nbsp;<a href=\"https://www.thegioididong.com/dtdd-chong-nuoc-bui\" target=\"_blank\" title=\"Tham khảo giá điện thoại smartphone chống nước chống bụi\" type=\"Tham khảo giá điện thoại smartphone chống nước chống bụi\">chống nước</a>&nbsp;ti&ecirc;u chuẩn IP67 gi&uacute;p hạn chế rủi ro hư hỏng do văng nước, đi mưa.</p>\r\n\r\n<p>iPhone SE 2020 vẫn c&oacute; k&iacute;ch thước 4.7 inch, tỉ lệ m&agrave;n h&igrave;nh cũ 16:9 v&agrave; c&aacute;c cạnh viền vẫn d&agrave;y. Tuy nhi&ecirc;n k&iacute;ch thước chung của m&aacute;y vẫn thuộc h&agrave;ng nhỏ gọn, cực k&igrave; vừa vặn v&agrave; dễ sử dụng bằng một tay.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/iphone-se-2020-072820-032813.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Apple trang bị cho SE 2020 m&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải HD (1334 x 750-pixel) đạt chuẩn Retina, hỗ trợ đầy đủ c&aacute;c c&ocirc;ng nghệ True Tone, Haptic Touch, v&agrave; HDR10,&hellip;</p>\r\n\r\n<h4>Sức mạnh đầu bảng, tương tự iPhone 11</h4>\r\n\r\n<p>&ldquo;B&igrave;nh cũ&rdquo; nhưng &ldquo;rượu mới&rdquo;, iPhone SE 2020 sở hữu cấu h&igrave;nh hợp thời v&agrave; cao cấp với chip Apple A13 mạnh mẽ từng xuất hiện tr&ecirc;n thế hệ iPhone 11.</p>\r\n\r\n<p>Nhờ sử dụng con chip cao cấp, thiết bị cũng hỗ trợ c&ocirc;ng nghệ Wi-Fi 6 v&agrave; Gigabit LTE cho khả năng kết nối mạng cực nhanh v&agrave; ổn định.</p>\r\n', 10, 'NAN'),
(41, 'Điện thoại iPhone 11 Pro 256GB', 'Điện-thoại-iPhone-11-Pro-256GB', 31900000, 26, 'public/uploads/ip11pr.jpg', '<h3>Đặc điểm nổi bật của iPhone 11 Pro 256GB</h3>\r\n\r\n<h3><a href=\"https://www.thegioididong.com/dtdd/iphone-11-pro-256gb\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 11 Pro 256GB chính hãng\">iPhone 11 Pro 256GB</a>&nbsp;c&oacute; lẽ sẽ l&agrave; chiếc iPhone được nhiều người d&ugrave;ng lựa chọn khi n&oacute; sở hữu mức gi&aacute; tốt hơn chiếc&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-11-pro-max\" target=\"_blank\" title=\"Tham khảo điện thoại iPhone 11 Pro Max 64GB chính hãng\">iPhone 11 Pro Max</a>&nbsp;nhưng vẫn sở hữu tất cả những ưu điểm tr&ecirc;n người anh em của m&igrave;nh.</h3>\r\n\r\n<h3>Camera ch&iacute;nh l&agrave; điểm nhấn</h3>\r\n\r\n<p>Trong sự kiện giới thiệu bộ 3 iPhone mới th&igrave; Apple d&agrave;nh rất nhiều thời gian để n&oacute;i về camera v&agrave; quả thật bộ 3 camera tr&ecirc;n&nbsp;iPhone 11 Pro mới thực sự rất ấn tượng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/iphone-11-pro-256gb-tgdd14-1.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Thay v&igrave; chỉ c&oacute; 2 camera th&igrave; năm nay ch&uacute;ng ta đ&atilde; được bổ sung th&ecirc;m 1 camera&nbsp;<a href=\"https://www.thegioididong.com/dtdd-camera-goc-rong\" target=\"_blank\" title=\"Tham khảo các dòng điện thoại hỗ trợ chụp góc rộng\" type=\"Tham khảo các dòng điện thoại hỗ trợ chụp góc rộng\">g&oacute;c si&ecirc;u rộng</a>&nbsp;rất đ&aacute;ng gi&aacute;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 10, '0'),
(42, 'Điện thoại iPhone Xs 64GB', 'Điện-thoại-iPhone-Xs-64GB', 17900000, 50, 'public/uploads/iphone-xs-gold-400x460-1-400x460.png', '<h4>Đặc điểm nổi bật của iPhone Xs 64GB</h4>\r\n\r\n<h4>Đến hẹn lại l&ecirc;n, năm nay Apple giới thiệu tới người d&ugrave;ng thế hệ&nbsp;tiếp theo với 3 phi&ecirc;n bản, trong đ&oacute; c&oacute; c&aacute;i t&ecirc;n&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-xs\" target=\"_blank\" title=\"Chi tiết điện thoại iPhone XS\" type=\"Chi tiết điện thoại iPhone XS\">iPhone Xs 64 GB</a>&nbsp;với những n&acirc;ng cấp mạnh mẽ về phần cứng đến hiệu năng, m&agrave;n h&igrave;nh c&ugrave;ng h&agrave;ng loạt c&aacute;c trang bị cao cấp kh&aacute;c.&nbsp;</h4>\r\n\r\n<h4>Hiệu năng đỉnh cao đến từ con&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/chi-tiet-chip-apple-a12-bionic-ben-trong-iphone-xs-xs-max-1116982\" target=\"_blank\" title=\"Tìm hiểu chip Apple A12\" type=\"Tìm hiểu chip Apple A12\">chip Apple A12</a></h4>\r\n\r\n<p>Ngo&agrave;i&nbsp;<a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\" title=\"Tham khảo các dòng điện thoại tại Thegioididong.com\" type=\"Tham khảo các dòng điện thoại tại Thegioididong.com\">điện thoại</a>&nbsp;th&igrave; năm nay&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\" title=\"Tham khảo các dòng điện thoại iPhone\" type=\"Tham khảo các dòng điện thoại iPhone\">iPhone</a>&nbsp;cũng đ&atilde; ch&iacute;nh thức ra mắt chip A12 bionic thế hệ mới với những n&acirc;ng cấp vượt trội về mặt hiệu năng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/iphone-xs-2-1.jpg\" style=\"height:372px; width:600px\" /></p>\r\n\r\n<p>Apple A12 Bionic được x&acirc;y dựng tr&ecirc;n tiến tr&igrave;nh 7nm đầu ti&ecirc;n của h&atilde;ng với 6 nh&acirc;n gi&uacute;p iPhone Xs c&oacute; được một hiệu năng &ldquo;v&ocirc; đối&rdquo; c&ugrave;ng khả năng tiết kiệm năng lượng tối ưu.</p>\r\n', 10, '0'),
(43, 'Laptop Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)', 'Laptop-Apple-MacBook-Air-2017-i5-1.8GHz-8GB-128GB-(MQD32SA-A)', 20900000, 10, 'public/uploads/apple-macbook-air-mqd32sa-a-i5-5350u-600x600.jpg', '<h4>Đặc điểm nổi bật của Apple MacBook Air 2017 i5 1.8GHz/8GB/128GB (MQD32SA/A)</h4>\r\n\r\n<h4><a href=\"https://www.thegioididong.com/laptop/apple-macbook-air-mqd32sa-a-i5-5350u\" target=\"_blank\" title=\"Xem chi tiết về sản phẩm MacBook Air 2017 i5 128 GB\" type=\"Xem chi tiết về sản phẩm MacBook Air 2017 i5 128 GB\">MacBook Air 2017 i5 128GB</a>&nbsp;l&agrave; mẫu&nbsp;<a href=\"https://www.thegioididong.com/laptop?g=hoc-tap-van-phong\" target=\"_blank\" title=\"Xem thêm các mẫu laptop văn phòng đang kinh doanh\" type=\"Xem thêm các mẫu laptop văn phòng đang kinh doanh\">laptop văn ph&ograve;ng</a>, c&oacute; thiết kế si&ecirc;u mỏng v&agrave; nhẹ, vỏ nh&ocirc;m nguy&ecirc;n khối sang trọng. M&aacute;y c&oacute; hiệu năng ổn định, thời lượng pin cực l&acirc;u 12 giờ, ph&ugrave; hợp cho hầu hết c&aacute;c nhu cầu l&agrave;m việc v&agrave; giải tr&iacute;.&nbsp;</h4>\r\n\r\n<h4>Thiết kế si&ecirc;u mỏng v&agrave; nhẹ&nbsp;</h4>\r\n\r\n<p>Macbook Air 2017 mang những đặc trưng thiết kế của d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook-air\" target=\"_blank\" title=\"Xem thêm các mẫu MacBook Air khác\" type=\"Xem thêm các mẫu MacBook Air khác\">MacBook Air</a>&nbsp;với trọng lượng v&agrave; độ d&agrave;y của&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"Tìm hiểu các dòng laptop khác tại Thegioididong\" type=\"Tìm hiểu các dòng laptop khác tại Thegioididong\">laptop&nbsp;</a>lần lượt l&agrave;&nbsp;<strong>1.7 cm</strong>&nbsp;v&agrave;&nbsp;<strong>1.35 kg</strong>&nbsp;rất tiện lợi v&agrave; dễ d&agrave;ng gi&uacute;p người d&ugrave;ng kh&ocirc;ng cảm thấy bất tiện khi mang tr&ecirc;n vai thường xuy&ecirc;n khi đi học hay đi l&agrave;m.&nbsp;</p>\r\n\r\n<p>Đ&acirc;y cũng l&agrave; chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\" title=\"Xem những mẫu MacBook khác\" type=\"Xem những mẫu MacBook khác\">MacBook ch&iacute;nh h&atilde;ng</a>&nbsp;c&oacute; gi&aacute; rẻ nhất hiện tại, ph&ugrave; hợp với mọi người ti&ecirc;u d&ugrave;ng.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/apple-macbook-air-mqd32sa-a-i5-5350u-4.jpg\" style=\"height:403px; width:600px\" /></p>\r\n\r\n<h3>Hiệu năng mượt m&agrave;</h3>\r\n\r\n<p>Macbook Air MQD32SA/A i5 5350U c&oacute; bộ xử l&yacute; Intel&nbsp;<strong>Core i5</strong>&nbsp;Broadwell hai nh&acirc;n xung nhịp 1.8 GHz, bộ nhớ&nbsp;<strong>RAM 8 GB</strong>&nbsp;thoải m&aacute;i trong việc duyệt web, chơi game, sử dụng mượt m&agrave; c&aacute;c thao t&aacute;c trong phần mềm&nbsp;<a href=\"https://www.thegioididong.com/phan-mem-microsoft-office\" target=\"_blank\" title=\"Tham khảo phần mềm Office tại Thế giới di động\">Office</a>, Photoshop, AI&hellip;</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/apple-macbook-air-mqd32sa-a-i5-5350u-1-1.jpg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p>Ổ cứng lưu trữ&nbsp;<strong><a href=\"https://www.thegioididong.com/laptop-apple-macbook-o-cung-ssd\" target=\"_blank\" title=\"Xem thêm Laptop MacBook có SSD đang bán tại Thegioididong.com\">SSD</a>&nbsp;128 GB</strong>&nbsp;cho tốc độ cực nhanh, thời gian để bạn khởi động m&aacute;y chỉ khoảng 10-15 gi&acirc;y, dung lượng 128 GB kh&ocirc;ng qu&aacute; dư giả, nhưng vẫn đủ để lưu trữ c&aacute;c t&agrave;i liệu, h&igrave;nh ảnh, ứng dụng thường d&ugrave;ng.</p>\r\n\r\n<h3>Thời lượng pin cực l&acirc;u</h3>\r\n\r\n<p>Macbook Air MQD32SA/A i5 5350U cho thời lượng sử dụng l&ecirc;n đến&nbsp;<strong>12 tiếng</strong>&nbsp;sau một lần sạc đầy khi sử dụng soạn thảo v&agrave; lướt web th&ocirc;ng thường.&nbsp;</p>\r\n\r\n<p>Với c&aacute;c t&aacute;c vụ nặng hơn như Photoshop, lướt web từ 10-20 tab, sử dụng c&aacute;c ứng dụng nhắn tin, gọi video khi l&agrave;m việc th&igrave; chiếc m&aacute;y vẫn trụ được khoảng&nbsp;<strong>5-7 tiếng li&ecirc;n tục</strong>.</p>\r\n', 5, '0.5'),
(44, 'Laptop HP Envy 13 ba0046TU i5 1035G4/8GB/512GB/Office H&S2019/Win10 (171M7PA)', 'Laptop-HP-Envy-13-ba0046TU-i5-1035G4-8GB-512GB-Office-H-S2019-Win10-(171M7PA)', 22900000, 19, 'public/uploads/hp-envy-13-ba0046tu-i5-171m7pa-225859-600x600.jpg', '<h4>Xem th&ecirc;m laptop cùng dòng HP Envy 13</h4>\r\n\r\n<h4>Đặc điểm nổi bật của HP Envy 13 ba0046TU i5 1035G4/8GB/512GB/Office H&amp;S2019/Win10 (171M7PA).</h4>\r\n\r\n<h4>Với vi xử l&iacute; Intel Core i5 thế hệ 10 mới,&nbsp;<a href=\"https://www.thegioididong.com/laptop/hp-envy-13-ba0046tu-i5-171m7pa\" target=\"_blank\" title=\"Laptop HP Envy 13 ba0046TU i5 (171M7PA)\">HP Envy 13 ba0046TU i5 (171M7PA)</a>&nbsp;đủ mạnh để c&acirc;n c&aacute;c t&aacute;c vụ văn ph&ograve;ng, đồ họa cơ bản hay giải tr&iacute; hằng ng&agrave;y. Thiết kế cực k&igrave; gọn nhẹ v&agrave; năng động của Envy 13 đ&aacute;p ứng nhu cầu dịch chuyển một c&aacute;ch tốt nhất.&nbsp;</h4>\r\n\r\n<h4>Thiết kế gọn nhẹ, cơ động</h4>\r\n\r\n<p>Chiếc&nbsp;<a href=\"https://www.thegioididong.com/laptop\" target=\"_blank\" title=\"Xem thêm các mẫu laptop đang kinh doanh tại thegioididong.com\">laptop</a>&nbsp;đem đến thiết kế đặc trưng của d&ograve;ng&nbsp;<a href=\"https://www.thegioididong.com/laptop-hp-compaq-envy\" target=\"_blank\" title=\"Xem thêm các sản phẩm Hp Envy đang bán tại Thegioididong.com\">HP Envy</a>&nbsp;13 với m&agrave;n h&igrave;nh kh&ocirc;ng viền tinh tế, th&acirc;n m&aacute;y mỏng nhẹ, đường n&eacute;t mạnh mẽ.&nbsp;</p>\r\n\r\n<p>M&aacute;y c&oacute; trọng lượng chỉ tương đương v&agrave;i cuốn s&aacute;ch -&nbsp;<strong>1.25 kg</strong>, d&agrave;y&nbsp;<strong>16.9 mm</strong>, dễ d&agrave;ng cho v&agrave;o balo, t&uacute;i x&aacute;ch để đem theo b&ecirc;n m&igrave;nh.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/hp-envy-13-ba0046tu-i5-171m7pa-191820-081816.jpg\" style=\"height:333px; width:600px\" /></p>\r\n', 5, '0.75'),
(45, 'Laptop Asus VivoBook Gaming F571GT i7 9750H/8GB/512GB/120Hz/4GB GTX1650/Win10 (AL858T)', 'Laptop-Asus-VivoBook-Gaming-F571GT-i7-9750H-8GB-512GB-120Hz-4GB-GTX1650-Win10-(AL858T)', 24490000, 18, 'public/uploads/asus-vivobook-gaming-f571gt-i7-al858t-226256-600x600.jpg', '<h4><a href=\"https://www.thegioididong.com/laptop/asus-vivobook-gaming-f571gt-i7-al858t\" target=\"_blank\" title=\"Laptop Asus VivoBook Gaming F571GT i7 (AL858T)\">ASUS VivoBook Gaming F571GT i7 (AL858T)</a>&nbsp;l&agrave; chiếc laptop gaming mỏng nhẹ kết hợp c&ugrave;ng cấu h&igrave;nh khủng với chip Intel Core i7 d&ograve;ng H, card đồ họa rời, cho hiệu năng mạnh mẽ, chiến game thả ga.</h4>\r\n\r\n<h4>Thiết kế hiện đại, cơ động</h4>\r\n\r\n<p><a href=\"https://www.thegioididong.com/laptop-asus-vivobook\" target=\"_blank\" title=\"Xem thêm các sản phẩm Asus VivoBook đang bán tại Thegioididong.com\">ASUS VivoBook</a>&nbsp;Gaming được thiết kế với một độ d&agrave;y chỉ<strong>&nbsp;21.9 mm&nbsp;</strong>v&agrave; trọng lượng<strong>&nbsp;1.8 kg</strong>, c&oacute; thể n&oacute;i đ&acirc;y l&agrave; một trọng lượng đ&aacute;ng kinh ngạc so với một chiếc laptop gaming.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/asus-vivobook-gaming-f571gt-i7-al858t-272620-092655.jpg\" style=\"height:333px; width:600px\" /></p>\r\n\r\n<p>Asus VivoBook Gaming kh&ocirc;ng l&agrave;m cho người d&ugrave;ng thất vọng khi trang bị đầy đủ c&aacute;c cổng kết nối th&ocirc;ng dụng hiện nay như USB 3.2, USB 2.0, HDMI, USB Type-C, khe đọc thẻ nhớ Micro SD cho c&aacute;c thao t&aacute;c kết nối nhanh ch&oacute;ng, kh&ocirc;ng cần đến đầu chuyển đổi.</p>\r\n\r\n<p style=\"text-align:center\"><img alt=\"\" src=\"http://localhost/tmdt3/public/ckeditor/uploads/asus-vivobook-gaming-f571gt-i7-al858t-272720-092735.jpg\" style=\"height:333px; width:600px\" /></p>\r\n\r\n<p>M&aacute;y được t&iacute;ch hợp 1 đầu đọc v&acirc;n tay tr&ecirc;n b&agrave;n di chuột, tăng th&ecirc;m t&iacute;nh tiện lợi v&agrave; khả năng bảo mật an to&agrave;n cho m&aacute;y.</p>\r\n\r\n<p style=\"text-align:center\">&nbsp;</p>\r\n', 5, '0.5'),
(46, 'Laptop Lenovo IdeaPad Slim 3 15IIL05 i3 1005G1/4GB/512GB/Win10 (81WE003RVN)', 'Laptop-Lenovo-IdeaPad-Slim-3-15IIL05-i3-1005G1-4GB-512GB-Win10-(81WE003RVN)', 25000000, 5, 'public/uploads/lenovo-ideapad-3-15iil05-i3-81we003rvn-013920-053901-600x600.jpg', '<p>sdsfdfdsfsdfdfdfdfsdffddf</p>\r\n', 5, '0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `id` int(11) NOT NULL,
  `ten_khach_hang` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khach_hang`
--

INSERT INTO `khach_hang` (`id`, `ten_khach_hang`, `email`, `so_dien_thoai`) VALUES
(37, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(38, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(39, 'Võ Khánh Duy', 'vkduy240398@gmail.com', '0123456789'),
(40, 'Võ Khánh Duy', 'zzskillzzzzz@gmail.com', '0982824398'),
(41, 'Võ Khánh Duy', 'admin@gmail.com', '0123456789'),
(42, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0982824398'),
(43, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(44, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(45, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(46, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(47, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0982824398'),
(48, 'Duy Khánh Võ', 'vkduy.ktpm0116@ctuet.edu.vn', '0982824398'),
(49, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(50, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(51, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(52, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(53, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(54, 'sadsad', 'zzskillzzzz@gmail.com', '0123456789'),
(55, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(56, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(57, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(58, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(59, 'Võ Khánh Duy', 'admin@gmail.com', '0982824398'),
(60, 'sdas', 'zzskillzzzz@gmail.com', '0123456789'),
(61, 'asdas', 'zzskillzzzz@gmail.com', '0123456789'),
(62, 'asdas', 'zzskillzzzz@gmail.com', '0123456789'),
(63, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(64, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(65, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(66, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(67, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(68, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(69, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(70, 'Võ Khánh Duy', 'zzskillzzzz@gmail.com', '0123456789'),
(71, 'Võ Khánh Duy', '0982824398', '0123456789');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_hang_hoas`
--

CREATE TABLE `loai_hang_hoas` (
  `id` int(11) NOT NULL,
  `Ten_loai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loai_hang_hoas`
--

INSERT INTO `loai_hang_hoas` (`id`, `Ten_loai`) VALUES
(5, 'Laptop'),
(6, 'SamSung'),
(10, 'iPhone');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `trang_thais`
--

CREATE TABLE `trang_thais` (
  `id` int(11) NOT NULL,
  `Ten_Trang_Thai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `trang_thais`
--

INSERT INTO `trang_thais` (`id`, `Ten_Trang_Thai`) VALUES
(1, 'Đã xác nhận'),
(2, 'Chưa xác nhân');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Dia_Chi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `So_Dien_Thoai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `Dia_Chi`, `So_Dien_Thoai`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'khanh duy', 'sdfsdfsdf', '0982824398', 'admin@gmail.com', NULL, '$2y$10$4AP5ARfqsNR9qbm2O.vTDu9mfU9s04C6DD.9ZmD9NT4VruQp6zlGO', NULL, NULL, NULL),
(5, 'khanh duy', 'Cần thơ', '0123456789', 'admin2@gmail.com', NULL, '$2y$10$ZcC7Bd/lWOB2Tr31O/fUUudYLdfAgXtiN4u8P6.egXFYccsalkitC', NULL, NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_Don_hang` (`id_Don_hang`),
  ADD KEY `id_hang_hoa` (`id_hang_hoa`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hang_hoa` (`id_hang_hoa`),
  ADD KEY `id_khach_hang` (`id_khach_hang`);

--
-- Chỉ mục cho bảng `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Trang_Thai` (`Trang_Thai`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hang_hoas`
--
ALTER TABLE `hang_hoas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_loai` (`id_loai`);

--
-- Chỉ mục cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `loai_hang_hoas`
--
ALTER TABLE `loai_hang_hoas`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `trang_thais`
--
ALTER TABLE `trang_thais`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=338;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `don_hangs`
--
ALTER TABLE `don_hangs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `hang_hoas`
--
ALTER TABLE `hang_hoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT cho bảng `khach_hang`
--
ALTER TABLE `khach_hang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `loai_hang_hoas`
--
ALTER TABLE `loai_hang_hoas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `trang_thais`
--
ALTER TABLE `trang_thais`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chi_tiet_don_hangs`
--
ALTER TABLE `chi_tiet_don_hangs`
  ADD CONSTRAINT `chi_tiet_don_hangs_ibfk_1` FOREIGN KEY (`id_Don_hang`) REFERENCES `don_hangs` (`id`),
  ADD CONSTRAINT `chi_tiet_don_hangs_ibfk_2` FOREIGN KEY (`id_hang_hoa`) REFERENCES `hang_hoas` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id_hang_hoa`) REFERENCES `hang_hoas` (`id`),
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`id_khach_hang`) REFERENCES `khach_hang` (`id`);

--
-- Các ràng buộc cho bảng `don_hangs`
--
ALTER TABLE `don_hangs`
  ADD CONSTRAINT `don_hangs_ibfk_3` FOREIGN KEY (`Trang_Thai`) REFERENCES `trang_thais` (`id`);

--
-- Các ràng buộc cho bảng `hang_hoas`
--
ALTER TABLE `hang_hoas`
  ADD CONSTRAINT `hang_hoas_ibfk_1` FOREIGN KEY (`id_loai`) REFERENCES `loai_hang_hoas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
