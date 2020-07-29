-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th7 29, 2020 lúc 06:59 PM
-- Phiên bản máy phục vụ: 5.7.24
-- Phiên bản PHP: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lavarel_benhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `doctors`
--

CREATE TABLE `doctors` (
  `id` int(10) UNSIGNED NOT NULL,
  `doctor_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `ethnic` varchar(55) COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL DEFAULT '0',
  `professional` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL DEFAULT '0',
  `year_old` int(11) NOT NULL DEFAULT '0',
  `doctor_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `doctors`
--

INSERT INTO `doctors` (`id`, `doctor_name`, `email`, `ethnic`, `sex`, `professional`, `address`, `phone`, `year_old`, `doctor_image`, `description`, `created_at`, `updated_at`, `del_flag`) VALUES
(15, 'Nghề Bác Sĩ', 'annd123@a2ztech.vn', 'Kinh', 0, 'Kinh', 'testing subject', 99636636, 2019, '/upload/doctors/1595596912-106245367_100906515027150_2899511579703518559_o.jpg', 'AAAAAAAAA', '2020-07-24 06:07:40', '2020-07-29 02:12:16', 0),
(16, 'Nguyễn Đăng An', 'annd@a2ztech.vn', 'Kinh', 1, 'Nghề Bác Six', 'testing subject', 63636636, 0, '/upload/doctors/1595596912-106245367_100906515027150_2899511579703518559_o.jpg', 'bđnbdnd', '2020-07-24 06:21:52', '2020-07-24 06:21:52', 0),
(17, 'Nghề Bác Sĩ', 'annd123@a2ztech.vn', 'Kinh', 0, 'Kinh', 'testing subject', 99636636, 2019, '0', 'AAAAAAAAA', '2020-07-29 02:59:34', '2020-07-29 02:59:34', 0),
(18, 'Hứa Ái Chu', 'huaaichu1992@gmail.com', 'Kinh', 1, 'Nghề Bác Sĩ', 'Hà Nội', 63636634, 1958, '/upload/doctors/1596017996-huatanthanh.png', 'DDDDD', '2020-07-29 03:19:56', '2020-07-29 03:19:56', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_06_09_021546_Tao_TheLoai', 2),
('2016_06_09_021610_Tao_LoaiTin', 3),
('2016_06_09_021813_Tao_TinTuc', 4),
('2016_06_09_022526_Tao_Slide', 5),
('2016_06_09_022904_Tao_Comment', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `patients`
--

CREATE TABLE `patients` (
  `id` int(10) UNSIGNED NOT NULL,
  `patient_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `date_end` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_start` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ethnic` varchar(55) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) NOT NULL DEFAULT '0',
  `professional` varchar(155) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL DEFAULT '0',
  `year_old` int(11) NOT NULL DEFAULT '0',
  `patient_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `del_flag` int(11) NOT NULL DEFAULT '0',
  `diagnosed_go_in_hospital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `diagnosed_go_out_hospital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wards` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provincial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `village` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pathological_process` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `test_result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `treatments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `patients`
--

INSERT INTO `patients` (`id`, `patient_name`, `email`, `date_end`, `date_start`, `ethnic`, `sex`, `professional`, `address`, `phone`, `year_old`, `patient_image`, `description`, `created_at`, `updated_at`, `del_flag`, `diagnosed_go_in_hospital`, `diagnosed_go_out_hospital`, `company`, `wards`, `district`, `provincial`, `village`, `pathological_process`, `test_result`, `treatments`, `status`, `note`) VALUES
(3, 'Le Anh', 'liennguyen1995@gmail.com', '2020-07-24 13:58:54', '2020-07-24 13:58:34', 'Kinh', 1, 'Bác sĩ', 'Vinh Phuc', 536363737, 25, 'https://laravel.com/img/logomark.min.svg', 'fwwg', '2020-07-21 13:34:30', '2020-07-21 13:34:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Đổng Thị Mỹ', 'liennguyen1995@gmail.com', '2020-07-24 13:58:54', '2020-07-24 13:58:34', 'Kinh', 1, 'Bác sĩ', 'Vinh Phuc', 536363737, 25, 'https://laravel.com/img/logomark.min.svg', 'fwwg', '2020-07-21 13:34:30', '2020-07-21 13:34:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Phạm Bằng', 'liennguyen1995@gmail.com', '2020-07-24 13:58:54', '2020-07-24 13:58:34', 'Kinh', 1, 'Bác sĩ', 'Vinh Phuc', 536363737, 25, 'https://laravel.com/img/logomark.min.svg', 'fwwg', '2020-07-21 13:34:30', '2020-07-21 13:34:30', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Minh Hằng Nguyễn', 'minhhangnguyen1995@gmail.com', '2020-07-24 13:58:54', '2020-07-24 13:58:34', 'Kinh', 1, 'Bác sĩ', 'Vinh Phuc', 6363737, 25, 'https://laravel.com/img/logomark.min.svg', 'fwwg', '2020-07-21 13:34:30', '2020-07-22 06:12:05', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Nguyễn Đăng An 12', 'an.nguyendang1722@gmail.com', '2019-05-04 17:00:00', '2019-03-01 17:00:00', 'Kinh', 0, 'Nghề Bác Sĩ', 'Hà Nội', 63636634, 0, '/upload/patients/1596011143-anh-cam-nang-0.jpg', 'Mẫu bản tóm tắt hồ sơ bệnh án Hồ sơ bệnh án là tài liệu y học, y tế và pháp lý; mỗi người bệnh chỉ có một hồ sơ bệnh án trong mỗi lần khám bệnh. Mời các bạn tham khảo bản tóm tắt hồ sơ bệnh án được ban hành kèm theo', '2020-07-29 01:25:43', '2020-07-29 01:27:56', 0, 'Mẫu bản tóm tắt hồ sơ bệnh án Hồ sơ bệnh án là tài liệu y học, y tế và pháp lý; mỗi người bệnh chỉ có một hồ sơ bệnh án trong mỗi lần khám bệnh. Mời các bạn tham khảo bản tóm tắt hồ sơ bệnh án được ban hành kèm theo', 'Mẫu bản tóm tắt hồ sơ bệnh án Hồ sơ bệnh án là tài liệu y học, y tế và pháp lý; mỗi người bệnh chỉ có một hồ sơ bệnh án trong mỗi lần khám bệnh. Mời các bạn tham khảo bản tóm tắt hồ sơ bệnh án được ban hành kèm theo', 'Trung Tâm Công Nghệ Phần Mềm Hòa Phát', NULL, 'Hà Nội', 'Hà Nội', 'Hà Nội', 'Mẫu bản tóm tắt hồ sơ bệnh án Hồ sơ bệnh án là tài liệu y học, y tế và pháp lý; mỗi người bệnh chỉ có một hồ sơ bệnh án trong mỗi lần khám bệnh. Mời các bạn tham khảo bản tóm tắt hồ sơ bệnh án được ban hành kèm theo', 'Mẫu bản tóm tắt hồ sơ bệnh án Hồ sơ bệnh án là tài liệu y học, y tế và pháp lý; mỗi người bệnh chỉ có một hồ sơ bệnh án trong mỗi lần khám bệnh. Mời các bạn tham khảo bản tóm tắt hồ sơ bệnh án được ban hành kèm theo', 'Mẫu bản tóm tắt hồ sơ bệnh án Hồ sơ bệnh án là tài liệu y học, y tế và pháp lý; mỗi người bệnh chỉ có một hồ sơ bệnh án trong mỗi lần khám bệnh. Mời các bạn tham khảo bản tóm tắt hồ sơ bệnh án được ban hành kèm theo', 'Mẫu bản tóm tắt hồ sơ bệnh án Hồ sơ bệnh án là tài liệu y học, y tế và pháp lý; mỗi người bệnh chỉ có một hồ sơ bệnh án trong mỗi lần khám bệnh. Mời các bạn tham khảo bản tóm tắt hồ sơ bệnh án được ban hành kèm theo', 'Mẫu bản tóm tắt hồ sơ bệnh án Hồ sơ bệnh án là tài liệu y học, y tế và pháp lý; mỗi người bệnh chỉ có một hồ sơ bệnh án trong mỗi lần khám bệnh. Mời các bạn tham khảo bản tóm tắt hồ sơ bệnh án được ban hành kèm theo'),
(27, 'Hứa Tấn Thanh', 'huathathanh1940@gmail.com', '2020-06-04 17:00:00', '2019-03-02 17:00:00', 'Tày', 0, 'Nghề Bác', 'Hà Nội', 63636634, 1958, '/upload/patients/1596011479-huatanthanh.png', 'Nhắc đến những nữ tỷ phú giàu có và nổi tiếng nhất đất Hong Kong và Macau không thể không nhắc đến bà Hà Siêu Quỳnh, con gái của vua sòng bạc Hà Hồng Sân.', '2020-07-29 01:31:19', '2020-07-29 04:29:11', 0, 'Nhắc đến những nữ tỷ phú giàu có và nổi tiếng nhất đất Hong Kong và Macau không thể không nhắc đến bà Hà Siêu Quỳnh, con gái của vua sòng bạc Hà Hồng Sân.', 'Nhắc đến những nữ tỷ phú giàu có và nổi tiếng nhất đất Hong Kong và Macau không thể không nhắc đến bà Hà Siêu Quỳnh, con gái của vua sòng bạc Hà Hồng Sân.', 'Trung Tâm Công Nghệ Phần Mềm Hòa Phát', NULL, 'Hà Nội', 'Hà Nội', 'Hà Nội', 'Nhắc đến những nữ tỷ phú giàu có và nổi tiếng nhất đất Hong Kong và Macau không thể không nhắc đến bà Hà Siêu Quỳnh, con gái của vua sòng bạc Hà Hồng Sân.', 'Nhắc đến những nữ tỷ phú giàu có và nổi tiếng nhất đất Hong Kong và Macau không thể không nhắc đến bà Hà Siêu Quỳnh, con gái của vua sòng bạc Hà Hồng Sân.', 'Nhắc đến những nữ tỷ phú giàu có và nổi tiếng nhất đất Hong Kong và Macau không thể không nhắc đến bà Hà Siêu Quỳnh, con gái của vua sòng bạc Hà Hồng Sân.', 'Nhắc đến những nữ tỷ phú giàu có và nổi tiếng nhất đất Hong Kong và Macau không thể không nhắc đến bà Hà Siêu Quỳnh, con gái của vua sòng bạc Hà Hồng Sân.', 'Nhắc đến những nữ tỷ phú giàu có và nổi tiếng nhất đất Hong Kong và Macau không thể không nhắc đến bà Hà Siêu Quỳnh, con gái của vua sòng bạc Hà Hồng Sân.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `quyen` int(11) NOT NULL DEFAULT '0',
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `quyen`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Bùi Đức Phú', 'phubui2702@gmail.com', 1, '$2y$10$CEdbdsSMU9Nv.6yjdRMEtOhR0kdIiOBWtNR2Bup9upjueOPbcsM9m', 'NJlABAo3Mgw7qFqo18kxSDVE7vmVVdQQXL5CbdTERpfLeTq3Dg0MNTAUArCH', '2016-06-09 03:05:09', '2016-06-18 07:06:27'),
(2, 'User_2', 'phubui2703@gmail.com', 0, '$2y$10$VSYdTPHgu6iQ0NBouPmQTe2nxENOouLMEcjQiG54cFNlUbEInurxC', NULL, '2016-06-09 03:05:09', NULL),
(3, 'User_3', 'user_3@mymail.com', 0, '$2y$10$DES3NL8tozlU99dvO9o4lOfYyYcaM9n86gJcJV5.fz2G8b6qLa6Gq', NULL, '2016-06-09 03:05:09', NULL),
(4, 'User_4', 'user_4@mymail.com', 0, '$2y$10$xqfx9motmrCAEuEjCyQroOo/eFqum1hPhgwnz5LSLkhdyGHvf6l8O', NULL, '2016-06-09 03:05:10', NULL),
(5, 'User_5', 'user_5@mymail.com', 0, '$2y$10$rTviORV94uWv/KcNK7s0UeGwlQ2DSN5UGSOAzMkZ6sGgfr9nE2fSq', NULL, '2016-06-09 03:05:10', NULL),
(6, 'User_6', 'user_6@mymail.com', 0, '$2y$10$AwcqOIqwnPM9ZkYE1e6x.OkQAjY5V7H.WP73VVod/2mGNp1Y0zWUy', NULL, '2016-06-09 03:05:10', NULL),
(7, 'User_7', 'user_7@mymail.com', 0, '$2y$10$nSJhdDCm7zfF5uZpkhEuQufsLAqc1OZZnTME4AcTIx/2PsnnbrpZ6', NULL, '2016-06-09 03:05:10', NULL),
(8, 'User_8', 'user_8@mymail.com', 0, '$2y$10$s1ik567.aaB/ZbykP5zBR.20Ps5Qd6EPkhHFGdSQwERYmX1G/CnEK', NULL, '2016-06-09 03:05:10', NULL),
(9, 'User_9', 'user_9@mymail.com', 0, '$2y$10$/GQdzMM1G0CsrEF7RnQy4eHCkO2SqTNbE6QyRXCBtOuvyqIaFoMnm', NULL, '2016-06-09 03:05:10', NULL),
(10, 'User_10', 'user_10@mymail.com', 0, '$2y$10$gV.fAHxmpvB57JXKIEuUYumcZZhbCqtM8MpXDZOfDFBTl6X0WAHiK', NULL, '2016-06-09 03:05:10', NULL),
(11, 'An Accessories', 'An Accessories', 0, '$2y$10$FrDi8ozbPRBj8endzVRywup5odCbRLbfHNkA.CnsbiYURrjUvpdGO', NULL, '2020-07-21 01:12:08', '2020-07-21 01:12:08'),
(12, 'Shower Accessories', 'Shower Accessories', 0, '$2y$10$VSad20o3CkM2G7stWO8j9uZjgBCKGmTOWZIzEIlW5ds98HB6LpB72', NULL, '2020-07-21 01:20:58', '2020-07-21 01:20:58');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `patients`
--
ALTER TABLE `patients`
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
-- AUTO_INCREMENT cho bảng `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
