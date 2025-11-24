-- phpMyAdmin SQL Dump -- version 5.2.2 -- https://www.phpmyadmin.net/ -- -- Host: localhost:3306 -- Generation Time: Nov 19, 2025 at 11:31 PM -- Server version: 10.6.23-MariaDB-cll-lve-log -- PHP Version: 7.4.33 SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO"; START TRANSACTION; SET time_zone = "+00:00"; /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */; /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */; /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */; /*!40101 SET NAMES utf8mb4 */; -- -- Database: `minhtu270404_joblist_db` -- -- -------------------------------------------------------- -- -- Table structure for table `abouts` -- CREATE TABLE `abouts` ( `id` bigint(20) UNSIGNED NOT NULL, `image` varchar(255) NOT NULL, `title` varchar(255) NOT NULL, `description` text NOT NULL, `url` text DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `abouts`
 -- INSERT INTO `abouts` (`id`, `image`, `title`, `description`, `url`, `created_at`, `updated_at`) VALUES (1, '/uploads/media_65c5fe2f94c7b.png', 'Chúng tôi có thể làm gì', 'JobList là cổng kết nối giữa người tìm việc và nhà tuyển dụng, giúp bạn nhanh chóng tìm kiếm các cơ hội nghề nghiệp phù hợp. Bạn có thể tìm việc theo ngành, vị trí và mức lương, tạo hồ sơ chuyên nghiệp, nhận thông báo việc làm phù hợp, và nộp hồ sơ trực tuyến chỉ với vài cú nhấp chuột. JobList không chỉ giúp bạn tìm việc dễ dàng hơn, mà còn là trợ thủ phát triển sự nghiệp nhờ các công cụ tư vấn CV và kỹ năng phỏng vấn.', 'https://vaschool.webnew.info.vn/', '2025-07-07 04:27:59', '2025-10-15 04:27:59'); -- -------------------------------------------------------- -- -- Table structure for table `admins` 
-- CREATE TABLE `admins` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `image` varchar(255) NOT NULL DEFAULT '/default-uploads/avatar.png', `email` varchar(255) NOT NULL, `email_verified_at` timestamp NULL DEFAULT NULL, `password` varchar(255) NOT NULL, `remember_token` varchar(100) DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `admins` 

-- INSERT INTO `admins` (`id`, `name`, `image`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'Super Admin', '/default-uploads/avatar.png', 'superadmin@gmail.com', NULL, '$2y$12$yTFAlZ44OAYp0pzTjDNtR.6Bgj6cWqsBBs6khEUaDCngZ3OXgnobu', NULL, '2024-02-07 22:29:28', '2024-02-07 22:29:28'); -- -------------------------------------------------------- -- -- 
Table structure for table `admin_menus`
 -- CREATE TABLE `admin_menus` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- 
Dumping data for table `admin_menus` -- INSERT INTO `admin_menus` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Menu điều hướng', NULL, '2025-11-19 03:40:09'), (3, 'Footer Menu One', '2024-01-31 20:35:53', '2024-01-31 20:35:53'), (4, 'Footer Menu Two', '2024-01-31 20:36:11', '2024-01-31 20:36:11'), (5, 'Footer Menu Three', '2024-01-31 20:36:25', '2024-01-31 20:36:25'), (6, 'Footer Menu Four', '2024-01-31 20:36:38', '2024-01-31 20:36:38'); -- -------------------------------------------------------- -- -- Table structure for table `admin_menu_items` -- CREATE TABLE `admin_menu_items` ( `id` bigint(20) UNSIGNED NOT NULL, `label` varchar(255) NOT NULL, `link` varchar(255) NOT NULL, `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0, `sort` int(11) NOT NULL DEFAULT 0, `class` varchar(255) DEFAULT NULL, `menu_id` bigint(20) UNSIGNED NOT NULL, `depth` int(11) NOT NULL DEFAULT 0, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `admin_menu_items` -- INSERT INTO `admin_menu_items` (`id`, `label`, `link`, `parent_id`, `sort`, `class`, `menu_id`, `depth`, `created_at`, `updated_at`) VALUES (1, 'Home', '/home', 0, 0, NULL, 1, 0, '2024-02-09 04:05:52', '2025-11-19 03:40:26'), (2, 'Tìm việc làm', '/jobs', 0, 1, NULL, 1, 0, '2024-02-09 04:06:08', '2024-02-09 04:06:21'), (3, 'Tuyển Dụng', '/companies', 0, 2, NULL, 1, 0, '2024-02-09 04:06:20', '2024-02-09 04:06:30'), (4, 'Ứng Viên', '/candidates', 0, 3, NULL, 1, 0, '2024-02-09 04:06:30', '2024-02-09 04:07:17'), (5, 'Giá Cả', '/pricing', 0, 4, NULL, 1, 0, '2024-02-09 04:07:17', '2025-11-19 03:40:09'), (6, 'Pages', '#', 0, 5, NULL, 1, 0, '2024-02-09 04:07:35', '2024-02-09 04:08:07'), (7, 'Về Chúng Tôi', '/about-us', 6, 6, NULL, 1, 1, '2024-02-09 04:08:07', '2024-02-09 04:08:20'), (8, 'Liên Hệ', '/contact', 6, 7, NULL, 1, 1, '2024-02-09 04:08:17', '2024-02-09 04:08:30'), (9, 'Blogs', '/blogs', 0, 9, NULL, 1, 0, '2024-02-09 04:08:30', '2024-02-09 04:31:53'), (10, 'About Us', '/', 0, 0, NULL, 3, 0, '2024-02-09 04:12:25', '2024-02-09 04:12:35'), (11, 'Our Team', '/', 0, 1, NULL, 3, 0, '2024-02-09 04:12:34', '2024-02-09 04:12:41'), (12, 'Products', '/', 0, 2, NULL, 3, 0, '2024-02-09 04:12:41', '2024-02-09 04:12:47'), (13, 'Contact', '/', 0, 3, NULL, 3, 0, '2024-02-09 04:12:47', '2025-11-19 09:00:49'), (14, 'Feature', '/', 0, 0, NULL, 4, 0, '2024-02-09 04:13:04', '2024-02-09 04:13:19'), (15, 'Priceing', '/', 0, 1, NULL, 4, 0, '2024-02-09 04:13:19', '2024-02-09 04:13:25'), (16, 'Credit', '/', 0, 2, NULL, 4, 0, '2024-02-09 04:13:25', '2024-02-09 04:13:33'), (17, 'FAQ', '/', 0, 4, NULL, 4, 0, '2024-02-09 04:13:33', '2024-02-09 04:13:33'), (18, 'IOS', '#', 0, 0, NULL, 5, 0, '2024-02-09 04:13:50', '2024-02-09 04:13:57'), (19, 'Android', '#', 0, 1, NULL, 5, 0, '2024-02-09 04:13:57', '2024-02-09 04:14:06'), (20, 'Microsoft', '#', 0, 2, NULL, 5, 0, '2024-02-09 04:14:05', '2024-02-09 04:14:12'), (21, 'Desktop', '#', 0, 3, NULL, 5, 0, '2024-02-09 04:14:12', '2024-02-09 04:14:33'), (26, 'Privacy', '#', 0, 0, NULL, 6, 0, '2024-02-09 04:25:16', '2024-02-09 04:25:23'), (27, 'Help', '#', 0, 1, NULL, 6, 0, '2024-02-09 04:25:23', '2024-02-09 04:25:28'), (28, 'Terms', '#', 0, 2, NULL, 6, 0, '2024-02-09 04:25:28', '2024-02-09 04:25:34'), (29, 'FAQ', '#', 0, 4, NULL, 6, 0, '2024-02-09 04:25:34', '2024-02-09 04:25:34'), (30, 'Custom Page', '/page/custom-page', 6, 8, NULL, 1, 1, '2024-02-09 04:31:48', '2024-02-09 04:32:01'), (31, 'Menu Label', '/', 0, 10, NULL, 1, 0, '2025-11-19 09:11:33', '2025-11-19 09:11:33'); -- -------------------------------------------------------- -- -- Table structure for table `applied_jobs` -- CREATE TABLE `applied_jobs` ( `id` bigint(20) UNSIGNED NOT NULL, `job_id` bigint(20) UNSIGNED NOT NULL, `candidate_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `applied_jobs` -- INSERT INTO `applied_jobs` (`id`, `job_id`, `candidate_id`, `created_at`, `updated_at`) VALUES (1, 20, 1, '2025-11-19 03:46:00', '2025-11-19 03:46:00'); -- -------------------------------------------------------- -- -- Table structure for table `benefits` -- CREATE TABLE `benefits` ( `id` bigint(20) UNSIGNED NOT NULL, `company_id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `benefits` -- INSERT INTO `benefits` (`id`, `company_id`, `name`, `created_at`, `updated_at`) VALUES (3, 1, 'Miễn phí Cà Phê', '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (4, 2, 'Miễn phí Cà Phê', '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (5, 2, 'Miễn Phí Trà', '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (6, 2, 'Miễn Phí Đồ Ăn Sáng', '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (7, 2, 'Trả Lương Một Lần', '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (12, 2, 'Miễn phí Cà Phê', '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (13, 2, 'Miễn Phí Trà', '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (14, 2, 'Miễn Phí Đồ Ăn Sáng', '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (15, 2, 'Trả Lương Một Lần', '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (16, 2, 'Miễn phí Cà Phê', '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (17, 2, 'Miễn Phí Trà', '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (18, 2, 'Miễn Phí Đồ Ăn Sáng', '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (19, 2, 'Trả Lương Một Lần', '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (20, 2, 'Miễn phí Cà Phê', '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (21, 2, 'Miễn Phí Trà', '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (22, 2, 'Miễn Phí Đồ Ăn Sáng', '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (23, 2, 'Trả Lương Một Lần', '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (24, 2, 'Miễn phí Cà Phê', '2024-02-08 23:02:33', '2024-02-08 23:02:33'), (25, 2, 'Miễn Phí Trà', '2024-02-08 23:02:34', '2024-02-08 23:02:34'), (26, 2, 'Miễn Phí Đồ Ăn Sáng', '2024-02-08 23:02:34', '2024-02-08 23:02:34'), (27, 2, 'Trả Lương Một Lần', '2024-02-08 23:02:34', '2024-02-08 23:02:34'), (52, 3, 'Miễn phí Cà Phê', '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (53, 3, 'Miễn Phí Trà', '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (54, 3, 'Trả Lương Một Lần', '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (55, 3, 'Trả Lương Một Lần', '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (56, 3, 'free coffee', '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (57, 3, ' free tea', '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (58, 3, ' free break fast', '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (59, 3, ' on time salary', '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (60, 3, 'free coffee', '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (61, 3, ' free tea', '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (62, 3, ' free break fast', '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (63, 3, ' on time salary', '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (64, 3, 'free coffee', '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (65, 3, ' free tea', '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (66, 3, ' free break fast', '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (67, 3, ' on time salary', '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (68, 3, 'free coffee', '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (69, 3, ' free tea', '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (70, 3, ' free break fast', '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (71, 3, ' on time salary', '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (72, 3, 'free coffee', '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (73, 3, ' free tea', '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (74, 3, ' free break fast', '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (75, 3, ' on time salary', '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (76, 3, 'free coffee', '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (77, 3, ' free tea', '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (78, 3, ' free break fast', '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (79, 3, ' on time salary', '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (80, 3, 'free coffee', '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (81, 3, ' free tea', '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (82, 3, ' free break fast', '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (83, 3, ' on time salary', '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (84, 9, 'free coffee', '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (85, 9, ' free tea', '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (86, 9, ' free break fast', '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (87, 9, ' on time salary', '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (88, 12, 'free coffee', '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (89, 12, ' free tea', '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (90, 12, ' free break fast', '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (91, 12, ' on time salary', '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (92, 14, 'free coffee', '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (93, 14, ' free tea', '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (94, 14, ' free break fast', '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (95, 14, ' on time salary', '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (96, 6, 'free coffee', '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (97, 6, ' free tea', '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (98, 6, ' free break fast', '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (99, 6, ' on time salary', '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (100, 11, 'free coffee', '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (101, 11, ' free tea', '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (102, 11, ' free break fast', '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (103, 11, ' on time salary', '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (104, 13, 'free coffee', '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (105, 13, ' free tea', '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (106, 13, ' free break fast', '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (107, 13, ' on time salary', '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (108, 10, 'free coffee', '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (109, 10, ' free tea', '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (110, 10, ' free break fast', '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (111, 10, ' on time salary', '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (112, 11, 'free coffee', '2024-02-09 03:00:47', '2024-02-09 03:00:47'), (113, 11, ' free tea', '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (114, 11, ' free break fast', '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (115, 11, ' on time salary', '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (116, 14, 'free coffee', '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (117, 14, ' free tea', '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (118, 14, ' free break fast', '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (119, 14, ' on time salary', '2024-02-09 03:01:56', '2024-02-09 03:01:56'), (120, 6, 'free coffee', '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (121, 6, ' free tea', '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (122, 6, ' free break fast', '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (123, 6, ' on time salary', '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (124, 7, 'free coffee', '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (125, 7, ' free tea', '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (126, 7, ' free break fast', '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (127, 7, ' on time salary', '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (128, 15, 'free coffee', '2024-02-09 03:05:44', '2024-02-09 03:05:44'), (129, 15, ' free tea', '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (130, 15, ' free break fast', '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (131, 15, ' on time salary', '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (132, 2, 'free coffee', '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (133, 2, ' free tea', '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (138, 13, 'free coffee', '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (139, 13, ' free tea', '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (140, 13, ' free break fast', '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (141, 13, ' on time salary', '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (142, 8, 'free coffee', '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (143, 8, ' free tea', '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (144, 8, ' free break fast', '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (145, 8, ' on time salary', '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (146, 4, 'free coffee', '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (147, 4, ' free tea', '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (148, 4, ' free break fast', '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (149, 4, ' on time salary', '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (150, 5, 'free coffee', '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (151, 5, ' free tea', '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (152, 5, ' free break fast', '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (153, 5, ' on time salary', '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (154, 7, 'free coffee', '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (155, 7, ' free tea', '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (156, 7, ' free break fast', '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (157, 7, ' on time salary', '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (158, 13, 'free coffee', '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (159, 13, ' free tea', '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (160, 13, ' free break fast', '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (161, 13, ' on time salary', '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (162, 15, 'free coffee', '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (163, 15, ' free tea', '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (164, 15, ' free break fast', '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (165, 15, ' on time salary', '2024-02-09 03:09:12', '2024-02-09 03:09:12'); -- -------------------------------------------------------- -- -- Table structure for table `blogs` -- CREATE TABLE `blogs` ( `id` bigint(20) UNSIGNED NOT NULL, `image` varchar(255) NOT NULL, `title` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `author_id` bigint(20) UNSIGNED NOT NULL, `description` text NOT NULL, `status` tinyint(1) NOT NULL DEFAULT 0, `featured` tinyint(1) NOT NULL DEFAULT 0, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `blogs` -- INSERT INTO `blogs` (`id`, `image`, `title`, `slug`, `author_id`, `description`, `status`, `featured`, `created_at`, `updated_at`) VALUES (1, '/uploads/media_65c5f83eb3f75.jpg', '\nTrí tuệ nhân tạo có thể viết nên một bài hát hit không?', 'can-artificial-intelligence-write-a-hit-song', 1, 'Trong thời đại công nghệ phát triển vượt bậc, trí tuệ nhân tạo (AI) đã bắt đầu bước chân vào thế giới âm nhạc. Ngày nay, AI có thể tạo ra giai điệu, viết lời bài hát và thậm chí phối nhạc hoàn chỉnh chỉ trong vài phút – điều mà trước đây phải mất hàng tuần hoặc hàng tháng với con người. Tuy nhiên, một bài hát thực sự trở thành hit không chỉ dựa vào kỹ thuật hay cấu trúc âm nhạc, mà còn cần cảm xúc, trải nghiệm và sự kết nối với khán giả – những yếu tố mà AI chưa thể hoàn toàn cảm nhận được. Vì vậy, AI đóng vai trò như một công cụ sáng tạo mạnh mẽ, giúp nhạc sĩ thử nghiệm phong cách mới, phát triển ý tưởng nhanh chóng, nhưng để tạo ra một bản hit thực sự, sự kết hợp giữa trí tuệ nhân tạo và cảm xúc con người vẫn là chìa khóa. Nhờ vậy, tương lai của âm nhạc hứa hẹn sẽ là sự hòa quyện giữa khả năng vô hạn của AI và linh hồn của con người.', 1, 1, '2025-10-15 04:02:38', '2025-11-10 04:02:38'), (2, '/uploads/media_65c5f85605a6d.jpg', 'Time Travel for Tourists: What Would You See in Different Eras', 'time-travel-for-tourists-what-would-you-see-in-different-eras', 1, 'Hãy tưởng tượng bạn bước lên một cỗ máy thời gian và nhấn nút, để rồi ngay lập tức xuất hiện giữa những cảnh tượng hoàn toàn khác nhau. Bạn có thể lạc bước vào thời kỳ Ai Cập cổ đại, chứng kiến các kim tự tháp hùng vĩ đang được xây dựng, hoặc hòa mình vào chợ phiên Trung Cổ với âm thanh rộn ràng của tiếng rao hàng và mùi bánh nướng thơm lừng. Nếu tiếp tục, bạn có thể đặt chân vào Thành phố tương lai, nơi các tòa nhà chọc trời được phủ kính sáng bóng và những chiếc xe bay nhẹ nhàng lướt qua bầu trời. Mỗi chuyến đi sẽ là một trải nghiệm sống động, nơi quá khứ, hiện tại và tương lai gặp gỡ, mở ra những góc nhìn độc đáo về lịch sử, văn hóa và tiến bộ của nhân loại. Du lịch thời gian không chỉ là quan sát, mà còn là cảm nhận nhịp sống, hơi thở và câu chuyện của từng thời đại – một hành trình khiến bạn không bao giờ quên.', 1, 1, '2025-11-05 04:03:02', '2025-11-18 04:03:02'), (3, '/uploads/media_65c5f87127f42.jpg', 'The Art of Folding Laundry: Mastering the Perfect Zen Fold', 'the-art-of-folding-laundry-mastering-the-perfect-zen-fold', 1, 'Gấp quần áo không chỉ là một công việc thường nhật mà còn có thể trở thành một nghệ thuật tinh tế, giúp bạn tạo ra không gian sống gọn gàng, thư thái và tràn đầy năng lượng. Phương pháp gấp Zen nổi tiếng nhờ sự tối giản, cân đối và tính thẩm mỹ cao, biến mỗi chiếc áo, chiếc quần thành một “tác phẩm nhỏ” trong tủ đồ của bạn. Khi nắm vững kỹ thuật này, bạn sẽ dễ dàng sắp xếp quần áo theo màu sắc, kích cỡ và loại vải, giúp việc tìm kiếm trở nên nhanh chóng, giảm bớt sự lộn xộn. Hơn thế nữa, quá trình gấp Zen còn mang lại cảm giác tĩnh tâm và thư giãn, giống như một phút thiền giữa bộn bề cuộc sống. Với nghệ thuật gấp quần áo này, bạn không chỉ làm đẹp tủ đồ mà còn làm đẹp cho tâm trí, mỗi lần mở tủ đều cảm thấy hài hòa và tràn đầy cảm hứng.', 1, 1, '2025-11-02 04:03:29', '2025-11-18 04:03:29'); -- -------------------------------------------------------- -- -- Table structure for table `candidates` -- CREATE TABLE `candidates` ( `id` bigint(20) UNSIGNED NOT NULL, `user_id` bigint(20) UNSIGNED NOT NULL, `experience_id` bigint(20) UNSIGNED DEFAULT NULL, `profession_id` bigint(20) UNSIGNED DEFAULT NULL, `title` varchar(255) DEFAULT NULL, `image` varchar(255) DEFAULT NULL, `full_name` varchar(255) DEFAULT NULL, `slug` varchar(255) DEFAULT NULL, `gender` enum('male','female') DEFAULT NULL, `website` text DEFAULT NULL, `phone_one` varchar(255) DEFAULT NULL, `phone_two` varchar(255) DEFAULT NULL, `email` varchar(255) DEFAULT NULL, `cv` text DEFAULT NULL, `bio` text DEFAULT NULL, `marital_status` enum('married','single') DEFAULT NULL, `birth_date` date DEFAULT NULL, `address` varchar(255) DEFAULT NULL, `city` bigint(20) UNSIGNED DEFAULT NULL, `state` bigint(20) UNSIGNED DEFAULT NULL, `country` bigint(20) UNSIGNED DEFAULT NULL, `status` enum('available','not_available') DEFAULT NULL, `profile_complete` tinyint(1) NOT NULL DEFAULT 0, `visibility` tinyint(1) NOT NULL DEFAULT 0, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `candidates` -- INSERT INTO `candidates` (`id`, `user_id`, `experience_id`, `profession_id`, `title`, `image`, `full_name`, `slug`, `gender`, `website`, `phone_one`, `phone_two`, `email`, `cv`, `bio`, `marital_status`, `birth_date`, `address`, `city`, `state`, `country`, `status`, `profile_complete`, `visibility`, `created_at`, `updated_at`) VALUES (1, 1, 3, 2, 'Developer', '/uploads/media_65c47b16cbe0c.png', 'Nguyễn Minh Tú', 'jhon-deo', 'male', 'https://www.demo.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'jhon@gmail.com', '/uploads/media_65c47b77a1320.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
 
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '1990-02-13', NULL, 1, 5233, 260, 'available', 1, 1, '2024-02-08 00:56:22', '2024-02-08 01:03:51'), (2, 2, 3, 2, '\nKỹ sư phần mềm cao cấp', '/uploads/media_65c47ef1332b7.png', 'Trần Thị Lan', 'olivia-thompson', 'male', 'https://www.demo.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'demo@gmail.com', '/uploads/media_65c47ef133786.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'married', '2024-02-19', NULL, 5, 5234, 260, 'available', 1, 1, '2024-02-08 01:12:49', '2024-02-08 01:18:49'), (3, 3, 4, 1, 'Kỹ sư phần mềm\n', '/uploads/media_65c480c1aa765.png', 'Lê Hoàng Anh', 'james-ward', 'male', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'user@gmail.com', '/uploads/media_65c480c1aac6d.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-12', NULL, 9, 5235, 260, 'available', 1, 1, '2024-02-08 01:20:33', '2024-02-08 01:23:26'), (4, 4, 4, 8, 'Người viết nội dung\n', '/uploads/media_65c4837f15524.png', 'Phạm Thùy Dung', 'noah-turner', 'female', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'demo@gmail.com', '/uploads/media_65c4837f159e5.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-20', '4408 Norma Lane Shreveport, LA 71101', 3, 5233, 260, 'not_available', 1, 1, '2024-02-08 01:32:15', '2024-02-08 01:42:55'), (5, 5, 5, 1, 'Chuyên gia hỗ trợ CNTT\n', '/uploads/media_65c4865b46509.png', 'Võ Văn Khánh', 'evelyn-diaz', 'male', 'https://www.google.com', '+1 (106) 882-8138', '+1 (135) 935-2729', 'user@gmail.com', '/uploads/media_65c4865b469f1.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-19', '4408 Norma Lane Shreveport, LA 71101', 8, 5235, 260, 'available', 1, 1, '2024-02-08 01:44:27', '2024-02-08 01:46:56'), (6, 6, 3, 9, 'Nhà thiết kế sản phẩm\n', '/uploads/media_65c488803f5d9.png', 'Đặng Thanh Huyền', 'william-phillips', 'male', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'user@gmail.com', '/uploads/media_65c488803fbb1.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-05', '3166 Chestnut Street Winter Haven', 5, 5234, 260, 'available', 1, 1, '2024-02-08 01:53:36', '2024-02-08 03:10:52'), (7, 7, 4, 16, 'Nhà thiết kế sản phẩm\n', '/uploads/media_65c49b8eb5cb1.png', 'Bùi Quang Vinh', 'logan-adams', 'male', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'user@gmail.com', '/uploads/media_65c49b8eb636c.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-12', '4408 Norma Lane Shreveport, LA 71101', 1, 5233, 260, 'available', 1, 1, '2024-02-08 03:14:54', '2024-02-08 03:17:56'), (8, 8, 4, 11, 'Nhà khoa học dữ liệu\n', '/uploads/media_65c49d1fbff76.png', 'Hoàng Thị Mai', 'mia-stewart', 'male', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'demo@gmail.com', '/uploads/media_65c49d1fc049b.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-11', '4408 Norma Lane Shreveport', 9, 5235, 260, 'available', 1, 1, '2024-02-08 03:21:35', '2024-02-08 03:23:49'), (9, 9, 4, 3, 'Nhà thiết kế sản phẩm\n', '/uploads/media_65c49df3a6026.png', 'Phan Anh Khoa', 'elijah-cooper', 'female', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'user@gmail.com', '/uploads/media_65c49dfc324a8.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-21', '4408 Norma Lane Shreveport, LA 71101', 2, 5233, 260, 'not_available', 1, 1, '2024-02-08 03:25:07', '2024-02-08 03:26:04'), (10, 10, 6, 3, 'Data Scientist', '/uploads/media_65c49fa2e0ea2.png', 'Lý Ngọc Bảo', 'mason-rivera', 'male', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'superadmin@gmail.com', '/uploads/media_65c49fa2e1338.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-19', NULL, 4, 5234, 260, 'available', 1, 1, '2024-02-08 03:32:18', '2024-02-08 03:34:04'), (11, 11, 4, 1, 'Project Manager', '/uploads/media_65c4a15d6efdd.png', 'Harper Hill', 'harper-hill', 'male', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'superadmin@gmail.com', '/uploads/media_65c4a16548252.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-22', '4408 Norma Lane Shreveport, LA 71101', 5, 5234, 260, 'available', 1, 1, '2024-02-08 03:39:41', '2024-02-08 03:42:15'), (12, 12, 4, 2, 'Customer Success', '/uploads/media_65c4a34b686e4.png', 'Liam Ramirez', 'liam-ramirez', 'male', 'https://www.google.com', '+1 (135) 935-2729', '+1 (135) 935-2729', 'superadmin@gmail.com', '/uploads/media_65c4a34b68c3c.pdf', '
About Me
Hello there! My name is Alan Walker. I am a graphic designer, and I’m very passionate and dedicated to my work. With 20 years experience as a professional a graphic designer, I have acquired the skills and knowledge necessary to make your project a success.
Lorem ipsum dolor sit amet, consectetur adipisicing elit. Debitis illum fuga eveniet. Deleniti asperiores, commodi quae ipsum quas est itaque, ipsa, dolore beatae voluptates nemo blanditiis iste eius officia minus. Id nisi, consequuntur sunt impedit quidem, vitae mollitia!
Work Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Education
Necessitatibus quibusdam facilis
Velit unde aliquam et voluptas reiciendis non sapiente labore
Commodi quae ipsum quas est itaque
Lorem ipsum dolor sit amet, consectetur adipisicing elit
Deleniti asperiores blanditiis nihil quia officiis dolor
', 'single', '2024-02-19', '4408 Norma Lane Shreveport, LA 71101', 7, 5235, 260, 'available', 1, 1, '2024-02-08 03:47:55', '2024-02-08 03:50:58'); -- -------------------------------------------------------- -- -- Table structure for table `candidate_education` -- CREATE TABLE `candidate_education` ( `id` bigint(20) UNSIGNED NOT NULL, `candidate_id` bigint(20) UNSIGNED NOT NULL, `level` varchar(255) NOT NULL, `degree` varchar(255) NOT NULL, `year` varchar(255) NOT NULL, `note` text DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `candidate_education` -- INSERT INTO `candidate_education` (`id`, `candidate_id`, `level`, `degree`, `year`, `note`, `created_at`, `updated_at`) VALUES (1, 1, 'Cử nhân ', 'Bằng Cử nhân', '2020', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:03:15', '2024-02-08 01:03:15'), (2, 2, 'Trung học', 'Trung học phổ thông', '2023', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:17:25', '2024-02-08 01:17:25'), (3, 2, 'Cử nhân', 'Bằng Cử nhân', '2025', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:17:35', '2024-02-08 01:17:35'), (4, 3, 'Trung học', 'Trung học phổ thông', '2023', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:22:38', '2024-02-08 01:22:38'), (5, 3, 'Cử nhân', 'Bằng Cử nhân', '2024', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:22:52', '2024-02-08 01:22:52'), (6, 4, 'Trung học', 'Trung học phổ thông', '2028', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:42:12', '2024-02-08 01:42:12'), (7, 4, 'Cử nhân', 'Bằng Cử nhân', '2029', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:42:24', '2024-02-08 01:42:24'), (8, 5, 'Trung học', 'Trung học phổ thông', '2028', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:46:22', '2024-02-08 01:46:22'), (9, 5, 'Cử nhân', 'Bằng Cử nhân', '2404', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 01:46:32', '2024-02-08 01:46:32'), (10, 6, 'Trung học', 'Trung học phổ thông', '2028', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:10:00', '2024-02-08 03:10:00'), (11, 6, 'Cử nhân', 'Bằng Cử nhân', '2023', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:10:11', '2024-02-08 03:10:11'), (12, 7, 'Trung học', 'Trung học phổ thông', '2023', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:17:19', '2024-02-08 03:17:19'), (13, 7, 'Cử nhân', 'Bằng Cử nhân', '2028', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:17:35', '2024-02-08 03:17:35'), (14, 8, 'Trung học', 'Trung học phổ thông', '2028', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:23:15', '2024-02-08 03:23:15'), (15, 8, 'Cử nhân', 'Bằng Cử nhân', '2027', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:23:26', '2024-02-08 03:23:26'), (16, 10, 'Trung học', 'Trung học phổ thông', '2028', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:33:42', '2024-02-08 03:33:42'), (17, 10, 'Cử nhân', 'Bằng Cử nhân', '2020', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:33:51', '2024-02-08 03:33:51'), (18, 11, 'Cử nhân', 'Trung học phổ thông', '2028', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:41:48', '2024-02-08 03:41:48'), (19, 11, 'Trung học', 'Trung học phổ thông', '2027', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:41:59', '2024-02-08 03:41:59'), (20, 12, 'Trung học', 'Trung học phổ thông', '2028', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:49:14', '2024-02-08 03:49:14'), (21, 12, 'Cử nhân', 'Bằng Cử nhân', '2024', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi…', '2024-02-08 03:49:23', '2024-02-08 03:49:23'); -- -------------------------------------------------------- -- -- Table structure for table `candidate_experiences` -- CREATE TABLE `candidate_experiences` ( `id` bigint(20) UNSIGNED NOT NULL, `candidate_id` bigint(20) UNSIGNED NOT NULL, `company` varchar(255) NOT NULL, `department` varchar(255) NOT NULL, `designation` varchar(255) NOT NULL, `start` date NOT NULL, `end` date NOT NULL, `responsibilities` text DEFAULT NULL, `currently_working` tinyint(1) NOT NULL DEFAULT 0, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `candidate_experiences` -- INSERT INTO `candidate_experiences` (`id`, `candidate_id`, `company`, `department`, `designation`, `start`, `end`, `responsibilities`, `currently_working`, `created_at`, `updated_at`) VALUES (1, 1, 'InnovateEdge Solutions', 'Phát triển phần mềm', 'Lập trình viên cao cấp', '2024-02-21', '2024-02-24', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 01:02:14', '2024-02-08 01:02:14'), (2, 1, 'ApexTech Innovations', 'Phát triển phần mềm', 'Lập trình viên cao cấp', '2024-02-04', '2024-02-13', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 1, '2024-02-08 01:02:53', '2024-02-08 01:02:53'), (3, 2, 'EliteEdge Ventures', 'Phát triển phần mềm', 'Lập trình viên cao cấp', '2024-02-13', '2024-02-13', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 01:15:26', '2024-02-08 01:16:59'), (4, 2, 'DynamicPulse Enterprises', 'UI Designer', 'Giám đốc điều hành', '2024-02-11', '2024-02-26', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 01:15:47', '2024-02-08 01:17:03'), (5, 3, 'Skyline Solutions Inc', 'Phát triển phần mềm', 'Giám đốc điều hành', '2024-02-12', '2024-02-12', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 01:21:31', '2024-02-08 01:21:31'), (6, 3, 'CoreNexa Technologies', 'Phát triển phần mềm', 'Lập trình viên cao cấp', '2024-02-19', '2024-02-28', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 01:21:55', '2024-02-08 01:21:55'), (7, 3, 'NovaGen Corporation', 'Phát triển phần mềm', 'Lập trình viên cao cấp', '2024-02-14', '2024-02-14', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 1, '2024-02-08 01:22:20', '2024-02-08 01:22:20'), (13, 4, 'ProximaTech Solutions', 'Phát triển phần mềm', 'Thực tập sinh', '2024-02-20', '2024-02-19', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 01:41:34', '2024-02-08 01:41:34'), (14, 4, 'VisionQuest Corporation', 'Phát triển phần mềm', 'Lập trình viên cao cấp', '2024-02-29', '2024-02-26', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 1, '2024-02-08 01:41:58', '2024-02-08 01:41:58'), (15, 5, 'ApexTech Innovations', 'Phát triển phần mềm', 'Armand Flores', '2024-02-19', '2024-02-29', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.v', 0, '2024-02-08 01:45:17', '2024-02-08 01:45:17'), (16, 5, 'GOOGLE', 'Phát triển phần mềm', 'Thực tập sinh', '2024-02-23', '2024-02-26', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 01:45:32', '2024-02-08 01:45:32'), (17, 5, 'CoreNexa Technologies', 'Phát triển phần mềm', 'Lập trình viên cao cấp', '2024-02-19', '2024-02-29', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 1, '2024-02-08 01:45:48', '2024-02-08 01:45:57'), (18, 6, 'VitalLink Ventures', 'Phát triển phần mềm', 'Giám đốc điều hành', '2024-02-13', '2024-02-21', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 1, '2024-02-08 03:09:08', '2024-02-08 03:09:08'), (19, 6, 'CoreNexa Technologies', 'Phát triển phần mềm', 'Thực tập sinh', '2024-02-28', '2024-02-19', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 03:09:27', '2024-02-08 03:09:37'), (20, 7, 'ZenithWave Innovations', 'Phát triển phần mềm', 'Thực tập sinh', '2024-02-12', '2024-02-15', 'Embracing responsibility means continuously learning, adapting, and advocating for ethical practices to build a more inclusive and sustainable digital world.', 0, '2024-02-08 03:16:25', '2024-02-08 03:16:25'), (21, 7, 'CoreNexa Technologies', 'Phát triển phần mềm', 'Thực tập sinh', '2024-02-21', '2024-02-24', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 03:16:47', '2024-02-08 03:16:47'), (22, 7, 'EliteEdge Ventures', 'Phát triển phần mềm', 'Thực tập sinh', '2024-02-19', '2024-02-20', 'Embracing responsibility means continuously learning, adapting, and advocating for ethical practices to build a more inclusive and sustainable digital world.', 0, '2024-02-08 03:17:06', '2024-02-08 03:17:06'), (23, 8, 'CoreNexa Technologies', 'Phát triển phần mềm', 'Thực tập sinh', '2024-02-19', '2024-02-20', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 03:22:43', '2024-02-08 03:22:43'), (24, 8, 'Austin Terry Trading 2', 'UI Designer', 'Lập trình viên cao cấp', '2024-02-21', '2024-02-23', NULL, 1, '2024-02-08 03:22:57', '2024-02-08 03:22:57'), (25, 10, 'CoreNexa Technologies', 'Phát triển phần mềm', 'Giám đốc điều hành', '2024-02-19', '2024-02-22', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 03:33:12', '2024-02-08 03:33:12'), (26, 10, 'ApexTech Innovations', 'Phát triển phần mềm', 'Lập trình viên cao cấp', '2024-02-21', '2024-03-02', 'Embracing responsibility means continuously learning, adapting, and advocating for ethical practices to build a more inclusive and sustainable digital world.', 1, '2024-02-08 03:33:31', '2024-02-08 03:33:31'), (27, 11, 'CoreNexa Technologies', 'Phát triển phần mềm', 'Giám đốc điều hành', '2024-02-20', '2024-02-27', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 03:40:48', '2024-02-08 03:40:48'), (28, 11, 'ApexTech Innovations', 'UI Designer', 'Thực tập sinh', '2024-02-28', '2024-02-11', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 03:41:39', '2024-02-08 03:41:39'), (29, 12, 'CoreNexa Technologies', 'Phát triển phần mềm', 'Giám đốc điều hành', '2024-02-20', '2024-02-21', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 03:48:41', '2024-02-08 03:48:41'), (30, 12, 'ApexTech Innovations', 'Phát triển phần mềm', 'Thực tập sinh', '2024-02-21', '2024-03-08', 'Đón nhận trách nhiệm đồng nghĩa với việc liên tục học hỏi và hoàn thiện kỹ năng trong dự án.', 0, '2024-02-08 03:48:53', '2024-02-08 03:48:53'), (31, 12, 'DynamicPulse Enterprises', 'UI Designer', 'CEO', '2024-02-21', '2024-03-25', 'Embracing responsibility means continuously learning, adapting, and advocating for ethical practices to build a more inclusive and sustainable digital world.', 1, '2024-02-08 03:49:05', '2024-02-08 03:49:05'); -- -------------------------------------------------------- -- -- Table structure for table `candidate_languages` -- CREATE TABLE `candidate_languages` ( `id` bigint(20) UNSIGNED NOT NULL, `candidate_id` bigint(20) UNSIGNED NOT NULL, `language_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `candidate_languages` -- INSERT INTO `candidate_languages` (`id`, `candidate_id`, `language_id`, `created_at`, `updated_at`) VALUES (4, 2, 1, '2024-02-08 01:14:26', '2024-02-08 01:14:26'), (5, 2, 4, '2024-02-08 01:14:26', '2024-02-08 01:14:26'), (9, 3, 1, '2024-02-08 01:24:32', '2024-02-08 01:24:32'), (10, 3, 3, '2024-02-08 01:24:32', '2024-02-08 01:24:32'), (11, 3, 4, '2024-02-08 01:24:32', '2024-02-08 01:24:32'), (12, 4, 1, '2024-02-08 01:32:54', '2024-02-08 01:32:54'), (13, 4, 5, '2024-02-08 01:32:54', '2024-02-08 01:32:54'), (14, 5, 1, '2024-02-08 01:44:57', '2024-02-08 01:44:57'), (15, 5, 2, '2024-02-08 01:44:57', '2024-02-08 01:44:57'), (16, 5, 3, '2024-02-08 01:44:57', '2024-02-08 01:44:57'), (17, 6, 1, '2024-02-08 01:54:36', '2024-02-08 01:54:36'), (18, 6, 2, '2024-02-08 01:54:36', '2024-02-08 01:54:36'), (19, 6, 3, '2024-02-08 01:54:36', '2024-02-08 01:54:36'), (20, 7, 1, '2024-02-08 03:15:53', '2024-02-08 03:15:53'), (21, 7, 2, '2024-02-08 03:15:53', '2024-02-08 03:15:53'), (22, 7, 4, '2024-02-08 03:15:53', '2024-02-08 03:15:53'), (23, 8, 1, '2024-02-08 03:22:25', '2024-02-08 03:22:25'), (24, 8, 2, '2024-02-08 03:22:25', '2024-02-08 03:22:25'), (25, 8, 3, '2024-02-08 03:22:25', '2024-02-08 03:22:25'), (26, 9, 1, '2024-02-08 03:25:45', '2024-02-08 03:25:45'), (27, 9, 2, '2024-02-08 03:25:45', '2024-02-08 03:25:45'), (28, 9, 3, '2024-02-08 03:25:45', '2024-02-08 03:25:45'), (29, 10, 1, '2024-02-08 03:32:50', '2024-02-08 03:32:50'), (30, 10, 2, '2024-02-08 03:32:50', '2024-02-08 03:32:50'), (31, 10, 3, '2024-02-08 03:32:50', '2024-02-08 03:32:50'), (32, 11, 1, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (33, 11, 2, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (34, 11, 3, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (35, 11, 5, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (36, 12, 1, '2024-02-08 03:48:22', '2024-02-08 03:48:22'), (37, 12, 2, '2024-02-08 03:48:22', '2024-02-08 03:48:22'), (38, 12, 3, '2024-02-08 03:48:22', '2024-02-08 03:48:22'), (39, 1, 1, '2025-11-19 03:45:14', '2025-11-19 03:45:14'), (40, 1, 2, '2025-11-19 03:45:14', '2025-11-19 03:45:14'), (41, 1, 3, '2025-11-19 03:45:14', '2025-11-19 03:45:14'); -- -------------------------------------------------------- -- -- Table structure for table `candidate_skills` -- CREATE TABLE `candidate_skills` ( `id` bigint(20) UNSIGNED NOT NULL, `candidate_id` bigint(20) UNSIGNED NOT NULL, `skill_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `candidate_skills` -- INSERT INTO `candidate_skills` (`id`, `candidate_id`, `skill_id`, `created_at`, `updated_at`) VALUES (5, 2, 2, '2024-02-08 01:14:26', '2024-02-08 01:14:26'), (6, 2, 3, '2024-02-08 01:14:26', '2024-02-08 01:14:26'), (7, 2, 4, '2024-02-08 01:14:26', '2024-02-08 01:14:26'), (8, 2, 5, '2024-02-08 01:14:26', '2024-02-08 01:14:26'), (9, 2, 9, '2024-02-08 01:14:26', '2024-02-08 01:14:26'), (14, 3, 1, '2024-02-08 01:24:32', '2024-02-08 01:24:32'), (15, 3, 2, '2024-02-08 01:24:32', '2024-02-08 01:24:32'), (16, 3, 4, '2024-02-08 01:24:32', '2024-02-08 01:24:32'), (17, 3, 6, '2024-02-08 01:24:32', '2024-02-08 01:24:32'), (18, 3, 8, '2024-02-08 01:24:32', '2024-02-08 01:24:32'), (19, 4, 1, '2024-02-08 01:32:54', '2024-02-08 01:32:54'), (20, 4, 2, '2024-02-08 01:32:54', '2024-02-08 01:32:54'), (21, 4, 3, '2024-02-08 01:32:54', '2024-02-08 01:32:54'), (22, 4, 4, '2024-02-08 01:32:54', '2024-02-08 01:32:54'), (23, 4, 5, '2024-02-08 01:32:54', '2024-02-08 01:32:54'), (24, 5, 1, '2024-02-08 01:44:57', '2024-02-08 01:44:57'), (25, 5, 2, '2024-02-08 01:44:57', '2024-02-08 01:44:57'), (26, 5, 3, '2024-02-08 01:44:57', '2024-02-08 01:44:57'), (27, 5, 4, '2024-02-08 01:44:57', '2024-02-08 01:44:57'), (28, 5, 5, '2024-02-08 01:44:57', '2024-02-08 01:44:57'), (29, 6, 1, '2024-02-08 01:54:36', '2024-02-08 01:54:36'), (30, 6, 2, '2024-02-08 01:54:36', '2024-02-08 01:54:36'), (31, 6, 3, '2024-02-08 01:54:36', '2024-02-08 01:54:36'), (32, 6, 4, '2024-02-08 01:54:36', '2024-02-08 01:54:36'), (33, 6, 5, '2024-02-08 01:54:36', '2024-02-08 01:54:36'), (34, 7, 1, '2024-02-08 03:15:53', '2024-02-08 03:15:53'), (35, 7, 2, '2024-02-08 03:15:53', '2024-02-08 03:15:53'), (36, 7, 3, '2024-02-08 03:15:53', '2024-02-08 03:15:53'), (37, 7, 4, '2024-02-08 03:15:53', '2024-02-08 03:15:53'), (38, 7, 5, '2024-02-08 03:15:53', '2024-02-08 03:15:53'), (39, 8, 1, '2024-02-08 03:22:25', '2024-02-08 03:22:25'), (40, 8, 2, '2024-02-08 03:22:25', '2024-02-08 03:22:25'), (41, 8, 3, '2024-02-08 03:22:25', '2024-02-08 03:22:25'), (42, 8, 4, '2024-02-08 03:22:25', '2024-02-08 03:22:25'), (43, 8, 5, '2024-02-08 03:22:25', '2024-02-08 03:22:25'), (44, 9, 1, '2024-02-08 03:25:45', '2024-02-08 03:25:45'), (45, 9, 2, '2024-02-08 03:25:45', '2024-02-08 03:25:45'), (46, 9, 3, '2024-02-08 03:25:45', '2024-02-08 03:25:45'), (47, 9, 4, '2024-02-08 03:25:45', '2024-02-08 03:25:45'), (48, 9, 5, '2024-02-08 03:25:45', '2024-02-08 03:25:45'), (49, 10, 1, '2024-02-08 03:32:50', '2024-02-08 03:32:50'), (50, 10, 2, '2024-02-08 03:32:50', '2024-02-08 03:32:50'), (51, 10, 3, '2024-02-08 03:32:50', '2024-02-08 03:32:50'), (52, 10, 4, '2024-02-08 03:32:50', '2024-02-08 03:32:50'), (53, 10, 5, '2024-02-08 03:32:50', '2024-02-08 03:32:50'), (54, 11, 1, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (55, 11, 2, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (56, 11, 3, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (57, 11, 4, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (58, 11, 5, '2024-02-08 03:40:18', '2024-02-08 03:40:18'), (59, 12, 1, '2024-02-08 03:48:22', '2024-02-08 03:48:22'), (60, 12, 2, '2024-02-08 03:48:22', '2024-02-08 03:48:22'), (61, 12, 3, '2024-02-08 03:48:22', '2024-02-08 03:48:22'), (62, 12, 4, '2024-02-08 03:48:22', '2024-02-08 03:48:22'), (63, 12, 5, '2024-02-08 03:48:22', '2024-02-08 03:48:22'), (64, 1, 2, '2025-11-19 03:45:14', '2025-11-19 03:45:14'), (65, 1, 4, '2025-11-19 03:45:14', '2025-11-19 03:45:14'), (66, 1, 9, '2025-11-19 03:45:14', '2025-11-19 03:45:14'), (67, 1, 12, '2025-11-19 03:45:14', '2025-11-19 03:45:14'); -- -------------------------------------------------------- -- -- Table structure for table `cities` -- CREATE TABLE `cities` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `state_id` bigint(20) UNSIGNED NOT NULL, `country_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `cities` -- INSERT INTO `cities` (`id`, `name`, `state_id`, `country_id`, `created_at`, `updated_at`) VALUES (1, 'Los Angeles', 5233, 260, '2024-02-08 00:50:52', '2024-02-08 00:50:52'), (2, 'San Francisco', 5233, 260, '2024-02-08 00:51:03', '2024-02-08 00:51:03'), (3, 'San Diego', 5233, 260, '2024-02-08 00:51:13', '2024-02-08 00:51:13'), (4, 'Houston', 5234, 260, '2024-02-08 00:51:30', '2024-02-08 00:51:30'), (5, 'Dallas', 5234, 260, '2024-02-08 00:51:40', '2024-02-08 00:51:40'), (6, 'Austin', 5234, 260, '2024-02-08 00:51:49', '2024-02-08 00:51:49'), (7, 'New York City', 5235, 260, '2024-02-08 00:52:18', '2024-02-08 00:52:18'), (8, 'Buffalo', 5235, 260, '2024-02-08 00:52:29', '2024-02-08 00:52:29'), (9, 'Albany', 5235, 260, '2024-02-08 00:52:41', '2024-02-08 00:52:41'); -- -------------------------------------------------------- -- -- Table structure for table `companies` -- CREATE TABLE `companies` ( `id` bigint(20) UNSIGNED NOT NULL, `user_id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) DEFAULT NULL, `slug` varchar(255) DEFAULT NULL, `industry_type_id` bigint(20) UNSIGNED DEFAULT NULL, `organization_type_id` bigint(20) UNSIGNED DEFAULT NULL, `team_size_id` bigint(20) UNSIGNED DEFAULT NULL, `logo` varchar(255) DEFAULT NULL, `banner` varchar(255) DEFAULT NULL, `establishment_date` date DEFAULT NULL, `website` varchar(255) DEFAULT NULL, `phone` varchar(255) DEFAULT NULL, `email` varchar(255) DEFAULT NULL, `bio` text DEFAULT NULL, `vision` text DEFAULT NULL, `total_views` int(11) NOT NULL DEFAULT 0, `address` varchar(255) DEFAULT NULL, `city` bigint(20) UNSIGNED DEFAULT NULL, `state` bigint(20) UNSIGNED DEFAULT NULL, `country` bigint(20) UNSIGNED DEFAULT NULL, `map_link` text DEFAULT NULL, `is_profile_verified` tinyint(1) NOT NULL DEFAULT 0, `document_verified_at` timestamp NULL DEFAULT NULL, `profile_completion` tinyint(1) NOT NULL DEFAULT 0, `visibility` tinyint(1) NOT NULL DEFAULT 0, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `companies` -- INSERT INTO `companies` (`id`, `user_id`, `name`, `slug`, `industry_type_id`, `organization_type_id`, `team_size_id`, `logo`, `banner`, `establishment_date`, `website`, `phone`, `email`, `bio`, `vision`, `total_views`, `address`, `city`, `state`, `country`, `map_link`, `is_profile_verified`, `document_verified_at`, `profile_completion`, `visibility`, `created_at`, `updated_at`) VALUES (1, 22, 'Công ty TNHH Sao Mai', 'skyline-solutions-inc', 1, 1, 4, '/uploads/media_65c4b478746ea.png', '/uploads/media_65c4b47874ff4.jpg', '2024-02-05', 'https://www.google.com', '+1 (135) 935-2729', 'superadmin@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '4408 Norma Lane Shreveport, LA 71101', NULL, 5233, 260, '', 0, NULL, 1, 1, '2024-02-08 05:01:12', '2024-02-08 05:03:20'), (2, 23, 'Công ty CP Thiên Phú', 'horizonwave-enterprises', 2, 3, 4, '/uploads/media_65c4b5b730a2c.png', '/uploads/media_65c4b5b731169.jpg', '2024-02-19', 'https://www.google.com', '+1 (135) 935-2729', 'superadmin@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '4408 Norma Lane Shreveport, LA 71101', 5, 5234, 260, '', 0, NULL, 1, 1, '2024-02-08 05:06:31', '2024-02-08 05:07:02'), (3, 24, 'Công ty TNHH Phát Triển Minh Long', 'vitallink-ventures', 3, 4, 5, '/uploads/media_65c4b65e691ac.png', '/uploads/media_65c4b65e6a6ad.jpg', '2024-02-13', 'https://www.google.com', '+1 (135) 935-2729', 'superadmin@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '1731 Arbor Court Rawlins, WY 82301', 7, 5235, 260, '', 0, NULL, 1, 1, '2024-02-08 05:09:18', '2024-02-08 05:10:07'), (4, 25, 'Công ty CP Ánh Dương', 'zenithwave-innovations', 5, 2, 9, '/uploads/media_65c4b6d56ef57.png', '/uploads/media_65c4b6d56f3bf.jpg', '2024-02-19', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '4408 Norma Lane Shreveport, LA 71101', 4, 5234, 260, '', 0, NULL, 1, 1, '2024-02-08 05:11:17', '2024-02-08 05:11:58'), (5, 26, 'Công ty TNHH Hồng Phát', 'nexusglobe', 2, 5, 8, '/uploads/media_65c4b7b8bd7bb.png', '/uploads/media_65c4b7b8bdc3e.jpg', '2024-02-20', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '4408 Norma Lane Shreveport, LA 71101', 4, 5234, 260, '', 0, NULL, 1, 1, '2024-02-08 05:15:04', '2024-02-08 05:15:34'), (6, 27, 'Công ty CP Đỉnh Cao', 'corenexa', 4, 2, 3, '/uploads/media_65c4b86799ddc.png', '/uploads/media_65c4b8679a1e6.jpg', '2024-02-21', 'https://www.google.com', '+1 (135) 935-2729', 'superadmin@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '4408 Norma Lane Shreveport, LA 71101', NULL, 5233, 260, '', 0, NULL, 1, 1, '2024-02-08 05:17:59', '2024-02-08 05:19:38'), (7, 28, 'Công ty TNHH Vạn Lợi', 'peakpulse', 8, 1, 3, '/uploads/media_65c4ba322b58d.png', '/uploads/media_65c4ba322b9b6.jpg', '2024-02-19', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '1731 Arbor Court Rawlins, WY 82301', 8, 5235, 260, '', 0, NULL, 1, 1, '2024-02-08 05:25:38', '2024-02-08 05:26:08'), (8, 31, 'Công ty CP Kim Cương', 'proximatech-solutions', 3, 2, 3, '/uploads/media_65c51118648b1.png', '/uploads/media_65c5111864ed1.jpg', '2024-02-21', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '1731 Arbor Court Rawlins, WY 82301', 5, 5234, 260, '', 0, NULL, 1, 1, '2024-02-08 11:36:24', '2024-02-08 11:37:09'), (9, 32, 'Công ty TNHH Ngọc Bích', 'eliteedge-ventures', 2, 1, 4, '/uploads/media_65c511f949e2a.png', '/uploads/media_65c511f94a204.jpg', '2024-02-13', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '1731 Arbor Court Rawlins, WY 82301', 5, 5234, 260, '', 0, NULL, 1, 1, '2024-02-08 11:39:52', '2024-02-08 11:42:50'), (10, 33, 'Công ty CP Đại Thành', 'brightstar-enterprises', 2, 2, 4, '/uploads/media_65c513928270f.png', '/uploads/media_65c5139282b4c.jpg', '2024-02-21', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '4408 Norma Lane Shreveport, LA 71101', NULL, 5233, 260, '', 0, NULL, 1, 1, '2024-02-08 11:46:58', '2024-02-08 11:47:48'), (11, 34, 'Công ty TNHH Phú An', 'swiftstream-technologies', 3, 2, 4, '/uploads/media_65c5174e9cab7.png', '/uploads/media_65c5174e9d02c.jpg', '2024-02-06', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '1731 Arbor Court Rawlins, WY 82301', 4, 5234, 260, '', 0, NULL, 1, 1, '2024-02-08 12:02:54', '2024-02-08 12:03:26'), (12, 35, 'Công ty CP Minh Tâm', 'eliteedge-ventures-2', 2, 2, 4, '/uploads/media_65c518539e822.png', '/uploads/media_65c518539ecc0.jpg', '2024-02-13', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '1731 Arbor Court Rawlins, WY 82301', 4, 5234, 260, '', 0, NULL, 1, 1, '2024-02-08 12:07:15', '2024-02-08 12:08:03'), (13, 36, 'Công ty TNHH Ngọc Thảo', 'novagen-corporation', 2, 2, 5, '/uploads/media_65c518f5aca97.jpg', '/uploads/media_65c518f5acef8.jpg', '2024-02-21', 'https://www.google.com', '+1 (135) 935-2729', 'superadmin@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '1731 Arbor Court Rawlins, WY 82301', NULL, 5233, 260, '', 0, NULL, 1, 1, '2024-02-08 12:09:57', '2024-02-08 12:10:27'), (14, 37, 'Công ty CP Hưng Thịnh', 'peakpulse-industries', 3, 2, 2, '/uploads/media_65c5199687a06.png', '/uploads/media_65c5199688360.jpg', '2024-02-22', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms', 0, '1731 Arbor Court Rawlins, WY 82301', 7, 5235, 260, '', 0, NULL, 1, 1, '2024-02-08 12:12:38', '2024-02-08 12:13:12'), (15, 39, 'Công ty TNHH Vĩnh Lộc', 'fusionaxis', 6, 2, 4, '/uploads/media_65c597c88d328.png', '/uploads/media_65c597c88d95f.jpg', '2024-02-21', 'https://www.google.com', '+1 (135) 935-2729', 'user@gmail.com', '
The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
', 'The AliStudio Design team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.\r\n\r\nThe ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.', 0, '1731 Arbor Court Rawlins, WY 82301', 7, 5235, 260, '', 0, NULL, 1, 1, '2024-02-08 21:11:04', '2024-02-08 21:11:37'); -- -------------------------------------------------------- -- -- Table structure for table `counters` -- CREATE TABLE `counters` ( `id` bigint(20) UNSIGNED NOT NULL, `counter_one` int(11) NOT NULL, `title_one` varchar(255) NOT NULL, `counter_two` int(11) NOT NULL, `title_two` varchar(255) NOT NULL, `counter_three` int(11) NOT NULL, `title_three` varchar(255) NOT NULL, `counter_four` int(11) NOT NULL, `title_four` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `counters` -- INSERT INTO `counters` (`id`, `counter_one`, `title_one`, `counter_two`, `title_two`, `counter_three`, `title_three`, `counter_four`, `title_four`, `created_at`, `updated_at`) VALUES (1, 200, '\nCác trường hợp đã hoàn thành', 20, 'Văn phòng\n', 500, 'Người có tay nghề\n', 1000, 'Khách hàng vui vẻ\n', '2024-02-09 03:16:42', '2024-02-09 03:16:42'); -- -------------------------------------------------------- -- -- Table structure for table `countries` -- CREATE TABLE `countries` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `countries` -- INSERT INTO `countries` (`id`, `name`, `created_at`, `updated_at`) VALUES (260, 'United States', '2024-02-08 00:49:58', '2024-02-08 00:49:58'), (261, 'India', '2024-02-09 03:22:09', '2024-02-09 03:24:15'), (262, 'Spain', '2024-02-09 03:22:20', '2024-02-09 03:22:20'), (263, 'Italy', '2024-02-09 03:22:44', '2024-02-09 03:22:44'), (264, 'Turkey', '2024-02-09 03:22:50', '2024-02-09 03:22:50'), (265, 'Mexico', '2024-02-09 03:22:57', '2024-02-09 03:22:57'), (266, 'Thailand', '2024-02-09 03:23:12', '2024-02-09 03:23:12'), (267, 'Greece', '2024-02-09 03:23:21', '2024-02-09 03:23:21'); -- -------------------------------------------------------- -- -- Table structure for table `custom_page_builders` -- CREATE TABLE `custom_page_builders` ( `id` bigint(20) UNSIGNED NOT NULL, `page_name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `content` text NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `custom_page_builders` -- INSERT INTO `custom_page_builders` (`id`, `page_name`, `slug`, `content`, `created_at`, `updated_at`) VALUES (1, 'Trang tùy chỉnh', 'custom-page', '
Hồ sơ năng lực thể hiện hành trình khách hàng được cân nhắc kỹ lưỡng và trau chuốt từ đầu đến cuối\nHơn 5 năm kinh nghiệm trong ngành thiết kế tương tác và/hoặc thiết kế hình ảnh\nKỹ năng giao tiếp tuyệt vời\nNắm bắt xu hướng trong lĩnh vực di động, truyền thông và cộng tác\nKhả năng tạo ra các nguyên mẫu thiết kế, mô hình và các sản phẩm truyền thông khác được trau chuốt kỹ lưỡng\nKhả năng xác định phạm vi và ước tính chính xác các nỗ lực, đồng thời ưu tiên các nhiệm vụ và mục tiêu một cách độc lập\nKinh nghiệm tác động đến việc vận chuyển sản phẩm bằng công việc của bạn\nBằng Cử nhân Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương\nThành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch\n
 
', '2024-02-09 04:28:48', '2024-02-09 04:31:02'); -- -------------------------------------------------------- -- -- Table structure for table `education` -- CREATE TABLE `education` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `education` -- INSERT INTO `education` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Trung Cấp', 'intermediate', '2024-02-08 22:22:44', '2024-02-08 22:22:44'), (2, 'Bằng cử nhân\n', 'bachelor-degree', '2024-02-08 22:22:44', '2024-02-08 22:22:44'), (3, 'PhD', 'phd', '2024-02-08 22:22:44', '2024-02-08 22:22:44'), (4, 'Trường trung học\n', 'high-school', '2024-02-08 22:22:44', '2024-02-08 22:22:44'), (5, 'Khác', 'any', '2024-02-08 22:22:44', '2024-02-08 22:22:44'); -- -------------------------------------------------------- -- -- Table structure for table `experiences` -- CREATE TABLE `experiences` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `experiences` -- INSERT INTO `experiences` (`id`, `name`, `created_at`, `updated_at`) VALUES (1, 'Mới ', NULL, NULL), (2, '1 Năm', NULL, NULL), (3, '2 Năm', NULL, NULL), (4, '3+ Năm', NULL, NULL), (5, '5+ Năm', NULL, NULL), (6, 'Năm', NULL, NULL), (7, '10+ Năm', NULL, NULL), (8, '15+ Năm', NULL, NULL); -- -------------------------------------------------------- -- -- Table structure for table `failed_jobs` -- CREATE TABLE `failed_jobs` ( `id` bigint(20) UNSIGNED NOT NULL, `uuid` varchar(255) NOT NULL, `connection` text NOT NULL, `queue` text NOT NULL, `payload` longtext NOT NULL, `exception` longtext NOT NULL, `failed_at` timestamp NOT NULL DEFAULT current_timestamp() ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -------------------------------------------------------- -- -- Table structure for table `footers` -- CREATE TABLE `footers` ( `id` bigint(20) UNSIGNED NOT NULL, `logo` varchar(255) NOT NULL, `copyright` varchar(255) NOT NULL, `details` text NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `footers` -- INSERT INTO `footers` (`id`, `logo`, `copyright`, `details`, `created_at`, `updated_at`) VALUES (1, '/uploads/media_65c5fa1e0ff7c.png', 'Copyright © 2025. JOBLIST by Minh Tu', 'JOBLIST là trung tâm của cộng đồng thiết kế và là nguồn tốt nhất để khám phá và kết nối với các nhà thiết kế và việc làm trên toàn thế giới.', '2024-02-09 04:10:38', '2024-02-09 04:10:38'); -- -------------------------------------------------------- -- -- Table structure for table `heroes` -- CREATE TABLE `heroes` ( `id` bigint(20) UNSIGNED NOT NULL, `image` varchar(255) NOT NULL, `background_image` varchar(255) NOT NULL, `title` varchar(255) NOT NULL, `sub_title` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `heroes` -- INSERT INTO `heroes` (`id`, `image`, `background_image`, `title`, `sub_title`, `created_at`, `updated_at`) VALUES (1, '/uploads/media_65c4631307ffc.jpg', '/uploads/media_65c46341ce16c.jpg', 'Tham gia cùng chúng tôi và khám phá hàng ngàn việc làm', 'Tìm việc làm, việc làm và cơ hội nghề nghiệp', '2024-02-07 23:13:55', '2024-02-07 23:14:41'); -- -------------------------------------------------------- -- -- Table structure for table `industry_types` -- CREATE TABLE `industry_types` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `industry_types` -- INSERT INTO `industry_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Sản xuất công nghiệp', 'san-xuat-cong-nghiep', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (2, 'Công nghệ', 'cong-nghe', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (3, 'Y tế', 'y-te', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (4, 'Dịch vụ tài chính', 'dich-vu-tai-chinh', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (5, 'Năng lượng', 'nang-luong', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (6, 'Bán lẻ', 'ban-le', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (7, 'Viễn thông', 'vien-thong', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (8, 'Nông nghiệp', 'nong-nghiep', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (9, 'Vận tải và hậu cần', 'van-tai-va-hau-can', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (10, 'Giải trí và truyền thông', 'giai-tri-va-truyen-thong', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (11, 'Xây dựng', 'xay-dung', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (12, 'Ô tô và xe cơ giới', 'o-to-va-xe-co-gioi', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (13, 'Du lịch và khách sạn', 'du-lich-va-khach-san', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (14, 'Giáo dục', 'giao-duc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (15, 'Bất động sản', 'bat-dong-san', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (16, 'Dược phẩm', 'duoc-pham', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (17, 'Hàng tiêu dùng', 'hang-tieu-dung', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (18, 'Môi trường', 'moi-truong', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (19, 'Quốc phòng và hàng không vũ trụ', 'quoc-phong-va-hang-khong-vu-tru', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (20, 'Dịch vụ pháp lý và chuyên môn', 'dich-vu-phap-ly-va-chuyen-mon', '2025-10-10 03:00:00', '2025-10-10 03:00:00'); -- -------------------------------------------------------- -- -- Table structure for table `jobs` -- CREATE TABLE `jobs` ( `id` bigint(20) UNSIGNED NOT NULL, `company_id` bigint(20) UNSIGNED NOT NULL, `job_category_id` bigint(20) UNSIGNED NOT NULL, `job_role_id` bigint(20) UNSIGNED NOT NULL, `job_experience_id` bigint(20) UNSIGNED NOT NULL, `education_id` bigint(20) UNSIGNED NOT NULL, `job_type_id` bigint(20) UNSIGNED NOT NULL, `salary_type_id` bigint(20) UNSIGNED NOT NULL, `title` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `vacancies` varchar(255) NOT NULL, `min_salary` double DEFAULT NULL, `max_salary` double DEFAULT NULL, `custom_salary` varchar(255) DEFAULT NULL, `deadline` date NOT NULL, `description` text NOT NULL, `status` enum('pending','active','expired') NOT NULL DEFAULT 'pending', `apply_on` enum('app','email','custom_url') NOT NULL, `apply_email` varchar(255) DEFAULT NULL, `apply_url` text DEFAULT NULL, `featured` tinyint(1) DEFAULT NULL, `highlight` tinyint(1) DEFAULT NULL, `featured_until` date DEFAULT NULL, `highlight_until` date DEFAULT NULL, `total_views` int(11) NOT NULL DEFAULT 0, `city_id` bigint(20) UNSIGNED DEFAULT NULL, `state_id` bigint(20) UNSIGNED DEFAULT NULL, `country_id` bigint(20) UNSIGNED DEFAULT NULL, `address` varchar(255) DEFAULT NULL, `salary_mode` enum('range','custom') NOT NULL, `company_name` varchar(255) DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL, `deleted_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `jobs` -- INSERT INTO `jobs` (`id`, `company_id`, `job_category_id`, `job_role_id`, `job_experience_id`, `education_id`, `job_type_id`, `salary_type_id`, `title`, `slug`, `vacancies`, `min_salary`, `max_salary`, `custom_salary`, `deadline`, `description`, `status`, `apply_on`, `apply_email`, `apply_url`, `featured`, `highlight`, `featured_until`, `highlight_until`, `total_views`, `city_id`, `state_id`, `country_id`, `address`, `salary_mode`, `company_name`, `created_at`, `updated_at`, `deleted_at`) VALUES (1, 2, 1, 2, 3, 2, 1, 1, '\nGrowth Hacker Mastermind: Hãy giúp chúng tôi đưa cơ sở người dùng lên sao Hỏa!', 'growth-hacker-mastermind-help-us-take-our-user-base-to-mars', '3', 1000, 2000, NULL, '2026-01-23', '
Nhóm thiết kế AliStudio có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc không ngừng thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả hình thức kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông được hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử tham gia ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả của các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, 1, NULL, NULL, 0, 1, 5233, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 22:34:26', '2024-02-09 03:06:38', NULL), (2, 1, 2, 3, 3, 3, 1, 1, 'AI Whisperer: Thu hẹp khoảng cách giữa con người và máy móc.', 'ai-whisperer-bridge-the-gap-between-humans-and-machines', '5', 3000, 10000, NULL, '2025-12-18', '
Nhóm thiết kế AliStudio có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp các tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 5, 5234, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 22:37:06', '2024-02-09 05:58:39', NULL), (3, 2, 1, 2, 4, 1, 3, 1, '\nSiêu anh hùng bền vững: Bảo vệ hành tinh, thúc đẩy sự tiến bộ của chúng ta', 'sustainability-superhero-champion-the-planet-propel-our-progress', '3', 1000, 2000, NULL, '2026-02-05', '
Nhóm thiết kế AliStudio có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, 1, NULL, NULL, 0, 4, 5234, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 22:55:23', '2024-02-08 22:55:52', NULL), (4, 13, 3, 4, 4, 3, 2, 1, 'Content Crafter: Biến những từ ngữ thành phép thuật cho trang web', 'content-crafter-spin-words-into-website-magic', '3', 3000, 50000, NULL, '2025-07-23', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, 1, NULL, NULL, 0, 4, 5234, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 22:59:25', '2024-02-09 03:07:19', NULL), (5, 2, 4, 5, 3, 4, 5, 1, '\nThám tử dữ liệu: Khám phá những hiểu biết ẩn giấu, giải quyết những bí ẩn kinh doanh', 'data-detective-uncover-hidden-insights-solve-business-mysteries', '3', 2000, 3000, NULL, '2025-02-05', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 4, 5234, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 23:01:19', '2024-02-08 23:04:52', NULL), (6, 2, 4, 5, 3, 4, 5, 1, '\nThám tử dữ liệu: Khám phá những hiểu biết ẩn giấu, giải quyết những bí ẩn kinh doanh', 'data-detective-uncover-hidden-insights-solve-business-mysteries-2', '3', 2000, 3000, NULL, '2025-02-05', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 4, 5234, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 23:01:41', '2024-02-08 23:06:10', NULL), (7, 2, 4, 5, 3, 4, 5, 1, '\nThám tử dữ liệu: Khám phá những hiểu biết ẩn giấu, giải quyết những bí ẩn kinh doanh', 'data-detective-uncover-hidden-insights-solve-business-mysteries-3', '3', 2000, 3000, NULL, '2025-02-05', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 23:02:07', '2024-02-08 23:04:54', NULL), (8, 2, 4, 5, 3, 4, 5, 1, '\nThám tử dữ liệu: Khám phá những hiểu biết ẩn giấu, giải quyết những bí ẩn kinh doanh', 'data-detective-uncover-hidden-insights-solve-business-mysteries-4', '3', 2000, 3000, NULL, '2025-02-05', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, NULL, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 23:02:33', '2024-02-08 23:04:55', NULL), (9, 8, 4, 1, 4, 4, 5, 1, '\nThám tử dữ liệu: Khám phá những hiểu biết ẩn giấu, giải quyết những bí ẩn kinh doanh', 'data-detective-uncover-hidden-insights-solve-business-mysteries-5', '3', 2000, 5000, NULL, '2024-06-18', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 4, 5234, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 23:04:23', '2024-02-09 03:07:57', NULL), (10, 15, 5, 3, 3, 2, 2, 2, '\nThám tử dữ liệu: Khám phá những hiểu biết ẩn giấu, giải quyết những bí ẩn kinh doanh', 'marketing-maverick-outsmart-the-competition-own-the-market', '3', 2000, 3000, NULL, '2065-06-17', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 9, 5235, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:13:29', '2024-02-09 03:09:12', NULL), (11, 13, 3, 5, 4, 3, 1, 1, '\nThám tử dữ liệu: Khám phá những hiểu biết ẩn giấu, giải quyết những bí ẩn kinh doanh', 'social-media-magician-make-our-brand-the-talk-of-the-town', '5', 2000, 10000, NULL, '2026-02-18', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 4, 5234, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:15:39', '2024-02-09 03:09:05', NULL), (12, 7, 1, 3, 4, 2, 4, 4, '\nThám tử dữ liệu: Khám phá những hiểu biết ẩn giấu, giải quyết những bí ẩn kinh doanh', 'customer-experience-guru-craft-journeys-that-leave-smiles-for-miles', '3', 10000, 20000, NULL, '2025-10-27', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 8, 5235, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:21:47', '2024-02-09 03:08:57', NULL), (13, 5, 2, 3, 2, 2, 2, 1, '\nSamurai bán hàng: Chốt giao dịch như một ông chủ, chinh phục mục tiêu một cách khéo léo', 'sales-samurai-close-deals-like-a-boss-conquer-targets-with-finesse', '3', 2000, 10000, NULL, '2030-02-05', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 1, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:23:57', '2024-02-09 03:08:49', NULL), (15, 4, 1, 3, 2, 3, 3, 1, 'Khởi nghiệp công nghệ từ xa: Tuyển thực tập sinh lập trình!', 'launch-your-tech-career-remotely-coding-cadet-wanted', '3', 2000, 10000, NULL, '2024-02-12', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 4, 5234, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:36:45', '2024-02-09 03:08:41', NULL), (16, 6, 1, 3, 4, 1, 2, 1, '\nHọc và kiếm tiền: Chuyên gia công nghệ mới vào nghề (Làm việc từ xa + Du lịch)', 'learn-earn-entry-level-tech-guru-in-the-making-remote-travel', '3', 10000, 50000, NULL, '2025-07-17', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:40:15', '2024-02-08 23:40:31', NULL); INSERT INTO `jobs` (`id`, `company_id`, `job_category_id`, `job_role_id`, `job_experience_id`, `education_id`, `job_type_id`, `salary_type_id`, `title`, `slug`, `vacancies`, `min_salary`, `max_salary`, `custom_salary`, `deadline`, `description`, `status`, `apply_on`, `apply_email`, `apply_url`, `featured`, `highlight`, `featured_until`, `highlight_until`, `total_views`, `city_id`, `state_id`, `country_id`, `address`, `salary_mode`, `company_name`, `created_at`, `updated_at`, `deleted_at`) VALUES (17, 3, 1, 2, 3, 4, 2, 1, 'Khám phá thế giới trong khi bạn viết mã: Du khách công nghệ trẻ (Từ xa & Toàn cầu)\n', 'explore-the-world-while-you-code-junior-tech-traveler-remote-global', '3', 2000, 3000, NULL, '2025-07-24', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:42:34', '2024-02-08 23:46:56', NULL), (18, 4, 1, 1, 2, 3, 3, 3, 'Khám phá thế giới trong khi bạn viết mã: Du khách công nghệ trẻ (Từ xa & Toàn cầu)', 'ignite-your-passion-entry-level-tech-rockstar-wanted-remote', '3', 3000, 10000, NULL, '2025-07-24', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:45:34', '2024-02-08 23:47:00', NULL), (19, 7, 1, 6, 4, 3, 4, 1, 'Tham gia gia đình công nghệ từ xa của chúng tôi: Lập trình viên cộng tác (Cấp độ đầu vào)\n', 'join-our-remote-tech-family-collaborative-coder-entry-level', '3', 2000, 20000, NULL, '2025-07-10', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:46:45', '2024-02-08 23:46:57', NULL), (20, 13, 1, 2, 4, 3, 1, 1, 'Đổi mới & Dẫn đầu: Người tiên phong trong công nghệ - Vị trí từ xa cấp trung\n', 'innovate-lead-tech-trailblazer-mid-level-remote-role', '3', 1000, 5000, NULL, '2026-10-27', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:49:13', '2024-02-08 23:53:25', NULL), (21, 11, 1, 8, 4, 4, 4, 1, 'Giải quyết các thách thức công nghệ từ xa (Phần thưởng khi đi công tác!): Ngôi sao giải quyết vấn đề\n', 'tackle-tech-challenges-remotely-travel-bonus-problem-solving-rockstar', '3', 2000, 10000, NULL, '2026-07-21', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-08 23:50:24', '2024-02-08 23:53:38', NULL), (22, 6, 1, 2, 4, 3, 1, 1, 'Globetrotting Tech Wiz: Vị trí làm việc từ xa cấp trung với tác động toàn cầu\n', 'globetrotting-tech-wiz-mid-level-remote-role-with-global-impact', '3', 2000, 20000, NULL, '2025-07-24', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:51:37', '2024-02-08 23:53:39', NULL), (23, 3, 1, 3, 3, 3, 3, 1, 'Xây dựng tương lai: Kỹ sư an ninh từ xa cấp trung - Impact Matters', 'build-the-future-mid-level-remote-security-engineer-impact-matters', '3', 4000, 50000, NULL, '2025-07-24', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-08 23:53:15', '2024-02-08 23:53:40', NULL), (24, 9, 2, 1, 2, 1, 2, 1, 'Khám phá thông tin chi tiết, thúc đẩy tác động: Thám tử dữ liệu (Cấp trung, Từ xa)', 'uncover-insights-drive-impact-data-detective-mid-level-remote', '3', 3000, 10000, NULL, '2025-05-15', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane', 'range', NULL, '2024-02-09 00:10:28', '2024-02-09 00:10:28', NULL), (25, 12, 3, 2, 1, 2, 2, 2, 'Dẫn dắt nhóm làm việc từ xa, định hình tương lai: Tech Visionary', 'lead-our-remote-team-shape-the-future-tech-visionary', '5', 10000, 50000, NULL, '2025-06-10', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 7, 5235, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-09 00:13:07', '2024-02-09 00:13:07', NULL), (26, 14, 2, 2, 2, 2, 2, 3, '\nXây dựng, Lãnh đạo, Truyền cảm hứng: Kỹ sư Mastermind - Chức vụ từ xa cấp cao', 'build-lead-inspire-mastermind-engineer-senior-remote-role', '3', 2000, 50000, NULL, '2025-10-02', '
Nhóm của chúng tôi có tầm nhìn xây dựng một nền tảng đáng tin cậy, giúp các doanh nghiệp làm việc hiệu quả và lành mạnh trong một thế giới số hóa và làm việc từ xa, với các mô hình và chuẩn mực công việc liên tục thay đổi, đồng thời đáp ứng nhu cầu về khả năng phục hồi của tổ chức.
\n\n
Ứng viên lý tưởng sẽ có kỹ năng sáng tạo mạnh mẽ và một portfolio thể hiện đam mê về thiết kế minh họa và typography. Ứng viên này cũng sẽ có kinh nghiệm làm việc với nhiều nền tảng thiết kế khác nhau, bao gồm cả kỹ thuật số và in ấn.
\n\n
Kiến thức, kỹ năng và kinh nghiệm cần thiết
\n
\n
Một portfolio thể hiện các hành trình khách hàng được cân nhắc kỹ lưỡng và hoàn thiện từ đầu đến cuối
\n
Hơn 5 năm kinh nghiệm trong ngành về thiết kế tương tác và/hoặc thiết kế trực quan
\n
Kỹ năng giao tiếp xuất sắc
\n
Hiểu biết về các xu hướng trong di động, truyền thông và hợp tác
\n
Khả năng tạo các prototype, mockup và các tài liệu truyền thông hoàn thiện cao
\n
Khả năng đánh giá phạm vi và ước lượng nỗ lực một cách chính xác, đồng thời ưu tiên nhiệm vụ và mục tiêu một cách độc lập
\n
Lịch sử ảnh hưởng đến việc phát hành sản phẩm thông qua công việc của mình
\n
Bằng Cử nhân về Thiết kế (hoặc lĩnh vực liên quan) hoặc kinh nghiệm chuyên môn tương đương
\n
Thành thạo nhiều công cụ thiết kế như Figma, Photoshop, Illustrator và Sketch
\n
\n\n
Kinh nghiệm ưu tiên
\n
\n
Thiết kế trải nghiệm người dùng cho phần mềm/dịch vụ doanh nghiệp
\n
Tạo và áp dụng các nguyên tắc thiết kế đã được thiết lập và các mẫu tương tác
\n
Phối hợp hoặc ảnh hưởng đến tư duy thiết kế với các nhóm làm việc tại các khu vực địa lý khác nhau
\n
\n\n
Product Designer
\n
Kiến thức sản phẩm: Hiểu sâu về công nghệ và các tính năng của khu vực sản phẩm được phân công.
\n
Nghiên cứu: Cung cấp những phân tích, tác động và hiểu biết về con người và kinh doanh cho sản phẩm.
\n
Sản phẩm đầu ra: Tạo các sản phẩm đầu ra cho khu vực sản phẩm của bạn (ví dụ: phân tích đối thủ, luồng người dùng, wireframe độ trung bình thấp, mockup độ trung thực cao, prototype, v.v.) để giải quyết các vấn đề thực tế của người dùng thông qua trải nghiệm người dùng.
\n
Giao tiếp: Truyền đạt kết quả các hoạt động UX trong khu vực sản phẩm đến nhóm thiết kế, các đối tác đa chức năng trong khu vực sản phẩm, và các thành viên khác của nhóm Superformula bằng ngôn ngữ rõ ràng, giúp đơn giản hóa sự phức tạp.
\n', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 6, 5234, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-09 00:16:05', '2024-02-09 00:16:05', NULL), (27, 6, 2, 2, 3, 2, 2, 1, 'Share Your Knowledge: Senior Remote Expert, Global Tech Guru', 'share-your-knowledge-senior-remote-expert-global-tech-guru', '3', NULL, NULL, 'compatitive', '2025-06-26', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 5, 5234, 260, '1731 Arbor Court Rawlins, WY 82301', 'custom', NULL, '2024-02-09 00:19:03', '2024-02-09 00:19:03', NULL), (28, 11, 2, 2, 1, 2, 2, 3, 'Scale Our Impact: Senior Remote Strategist - Growth Architect', 'scale-our-impact-senior-remote-strategist-growth-architect', '3', 2000, 20000, NULL, '2025-03-13', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 7, 5235, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-09 00:21:34', '2024-02-09 00:21:34', NULL), (29, 13, 2, 2, 3, 2, 3, 3, 'Protect Our World: Senior Remote Defender - Cybersecurity Champion', 'protect-our-world-senior-remote-defender-cybersecurity-champion', '5', 1000, 20000, NULL, '2025-03-05', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-09 00:22:36', '2024-02-09 00:22:36', NULL), (30, 10, 2, 3, 2, 2, 2, 3, 'Make a Difference Remotely in Tech: Code With a Cause', 'make-a-difference-remotely-in-tech-code-with-a-cause', '3', 2000, 5000, NULL, '2025-04-16', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 4, 5234, 260, '1731 Arbor Court Rawlins, WY 82301', 'range', NULL, '2024-02-09 00:23:48', '2024-02-09 00:23:48', NULL), (31, 11, 3, 3, 2, 3, 2, 1, 'Craft Beautiful Experiences: Remote Tech Designer - Design Alchemist', 'craft-beautiful-experiences-remote-tech-designer-design-alchemist', '3', 1000, 3000, NULL, '2025-04-22', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-09 03:00:47', '2024-02-09 03:00:47', NULL), (32, 14, 3, 2, 2, 1, 2, 1, 'Build Connections, Grow Our Remote Tribe: Community Catalyst', 'build-connections-grow-our-remote-tribe-community-catalyst', '5', NULL, NULL, 'compatitive', '2025-04-03', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'custom', NULL, '2024-02-09 03:01:55', '2024-02-09 03:01:55', NULL); INSERT INTO `jobs` (`id`, `company_id`, `job_category_id`, `job_role_id`, `job_experience_id`, `education_id`, `job_type_id`, `salary_type_id`, `title`, `slug`, `vacancies`, `min_salary`, `max_salary`, `custom_salary`, `deadline`, `description`, `status`, `apply_on`, `apply_email`, `apply_url`, `featured`, `highlight`, `featured_until`, `highlight_until`, `total_views`, `city_id`, `state_id`, `country_id`, `address`, `salary_mode`, `company_name`, `created_at`, `updated_at`, `deleted_at`) VALUES (33, 6, 3, 2, 1, 1, 2, 2, 'Share Your Voice, Shape Our Remote Story: Content Crafter', 'share-your-voice-shape-our-remote-story-content-crafter', '5', 2000, 3000, NULL, '2025-03-11', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, NULL, 5233, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-09 03:03:04', '2024-02-09 03:03:04', NULL), (34, 7, 3, 3, 2, 2, 2, 2, 'Reach the World Remotely: Tech Growth Marketer - Marketing Maverick', 'reach-the-world-remotely-tech-growth-marketer-marketing-maverick', '5', 1000, 10000, NULL, '2025-03-06', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 5, 5234, 260, '4408 Norma Lane Shreveport, LA 71101', 'range', NULL, '2024-02-09 03:04:35', '2024-02-09 03:04:35', NULL), (35, 15, 3, 2, 3, 2, 2, 3, 'Join Our Fast-Paced Tech Adventure: Remotely Awesome', 'join-our-fast-paced-tech-adventure-remotely-awesome', '3', NULL, NULL, 'compatitive', '2025-05-14', '
our team has a vision to establish a trusted platform that enables productive and healthy enterprises in a world of digital and remote everything, constantly changing work patterns and norms, and the need for organizational resiliency.
The ideal candidate will have strong creative skills and a portfolio of work which demonstrates their passion for illustrative design and typography. This candidate will have experiences in working with numerous different design platforms such as digital and print forms.
Essential Knowledge, Skills, and Experience
A portfolio demonstrating well thought through and polished end to end customer journeys
5+ years of industry experience in interactive design and / or visual design
Excellent interpersonal skills
Aware of trends in mobile, communications, and collaboration
Ability to create highly polished design prototypes, mockups, and other communication artifacts
The ability to scope and estimate efforts accurately and prioritize tasks and goals independently
History of impacting shipping products with your work
A Bachelor’s Degree in Design (or related field) or equivalent professional experience
Proficiency in a variety of design tools such as Figma, Photoshop, Illustrator, and Sketch
Preferred Experience
Designing user experiences for enterprise software / services
Creating and applying established design principles and interaction patterns
Aligning or influencing design thinking with teams working in other geographies
Product Designer
Product knowledge: Deeply understand the technology and features of the product area to which you are assigned.
Research: Provide human and business impact and insights for products.
Deliverables: Create deliverables for your product area (for example competitive analyses, user flows, low fidelity wireframes, high fidelity mockups, prototypes, etc.) that solve real user problems through the user experience.
', 'active', 'app', NULL, NULL, 1, NULL, NULL, NULL, 0, 5, 5234, 260, '4408 Norma Lane Shreveport, LA 71101', 'custom', NULL, '2024-02-09 03:05:44', '2024-02-09 03:05:44', NULL); -- -------------------------------------------------------- -- -- Table structure for table `job_benefits` -- CREATE TABLE `job_benefits` ( `id` bigint(20) UNSIGNED NOT NULL, `job_id` bigint(20) UNSIGNED NOT NULL, `benefit_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `job_benefits` -- INSERT INTO `job_benefits` (`id`, `job_id`, `benefit_id`, `created_at`, `updated_at`) VALUES (3, 2, 3, '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (4, 3, 4, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (5, 3, 5, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (6, 3, 6, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (7, 3, 7, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (12, 5, 12, '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (13, 5, 13, '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (14, 5, 14, '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (15, 5, 15, '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (16, 6, 16, '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (17, 6, 17, '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (18, 6, 18, '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (19, 6, 19, '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (20, 7, 20, '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (21, 7, 21, '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (22, 7, 22, '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (23, 7, 23, '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (24, 8, 24, '2024-02-08 23:02:34', '2024-02-08 23:02:34'), (25, 8, 25, '2024-02-08 23:02:34', '2024-02-08 23:02:34'), (26, 8, 26, '2024-02-08 23:02:34', '2024-02-08 23:02:34'), (27, 8, 27, '2024-02-08 23:02:34', '2024-02-08 23:02:34'), (52, 16, 52, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (53, 16, 53, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (54, 16, 54, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (55, 16, 55, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (56, 17, 56, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (57, 17, 57, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (58, 17, 58, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (59, 17, 59, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (60, 18, 60, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (61, 18, 61, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (62, 18, 62, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (63, 18, 63, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (64, 19, 64, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (65, 19, 65, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (66, 19, 66, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (67, 19, 67, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (68, 20, 68, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (69, 20, 69, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (70, 20, 70, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (71, 20, 71, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (72, 21, 72, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (73, 21, 73, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (74, 21, 74, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (75, 21, 75, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (76, 22, 76, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (77, 22, 77, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (78, 22, 78, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (79, 22, 79, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (80, 23, 80, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (81, 23, 81, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (82, 23, 82, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (83, 23, 83, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (84, 24, 84, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (85, 24, 85, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (86, 24, 86, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (87, 24, 87, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (88, 25, 88, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (89, 25, 89, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (90, 25, 90, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (91, 25, 91, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (92, 26, 92, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (93, 26, 93, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (94, 26, 94, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (95, 26, 95, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (96, 27, 96, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (97, 27, 97, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (98, 27, 98, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (99, 27, 99, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (100, 28, 100, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (101, 28, 101, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (102, 28, 102, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (103, 28, 103, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (104, 29, 104, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (105, 29, 105, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (106, 29, 106, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (107, 29, 107, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (108, 30, 108, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (109, 30, 109, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (110, 30, 110, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (111, 30, 111, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (112, 31, 112, '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (113, 31, 113, '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (114, 31, 114, '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (115, 31, 115, '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (116, 32, 116, '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (117, 32, 117, '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (118, 32, 118, '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (119, 32, 119, '2024-02-09 03:01:56', '2024-02-09 03:01:56'), (120, 33, 120, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (121, 33, 121, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (122, 33, 122, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (123, 33, 123, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (124, 34, 124, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (125, 34, 125, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (126, 34, 126, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (127, 34, 127, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (128, 35, 128, '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (129, 35, 129, '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (130, 35, 130, '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (131, 35, 131, '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (132, 1, 132, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (133, 1, 133, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (138, 4, 138, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (139, 4, 139, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (140, 4, 140, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (141, 4, 141, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (142, 9, 142, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (143, 9, 143, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (144, 9, 144, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (145, 9, 145, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (146, 15, 146, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (147, 15, 147, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (148, 15, 148, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (149, 15, 149, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (150, 13, 150, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (151, 13, 151, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (152, 13, 152, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (153, 13, 153, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (154, 12, 154, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (155, 12, 155, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (156, 12, 156, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (157, 12, 157, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (158, 11, 158, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (159, 11, 159, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (160, 11, 160, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (161, 11, 161, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (162, 10, 162, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (163, 10, 163, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (164, 10, 164, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (165, 10, 165, '2024-02-09 03:09:12', '2024-02-09 03:09:12'); -- -------------------------------------------------------- -- -- Table structure for table `job_bookmarks` -- CREATE TABLE `job_bookmarks` ( `id` bigint(20) UNSIGNED NOT NULL, `job_id` bigint(20) UNSIGNED NOT NULL, `candidate_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -------------------------------------------------------- -- -- Table structure for table `job_categories` -- CREATE TABLE `job_categories` ( `id` bigint(20) UNSIGNED NOT NULL, `icon` varchar(255) NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `show_at_popular` tinyint(1) NOT NULL DEFAULT 0, `show_at_featured` tinyint(1) NOT NULL DEFAULT 0, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `job_categories` -- INSERT INTO `job_categories` (`id`, `icon`, `name`, `slug`, `show_at_popular`, `show_at_featured`, `created_at`, `updated_at`) VALUES (1, 'fas fa-dollar-sign', 'Kế toán/Tài chính', 'ke-toan-tai-chinh', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (2, 'fas fa-chess-king', 'Hành chính', 'hanh-chinh', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (3, 'fas fa-ad', 'Quảng cáo', 'quang-cao', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (4, 'fas fa-tree', 'Nông nghiệp', 'nong-nghiep', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (5, 'fas fa-microphone', 'Nghệ thuật/Giải trí', 'nghe-thuat-giai-tri', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (6, 'fas fa-balance-scale', 'Pháp lý', 'phap-ly', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (7, 'fas fa-building', 'Xây dựng', 'xay-dung', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (8, 'fas fa-laptop-code', 'CNTT/Phần mềm', 'cntt-phan-mem', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (9, 'fas fa-user-md', 'Y tế/Chăm sóc sức khỏe', 'y-te-cham-soc-suc-khoe', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (10, 'fas fa-graduation-cap', 'Giáo dục/Đào tạo', 'giao-duc-dao-tao', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (11, 'fas fa-truck', 'Vận tải/Hậu cần', 'van-tai-hau-can', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (12, 'fas fa-store', 'Bán lẻ', 'ban-le', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (13, 'fas fa-tools', 'Sản xuất/Cơ khí', 'san-xuat-co-khi', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (14, 'fas fa-globe', 'Marketing', 'marketing', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (15, 'fas fa-briefcase', 'Nhân sự', 'nhan-su', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (16, 'fas fa-user-shield', 'An ninh/Bảo vệ', 'an-ninh-bao-ve', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (17, 'fas fa-hotel', 'Du lịch/Khách sạn', 'du-lich-khach-san', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (18, 'fas fa-utensils', 'Nhà hàng/Ẩm thực', 'nha-hang-am-thuc', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (19, 'fas fa-bolt', 'Năng lượng/Môi trường', 'nang-luong-moi-truong', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (20, 'fas fa-user-graduate', 'Sinh viên/Mới tốt nghiệp', 'sinh-vien-moi-tot-nghiep', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (21, 'fas fa-hands-helping', 'Phi lợi nhuận/Xã hội', 'phi-loi-nhuan-xa-hoi', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (22, 'fas fa-dumbbell', 'Thể thao/Thể hình', 'the-thao-the-hinh', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (23, 'fas fa-flask', 'Khoa học/Nghiên cứu', 'khoa-hoc-nghien-cuu', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (24, 'fas fa-paint-brush', 'Thiết kế/Sáng tạo', 'thiet-ke-sang-tao', 1, 1, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (25, 'fas fa-dot-circle', 'Viễn thông', 'vien-thong', 0, 0, '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (26, 'fas fa-dot-circle', 'Transportation', 'transportation', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'), (27, 'fas fa-dot-circle', 'Travel/Hospitality', 'travel-hospitality', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'), (28, 'fas fa-dot-circle', 'Warehousing', 'warehousing', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'), (29, 'fas fa-dot-circle', 'Writing/Editing', 'writing-editing', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'), (30, 'fas fa-dot-circle', 'Other', 'other', 0, 0, '2024-02-07 22:46:15', '2024-02-07 22:46:15'); -- -------------------------------------------------------- -- -- Table structure for table `job_experiences` -- CREATE TABLE `job_experiences` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -------------------------------------------------------- -- -- Table structure for table `job_locations` -- CREATE TABLE `job_locations` ( `id` bigint(20) UNSIGNED NOT NULL, `image` varchar(255) NOT NULL, `country_id` bigint(20) UNSIGNED NOT NULL, `status` enum('featured','trending','hot') DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `job_locations` -- INSERT INTO `job_locations` (`id`, `image`, `country_id`, `status`, `created_at`, `updated_at`) VALUES (2, '/uploads/media_65c5f2d4c7ce1.jpg', 260, 'featured', '2024-02-09 03:39:32', '2024-02-09 03:39:32'), (3, '/uploads/media_65c5f2ef31214.jpg', 261, 'trending', '2024-02-09 03:39:59', '2024-02-09 03:39:59'), (4, '/uploads/media_65c5f30842e82.jpg', 262, 'featured', '2024-02-09 03:40:24', '2024-02-09 03:40:24'), (5, '/uploads/media_65c5f3325684f.jpg', 265, 'hot', '2024-02-09 03:41:06', '2024-02-09 03:41:06'), (6, '/uploads/media_65c5f35c2fcbc.jpg', 266, 'trending', '2024-02-09 03:41:48', '2024-02-09 03:41:48'), (7, '/uploads/media_65c5f38552b54.jpg', 267, 'featured', '2024-02-09 03:42:29', '2024-02-09 03:42:29'), (8, '/uploads/media_65c5f3cd1ecf3.jpg', 263, 'featured', '2024-02-09 03:43:41', '2024-02-09 03:43:41'), (9, '/uploads/media_65c5f47a21387.jpg', 263, 'trending', '2024-02-09 03:46:34', '2024-02-09 03:46:34'); -- -------------------------------------------------------- -- -- Table structure for table `job_roles` -- CREATE TABLE `job_roles` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `job_roles` -- INSERT INTO `job_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Quản lý dự án', 'quan-ly-du-an', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (2, 'Quản lý marketing', 'quan-ly-marketing', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (3, 'Nhân viên chăm sóc khách hàng', 'cham-soc-khach-hang', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (4, 'Nhà khoa học dữ liệu', 'nha-khoa-hoc-du-lieu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (5, 'Chuyên viên an ninh mạng', 'chuyen-vien-an-ninh-mang', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (6, 'Quản lý nhân sự', 'quan-ly-nhan-su', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (7, 'Kiến trúc sư', 'kien-truc-su', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (8, 'Đầu bếp', 'dau-bep', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (9, 'Bác sĩ thú y', 'bac-si-thu-y', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (10, 'Nhà văn', 'nha-van', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (11, 'Nhiếp ảnh gia', 'nhiep-anh-gia', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (12, 'Người quay phim', 'nguoi-quay-phim', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (13, 'Biên tập viên', 'bien-tap-vien', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (14, 'Nhạc sĩ', 'nhac-si', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (15, 'Diễn viên', 'dien-vien', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (16, 'Họa sĩ', 'hoa-si', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (17, 'Nhà làm phim', 'nha-lam-phim', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (18, 'Luật sư', 'luat-su', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (19, 'Kỹ sư', 'ky-su', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (20, 'Cảnh sát', 'canh-sat', '2025-10-10 03:00:00', '2025-10-10 03:00:00'); -- -------------------------------------------------------- -- -- Table structure for table `job_skills` -- CREATE TABLE `job_skills` ( `id` bigint(20) UNSIGNED NOT NULL, `job_id` bigint(20) UNSIGNED NOT NULL, `skill_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `job_skills` -- INSERT INTO `job_skills` (`id`, `job_id`, `skill_id`, `created_at`, `updated_at`) VALUES (6, 2, 1, '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (7, 2, 3, '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (8, 2, 4, '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (9, 3, 1, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (10, 3, 2, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (11, 3, 3, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (12, 3, 4, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (42, 16, 1, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (43, 16, 2, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (44, 16, 3, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (45, 16, 4, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (46, 17, 1, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (47, 17, 2, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (48, 17, 3, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (49, 17, 4, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (50, 18, 1, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (51, 18, 2, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (52, 18, 3, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (53, 18, 4, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (54, 19, 1, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (55, 19, 2, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (56, 19, 3, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (57, 19, 4, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (58, 20, 1, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (59, 20, 2, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (60, 20, 3, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (61, 20, 4, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (62, 21, 1, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (63, 21, 2, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (64, 21, 3, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (65, 21, 4, '2024-02-08 23:50:25', '2024-02-08 23:50:25'), (66, 22, 1, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (67, 22, 2, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (68, 22, 3, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (69, 22, 4, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (70, 23, 1, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (71, 23, 2, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (72, 23, 3, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (73, 23, 4, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (74, 24, 1, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (75, 24, 2, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (76, 24, 3, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (77, 25, 1, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (78, 25, 2, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (79, 25, 3, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (80, 26, 1, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (81, 26, 2, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (82, 26, 3, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (83, 26, 4, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (84, 27, 1, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (85, 27, 2, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (86, 27, 3, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (87, 27, 5, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (88, 28, 1, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (89, 28, 2, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (90, 28, 3, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (91, 28, 4, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (92, 29, 1, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (93, 29, 2, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (94, 29, 3, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (95, 30, 1, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (96, 30, 2, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (97, 30, 3, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (98, 30, 4, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (99, 31, 1, '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (100, 31, 2, '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (101, 31, 3, '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (102, 31, 4, '2024-02-09 03:00:48', '2024-02-09 03:00:48'), (103, 32, 1, '2024-02-09 03:01:56', '2024-02-09 03:01:56'), (104, 32, 2, '2024-02-09 03:01:56', '2024-02-09 03:01:56'), (105, 32, 3, '2024-02-09 03:01:56', '2024-02-09 03:01:56'), (106, 32, 4, '2024-02-09 03:01:56', '2024-02-09 03:01:56'), (107, 33, 1, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (108, 33, 2, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (109, 33, 3, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (110, 33, 4, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (111, 34, 1, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (112, 34, 2, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (113, 34, 3, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (114, 34, 4, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (115, 35, 1, '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (116, 35, 2, '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (117, 35, 3, '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (118, 35, 4, '2024-02-09 03:05:45', '2024-02-09 03:05:45'), (119, 1, 1, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (120, 1, 3, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (121, 1, 4, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (122, 1, 6, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (123, 1, 9, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (128, 4, 1, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (129, 4, 2, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (130, 4, 3, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (131, 4, 4, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (132, 9, 1, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (133, 9, 2, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (134, 9, 3, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (135, 9, 4, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (136, 15, 1, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (137, 15, 2, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (138, 15, 3, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (139, 15, 4, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (140, 13, 1, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (141, 13, 2, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (142, 13, 3, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (143, 13, 4, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (144, 12, 1, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (145, 12, 2, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (146, 12, 3, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (147, 12, 4, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (148, 11, 1, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (149, 11, 2, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (150, 11, 3, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (151, 11, 4, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (152, 10, 1, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (153, 10, 2, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (154, 10, 3, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (155, 10, 4, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (156, 10, 5, '2024-02-09 03:09:12', '2024-02-09 03:09:12'); -- -------------------------------------------------------- -- -- Table structure for table `job_tags` -- CREATE TABLE `job_tags` ( `id` bigint(20) UNSIGNED NOT NULL, `job_id` bigint(20) UNSIGNED NOT NULL, `tag_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `job_tags` -- INSERT INTO `job_tags` (`id`, `job_id`, `tag_id`, `created_at`, `updated_at`) VALUES (5, 2, 2, '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (6, 2, 3, '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (7, 2, 5, '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (8, 2, 9, '2024-02-08 22:37:06', '2024-02-08 22:37:06'), (9, 3, 2, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (10, 3, 3, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (11, 3, 4, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (12, 3, 5, '2024-02-08 22:55:23', '2024-02-08 22:55:23'), (17, 5, 1, '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (18, 5, 2, '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (19, 5, 3, '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (20, 5, 4, '2024-02-08 23:01:19', '2024-02-08 23:01:19'), (21, 6, 1, '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (22, 6, 2, '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (23, 6, 3, '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (24, 6, 4, '2024-02-08 23:01:41', '2024-02-08 23:01:41'), (25, 7, 1, '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (26, 7, 2, '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (27, 7, 3, '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (28, 7, 4, '2024-02-08 23:02:07', '2024-02-08 23:02:07'), (29, 8, 1, '2024-02-08 23:02:33', '2024-02-08 23:02:33'), (30, 8, 2, '2024-02-08 23:02:33', '2024-02-08 23:02:33'), (31, 8, 3, '2024-02-08 23:02:33', '2024-02-08 23:02:33'), (32, 8, 4, '2024-02-08 23:02:33', '2024-02-08 23:02:33'), (58, 16, 1, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (59, 16, 2, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (60, 16, 3, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (61, 16, 4, '2024-02-08 23:40:15', '2024-02-08 23:40:15'), (62, 17, 1, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (63, 17, 2, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (64, 17, 3, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (65, 17, 4, '2024-02-08 23:42:34', '2024-02-08 23:42:34'), (66, 18, 1, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (67, 18, 2, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (68, 18, 3, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (69, 18, 4, '2024-02-08 23:45:34', '2024-02-08 23:45:34'), (70, 19, 1, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (71, 19, 2, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (72, 19, 3, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (73, 19, 4, '2024-02-08 23:46:45', '2024-02-08 23:46:45'), (74, 20, 1, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (75, 20, 2, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (76, 20, 3, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (77, 20, 4, '2024-02-08 23:49:13', '2024-02-08 23:49:13'), (78, 21, 1, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (79, 21, 2, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (80, 21, 3, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (81, 21, 4, '2024-02-08 23:50:24', '2024-02-08 23:50:24'), (82, 22, 1, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (83, 22, 2, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (84, 22, 3, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (85, 22, 4, '2024-02-08 23:51:37', '2024-02-08 23:51:37'), (86, 23, 1, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (87, 23, 2, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (88, 23, 3, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (89, 23, 4, '2024-02-08 23:53:15', '2024-02-08 23:53:15'), (90, 24, 1, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (91, 24, 2, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (92, 24, 3, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (93, 24, 6, '2024-02-09 00:10:28', '2024-02-09 00:10:28'), (94, 25, 1, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (95, 25, 2, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (96, 25, 4, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (97, 25, 6, '2024-02-09 00:13:07', '2024-02-09 00:13:07'), (98, 26, 1, '2024-02-09 00:16:05', '2024-02-09 00:16:05'), (99, 26, 2, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (100, 26, 3, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (101, 26, 5, '2024-02-09 00:16:06', '2024-02-09 00:16:06'), (102, 27, 1, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (103, 27, 2, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (104, 27, 3, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (105, 27, 4, '2024-02-09 00:19:03', '2024-02-09 00:19:03'), (106, 28, 1, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (107, 28, 2, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (108, 28, 3, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (109, 28, 4, '2024-02-09 00:21:34', '2024-02-09 00:21:34'), (110, 29, 1, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (111, 29, 2, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (112, 29, 3, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (113, 29, 4, '2024-02-09 00:22:36', '2024-02-09 00:22:36'), (114, 30, 1, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (115, 30, 2, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (116, 30, 3, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (117, 30, 4, '2024-02-09 00:23:48', '2024-02-09 00:23:48'), (118, 31, 1, '2024-02-09 03:00:47', '2024-02-09 03:00:47'), (119, 31, 2, '2024-02-09 03:00:47', '2024-02-09 03:00:47'), (120, 31, 3, '2024-02-09 03:00:47', '2024-02-09 03:00:47'), (121, 31, 4, '2024-02-09 03:00:47', '2024-02-09 03:00:47'), (122, 32, 1, '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (123, 32, 2, '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (124, 32, 3, '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (125, 32, 4, '2024-02-09 03:01:55', '2024-02-09 03:01:55'), (126, 33, 1, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (127, 33, 2, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (128, 33, 3, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (129, 33, 4, '2024-02-09 03:03:04', '2024-02-09 03:03:04'), (130, 34, 1, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (131, 34, 2, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (132, 34, 3, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (133, 34, 4, '2024-02-09 03:04:35', '2024-02-09 03:04:35'), (134, 35, 1, '2024-02-09 03:05:44', '2024-02-09 03:05:44'), (135, 35, 2, '2024-02-09 03:05:44', '2024-02-09 03:05:44'), (136, 35, 3, '2024-02-09 03:05:44', '2024-02-09 03:05:44'), (137, 35, 4, '2024-02-09 03:05:44', '2024-02-09 03:05:44'), (138, 1, 1, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (139, 1, 3, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (140, 1, 4, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (141, 1, 8, '2024-02-09 03:06:38', '2024-02-09 03:06:38'), (146, 4, 1, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (147, 4, 2, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (148, 4, 3, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (149, 4, 4, '2024-02-09 03:07:19', '2024-02-09 03:07:19'), (150, 9, 1, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (151, 9, 2, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (152, 9, 3, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (153, 9, 4, '2024-02-09 03:07:57', '2024-02-09 03:07:57'), (154, 15, 1, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (155, 15, 2, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (156, 15, 3, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (157, 15, 4, '2024-02-09 03:08:42', '2024-02-09 03:08:42'), (158, 13, 2, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (159, 13, 3, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (160, 13, 4, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (161, 13, 5, '2024-02-09 03:08:49', '2024-02-09 03:08:49'), (162, 12, 1, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (163, 12, 2, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (164, 12, 3, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (165, 12, 4, '2024-02-09 03:08:57', '2024-02-09 03:08:57'), (166, 11, 1, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (167, 11, 2, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (168, 11, 3, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (169, 11, 4, '2024-02-09 03:09:05', '2024-02-09 03:09:05'), (170, 10, 1, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (171, 10, 2, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (172, 10, 3, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (173, 10, 4, '2024-02-09 03:09:12', '2024-02-09 03:09:12'), (174, 10, 5, '2024-02-09 03:09:12', '2024-02-09 03:09:12'); -- -------------------------------------------------------- -- -- Table structure for table `job_types` -- CREATE TABLE `job_types` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `job_types` -- INSERT INTO `job_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Toàn thời gian', 'toan-thoi-gian', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (2, 'Bán thời gian', 'ban-thoi-gian', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (3, 'Hợp đồng', 'hop-dong', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (4, 'Tạm thời', 'tam-thoi', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (5, 'Làm việc từ xa', 'lam-viec-tu-xa', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (6, 'Làm tự do', 'lam-tu-do', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (7, 'Thực tập', 'thuc-tap', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (8, 'Mới tốt nghiệp', 'moi-tot-nghiep', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (9, 'Trình độ trung cấp', 'trinh-do-trung-cap', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (10, 'Trình độ cao cấp', 'trinh-do-cao-cap', '2025-10-10 03:00:00', '2025-10-10 03:00:00'); -- -------------------------------------------------------- -- -- Table structure for table `languages` -- CREATE TABLE `languages` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `languages` -- INSERT INTO `languages` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'English', 'english', '2024-02-07 23:37:45', '2024-02-07 23:37:45'), (2, 'Hindi', 'hindi', '2024-02-07 23:37:45', '2024-02-07 23:37:45'), (3, 'Arabic', 'arabic', '2024-02-07 23:37:45', '2024-02-07 23:37:45'), (4, 'Bangla', 'bangla', '2024-02-07 23:37:45', '2024-02-07 23:37:45'), (5, 'Other', 'other', '2024-02-07 23:37:45', '2024-02-07 23:37:45'); -- -------------------------------------------------------- -- -- Table structure for table `learn_mores` -- CREATE TABLE `learn_mores` ( `id` bigint(20) UNSIGNED NOT NULL, `image` varchar(255) NOT NULL, `title` varchar(255) NOT NULL, `main_title` varchar(255) NOT NULL, `sub_title` varchar(255) NOT NULL, `url` text DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `learn_mores` -- INSERT INTO `learn_mores` (`id`, `image`, `title`, `main_title`, `sub_title`, `url`, `created_at`, `updated_at`) VALUES (1, '/uploads/media_65c5ed3e6f8e9.png', 'Hàng triệu việc làm.\n', 'Tìm người phù hợp với bạn\n', 'Tìm kiếm tất cả các vị trí tuyển dụng trên web. Nhận ước tính mức lương cá nhân của riêng bạn. Đọc đánh giá về hơn 600.000 công ty trên toàn thế giới. Công việc phù hợp đang ở ngoài kia.\n', '/', '2024-02-09 03:15:42', '2024-02-09 03:15:42'); -- -------------------------------------------------------- -- -- Table structure for table `migrations` -- CREATE TABLE `migrations` ( `id` int(10) UNSIGNED NOT NULL, `migration` varchar(255) NOT NULL, `batch` int(11) NOT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `migrations` -- INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES (1, '2014_10_12_000000_create_users_table', 1), (2, '2014_10_12_100000_create_password_reset_tokens_table', 1), (3, '2017_08_11_073824_create_menus_wp_table', 1), (4, '2017_08_11_074006_create_menu_items_wp_table', 1), (5, '2019_08_19_000000_create_failed_jobs_table', 1), (6, '2019_12_14_000001_create_personal_access_tokens_table', 1), (7, '2023_12_11_093917_create_admins_table', 1), (8, '2023_12_14_095631_create_companies_table', 1), (9, '2023_12_18_102543_create_industry_types_table', 1), (10, '2023_12_19_111743_create_organization_types_table', 1), (11, '2023_12_20_045833_create_team_sizes_table', 1), (12, '2023_12_20_061004_create_countries_table', 1), (13, '2023_12_20_061016_create_states_table', 1), (14, '2023_12_20_061027_create_cities_table', 1), (15, '2023_12_24_095516_create_languages_table', 1), (16, '2023_12_24_112740_create_professions_table', 1), (17, '2023_12_25_042432_create_skills_table', 1), (18, '2023_12_25_055605_create_candidates_table', 1), (19, '2023_12_25_100255_create_experiences_table', 1), (20, '2023_12_26_062851_create_candidate_languages_table', 1), (21, '2023_12_26_062857_create_candidate_skills_table', 1), (22, '2023_12_27_031235_create_candidate_experiences_table', 1), (23, '2023_12_28_043744_create_candidate_education_table', 1), (24, '2024_01_01_091246_create_plans_table', 1), (25, '2024_01_02_050030_add_show_at_home_to_plans', 1), (26, '2024_01_02_091108_create_payment_settings_table', 1), (27, '2024_01_03_061551_create_site_settings_table', 1), (28, '2024_01_04_055809_create_orders_table', 1), (29, '2024_01_04_095501_create_user_plans_table', 1), (30, '2024_01_09_035110_create_job_categories_table', 1), (31, '2024_01_09_055023_create_education_table', 1), (32, '2024_01_09_065443_create_job_types_table', 1), (33, '2024_01_09_092041_create_salary_types_table', 1), (34, '2024_01_09_101223_create_tags_table', 1), (35, '2024_01_09_105927_create_job_roles_table', 1), (36, '2024_01_10_032256_create_job_experiences_table', 1), (37, '2024_01_10_053636_create_jobs_table', 1), (38, '2024_01_14_063326_create_job_tags_table', 1), (39, '2024_01_14_070836_create_benefits_table', 1), (40, '2024_01_14_070853_create_job_benefits_table', 1), (41, '2024_01_14_092122_create_job_skills_table', 1), (42, '2024_01_15_063950_add_softdelete_to_jobs_table', 1), (43, '2024_01_22_092311_create_applied_jobs_table', 1), (44, '2024_01_23_063900_create_job_bookmarks_table', 1), (45, '2024_01_23_103114_create_blogs_table', 1), (46, '2024_01_24_093258_create_heroes_table', 1), (47, '2024_01_25_085554_create_why_choose_us_table', 1), (48, '2024_01_28_044404_create_learn_mores_table', 1), (49, '2024_01_28_062423_create_counters_table', 1), (50, '2024_01_28_110347_create_job_locations_table', 1), (51, '2024_01_29_064929_create_reviews_table', 1), (52, '2024_01_30_033018_create_abouts_table', 1), (53, '2024_01_30_102934_create_custom_page_builders_table', 1), (54, '2024_01_31_045344_create_subscribers_table', 1), (55, '2024_02_01_031615_create_footers_table', 1), (56, '2024_02_01_041322_create_social_icons_table', 1), (57, '2024_02_05_102755_create_permission_tables', 1); -- -------------------------------------------------------- -- -- Table structure for table `model_has_permissions` -- CREATE TABLE `model_has_permissions` ( `permission_id` bigint(20) UNSIGNED NOT NULL, `model_type` varchar(255) NOT NULL, `model_id` bigint(20) UNSIGNED NOT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -------------------------------------------------------- -- -- Table structure for table `model_has_roles` -- CREATE TABLE `model_has_roles` ( `role_id` bigint(20) UNSIGNED NOT NULL, `model_type` varchar(255) NOT NULL, `model_id` bigint(20) UNSIGNED NOT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `model_has_roles` -- INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES (1, 'App\\Models\\Admin', 1); -- -------------------------------------------------------- -- -- Table structure for table `orders` -- CREATE TABLE `orders` ( `id` bigint(20) UNSIGNED NOT NULL, `company_id` bigint(20) UNSIGNED NOT NULL, `plan_id` bigint(20) UNSIGNED NOT NULL, `package_name` varchar(255) NOT NULL, `transaction_id` varchar(255) NOT NULL, `order_id` varchar(255) NOT NULL, `payment_provider` varchar(255) NOT NULL, `amount` double NOT NULL, `paid_in_currency` varchar(255) NOT NULL, `default_amount` varchar(255) NOT NULL, `payment_status` enum('paid','unpaid') NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `orders` -- INSERT INTO `orders` (`id`, `company_id`, `plan_id`, `package_name`, `transaction_id`, `order_id`, `payment_provider`, `amount`, `paid_in_currency`, `default_amount`, `payment_status`, `created_at`, `updated_at`) VALUES (1, 1, 3, 'Pro', '3WS24724BF547811R', '65c5a6d8939fb', 'payPal', 200000, 'VND', '60USD', 'paid', '2024-02-08 22:15:20', '2024-02-08 22:15:20'), (2, 2, 3, 'Pro', '7V881838262076433', '65c5af45ae6e6', 'payPal', 200000, 'VND', '60USD', 'paid', '2024-02-08 22:51:17', '2024-02-08 22:51:17'), (3, 3, 3, 'Pro', '66M82048XB063825R', '65c5b3bf845af', 'payPal', 200000, 'VND', '60USD', 'paid', '2024-02-08 23:10:23', '2024-02-08 23:10:23'); -- -------------------------------------------------------- -- -- Table structure for table `organization_types` -- CREATE TABLE `organization_types` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `organization_types` -- INSERT INTO `organization_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Chính phủ', 'chinh-phu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (2, 'Bán chính phủ', 'ban-chinh-phu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (3, 'Công cộng', 'cong-cong', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (4, 'Tư nhân', 'tu-nhan', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (5, 'Tổ chức phi chính phủ', 'to-chuc-phi-chinh-phu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (6, 'Tổ chức quốc tế', 'to-chuc-quoc-te', '2025-10-10 03:00:00', '2025-10-10 03:00:00'); -- -------------------------------------------------------- -- -- Table structure for table `password_reset_tokens` -- CREATE TABLE `password_reset_tokens` ( `email` varchar(255) NOT NULL, `token` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -------------------------------------------------------- -- -- Table structure for table `payment_settings` -- CREATE TABLE `payment_settings` ( `id` bigint(20) UNSIGNED NOT NULL, `key` varchar(255) NOT NULL, `value` text DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `payment_settings` -- INSERT INTO `payment_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES (1, 'paypal_status', 'active', '2024-01-02 21:36:16', '2024-01-07 22:31:01'), (2, 'paypal_account_mode', 'sandbox', '2024-01-02 21:36:16', '2024-01-02 21:36:16'), (3, 'paypal_country_name', 'US', '2024-01-02 21:36:16', '2024-01-02 21:36:16'), (4, 'paypal_currency_name', 'USD', '2024-01-02 21:36:16', '2024-01-03 22:11:42'), (5, 'paypal_currency_rate', '1', '2024-01-02 21:36:16', '2024-01-03 22:11:42'), (6, 'paypal_client_id', 'AVNUDKwMZBRre6GdfGusYp8nnFMbyRrzKb46A-s9OgsziUpMRGSWvdaBM2B8EUTM_NIxIX45MetVbkCK', '2024-01-02 21:36:16', '2024-01-03 03:41:24'), (7, 'paypal_client_secret', 'EL6KjLuP1g38qLZ3axMhcp3uMzBgYXiAyOekEMsXbtng5Mgb0aG0ofDM7sURAbRKnKCEAPiQYntkh8bO', '2024-01-02 21:36:16', '2024-01-03 03:41:24'), (8, 'paypal_app_id', 'Client_app_id', '2024-01-02 21:36:16', '2024-01-02 21:36:16'), (9, 'stripe_status', 'active', '2024-01-05 23:34:39', '2024-01-05 23:34:39'), (10, 'stripe_country_name', 'US', '2024-01-05 23:34:39', '2024-01-05 23:34:39'), (11, 'stripe_currency_name', 'USD', '2024-01-05 23:34:39', '2024-01-05 23:34:39'), (12, 'stripe_currency_rate', '1', '2024-01-05 23:34:39', '2024-01-05 23:34:39'), (13, 'stripe_publishable_key', 'pk_test_51OVRhFHgrCz0Smml5mxCMyUU1zWdegTdMkUMyubU3wL9yjDZA6LGpLpgCsFD7KX4JUBQb67z2iyUJFuPL0ClcDZi00Yui5p25Y', '2024-01-05 23:34:39', '2024-01-05 23:34:39'), (14, 'stripe_secret_key', 'sk_test_51OVRhFHgrCz0SmmlZq11q3KVSZbCDEsYawGFGdhYBiEDACTJKwAnVZhF7bVmAKveGel1ubry1DX6taNlNSYe9APO00veYq6d3w', '2024-01-05 23:34:39', '2024-01-05 23:34:39'), (15, 'razorpay_status', 'active', '2024-01-06 03:41:18', '2024-01-06 03:41:18'), (16, 'razorpay_country_name', 'IN', '2024-01-06 03:41:18', '2024-01-06 03:41:18'), (17, 'razorpay_currency_name', 'INR', '2024-01-06 03:41:18', '2024-01-06 03:41:18'), (18, 'razorpay_currency_rate', '83.19', '2024-01-06 03:41:18', '2024-01-06 03:41:18'), (19, 'razorpay_key', 'rzp_test_K7CipNQYyyMPiS', '2024-01-06 03:41:18', '2024-01-06 04:28:38'), (20, 'razorpay_secret_key', 'zSBmNMorJrirOrnDrbOd1ALO', '2024-01-06 03:41:18', '2024-01-06 04:28:38'); -- -------------------------------------------------------- -- -- Table structure for table `permissions` -- CREATE TABLE `permissions` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `guard_name` varchar(255) NOT NULL, `group` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `permissions` -- INSERT INTO `permissions` (`id`, `name`, `guard_name`, `group`, `created_at`, `updated_at`) VALUES (1, 'Phân tích bảng điều khiển', 'admin', 'Bảng điều khiển', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (2, 'Bài viết đang chờ duyệt', 'admin', 'Bảng điều khiển', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (3, 'Quản lý đơn hàng', 'admin', 'Đơn hàng', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (4, 'Tạo danh mục công việc', 'admin', 'Danh mục công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (5, 'Cập nhật danh mục công việc', 'admin', 'Danh mục công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (6, 'Xóa danh mục công việc', 'admin', 'Danh mục công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (7, 'Tạo công việc', 'admin', 'Công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (8, 'Cập nhật công việc', 'admin', 'Công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (9, 'Xóa công việc', 'admin', 'Công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (10, 'Vai trò công việc', 'admin', 'Vai trò công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (11, 'Thuộc tính công việc', 'admin', 'Thuộc tính công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (12, 'Vị trí công việc', 'admin', 'Vị trí công việc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (13, 'Quản lý chuyên mục', 'admin', 'Chuyên mục', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (14, 'Quản lý trang', 'admin', 'Trang', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (15, 'Chân trang', 'admin', 'Chân trang', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (16, 'Quản lý blog', 'admin', 'Blog', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (17, 'Gói giá', 'admin', 'Gói giá', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (18, 'Bản tin', 'admin', 'Bản tin', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (19, 'Trình tạo menu', 'admin', 'Trình tạo menu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (20, 'Quản lý truy cập', 'admin', 'Quản lý truy cập', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (21, 'Cài đặt thanh toán', 'admin', 'Cài đặt thanh toán', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (22, 'Cài đặt hệ thống', 'admin', 'Cài đặt hệ thống', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (23, 'Xóa cơ sở dữ liệu', 'admin', 'Xóa dữ liệu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'); -- -------------------------------------------------------- -- -- Table structure for table `personal_access_tokens` -- CREATE TABLE `personal_access_tokens` ( `id` bigint(20) UNSIGNED NOT NULL, `tokenable_type` varchar(255) NOT NULL, `tokenable_id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `token` varchar(64) NOT NULL, `abilities` text DEFAULT NULL, `last_used_at` timestamp NULL DEFAULT NULL, `expires_at` timestamp NULL DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -------------------------------------------------------- -- -- Table structure for table `plans` -- CREATE TABLE `plans` ( `id` bigint(20) UNSIGNED NOT NULL, `label` varchar(255) NOT NULL, `price` double NOT NULL, `job_limit` int(11) NOT NULL, `featured_job_limit` int(11) NOT NULL, `highlight_job_limit` int(11) NOT NULL, `profile_verified` tinyint(1) NOT NULL DEFAULT 0, `recommended` tinyint(1) NOT NULL DEFAULT 0, `frontend_show` tinyint(1) NOT NULL DEFAULT 0, `show_at_home` tinyint(1) NOT NULL DEFAULT 0, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `plans` -- INSERT INTO `plans` (`id`, `label`, `price`, `job_limit`, `featured_job_limit`, `highlight_job_limit`, `profile_verified`, `recommended`, `frontend_show`, `show_at_home`, `created_at`, `updated_at`) VALUES (1, 'Basic', 0, 5, 0, 0, 0, 0, 1, 1, '2024-02-08 21:16:43', '2025-11-19 04:06:18'), (2, 'Standerd', 30, 10, 3, 3, 0, 1, 1, 1, '2024-02-08 21:17:23', '2024-02-08 21:17:23'), (3, 'Pro', 60, 15, 7, 7, 1, 0, 1, 1, '2024-02-08 21:18:17', '2024-02-08 21:18:17'); -- -------------------------------------------------------- -- -- Table structure for table `professions` -- CREATE TABLE `professions` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `professions` -- INSERT INTO `professions` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Lập trình viên phần mềm', 'lap-trinh-vien-phan-mem', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (2, 'Thiết kế web', 'thiet-ke-web', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (3, 'Nhà khoa học dữ liệu', 'nha-khoa-hoc-du-lieu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (4, 'Tiếp thị kỹ thuật số', 'tiep-thi-ky-thuat-so', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (5, 'Thiết kế UX/UI', 'thiet-ke-ux-ui', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (6, 'Quản trị mạng', 'quan-tri-mang', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (7, 'Người sáng tạo nội dung', 'sang-tao-noi-dung', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (8, 'Quản lý dự án', 'quan-ly-du-an', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (9, 'Thiết kế đồ họa', 'thiet-ke-do-hoa', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (10, 'Quản trị cơ sở dữ liệu', 'quan-tri-co-so-du-lieu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (11, 'Chuyên viên an ninh mạng', 'chuyen-vien-an-ninh-mang', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (12, 'Phân tích hệ thống', 'phan-tich-he-thong', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (13, 'Lập trình ứng dụng di động', 'lap-trinh-ung-dung-di-dong', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (14, 'Lập trình game', 'lap-trinh-game', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (15, 'Biên tập kỹ thuật', 'bien-tap-ky-thuat', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (16, 'Kỹ sư DevOps', 'ky-su-devops', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (17, 'Kiến trúc sư đám mây', 'kien-truc-su-dam-may', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (18, 'Chuyên viên phân tích nghiệp vụ', 'phan-tich-nghiep-vu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (19, 'Lập trình viên UI/UX', 'lap-trinh-vien-ui-ux', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (20, 'Kỹ sư trí tuệ nhân tạo', 'ky-su-tri-tue-nhan-tao', '2025-10-10 03:00:00', '2025-10-10 03:00:00'); -- -------------------------------------------------------- -- -- Table structure for table `reviews` -- CREATE TABLE `reviews` ( `id` bigint(20) UNSIGNED NOT NULL, `image` varchar(255) NOT NULL, `name` varchar(255) NOT NULL, `title` varchar(255) NOT NULL, `review` varchar(255) NOT NULL, `rating` int(11) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `reviews` -- INSERT INTO `reviews` (`id`, `image`, `name`, `title`, `review`, `rating`, `created_at`, `updated_at`) VALUES (1, '/uploads/media_65c5f508e91d9.png', 'Trần Thị Khánh Vy', 'Digital Artist', 'Tuyệt vời lắm', 5, '2024-02-09 03:48:56', '2024-02-09 03:48:56'), (2, '/uploads/media_65c5f5473f2df.png', 'Nguyễn Hoài An', 'Developer', 'Giao diện đẹp mắt, Tìm kiếm dễ dàng, Kết nối với nhà tuyển dụng nhanh chóng', 5, '2024-02-09 03:49:59', '2024-02-09 03:49:59'), (3, '/uploads/media_65c5f5701b628.png', 'Lê Hoàng Lân', 'Product Designer', 'Thật tuyệt với cảm ơn đã giúp tôi tìm được công việc hợp lí', 5, '2024-02-09 03:50:40', '2024-02-09 03:50:40'), (4, '/uploads/media_65c5f59496248.png', 'Từ Hà Gia Lộc', 'Data Scientist', 'Rất hay', 5, '2024-02-09 03:51:16', '2024-02-09 03:51:16'), (5, '/uploads/media_65c5f5bc32fc4.jpg', 'Nguyễn Minh Tú', 'UI/UX Designer', 'Tôi đã tìm được công ty hợp lí với bản thân mình về đúng chuyên ngành của tôi', 5, '2024-02-09 03:51:56', '2024-02-09 03:51:56'); -- -------------------------------------------------------- -- -- Table structure for table `roles` -- CREATE TABLE `roles` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `guard_name` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `roles` -- INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES (1, 'Super Admin', 'admin', '2024-02-06 03:55:55', '2024-02-06 03:55:55'); -- -------------------------------------------------------- -- -- Table structure for table `role_has_permissions` -- CREATE TABLE `role_has_permissions` ( `permission_id` bigint(20) UNSIGNED NOT NULL, `role_id` bigint(20) UNSIGNED NOT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `role_has_permissions` -- INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 1), (16, 1), (17, 1), (18, 1), (19, 1), (20, 1), (21, 1), (22, 1), (23, 1); -- -------------------------------------------------------- -- -- Table structure for table `salary_types` -- CREATE TABLE `salary_types` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `salary_types` -- INSERT INTO `salary_types` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Theo Tháng', 'monthly', '2024-02-08 22:22:07', '2024-02-08 22:22:07'), (2, 'Theo Giờ', 'hourly', '2024-02-08 22:22:07', '2024-02-08 22:22:07'), (3, 'Theo Năm', 'yearly', '2024-02-08 22:22:07', '2024-02-08 22:22:07'), (4, 'Theo Dự Án ', 'project-basis', '2024-02-08 22:22:07', '2024-02-08 22:22:07'); -- -------------------------------------------------------- -- -- Table structure for table `site_settings` -- CREATE TABLE `site_settings` ( `id` bigint(20) UNSIGNED NOT NULL, `key` varchar(255) NOT NULL, `value` text DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `site_settings` -- INSERT INTO `site_settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES (1, 'site_name', 'JOBLIST', '2024-01-03 01:03:35', '2024-01-30 03:57:08'), (2, 'site_email', 'minhtu270404@gmail.com', '2024-01-03 01:03:35', '2024-01-03 01:03:35'), (3, 'site_phone', '0354552583', '2024-01-03 01:03:35', '2024-01-03 01:03:35'), (4, 'site_default_currency', 'USD', '2024-01-03 01:03:35', '2024-01-03 01:03:35'), (5, 'site_currency_icon', '$', '2024-01-03 01:03:35', '2024-01-03 01:03:35'), (6, 'site_map', '', '2024-01-30 03:53:20', '2024-01-30 03:59:42'); -- -------------------------------------------------------- -- -- Table structure for table `skills` -- CREATE TABLE `skills` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `skills` -- INSERT INTO `skills` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Kỹ năng giao tiếp', 'ky-nang-giao-tiep', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (2, 'Tư duy phản biện', 'tu-duy-phan-bien', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (3, 'Giải quyết vấn đề', 'giai-quyet-van-de', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (4, 'Sáng tạo', 'sang-tao', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (5, 'Làm việc nhóm', 'lam-viec-nhom', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (6, 'Lãnh đạo', 'lanh-dao', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (7, 'Thích nghi', 'thich-nghi', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (8, 'Quản lý thời gian', 'quan-ly-thoi-gian', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (9, 'Trí tuệ cảm xúc', 'tri-tue-cam-xuc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (10, 'Ra quyết định', 'ra-quyet-dinh', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (11, 'Kỹ năng phân tích', 'ky-nang-phan-tich', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (12, 'Quản lý dự án', 'quan-ly-du-an', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (13, 'Hợp tác', 'hop-tac', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (14, 'Đàm phán', 'dam-phan', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (15, 'Giải quyết xung đột', 'giai-quyet-xung-dot', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (16, 'Kết nối', 'ket-noi', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (17, 'Thuyết trình', 'thuyet-trinh', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (18, 'Lập kế hoạch chiến lược', 'lap-ke-hoach-chien-luoc', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (19, 'Nghiên cứu', 'nghien-cuu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (20, 'Phân tích dữ liệu', 'phan-tich-du-lieu', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (21, 'Kỹ năng số', 'ky-nang-so', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (22, 'Python', 'python', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (23, 'Java', 'java', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (24, 'JavaScript', 'javascript', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (25, 'C++', 'c-plus-plus', '2025-10-10 03:00:00', '2025-10-10 03:00:00'), (26, 'Ruby', 'ruby', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (27, 'PHP', 'php', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (28, 'Swift', 'swift', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (29, 'Kotlin', 'kotlin', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (30, 'TypeScript', 'typescript', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (31, 'HTML/CSS', 'html-css', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (32, 'Cybersecurity', 'cybersecurity', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (33, 'AWS (Amazon Web Services)', 'aws-amazon-web-services', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (34, 'Azure', 'azure', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (35, 'Google Cloud Platform', 'google-cloud-platform', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (36, 'Kubernetes', 'kubernetes', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (37, 'Docker', 'docker', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (38, 'TensorFlow', 'tensorflow', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (39, 'PyTorch', 'pytorch', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (40, 'scikit-learn', 'scikit-learn', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (41, 'Keras', 'keras', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (42, 'R', 'r', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (43, 'SAS', 'sas', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (44, 'SPSS', 'spss', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (45, 'Financial Literacy', 'financial-literacy', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (46, 'Marketing Strategy', 'marketing-strategy', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (47, 'Sales', 'sales', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (48, 'Customer Service', 'customer-service', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (49, 'Adobe Creative Suite (Photoshop, Illustrator, InDesign)', 'adobe-creative-suite-photoshop-illustrator-indesign', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (50, 'Sketch', 'sketch', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (51, 'Canva', 'canva', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (52, 'Adobe Premiere Pro', 'adobe-premiere-pro', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (53, 'Final Cut Pro', 'final-cut-pro', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (54, 'DaVinci Resolve', 'davinci-resolve', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (55, 'Content Writing', 'content-writing', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (56, 'Foreign Language Proficiency', 'foreign-language-proficiency', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (57, 'Public Speaking', 'public-speaking', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (58, 'Sales', 'sales-2', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (59, 'Quality Assurance', 'quality-assurance', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (60, 'Figma', 'figma', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (61, 'Sketch', 'sketch-2', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (62, 'Adobe XD', 'adobe-xd', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (63, 'React.js', 'react-js', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (64, 'Angular', 'angular', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (65, 'Vue.js', 'vue-js', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (66, 'Node.js', 'node-js', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (67, 'Django', 'django', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (68, 'Flask', 'flask', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (69, 'Ruby on Rails', 'ruby-on-rails', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (70, 'ASP.NET', 'asp-net', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (71, 'React Native', 'react-native', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (72, 'Flutter', 'flutter', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (73, 'Xamarin', 'xamarin', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (74, 'Swift (iOS)', 'swift-ios', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (75, 'Kotlin (Android)', 'kotlin-android', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (76, 'Social Media Management', 'social-media-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (77, 'SEO (Search Engine Optimization)', 'seo-search-engine-optimization', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (78, 'Supply Chain Management', 'supply-chain-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (79, 'Public Relations', 'public-relations', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (80, 'Risk Management', 'risk-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (81, 'Coaching/Mentoring', 'coaching-mentoring', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (82, 'Learning Agility', 'learning-agility', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (83, 'Crisis Management', 'crisis-management', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (84, 'Health and Wellness', 'health-and-wellness', '2024-02-07 23:36:44', '2024-02-07 23:36:44'), (85, 'Cultural Competence', 'cultural-competence', '2024-02-07 23:36:44', '2024-02-07 23:36:44'); -- -------------------------------------------------------- -- -- Table structure for table `social_icons` -- CREATE TABLE `social_icons` ( `id` bigint(20) UNSIGNED NOT NULL, `icon` varchar(255) NOT NULL, `url` text NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `social_icons` -- INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES (1, 'fab fa-facebook-f', 'https://www.facebook.com/', '2024-02-09 04:11:04', '2024-02-09 04:11:04'), (2, 'fab fa-instagram', 'https://www.twitch.tv/', '2024-02-09 04:11:18', '2024-02-09 04:11:18'), (3, 'fab fa-twitch', 'https://www.twitch.tv/', '2024-02-09 04:11:28', '2024-02-09 04:11:28'), (4, 'fab fa-twitter', 'https://www.twitch.tv/', '2024-02-09 04:11:45', '2024-02-09 04:11:45'); -- -------------------------------------------------------- -- -- Table structure for table `states` -- CREATE TABLE `states` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `country_id` bigint(20) UNSIGNED NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `states` -- INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES (5233, 'California', 260, '2024-02-08 00:50:11', '2024-02-08 00:50:11'), (5234, 'Texas', 260, '2024-02-08 00:50:24', '2024-02-08 00:50:24'), (5235, 'New York', 260, '2024-02-08 00:50:33', '2024-02-08 00:50:33'); -- -------------------------------------------------------- -- -- Table structure for table `subscribers` -- CREATE TABLE `subscribers` ( `id` bigint(20) UNSIGNED NOT NULL, `email` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `subscribers` -- INSERT INTO `subscribers` (`id`, `email`, `created_at`, `updated_at`) VALUES (1, 'testuser@gmail.com', '2024-02-09 04:26:01', '2024-02-09 04:26:01'), (2, 'minhtu270404@gmail.com', '2025-11-19 04:04:42', '2025-11-19 04:04:42'); -- -------------------------------------------------------- -- -- Table structure for table `tags` -- CREATE TABLE `tags` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `tags` -- INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'remote-friendly', 'remote-friendly', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (2, 'fully-distributed', 'fully-distributed', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (3, 'software-development', 'software-development', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (4, 'data-science', 'data-science', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (5, 'cybersecurity', 'cybersecurity', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (6, 'cloud-computing', 'cloud-computing', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (7, 'open-source-experience', 'open-source-experience', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (8, 'agile-methodology', 'agile-methodology', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (9, 'strong-communication-skills', 'strong-communication-skills', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (10, 'time-zone-flexibility', 'time-zone-flexibility', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (11, 'global-collaboration', 'global-collaboration', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (12, 'startup-environment', 'startup-environment', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (13, 'work-life-balance', 'work-life-balance', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (14, 'continuous-learning', 'continuous-learning', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (15, 'competitive-benefits', 'competitive-benefits', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (16, 'equity-compensation', 'equity-compensation', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (17, 'high-growth-opportunity', 'high-growth-opportunity', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (18, 'diverse-and-inclusive', 'diverse-and-inclusive', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (19, 'positive-company-culture', 'positive-company-culture', '2024-02-08 22:30:37', '2024-02-08 22:30:37'), (20, 'impactful-work', 'impactful-work', '2024-02-08 22:30:37', '2024-02-08 22:30:37'); -- -------------------------------------------------------- -- -- Table structure for table `team_sizes` -- CREATE TABLE `team_sizes` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `slug` varchar(255) NOT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `team_sizes` -- INSERT INTO `team_sizes` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES (1, 'Only Me', 'only-me', NULL, NULL), (2, '1-5 Members', '1-5-members', NULL, NULL), (3, '5-10 Members', '5-10-members', NULL, NULL), (4, '10-20 Members', '10-20-members', NULL, NULL), (5, '20-50 Members', '20-50-members', NULL, NULL), (6, '50-100 Members', '50-100-members', NULL, NULL), (7, '100-200 Members', '100-200-members', NULL, NULL), (8, '200-300 Members', '200-300-members', NULL, NULL), (9, '300-400 Members', '300-400-members', NULL, NULL), (10, '500+ Members', '500-members', NULL, NULL); -- -------------------------------------------------------- -- -- Table structure for table `users` -- CREATE TABLE `users` ( `id` bigint(20) UNSIGNED NOT NULL, `name` varchar(255) NOT NULL, `image` varchar(255) NOT NULL DEFAULT '/default-uploads/avatar.png', `email` varchar(255) NOT NULL, `email_verified_at` timestamp NULL DEFAULT NULL, `role` enum('company','candidate') NOT NULL DEFAULT 'candidate', `password` varchar(255) NOT NULL, `remember_token` varchar(100) DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `users` -- INSERT INTO `users` (`id`, `name`, `image`, `email`, `email_verified_at`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES (1, 'Fleur Stevenson', '/default-uploads/avatar.png', 'candidate@gmail.com', NULL, 'candidate', '$2y$12$emm8TiuImnTh2NnoDwKI1OqlZK6uuo/FBpNcv7RVN3xyW0Uvp7G5a', NULL, '2024-02-07 23:23:55', '2024-02-07 23:23:55'), (2, 'Torrance Eichmann', '/default-uploads/avatar.png', 'mckenzie.alvis@gmail.com', NULL, 'candidate', '$2y$12$uigaYQMUxXMd0WAolzQ3Z.M65jHH5cN4RFoX7tdZkxVX09RgqCT0y', NULL, '2024-02-08 01:06:38', '2024-02-08 01:06:38'), (3, 'Prof. Kattie Herzog', '/default-uploads/avatar.png', 'hilpert.meggie@gmail.com', NULL, 'candidate', '$2y$12$62W/CMAjAEqUTm6dgCTXYO5o2eSeUT9Ffoovazm41aYBCTgRmFewC', NULL, '2024-02-08 01:06:38', '2024-02-08 01:06:38'), (4, 'Prof. Tyler Bayer', '/default-uploads/avatar.png', 'murray.claudie@gmail.com', NULL, 'candidate', '$2y$12$H1F.ZdOLdcucxrofVjiGaO533Lz1Twj/yoDBlo73X8ZvQo2YS748C', NULL, '2024-02-08 01:06:39', '2024-02-08 01:06:39'), (5, 'Filiberto McCullough', '/default-uploads/avatar.png', 'dion67@bartell.com', NULL, 'candidate', '$2y$12$Zw18MuqlpPE9TfH5ZYGo5.K8TqXHl6AXjK6j1A2dCevER5H2vGWnq', NULL, '2024-02-08 01:06:39', '2024-02-08 01:06:39'), (6, 'Bradly Fadel', '/default-uploads/avatar.png', 'harris.tabitha@frami.net', NULL, 'candidate', '$2y$12$Jcd5afGaqfypZ5ECwmX8vejVBi0c9XKwRcy5cJ1YBsn.RZVzb5PW6', NULL, '2024-02-08 01:06:39', '2024-02-08 01:06:39'), (7, 'Elna Prohaska', '/default-uploads/avatar.png', 'abernathy.davon@medhurst.org', NULL, 'candidate', '$2y$12$P2y6nBuwmRIE7ydTq3vz8OGXB6YSW2gFK7zOgKNPth3ZYsXDOXPe2', NULL, '2024-02-08 01:06:40', '2024-02-08 01:06:40'), (8, 'Alexandro Reilly III', '/default-uploads/avatar.png', 'terrance50@gmail.com', NULL, 'candidate', '$2y$12$NKriQuepWYP0YSIkr45OE.SMeO/OlNucrVJ2hIQyC8fLvNcLY6sKW', NULL, '2024-02-08 01:06:40', '2024-02-08 01:06:40'), (9, 'Napoleon Wiegand', '/default-uploads/avatar.png', 'kdavis@gmail.com', NULL, 'candidate', '$2y$12$SU7BWV9Q2Y9X7y/29TJHyeZbyqoTyctUXnWf7Vr2R36n9ken91v2m', NULL, '2024-02-08 01:06:40', '2024-02-08 01:06:40'), (10, 'Prof. Misael Howell V', '/default-uploads/avatar.png', 'hodkiewicz.angelina@grady.com', NULL, 'candidate', '$2y$12$ZzU0uPxyGrTUVFj.ca21Je0uuphZirZkIUwRt56wUmsNahQI3QLS.', NULL, '2024-02-08 01:06:40', '2024-02-08 01:06:40'), (11, 'Prof. Domenico O\'Reilly', '/default-uploads/avatar.png', 'elyse51@hotmail.com', NULL, 'candidate', '$2y$12$n3GjZLPqVKK0O8ZttEF5t.BILn8UfsLmaYHCGXahys4GLPTXYw9le', NULL, '2024-02-08 01:06:41', '2024-02-08 01:06:41'), (12, 'Sofia Kuvalis', '/default-uploads/avatar.png', 'amos39@will.com', NULL, 'candidate', '$2y$12$JZt7nA5DQdRHmBeyGoj6xO.lbvIBTyM92oX80RtM65manjGC3OW.K', NULL, '2024-02-08 01:06:41', '2024-02-08 01:06:41'), (13, 'Eryn Bartell', '/default-uploads/avatar.png', 'nienow.alberto@hotmail.com', NULL, 'candidate', '$2y$12$r1o2j2j80sg4BE3Cm3VFQeQF3yz5wr8hmNZk4aANR9h0hBeLtPA66', NULL, '2024-02-08 01:06:41', '2024-02-08 01:06:41'), (14, 'Rita Dickinson DDS', '/default-uploads/avatar.png', 'shanon39@hotmail.com', NULL, 'candidate', '$2y$12$p/15VX.xISxfh0m/MWlkqe/gPwA0NWGIegLijhAuq1b0lFv4rMRsa', NULL, '2024-02-08 01:06:42', '2024-02-08 01:06:42'), (15, 'Sanford Hill', '/default-uploads/avatar.png', 'hauck.lue@bartell.com', NULL, 'candidate', '$2y$12$lAeh6Bdwg8cp.Uj/CZlyv.O9ABD7GJjJKwGD/jJhhjnR3mMCC8tUW', NULL, '2024-02-08 01:06:42', '2024-02-08 01:06:42'), (16, 'Dr. Nikko Becker II', '/default-uploads/avatar.png', 'upton.bartholome@haley.info', NULL, 'candidate', '$2y$12$xXNfCCklqz2EgFm9ltxaoe5IGm/j4SLIBu7Ff/4hKPV2DQ1G7NBPe', NULL, '2024-02-08 01:06:42', '2024-02-08 01:06:42'), (17, 'Dr. Michael Gutkowski', '/default-uploads/avatar.png', 'bernhard.demetris@lesch.biz', NULL, 'candidate', '$2y$12$cckavZF3LTHbrafZpparU.XSXvtWjLPVOx7JJ92hYBqYU45qDHloC', NULL, '2024-02-08 01:06:42', '2024-02-08 01:06:42'), (18, 'Clemens Fisher I', '/default-uploads/avatar.png', 'keegan.lang@cassin.net', NULL, 'candidate', '$2y$12$HXGHd4F.MaxlC5KKcXXeHuHuRNOYw7cGVKUKvpcD7wYfh55LQ9Ity', NULL, '2024-02-08 01:06:43', '2024-02-08 01:06:43'), (19, 'Dr. Gus Green', '/default-uploads/avatar.png', 'henry66@gmail.com', NULL, 'candidate', '$2y$12$ahgHdhKJ860nWf6u5HQ71Oebopr6FxO.q5h0NOz1AIbVBKwciCp0q', NULL, '2024-02-08 01:06:43', '2024-02-08 01:06:43'), (20, 'Prof. Elwin Hintz DVM', '/default-uploads/avatar.png', 'maureen52@auer.com', NULL, 'candidate', '$2y$12$m4pSz5QXRt1sGMvdSrHYIu3CqdkXz1EKyYgzJ4oqYnVndlIEPnCKK', NULL, '2024-02-08 01:06:43', '2024-02-08 01:06:43'), (21, 'Noemi Bruen', '/default-uploads/avatar.png', 'jerde.maynard@yahoo.com', NULL, 'candidate', '$2y$12$WwQsRCbHcFumpnTp4GuJcu2Fux8vL.lBvuxm0v3WXcNsE8dj.Crdq', NULL, '2024-02-08 01:06:44', '2024-02-08 01:06:44'), (22, 'Mya Hauck', '/default-uploads/avatar.png', 'company@gmail.com', NULL, 'company', '$2y$12$ihXkKtItdgkBtiGOCFOajOgMEfbF9U8l6cozympu8QtUj/Dsx.s7e', NULL, '2024-02-08 03:53:38', '2024-02-08 03:53:38'), (23, 'Francesca Marks', '/default-uploads/avatar.png', 'kking@dach.net', NULL, 'company', '$2y$12$xyLnl0YZJ5bObOfbCMOmSOaWajPwpeiKyiiWYMrDrsIpntR6KPynu', NULL, '2024-02-08 03:53:38', '2024-02-08 03:53:38'), (24, 'Lonnie Zemlak', '/default-uploads/avatar.png', 'adrienne.johnson@abshire.biz', NULL, 'company', '$2y$12$mbxmWG7J6v/nlo266t3mSeyL7AWr31mGRhiugiftm6bbTfiKMpcDG', NULL, '2024-02-08 03:53:39', '2024-02-08 03:53:39'), (25, 'Prof. Everett Abshire', '/default-uploads/avatar.png', 'dkuvalis@ledner.com', NULL, 'company', '$2y$12$K43eE4E36lFH6LqL73lUIehS21puvqNXzBAnqdKoX6DQpZNXxFCFq', NULL, '2024-02-08 03:53:39', '2024-02-08 03:53:39'), (26, 'Cristian Lesch', '/default-uploads/avatar.png', 'kemmer.clair@hotmail.com', NULL, 'company', '$2y$12$0JJTkTqbbYrKOaN9JWJt6uWtFXqNMEhe/56DKewIhhc2YE1INjSg.', NULL, '2024-02-08 03:53:39', '2024-02-08 03:53:39'), (27, 'Clementine Barton II', '/default-uploads/avatar.png', 'dkirlin@keebler.net', NULL, 'company', '$2y$12$bK3Z/HT3lM31suWioaUrwexbGn0oVVOswdcvit13UwUTCCuIu7Amy', NULL, '2024-02-08 03:53:40', '2024-02-08 03:53:40'), (28, 'Susie Boyle', '/default-uploads/avatar.png', 'fhand@rempel.org', NULL, 'company', '$2y$12$FGJBxSJG9hxtzhuf5jqx..0Vz7WKtj9v1FetRKdXDFLCOUtumce..', NULL, '2024-02-08 03:53:40', '2024-02-08 03:53:40'), (29, 'Adolphus Balistreri', '/default-uploads/avatar.png', 'madie.gleason@yahoo.com', NULL, 'company', '$2y$12$tLaUSrIytThrIopTmNvID.hv31hjEKZzcIrwlta73T4pfPscU0tZO', NULL, '2024-02-08 03:53:40', '2024-02-08 03:53:40'), (30, 'Fiona Ledner', '/default-uploads/avatar.png', 'mathilde25@lueilwitz.info', NULL, 'company', '$2y$12$2Iz0LhutbDNDCytb0Gu6RexH9cMbgC1ccNtNdc9yTJAKlGuOZCEza', NULL, '2024-02-08 03:53:40', '2024-02-08 03:53:40'), (31, 'Prof. Oren Anderson II', '/default-uploads/avatar.png', 'waino.lind@hotmail.com', NULL, 'company', '$2y$12$MpdR4A8QvQxvz/Z.xQWYAudLWpIMO.0qP05gLNVqZJAEkB/iGa5/G', NULL, '2024-02-08 03:53:41', '2024-02-08 03:53:41'), (32, 'Ms. Isabelle Grant', '/default-uploads/avatar.png', 'agoodwin@haag.org', NULL, 'company', '$2y$12$DPixN9QrU985sEg9IhXJ9O4NuQoWOXtaEgmzhctejkiqgpge7OzpK', NULL, '2024-02-08 03:53:41', '2024-02-08 03:53:41'), (33, 'Litzy Donnelly', '/default-uploads/avatar.png', 'heidi.pfannerstill@kuhic.com', NULL, 'company', '$2y$12$r/WDzlGRGARt8ufra50GHuzDdotC6G2pN/8W9NeHQQw..tlIBYcIy', NULL, '2024-02-08 03:53:41', '2024-02-08 03:53:41'), (34, 'Lexus Crona', '/default-uploads/avatar.png', 'bins.abdul@hotmail.com', NULL, 'company', '$2y$12$RurK6XxgqjDl2170PT2OIONhXb2gR97WIGZkD9qRugmE7LUTnm/nq', NULL, '2024-02-08 03:53:42', '2024-02-08 03:53:42'), (35, 'Prof. Lexie Crist', '/default-uploads/avatar.png', 'qbode@rau.com', NULL, 'company', '$2y$12$fnULHjcNHh6KmCNJbHMm7ummRe/o3oRRMLZqMxBpn9ho.ZrWfVo7e', NULL, '2024-02-08 03:53:42', '2024-02-08 03:53:42'), (36, 'Darrick Shanahan', '/default-uploads/avatar.png', 'ozella86@turcotte.com', NULL, 'company', '$2y$12$mxe.mX0ukLYIDti023WqZ.FLvw2veSPOl7xpzwIeDNxsjXds2PMwO', NULL, '2024-02-08 03:53:42', '2024-02-08 03:53:42'), (37, 'Tomasa Crist', '/default-uploads/avatar.png', 'ggutmann@stroman.biz', NULL, 'company', '$2y$12$mUnbBfiBBOk.TZUStC8PZ.AzYO.dHlMpQmn9pFVzDwDSau3WzBK72', NULL, '2024-02-08 03:53:43', '2024-02-08 03:53:43'), (38, 'Johann Kris', '/default-uploads/avatar.png', 'apollich@hotmail.com', NULL, 'company', '$2y$12$wfqfhhN1Fzv9ulrE14/LCu.DFAIzrLnqO6MKeziCCZVxwzs1QluNS', NULL, '2024-02-08 03:53:43', '2024-02-08 03:53:43'), (39, 'Dr. Dusty Block IV', '/default-uploads/avatar.png', 'brandy37@stehr.com', NULL, 'company', '$2y$12$8Bn/8zRMmlGx4m8qHIPwBO.jfHm82bpeYn21wZ8wYXLgABR/aywNS', NULL, '2024-02-08 03:53:43', '2024-02-08 03:53:43'), (40, 'Aurelie Stroman', '/default-uploads/avatar.png', 'lea55@gmail.com', NULL, 'company', '$2y$12$6Nm0uHXbRJtKEfPEup6LceodFKwN2y9hJIctTxqLc268qNJYauqAy', NULL, '2024-02-08 03:53:43', '2024-02-08 03:53:43'), (41, 'Sedrick Kessler', '/default-uploads/avatar.png', 'desiree74@gibson.com', NULL, 'company', '$2y$12$bZaCP9DGYhpqp1bNtEBViewfBBN7ifmtMGM46jXlmBq/r2gDdRaaG', NULL, '2024-02-08 03:53:44', '2024-02-08 03:53:44'), (43, 'aaaaaaa', '/default-uploads/avatar.png', 'minhtu270404@gmail.com', NULL, 'candidate', '$2y$12$dgg8nW3x0ThTh6MPkGQpWO0C8iDZDXVOZUR5V0wfq5PpH/YYxwEa6', NULL, '2025-11-19 02:38:47', '2025-11-19 02:38:47'); -- -------------------------------------------------------- -- -- Table structure for table `user_plans` -- CREATE TABLE `user_plans` ( `id` bigint(20) UNSIGNED NOT NULL, `company_id` bigint(20) UNSIGNED NOT NULL, `plan_id` bigint(20) UNSIGNED NOT NULL, `job_limit` int(11) NOT NULL DEFAULT 0, `featured_job_limit` int(11) NOT NULL DEFAULT 0, `highlight_job_limit` int(11) NOT NULL DEFAULT 0, `profile_verified` int(11) NOT NULL DEFAULT 0, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `user_plans` -- INSERT INTO `user_plans` (`id`, `company_id`, `plan_id`, `job_limit`, `featured_job_limit`, `highlight_job_limit`, `profile_verified`, `created_at`, `updated_at`) VALUES (1, 1, 3, 13, 5, 6, 1, '2024-02-08 22:15:20', '2024-02-08 22:37:06'), (2, 2, 3, 12, 4, 5, 1, '2024-02-08 22:51:17', '2024-02-08 23:04:23'), (3, 3, 3, 2, 2, 7, 1, '2024-02-08 23:10:23', '2024-02-08 23:53:15'); -- -------------------------------------------------------- -- -- Table structure for table `why_choose_us` -- CREATE TABLE `why_choose_us` ( `id` bigint(20) UNSIGNED NOT NULL, `icon_one` varchar(255) DEFAULT NULL, `title_one` varchar(255) DEFAULT NULL, `sub_title_one` varchar(255) DEFAULT NULL, `icon_two` varchar(255) DEFAULT NULL, `title_two` varchar(255) DEFAULT NULL, `sub_title_two` varchar(255) DEFAULT NULL, `icon_three` varchar(255) DEFAULT NULL, `title_three` varchar(255) DEFAULT NULL, `sub_title_three` varchar(255) DEFAULT NULL, `created_at` timestamp NULL DEFAULT NULL, `updated_at` timestamp NULL DEFAULT NULL ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci; -- -- Dumping data for table `why_choose_us` -- INSERT INTO `why_choose_us` (`id`, `icon_one`, `title_one`, `sub_title_one`, `icon_two`, `title_two`, `sub_title_two`, `icon_three`, `title_three`, `sub_title_three`, `created_at`, `updated_at`) VALUES (1, 'fas fa-dollar-sign', 'Chi phí hiệu quả', 'obList giúp doanh nghiệp tiếp cận ứng viên đúng nhu cầu với mức chi phí cạnh tranh, phù hợp cho cả doanh nghiệp lớn lẫn nhỏ.', 'fas fa-check', 'Dễ sử dụng', 'Giao diện đơn giản, thao tác rõ ràng giúp bạn dễ dàng đăng tin, theo dõi ứng viên và quản lý toàn bộ quy trình tuyển dụng chỉ trong vài phút.', 'fas fa-award', 'Ứng viên chất lượng', 'Hệ thống lọc thông minh và lượng hồ sơ lớn giúp bạn nhanh chóng tìm được ứng viên phù hợp, tăng tỷ lệ tuyển dụng thành công.', '2024-02-09 03:14:36', '2024-02-09 03:14:36'); -- -- Indexes for dumped tables -- -- -- Indexes for table `abouts` -- ALTER TABLE `abouts` ADD PRIMARY KEY (`id`); -- -- Indexes for table `admins` -- ALTER TABLE `admins` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `admins_email_unique` (`email`); -- -- Indexes for table `admin_menus` -- ALTER TABLE `admin_menus` ADD PRIMARY KEY (`id`); -- -- Indexes for table `admin_menu_items` -- ALTER TABLE `admin_menu_items` ADD PRIMARY KEY (`id`), ADD KEY `admin_menu_items_menu_id_foreign` (`menu_id`); -- -- Indexes for table `applied_jobs` -- ALTER TABLE `applied_jobs` ADD PRIMARY KEY (`id`); -- -- Indexes for table `benefits` -- ALTER TABLE `benefits` ADD PRIMARY KEY (`id`); -- -- Indexes for table `blogs` -- ALTER TABLE `blogs` ADD PRIMARY KEY (`id`), ADD KEY `blogs_author_id_foreign` (`author_id`); -- -- Indexes for table `candidates` -- ALTER TABLE `candidates` ADD PRIMARY KEY (`id`), ADD KEY `candidates_user_id_foreign` (`user_id`); -- -- Indexes for table `candidate_education` -- ALTER TABLE `candidate_education` ADD PRIMARY KEY (`id`), ADD KEY `candidate_education_candidate_id_foreign` (`candidate_id`); -- -- Indexes for table `candidate_experiences` -- ALTER TABLE `candidate_experiences` ADD PRIMARY KEY (`id`), ADD KEY `candidate_experiences_candidate_id_foreign` (`candidate_id`); -- -- Indexes for table `candidate_languages` -- ALTER TABLE `candidate_languages` ADD PRIMARY KEY (`id`), ADD KEY `candidate_languages_candidate_id_foreign` (`candidate_id`); -- -- Indexes for table `candidate_skills` -- ALTER TABLE `candidate_skills` ADD PRIMARY KEY (`id`), ADD KEY `candidate_skills_candidate_id_foreign` (`candidate_id`); -- -- Indexes for table `cities` -- ALTER TABLE `cities` ADD PRIMARY KEY (`id`); -- -- Indexes for table `companies` -- ALTER TABLE `companies` ADD PRIMARY KEY (`id`), ADD KEY `companies_user_id_foreign` (`user_id`); -- -- Indexes for table `counters` -- ALTER TABLE `counters` ADD PRIMARY KEY (`id`); -- -- Indexes for table `countries` -- ALTER TABLE `countries` ADD PRIMARY KEY (`id`); -- -- Indexes for table `custom_page_builders` -- ALTER TABLE `custom_page_builders` ADD PRIMARY KEY (`id`); -- -- Indexes for table `education` -- ALTER TABLE `education` ADD PRIMARY KEY (`id`); -- -- Indexes for table `experiences` -- ALTER TABLE `experiences` ADD PRIMARY KEY (`id`); -- -- Indexes for table `failed_jobs` -- ALTER TABLE `failed_jobs` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`); -- -- Indexes for table `footers` -- ALTER TABLE `footers` ADD PRIMARY KEY (`id`); -- -- Indexes for table `heroes` -- ALTER TABLE `heroes` ADD PRIMARY KEY (`id`); -- -- Indexes for table `industry_types` -- ALTER TABLE `industry_types` ADD PRIMARY KEY (`id`); -- -- Indexes for table `jobs` -- ALTER TABLE `jobs` ADD PRIMARY KEY (`id`), ADD KEY `jobs_company_id_foreign` (`company_id`), ADD KEY `jobs_job_category_id_foreign` (`job_category_id`); -- -- Indexes for table `job_benefits` -- ALTER TABLE `job_benefits` ADD PRIMARY KEY (`id`), ADD KEY `job_benefits_job_id_foreign` (`job_id`); -- -- Indexes for table `job_bookmarks` -- ALTER TABLE `job_bookmarks` ADD PRIMARY KEY (`id`); -- -- Indexes for table `job_categories` -- ALTER TABLE `job_categories` ADD PRIMARY KEY (`id`); -- -- Indexes for table `job_experiences` -- ALTER TABLE `job_experiences` ADD PRIMARY KEY (`id`); -- -- Indexes for table `job_locations` -- ALTER TABLE `job_locations` ADD PRIMARY KEY (`id`); -- -- Indexes for table `job_roles` -- ALTER TABLE `job_roles` ADD PRIMARY KEY (`id`); -- -- Indexes for table `job_skills` -- ALTER TABLE `job_skills` ADD PRIMARY KEY (`id`), ADD KEY `job_skills_job_id_foreign` (`job_id`); -- -- Indexes for table `job_tags` -- ALTER TABLE `job_tags` ADD PRIMARY KEY (`id`), ADD KEY `job_tags_job_id_foreign` (`job_id`); -- -- Indexes for table `job_types` -- ALTER TABLE `job_types` ADD PRIMARY KEY (`id`); -- -- Indexes for table `languages` -- ALTER TABLE `languages` ADD PRIMARY KEY (`id`); -- -- Indexes for table `learn_mores` -- ALTER TABLE `learn_mores` ADD PRIMARY KEY (`id`); -- -- Indexes for table `migrations` -- ALTER TABLE `migrations` ADD PRIMARY KEY (`id`); -- -- Indexes for table `model_has_permissions` -- ALTER TABLE `model_has_permissions` ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`), ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`); -- -- Indexes for table `model_has_roles` -- ALTER TABLE `model_has_roles` ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`), ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`); -- -- Indexes for table `orders` -- ALTER TABLE `orders` ADD PRIMARY KEY (`id`), ADD KEY `orders_company_id_foreign` (`company_id`); -- -- Indexes for table `organization_types` -- ALTER TABLE `organization_types` ADD PRIMARY KEY (`id`); -- -- Indexes for table `password_reset_tokens` -- ALTER TABLE `password_reset_tokens` ADD PRIMARY KEY (`email`); -- -- Indexes for table `payment_settings` -- ALTER TABLE `payment_settings` ADD PRIMARY KEY (`id`); -- -- Indexes for table `permissions` -- ALTER TABLE `permissions` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`); -- -- Indexes for table `personal_access_tokens` -- ALTER TABLE `personal_access_tokens` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`), ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`); -- -- Indexes for table `plans` -- ALTER TABLE `plans` ADD PRIMARY KEY (`id`); -- -- Indexes for table `professions` -- ALTER TABLE `professions` ADD PRIMARY KEY (`id`); -- -- Indexes for table `reviews` -- ALTER TABLE `reviews` ADD PRIMARY KEY (`id`); -- -- Indexes for table `roles` -- ALTER TABLE `roles` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`); -- -- Indexes for table `role_has_permissions` -- ALTER TABLE `role_has_permissions` ADD PRIMARY KEY (`permission_id`,`role_id`), ADD KEY `role_has_permissions_role_id_foreign` (`role_id`); -- -- Indexes for table `salary_types` -- ALTER TABLE `salary_types` ADD PRIMARY KEY (`id`); -- -- Indexes for table `site_settings` -- ALTER TABLE `site_settings` ADD PRIMARY KEY (`id`); -- -- Indexes for table `skills` -- ALTER TABLE `skills` ADD PRIMARY KEY (`id`); -- -- Indexes for table `social_icons` -- ALTER TABLE `social_icons` ADD PRIMARY KEY (`id`); -- -- Indexes for table `states` -- ALTER TABLE `states` ADD PRIMARY KEY (`id`), ADD KEY `states_country_id_foreign` (`country_id`); -- -- Indexes for table `subscribers` -- ALTER TABLE `subscribers` ADD PRIMARY KEY (`id`); -- -- Indexes for table `tags` -- ALTER TABLE `tags` ADD PRIMARY KEY (`id`); -- -- Indexes for table `team_sizes` -- ALTER TABLE `team_sizes` ADD PRIMARY KEY (`id`); -- -- Indexes for table `users` -- ALTER TABLE `users` ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`); -- -- Indexes for table `user_plans` -- ALTER TABLE `user_plans` ADD PRIMARY KEY (`id`), ADD KEY `user_plans_company_id_foreign` (`company_id`); -- -- Indexes for table `why_choose_us` -- ALTER TABLE `why_choose_us` ADD PRIMARY KEY (`id`); -- -- AUTO_INCREMENT for dumped tables -- -- -- AUTO_INCREMENT for table `abouts` -- ALTER TABLE `abouts` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `admins` -- ALTER TABLE `admins` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `admin_menus` -- ALTER TABLE `admin_menus` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7; -- -- AUTO_INCREMENT for table `admin_menu_items` -- ALTER TABLE `admin_menu_items` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32; -- -- AUTO_INCREMENT for table `applied_jobs` -- ALTER TABLE `applied_jobs` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `benefits` -- ALTER TABLE `benefits` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166; -- -- AUTO_INCREMENT for table `blogs` -- ALTER TABLE `blogs` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4; -- -- AUTO_INCREMENT for table `candidates` -- ALTER TABLE `candidates` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13; -- -- AUTO_INCREMENT for table `candidate_education` -- ALTER TABLE `candidate_education` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22; -- -- AUTO_INCREMENT for table `candidate_experiences` -- ALTER TABLE `candidate_experiences` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32; -- -- AUTO_INCREMENT for table `candidate_languages` -- ALTER TABLE `candidate_languages` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42; -- -- AUTO_INCREMENT for table `candidate_skills` -- ALTER TABLE `candidate_skills` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68; -- -- AUTO_INCREMENT for table `cities` -- ALTER TABLE `cities` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10; -- -- AUTO_INCREMENT for table `companies` -- ALTER TABLE `companies` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16; -- -- AUTO_INCREMENT for table `counters` -- ALTER TABLE `counters` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `countries` -- ALTER TABLE `countries` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=268; -- -- AUTO_INCREMENT for table `custom_page_builders` -- ALTER TABLE `custom_page_builders` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `education` -- ALTER TABLE `education` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6; -- -- AUTO_INCREMENT for table `experiences` -- ALTER TABLE `experiences` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9; -- -- AUTO_INCREMENT for table `failed_jobs` -- ALTER TABLE `failed_jobs` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `footers` -- ALTER TABLE `footers` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `heroes` -- ALTER TABLE `heroes` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `industry_types` -- ALTER TABLE `industry_types` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21; -- -- AUTO_INCREMENT for table `jobs` -- ALTER TABLE `jobs` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36; -- -- AUTO_INCREMENT for table `job_benefits` -- ALTER TABLE `job_benefits` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166; -- -- AUTO_INCREMENT for table `job_bookmarks` -- ALTER TABLE `job_bookmarks` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `job_categories` -- ALTER TABLE `job_categories` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31; -- -- AUTO_INCREMENT for table `job_experiences` -- ALTER TABLE `job_experiences` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `job_locations` -- ALTER TABLE `job_locations` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10; -- -- AUTO_INCREMENT for table `job_roles` -- ALTER TABLE `job_roles` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21; -- -- AUTO_INCREMENT for table `job_skills` -- ALTER TABLE `job_skills` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157; -- -- AUTO_INCREMENT for table `job_tags` -- ALTER TABLE `job_tags` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175; -- -- AUTO_INCREMENT for table `job_types` -- ALTER TABLE `job_types` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11; -- -- AUTO_INCREMENT for table `languages` -- ALTER TABLE `languages` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6; -- -- AUTO_INCREMENT for table `learn_mores` -- ALTER TABLE `learn_mores` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `migrations` -- ALTER TABLE `migrations` MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58; -- -- AUTO_INCREMENT for table `orders` -- ALTER TABLE `orders` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4; -- -- AUTO_INCREMENT for table `organization_types` -- ALTER TABLE `organization_types` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7; -- -- AUTO_INCREMENT for table `payment_settings` -- ALTER TABLE `payment_settings` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21; -- -- AUTO_INCREMENT for table `permissions` -- ALTER TABLE `permissions` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24; -- -- AUTO_INCREMENT for table `personal_access_tokens` -- ALTER TABLE `personal_access_tokens` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT; -- -- AUTO_INCREMENT for table `plans` -- ALTER TABLE `plans` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4; -- -- AUTO_INCREMENT for table `professions` -- ALTER TABLE `professions` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21; -- -- AUTO_INCREMENT for table `reviews` -- ALTER TABLE `reviews` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6; -- -- AUTO_INCREMENT for table `roles` -- ALTER TABLE `roles` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- AUTO_INCREMENT for table `salary_types` -- ALTER TABLE `salary_types` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5; -- -- AUTO_INCREMENT for table `site_settings` -- ALTER TABLE `site_settings` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7; -- -- AUTO_INCREMENT for table `skills` -- ALTER TABLE `skills` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86; -- -- AUTO_INCREMENT for table `social_icons` -- ALTER TABLE `social_icons` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5; -- -- AUTO_INCREMENT for table `states` -- ALTER TABLE `states` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5236; -- -- AUTO_INCREMENT for table `subscribers` -- ALTER TABLE `subscribers` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3; -- -- AUTO_INCREMENT for table `tags` -- ALTER TABLE `tags` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21; -- -- AUTO_INCREMENT for table `team_sizes` -- ALTER TABLE `team_sizes` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11; -- -- AUTO_INCREMENT for table `users` -- ALTER TABLE `users` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44; -- -- AUTO_INCREMENT for table `user_plans` -- ALTER TABLE `user_plans` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4; -- -- AUTO_INCREMENT for table `why_choose_us` -- ALTER TABLE `why_choose_us` MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2; -- -- Constraints for dumped tables -- -- -- Constraints for table `admin_menu_items` -- ALTER TABLE `admin_menu_items` ADD CONSTRAINT `admin_menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `admin_menus` (`id`) ON DELETE CASCADE ON UPDATE CASCADE; -- -- Constraints for table `blogs` -- ALTER TABLE `blogs` ADD CONSTRAINT `blogs_author_id_foreign` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`); -- -- Constraints for table `candidates` -- ALTER TABLE `candidates` ADD CONSTRAINT `candidates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`); -- -- Constraints for table `candidate_education` -- ALTER TABLE `candidate_education` ADD CONSTRAINT `candidate_education_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE; -- -- Constraints for table `candidate_experiences` -- ALTER TABLE `candidate_experiences` ADD CONSTRAINT `candidate_experiences_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE; -- -- Constraints for table `candidate_languages` -- ALTER TABLE `candidate_languages` ADD CONSTRAINT `candidate_languages_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE; -- -- Constraints for table `candidate_skills` -- ALTER TABLE `candidate_skills` ADD CONSTRAINT `candidate_skills_candidate_id_foreign` FOREIGN KEY (`candidate_id`) REFERENCES `candidates` (`id`) ON DELETE CASCADE; -- -- Constraints for table `companies` -- ALTER TABLE `companies` ADD CONSTRAINT `companies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`); -- -- Constraints for table `jobs` -- ALTER TABLE `jobs` ADD CONSTRAINT `jobs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`), ADD CONSTRAINT `jobs_job_category_id_foreign` FOREIGN KEY (`job_category_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE; -- -- Constraints for table `job_benefits` -- ALTER TABLE `job_benefits` ADD CONSTRAINT `job_benefits_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE; -- -- Constraints for table `job_skills` -- ALTER TABLE `job_skills` ADD CONSTRAINT `job_skills_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE; -- -- Constraints for table `job_tags` -- ALTER TABLE `job_tags` ADD CONSTRAINT `job_tags_job_id_foreign` FOREIGN KEY (`job_id`) REFERENCES `jobs` (`id`) ON DELETE CASCADE; -- -- Constraints for table `model_has_permissions` -- ALTER TABLE `model_has_permissions` ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE; -- -- Constraints for table `model_has_roles` -- ALTER TABLE `model_has_roles` ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE; -- -- Constraints for table `orders` -- ALTER TABLE `orders` ADD CONSTRAINT `orders_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`); -- -- Constraints for table `role_has_permissions` -- ALTER TABLE `role_has_permissions` ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE, ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE; -- -- Constraints for table `states` -- ALTER TABLE `states` ADD CONSTRAINT `states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE; -- -- Constraints for table `user_plans` -- ALTER TABLE `user_plans` ADD CONSTRAINT `user_plans_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`); COMMIT; /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */; /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */; /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */; 