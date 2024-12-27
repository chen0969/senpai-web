-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 27, 2024 at 05:30 PM
-- Server version: 5.7.39
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `m19-bcard`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_us_carousels`
--

CREATE TABLE `about_us_carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '圖片位置',
  `is_active` tinyint(1) NOT NULL COMMENT '是否啟用',
  `sort` int(11) NOT NULL DEFAULT '0' COMMENT '圖片排序',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `about_us_contents`
--

CREATE TABLE `about_us_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '關於我們內文',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL),
(8, 0, 0, '文章管理', 'fa-book', 'posts', NULL, '2024-03-09 00:30:25', '2024-03-09 00:32:37'),
(9, 0, 0, '會員管理', 'fa-users', 'users', NULL, '2024-03-09 00:30:37', '2024-03-09 00:32:20'),
(10, 0, 0, '技能類別', 'fa-certificate', 'skills', NULL, '2024-03-09 00:30:53', '2024-03-18 23:41:06'),
(11, 0, 0, '主題類別', 'fa-hashtag', 'post-categories', NULL, '2024-03-09 00:31:16', '2024-03-18 23:40:31'),
(12, 0, 0, '學校管理', 'fa-building', 'universities', NULL, '2024-03-09 00:39:59', '2024-03-09 00:39:59'),
(13, 0, 0, '金流方案', 'fa-bars', 'pay-products', NULL, '2024-03-28 23:26:32', '2024-03-28 23:26:32'),
(14, 0, 0, '佈告欄管理', 'fa-bars', 'bulletin-boards', NULL, '2024-03-29 15:18:57', '2024-03-29 15:18:57');

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-09 00:29:30', '2024-03-09 00:29:30'),
(2, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-09 00:29:38', '2024-03-09 00:29:38'),
(3, 1, 'admin/auth/menu', 'POST', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"posts\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\"}', '2024-03-09 00:30:24', '2024-03-09 00:30:24'),
(4, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:30:25', '2024-03-09 00:30:25'),
(5, 1, 'admin/auth/menu', 'POST', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u6703\\u54e1\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\"}', '2024-03-09 00:30:37', '2024-03-09 00:30:37'),
(6, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:30:37', '2024-03-09 00:30:37'),
(7, 1, 'admin/auth/menu', 'POST', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u985e\\u5225\",\"icon\":\"fa-bars\",\"uri\":\"categories\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\"}', '2024-03-09 00:30:53', '2024-03-09 00:30:53'),
(8, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:30:53', '2024-03-09 00:30:53'),
(9, 1, 'admin/auth/menu', 'POST', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"Tag\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"post-tags\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\"}', '2024-03-09 00:31:16', '2024-03-09 00:31:16'),
(10, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:31:16', '2024-03-09 00:31:16'),
(11, 1, 'admin/auth/menu/11/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-09 00:31:22', '2024-03-09 00:31:22'),
(12, 1, 'admin/auth/menu/11', 'PUT', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"Tag\\u7ba1\\u7406\",\"icon\":\"fa-hashtag\",\"uri\":\"post-tags\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/auth\\/menu\"}', '2024-03-09 00:31:46', '2024-03-09 00:31:46'),
(13, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:31:47', '2024-03-09 00:31:47'),
(14, 1, 'admin/auth/menu/10/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-09 00:31:50', '2024-03-09 00:31:50'),
(15, 1, 'admin/auth/menu/10', 'PUT', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u985e\\u5225\",\"icon\":\"fa-certificate\",\"uri\":\"categories\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/auth\\/menu\"}', '2024-03-09 00:32:01', '2024-03-09 00:32:01'),
(16, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:32:01', '2024-03-09 00:32:01'),
(17, 1, 'admin/auth/menu/9/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-09 00:32:13', '2024-03-09 00:32:13'),
(18, 1, 'admin/auth/menu/9', 'PUT', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u6703\\u54e1\\u7ba1\\u7406\",\"icon\":\"fa-users\",\"uri\":\"users\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/auth\\/menu\"}', '2024-03-09 00:32:20', '2024-03-09 00:32:20'),
(19, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:32:20', '2024-03-09 00:32:20'),
(20, 1, 'admin/auth/menu/8/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-09 00:32:27', '2024-03-09 00:32:27'),
(21, 1, 'admin/auth/menu/8', 'PUT', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u6587\\u7ae0\\u7ba1\\u7406\",\"icon\":\"fa-book\",\"uri\":\"posts\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/auth\\/menu\"}', '2024-03-09 00:32:37', '2024-03-09 00:32:37'),
(22, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:32:37', '2024-03-09 00:32:37'),
(23, 1, 'admin/auth/menu', 'POST', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u5b78\\u6821\\u7ba1\\u7406\",\"icon\":\"fa-building\",\"uri\":\"universities\",\"roles\":[null],\"permission\":null,\"_token\":\"IFHmG16TV44Vs2fVKrDzGPQG1tioPk5KUvVZjCs5\"}', '2024-03-09 00:39:59', '2024-03-09 00:39:59'),
(24, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-09 00:39:59', '2024-03-09 00:39:59'),
(25, 1, 'admin/universities', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-09 00:40:00', '2024-03-09 00:40:00'),
(26, 1, 'admin/universities/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-09 00:40:02', '2024-03-09 00:40:02'),
(27, 1, 'admin/universities', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-09 00:40:05', '2024-03-09 00:40:05'),
(28, 1, 'admin', 'GET', '118.99.2.39', '[]', '2024-03-13 10:05:48', '2024-03-13 10:05:48'),
(29, 1, 'admin/users', 'GET', '118.99.2.39', '{\"_pjax\":\"#pjax-container\"}', '2024-03-13 10:05:56', '2024-03-13 10:05:56'),
(30, 1, 'admin/users', 'GET', '118.99.2.39', '[]', '2024-03-13 10:06:00', '2024-03-13 10:06:00'),
(31, 1, 'admin', 'GET', '118.99.2.39', '{\"_pjax\":\"#pjax-container\"}', '2024-03-13 10:08:08', '2024-03-13 10:08:08'),
(32, 1, 'admin', 'GET', '218.35.9.12', '[]', '2024-03-14 14:04:40', '2024-03-14 14:04:40'),
(33, 1, 'admin/users', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:04:43', '2024-03-14 14:04:43'),
(34, 1, 'admin/users', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:04:46', '2024-03-14 14:04:46'),
(35, 1, 'admin/users/create', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:04:47', '2024-03-14 14:04:47'),
(36, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f2937fc6074\",\"name\":\"\\u675c\\u66dc\\u4e98\",\"nickname\":null,\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"2024-03-14\",\"university\":null,\"email\":\"star62328@gmail.com\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":\"123321\",\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2024-03-14\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-14 14:05:27', '2024-03-14 14:05:27'),
(37, 1, 'admin/users', 'GET', '218.35.9.12', '[]', '2024-03-14 14:05:28', '2024-03-14 14:05:28'),
(38, 1, 'admin', 'GET', '218.35.9.12', '[]', '2024-03-14 14:09:06', '2024-03-14 14:09:06'),
(39, 1, 'admin/users', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:09:08', '2024-03-14 14:09:08'),
(40, 1, 'admin', 'GET', '218.35.9.12', '[]', '2024-03-14 14:10:34', '2024-03-14 14:10:34'),
(41, 1, 'admin/users', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:10:35', '2024-03-14 14:10:35'),
(42, 1, 'admin/users/create', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:10:37', '2024-03-14 14:10:37'),
(43, 1, 'admin/users/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:10:55', '2024-03-14 14:10:55'),
(44, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f294efe4be3\",\"name\":\"\\u9673\\u5148\\u751f\",\"nickname\":null,\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":null,\"email\":\"match19.com@gmail.com\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":\"123321\",\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2024-03-14 00:00:00\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\"}', '2024-03-14 14:11:24', '2024-03-14 14:11:24'),
(45, 1, 'admin/users', 'GET', '218.35.9.12', '[]', '2024-03-14 14:11:24', '2024-03-14 14:11:24'),
(46, 1, 'admin/users', 'GET', '218.35.9.12', '[]', '2024-03-14 14:11:26', '2024-03-14 14:11:26'),
(47, 1, 'admin/users', 'GET', '218.35.9.12', '[]', '2024-03-14 14:11:28', '2024-03-14 14:11:28'),
(48, 1, 'admin/users/create', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:12:11', '2024-03-14 14:12:11'),
(49, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f2953b10138\",\"name\":\"123\",\"nickname\":null,\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":null,\"email\":\"match19.com@gmail.com\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":\"123321\",\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2024-03-14 00:00:00\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-14 14:12:27', '2024-03-14 14:12:27'),
(50, 1, 'admin/users/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:12:27', '2024-03-14 14:12:27'),
(51, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f2953b10138\",\"name\":\"\\u675c\\u675c\",\"nickname\":null,\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":null,\"email\":\"match19.com@gmail.com\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":\"123321\",\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2024-03-14 00:00:00\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\"}', '2024-03-14 14:12:41', '2024-03-14 14:12:41'),
(52, 1, 'admin/users/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:12:41', '2024-03-14 14:12:41'),
(53, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f2953b10138\",\"name\":\"\\u675c\\u675c\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":null,\"email\":\"match19.com@gmail.com\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":\"123321\",\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2024-03-14 00:00:00\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\"}', '2024-03-14 14:12:47', '2024-03-14 14:12:47'),
(54, 1, 'admin/users/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:12:47', '2024-03-14 14:12:47'),
(55, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f2953b10138\",\"name\":\"\\u675c\\u675c\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":\"approve\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":null,\"email\":\"match19.com@gmail.com\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":\"123321\",\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2024-03-14 00:00:00\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\"}', '2024-03-14 14:13:03', '2024-03-14 14:13:03'),
(56, 1, 'admin/users/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:13:04', '2024-03-14 14:13:04'),
(57, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f2953b10138\",\"name\":\"\\u675c\\u675c\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":\"approve\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":null,\"email\":\"match19.com@gmail.com\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":\"123321\",\"description\":null,\"rate\":\"1\",\"ispaied\":\"on\",\"expired\":\"2024-03-14 00:00:00\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\"}', '2024-03-14 14:13:15', '2024-03-14 14:13:15'),
(58, 1, 'admin/users/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:13:15', '2024-03-14 14:13:15'),
(59, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f2953b10138\",\"name\":\"\\u675c\\u675c\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":\"approve\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":\"\\u4ea4\\u5927\",\"email\":\"match19.com@gmail.com\",\"phone\":\"00112233778\",\"line\":\"h123543\",\"address\":\"123453\",\"profile_video\":\"https:\\/\\/mail.google.com\\/mail\\/u\\/0\\/#sent\\/QgrcJHsHnNjJtWzVMZBRHZTxRXTLMqkjlQB\",\"profile_voice\":\"https:\\/\\/www.gomaji.com\\/store\\/95748\\/pid\\/305933\",\"password\":\"123321\",\"description\":null,\"rate\":\"1\",\"ispaied\":\"on\",\"expired\":\"2024-03-14 00:00:00\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\"}', '2024-03-14 14:13:40', '2024-03-14 14:13:40'),
(60, 1, 'admin/users/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:13:40', '2024-03-14 14:13:40'),
(61, 1, 'admin/users', 'POST', '218.35.9.12', '{\"uuid\":\"post-65f2953b101378\",\"name\":\"\\u675c\\u675c\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":\"approve\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":\"\\u4ea4\\u5927\",\"email\":\"match19.com@gmail.com\",\"phone\":\"00112233778\",\"line\":\"h123543\",\"address\":\"123453\",\"profile_video\":\"https:\\/\\/mail.google.com\\/mail\\/u\\/0\\/#sent\\/QgrcJHsHnNjJtWzVMZBRHZTxRXTLMqkjlQB\",\"profile_voice\":\"https:\\/\\/www.gomaji.com\\/store\\/95748\\/pid\\/305933\",\"password\":\"123321\",\"description\":null,\"rate\":\"1\",\"ispaied\":\"on\",\"expired\":\"2024-03-14 00:00:00\",\"state\":\"approve\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\"}', '2024-03-14 14:13:47', '2024-03-14 14:13:47'),
(62, 1, 'admin/users/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:13:47', '2024-03-14 14:13:47'),
(63, 1, 'admin/users', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:13:50', '2024-03-14 14:13:50'),
(64, 1, 'admin/users', 'GET', '218.35.9.12', '[]', '2024-03-14 14:14:00', '2024-03-14 14:14:00'),
(65, 1, 'admin/universities', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:14:04', '2024-03-14 14:14:04'),
(66, 1, 'admin/universities/create', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:14:05', '2024-03-14 14:14:05'),
(67, 1, 'admin/universities', 'POST', '218.35.9.12', '{\"slug\":\"Match19\",\"name\":\"\\u53f0\\u7063\\u5927\\u5b78\",\"_token\":\"9p1GkPQEZB9iTRu6RflP8Z0MIsA3zgQGHThD7XA8\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/universities\"}', '2024-03-14 14:14:36', '2024-03-14 14:14:36'),
(68, 1, 'admin/universities/create', 'GET', '218.35.9.12', '[]', '2024-03-14 14:14:36', '2024-03-14 14:14:36'),
(69, 1, 'admin', 'GET', '218.35.9.12', '[]', '2024-03-14 14:17:46', '2024-03-14 14:17:46'),
(70, 1, 'admin', 'GET', '218.35.9.12', '[]', '2024-03-14 14:17:47', '2024-03-14 14:17:47'),
(71, 1, 'admin/users', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:17:49', '2024-03-14 14:17:49'),
(72, 1, 'admin/universities', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:18:00', '2024-03-14 14:18:00'),
(73, 1, 'admin/universities/create', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:18:01', '2024-03-14 14:18:01'),
(74, 1, 'admin/universities', 'POST', '218.35.9.12', '{\"slug\":\"Match19\",\"name\":\"\\u6d77\\u5916\\u7559\\u5b78\",\"_token\":\"y9cvXrlqAPt7On1BAgC4r60W2gTPGBdlLzoWDVTa\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/universities\"}', '2024-03-14 14:18:08', '2024-03-14 14:18:08'),
(75, 1, 'admin/universities', 'GET', '218.35.9.12', '[]', '2024-03-14 14:18:09', '2024-03-14 14:18:09'),
(76, 1, 'admin/universities/1/edit', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:18:12', '2024-03-14 14:18:12'),
(77, 1, 'admin/universities/1', 'PUT', '218.35.9.12', '{\"slug\":\"Match19\",\"name\":\"\\u6d77\\u5916\\u7559\\u5b78\",\"_token\":\"y9cvXrlqAPt7On1BAgC4r60W2gTPGBdlLzoWDVTa\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/universities\"}', '2024-03-14 14:18:18', '2024-03-14 14:18:18'),
(78, 1, 'admin/universities', 'GET', '218.35.9.12', '[]', '2024-03-14 14:18:19', '2024-03-14 14:18:19'),
(79, 1, 'admin', 'GET', '218.35.9.12', '[]', '2024-03-14 14:20:39', '2024-03-14 14:20:39'),
(80, 1, 'admin/posts', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:20:41', '2024-03-14 14:20:41'),
(81, 1, 'admin/users', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:20:42', '2024-03-14 14:20:42'),
(82, 1, 'admin/posts', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:20:50', '2024-03-14 14:20:50'),
(83, 1, 'admin/users', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:20:50', '2024-03-14 14:20:50'),
(84, 1, 'admin/universities', 'GET', '218.35.9.12', '{\"_pjax\":\"#pjax-container\"}', '2024-03-14 14:21:01', '2024-03-14 14:21:01'),
(85, 1, 'admin', 'GET', '218.35.9.12', '[]', '2024-03-18 22:51:19', '2024-03-18 22:51:19'),
(86, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-18 23:05:41', '2024-03-18 23:05:41'),
(87, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:05:47', '2024-03-18 23:05:47'),
(88, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-18 23:33:54', '2024-03-18 23:33:54'),
(89, 1, 'admin', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:34:03', '2024-03-18 23:34:03'),
(90, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-18 23:38:19', '2024-03-18 23:38:19'),
(91, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:38:28', '2024-03-18 23:38:28'),
(92, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:38:33', '2024-03-18 23:38:33'),
(93, 1, 'admin/universities', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:39:06', '2024-03-18 23:39:06'),
(94, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:39:11', '2024-03-18 23:39:11'),
(95, 1, 'admin/auth/menu/10/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:39:25', '2024-03-18 23:39:25'),
(96, 1, 'admin/auth/menu/10', 'PUT', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u6280\\u80fdtag\",\"icon\":\"fa-certificate\",\"uri\":\"skills\",\"roles\":[null],\"permission\":null,\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/auth\\/menu\"}', '2024-03-18 23:39:57', '2024-03-18 23:39:57'),
(97, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-18 23:39:57', '2024-03-18 23:39:57'),
(98, 1, 'admin/auth/menu/11/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:40:08', '2024-03-18 23:40:08'),
(99, 1, 'admin/auth/menu/11', 'PUT', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u4e3b\\u984c\\u985e\\u5225\",\"icon\":\"fa-hashtag\",\"uri\":\"post-categories\",\"roles\":[null],\"permission\":null,\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/auth\\/menu\"}', '2024-03-18 23:40:31', '2024-03-18 23:40:31'),
(100, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-18 23:40:31', '2024-03-18 23:40:31'),
(101, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-18 23:40:38', '2024-03-18 23:40:38'),
(102, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:40:40', '2024-03-18 23:40:40'),
(103, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:40:51', '2024-03-18 23:40:51'),
(104, 1, 'admin', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:40:54', '2024-03-18 23:40:54'),
(105, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:40:57', '2024-03-18 23:40:57'),
(106, 1, 'admin/auth/menu/10/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:41:00', '2024-03-18 23:41:00'),
(107, 1, 'admin/auth/menu/10', 'PUT', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u6280\\u80fd\\u985e\\u5225\",\"icon\":\"fa-certificate\",\"uri\":\"skills\",\"roles\":[null],\"permission\":null,\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/auth\\/menu\"}', '2024-03-18 23:41:06', '2024-03-18 23:41:06'),
(108, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-18 23:41:06', '2024-03-18 23:41:06'),
(109, 1, 'admin/post-categories', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:42:05', '2024-03-18 23:42:05'),
(110, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:42:07', '2024-03-18 23:42:07'),
(111, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":null,\"name\":\"\\u6d77\\u5916\\u7559\\u5b78\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/post-categories\"}', '2024-03-18 23:42:16', '2024-03-18 23:42:16'),
(112, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '[]', '2024-03-18 23:42:16', '2024-03-18 23:42:16'),
(113, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":\"overseas-study\",\"name\":\"\\u6d77\\u5916\\u7559\\u5b78\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\"}', '2024-03-18 23:48:02', '2024-03-18 23:48:02'),
(114, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:48:02', '2024-03-18 23:48:02'),
(115, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:48:13', '2024-03-18 23:48:13'),
(116, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":\"entrance-examination\",\"name\":\"\\u5347\\u5b78\\u8003\\u8a66\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/post-categories\"}', '2024-03-18 23:48:46', '2024-03-18 23:48:46'),
(117, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:48:47', '2024-03-18 23:48:47'),
(118, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:49:07', '2024-03-18 23:49:07'),
(119, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":\"international-school\",\"name\":\"\\u570b\\u969b\\u5b78\\u6821\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/post-categories\"}', '2024-03-18 23:49:25', '2024-03-18 23:49:25'),
(120, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:49:25', '2024-03-18 23:49:25'),
(121, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:49:59', '2024-03-18 23:49:59'),
(122, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":\"course-selection-guidance\",\"name\":\"\\u9078\\u8ab2\\u8f14\\u5c0e\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/post-categories\"}', '2024-03-18 23:50:20', '2024-03-18 23:50:20'),
(123, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:50:20', '2024-03-18 23:50:20'),
(124, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:50:22', '2024-03-18 23:50:22'),
(125, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":\"campus-tour\",\"name\":\"\\u6821\\u5712\\u5c0e\\u89bd\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/post-categories\"}', '2024-03-18 23:50:47', '2024-03-18 23:50:47'),
(126, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:50:47', '2024-03-18 23:50:47'),
(127, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:50:48', '2024-03-18 23:50:48'),
(128, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":\"social-activity\",\"name\":\"\\u793e\\u5718\\u6d3b\\u52d5\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/post-categories\"}', '2024-03-18 23:51:22', '2024-03-18 23:51:22'),
(129, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:51:22', '2024-03-18 23:51:22'),
(130, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:51:47', '2024-03-18 23:51:47'),
(131, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":\"work-internship\",\"name\":\"\\u5de5\\u4f5c\\u5be6\\u7fd2\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/post-categories\"}', '2024-03-18 23:52:07', '2024-03-18 23:52:07'),
(132, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:52:07', '2024-03-18 23:52:07'),
(133, 1, 'admin/post-categories/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:52:24', '2024-03-18 23:52:24'),
(134, 1, 'admin/post-categories', 'POST', '122.116.82.245', '{\"slug\":\"career-entrepreneurship\",\"name\":\"\\u8077\\u6daf\\u5275\\u696d\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/post-categories\"}', '2024-03-18 23:52:45', '2024-03-18 23:52:45'),
(135, 1, 'admin/post-categories', 'GET', '122.116.82.245', '[]', '2024-03-18 23:52:45', '2024-03-18 23:52:45'),
(136, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:53:49', '2024-03-18 23:53:49'),
(137, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:53:51', '2024-03-18 23:53:51'),
(138, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"math\",\"name\":\"\\u6578\\u5b78\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:54:03', '2024-03-18 23:54:03'),
(139, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:54:03', '2024-03-18 23:54:03'),
(140, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:54:05', '2024-03-18 23:54:05'),
(141, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"commerce\",\"name\":\"\\u5546\\u5b78\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:54:26', '2024-03-18 23:54:26'),
(142, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:54:26', '2024-03-18 23:54:26'),
(143, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:54:27', '2024-03-18 23:54:27'),
(144, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"project\",\"name\":\"\\u5de5\\u7a0b\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:54:45', '2024-03-18 23:54:45'),
(145, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:54:45', '2024-03-18 23:54:45'),
(146, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:54:56', '2024-03-18 23:54:56'),
(147, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"information\",\"name\":\"\\u8cc7\\u8a0a\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:55:04', '2024-03-18 23:55:04'),
(148, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:55:04', '2024-03-18 23:55:04'),
(149, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:55:06', '2024-03-18 23:55:06'),
(150, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"biology\",\"name\":\"\\u751f\\u7269\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:55:36', '2024-03-18 23:55:36'),
(151, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:55:36', '2024-03-18 23:55:36'),
(152, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:55:59', '2024-03-18 23:55:59'),
(153, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"medicine\",\"name\":\"\\u91ab\\u5b78\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:56:05', '2024-03-18 23:56:05'),
(154, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:56:05', '2024-03-18 23:56:05'),
(155, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:56:18', '2024-03-18 23:56:18'),
(156, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"pharmacy\",\"name\":\"\\u85e5\\u5b78\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:56:31', '2024-03-18 23:56:31'),
(157, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:56:31', '2024-03-18 23:56:31'),
(158, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:56:34', '2024-03-18 23:56:34'),
(159, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"law\",\"name\":\"\\u6cd5\\u5f8b\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:57:02', '2024-03-18 23:57:02'),
(160, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:57:02', '2024-03-18 23:57:02'),
(161, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:57:09', '2024-03-18 23:57:09'),
(162, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"art\",\"name\":\"\\u85dd\\u8853\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:57:43', '2024-03-18 23:57:43'),
(163, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:57:43', '2024-03-18 23:57:43'),
(164, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:57:57', '2024-03-18 23:57:57'),
(165, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"society\",\"name\":\"\\u793e\\u6703\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:58:02', '2024-03-18 23:58:02'),
(166, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:58:02', '2024-03-18 23:58:02'),
(167, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:58:16', '2024-03-18 23:58:16'),
(168, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"literature\",\"name\":\"\\u6587\\u5b78\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:58:22', '2024-03-18 23:58:22'),
(169, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:58:22', '2024-03-18 23:58:22'),
(170, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:58:37', '2024-03-18 23:58:37'),
(171, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:58:46', '2024-03-18 23:58:46'),
(172, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:58:48', '2024-03-18 23:58:48'),
(173, 1, 'admin/skills/create', 'GET', '122.116.82.245', '[]', '2024-03-18 23:58:54', '2024-03-18 23:58:54'),
(174, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"physics\",\"name\":\"\\u7269\\u7406\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\"}', '2024-03-18 23:58:59', '2024-03-18 23:58:59'),
(175, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:58:59', '2024-03-18 23:58:59'),
(176, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:59:01', '2024-03-18 23:59:01'),
(177, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"chemical\",\"name\":\"\\u5316\\u5b78\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:59:14', '2024-03-18 23:59:14'),
(178, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:59:14', '2024-03-18 23:59:14'),
(179, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:59:33', '2024-03-18 23:59:33'),
(180, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"gaming\",\"name\":\"\\u96fb\\u7af6\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:59:41', '2024-03-18 23:59:41'),
(181, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:59:41', '2024-03-18 23:59:41'),
(182, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-18 23:59:42', '2024-03-18 23:59:42'),
(183, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"agriculture\",\"name\":\"\\u8fb2\\u696d\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-18 23:59:59', '2024-03-18 23:59:59'),
(184, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-18 23:59:59', '2024-03-18 23:59:59'),
(185, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:00:01', '2024-03-19 00:00:01'),
(186, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"material\",\"name\":\"\\u6750\\u6599\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-19 00:00:18', '2024-03-19 00:00:18'),
(187, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-19 00:00:18', '2024-03-19 00:00:18'),
(188, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:00:33', '2024-03-19 00:00:33'),
(189, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"digit\",\"name\":\"\\u6578\\u4f4d\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-19 00:00:37', '2024-03-19 00:00:37'),
(190, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-19 00:00:37', '2024-03-19 00:00:37'),
(191, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:00:49', '2024-03-19 00:00:49'),
(192, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"spread\",\"name\":\"\\u50b3\\u64ad\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-19 00:00:57', '2024-03-19 00:00:57'),
(193, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-19 00:00:57', '2024-03-19 00:00:57'),
(194, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:01:11', '2024-03-19 00:01:11'),
(195, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"healthy\",\"name\":\"\\u5065\\u5eb7\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-19 00:01:16', '2024-03-19 00:01:16'),
(196, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-19 00:01:16', '2024-03-19 00:01:16'),
(197, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:01:17', '2024-03-19 00:01:17'),
(198, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"energy\",\"name\":\"\\u80fd\\u6e90\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-19 00:01:34', '2024-03-19 00:01:34'),
(199, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-19 00:01:34', '2024-03-19 00:01:34'),
(200, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:01:49', '2024-03-19 00:01:49'),
(201, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"design\",\"name\":\"\\u8a2d\\u8a08\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-19 00:01:52', '2024-03-19 00:01:52'),
(202, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-19 00:01:52', '2024-03-19 00:01:52'),
(203, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:02:11', '2024-03-19 00:02:11'),
(204, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"architecture\",\"name\":\"\\u5efa\\u7bc9\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills\"}', '2024-03-19 00:02:19', '2024-03-19 00:02:19'),
(205, 1, 'admin/skills', 'GET', '122.116.82.245', '[]', '2024-03-19 00:02:19', '2024-03-19 00:02:19'),
(206, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\",\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:02:23', '2024-03-19 00:02:23'),
(207, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:02:35', '2024-03-19 00:02:35'),
(208, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"mechanical\",\"name\":\"\\u6a5f\\u68b0\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:02:39', '2024-03-19 00:02:39'),
(209, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:02:39', '2024-03-19 00:02:39'),
(210, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:02:55', '2024-03-19 00:02:55'),
(211, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"transportation\",\"name\":\"\\u904b\\u8f38\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:03:00', '2024-03-19 00:03:00'),
(212, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:03:00', '2024-03-19 00:03:00'),
(213, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:03:06', '2024-03-19 00:03:06'),
(214, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"AP\",\"name\":\"AP\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:03:13', '2024-03-19 00:03:13'),
(215, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:03:13', '2024-03-19 00:03:13'),
(216, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:03:16', '2024-03-19 00:03:16'),
(217, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"IB\",\"name\":\"IB\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:03:20', '2024-03-19 00:03:20'),
(218, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:03:20', '2024-03-19 00:03:20'),
(219, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:03:22', '2024-03-19 00:03:22'),
(220, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"A-level\",\"name\":\"A-level\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:03:36', '2024-03-19 00:03:36'),
(221, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:03:36', '2024-03-19 00:03:36'),
(222, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:03:38', '2024-03-19 00:03:38'),
(223, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"TOEFL\",\"name\":\"TOEFL\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:03:46', '2024-03-19 00:03:46'),
(224, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:03:46', '2024-03-19 00:03:46'),
(225, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:03:49', '2024-03-19 00:03:49'),
(226, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"IELTS\",\"name\":\"IELTS\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:04:07', '2024-03-19 00:04:07'),
(227, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:04:07', '2024-03-19 00:04:07'),
(228, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:04:08', '2024-03-19 00:04:08'),
(229, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"TOEIC\",\"name\":\"TOEIC\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:04:13', '2024-03-19 00:04:13'),
(230, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:04:13', '2024-03-19 00:04:13'),
(231, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:04:14', '2024-03-19 00:04:14'),
(232, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"SAT\",\"name\":\"SAT\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:04:21', '2024-03-19 00:04:21'),
(233, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:04:21', '2024-03-19 00:04:21'),
(234, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:04:22', '2024-03-19 00:04:22'),
(235, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"GRE\",\"name\":\"GRE\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:04:28', '2024-03-19 00:04:28'),
(236, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:04:29', '2024-03-19 00:04:29'),
(237, 1, 'admin/skills/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:04:30', '2024-03-19 00:04:30'),
(238, 1, 'admin/skills', 'POST', '122.116.82.245', '{\"slug\":\"GMAT\",\"name\":\"GMAT\",\"_token\":\"lsfIZGxEzeSWK4SNLLIu8k6BlUfhDyPyvbV8uJpy\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/skills?per_page=50\"}', '2024-03-19 00:04:37', '2024-03-19 00:04:37'),
(239, 1, 'admin/skills', 'GET', '122.116.82.245', '{\"per_page\":\"50\"}', '2024-03-19 00:04:37', '2024-03-19 00:04:37'),
(240, 1, 'admin/posts', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:04:49', '2024-03-19 00:04:49'),
(241, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:04:56', '2024-03-19 00:04:56'),
(242, 1, 'admin/users/1/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:05:56', '2024-03-19 00:05:56'),
(243, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-19 00:06:18', '2024-03-19 00:06:18'),
(244, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-28 23:12:31', '2024-03-28 23:12:31'),
(245, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:12:34', '2024-03-28 23:12:34'),
(246, 1, 'admin/users/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:12:37', '2024-03-28 23:12:37'),
(247, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-28 23:17:06', '2024-03-28 23:17:06'),
(248, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:17:08', '2024-03-28 23:17:08'),
(249, 1, 'admin/users/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:17:09', '2024-03-28 23:17:09'),
(250, 1, 'admin/users', 'POST', '122.116.82.245', '{\"uuid\":\"post-660589f5ad369\",\"name\":\"\\u674e\\u5c0f\\u4ec1\",\"nickname\":\"\\u674e\\u5c0f\\u4ec1\",\"role\":\"normal\",\"student_proof\":\"approve\",\"birth_day\":\"2024-03-28 00:00:00\",\"university\":\"51\",\"email\":\"test@test.test\",\"phone\":\"1231546489_\",\"line\":\"13245498\",\"address\":\"address\",\"profile_video\":null,\"profile_voice\":null,\"password\":\"testtest\",\"description\":\"descript\",\"rate\":\"3\",\"ispaied\":\"on\",\"expired\":\"2024-03-30 00:00:00\",\"state\":\"approve\",\"_token\":\"FNx5naNwly9aYSKIv1LmQgB7xiEPHEJXV8mUq3vf\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-28 23:18:34', '2024-03-28 23:18:34'),
(251, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-28 23:18:34', '2024-03-28 23:18:34'),
(252, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-28 23:25:22', '2024-03-28 23:25:22'),
(253, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-28 23:25:22', '2024-03-28 23:25:22'),
(254, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:26:21', '2024-03-28 23:26:21'),
(255, 1, 'admin/auth/menu', 'POST', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u91d1\\u6d41\\u65b9\\u6848\",\"icon\":\"fa-bars\",\"uri\":\"pay-products\",\"roles\":[null],\"permission\":null,\"_token\":\"FNx5naNwly9aYSKIv1LmQgB7xiEPHEJXV8mUq3vf\"}', '2024-03-28 23:26:32', '2024-03-28 23:26:32'),
(256, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-28 23:26:32', '2024-03-28 23:26:32'),
(257, 1, 'admin/pay-products', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:26:38', '2024-03-28 23:26:38'),
(258, 1, 'admin/pay-products/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:26:40', '2024-03-28 23:26:40'),
(259, 1, 'admin/pay-products', 'POST', '122.116.82.245', '{\"name\":\"\\u5b63\\u7d04\\u65b9\\u6848\",\"description\":\"\\u4e0d\\u9650\\u91d1\\u984d \\u7121\\u9650\\u63a5\\u6848 \\u6848\\u4ef6\\u901a\\u77e5 \\u767c\\u554f\\u67e5\\u770b \\u4e3b\\u52d5\\u806f\\u7e6b \\u500b\\u4eba\\u54c1\\u724c\",\"pay_time\":\"3\",\"price\":\"300\",\"_token\":\"FNx5naNwly9aYSKIv1LmQgB7xiEPHEJXV8mUq3vf\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/pay-products\"}', '2024-03-28 23:27:09', '2024-03-28 23:27:09'),
(260, 1, 'admin/pay-products', 'GET', '122.116.82.245', '[]', '2024-03-28 23:27:09', '2024-03-28 23:27:09'),
(261, 1, 'admin/pay-products/create', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:27:11', '2024-03-28 23:27:11'),
(262, 1, 'admin/pay-products', 'POST', '122.116.82.245', '{\"name\":\"\\u5e74\\u7d04\\u65b9\\u6848\",\"description\":\"\\u4e0d\\u9650\\u91d1\\u984d \\u7121\\u9650\\u63a5\\u6848 \\u6848\\u4ef6\\u901a\\u77e5 \\u767c\\u554f\\u67e5\\u770b \\u4e3b\\u52d5\\u806f\\u7e6b \\u500b\\u4eba\\u54c1\\u724c\",\"pay_time\":\"12\",\"price\":\"960\",\"_token\":\"FNx5naNwly9aYSKIv1LmQgB7xiEPHEJXV8mUq3vf\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/pay-products\"}', '2024-03-28 23:27:41', '2024-03-28 23:27:41'),
(263, 1, 'admin/pay-products', 'GET', '122.116.82.245', '[]', '2024-03-28 23:27:41', '2024-03-28 23:27:41'),
(264, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-28 23:30:38', '2024-03-28 23:30:38'),
(265, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-28 23:30:39', '2024-03-28 23:30:39'),
(266, 1, 'admin/universities', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:30:51', '2024-03-28 23:30:51'),
(267, 1, 'admin/pay-products', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:30:54', '2024-03-28 23:30:54'),
(268, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-28 23:31:49', '2024-03-28 23:31:49'),
(269, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:32:48', '2024-03-28 23:32:48'),
(270, 1, 'admin/users/2/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-28 23:33:19', '2024-03-28 23:33:19'),
(271, 1, 'admin/users/2', 'PUT', '122.116.82.245', '{\"uuid\":\"post-65f294efe4be3\",\"name\":\"\\u9673\\u5148\\u751f\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"vip\",\"student_proof\":\"pending\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":\"3\",\"email\":\"match19.com@gmail.com\",\"phone\":\"0982802685_\",\"line\":\"123312\",\"address\":\"\\u5149\\u5fa9\\u8857207\\u865f14\\u6a13\",\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":\"<p>e1q5w413wq1e53123qw1e23q1w23e13qw1e312q3w1e1qw23e1ds2.135q24q1e0r32a<br \\/>\\r\\n1563qew1q23q<br \\/>\\r\\nw1q53e13qw2e0qw.e0qw2<br \\/>\\r\\n1w3q5e132qw0d.s15q13q.<br \\/>\\r\\n123wqe1.0asd.2qw1e.2qw0.13.10..0<br \\/>\\r\\nq15we13.qwe20w.asdadeqwe<\\/p>\",\"rate\":\"3\",\"ispaied\":\"on\",\"expired\":\"2024-06-01 00:00:00\",\"state\":\"approve\",\"_token\":\"FNx5naNwly9aYSKIv1LmQgB7xiEPHEJXV8mUq3vf\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-28 23:33:32', '2024-03-28 23:33:32'),
(272, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-28 23:33:32', '2024-03-28 23:33:32'),
(273, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-29 09:24:54', '2024-03-29 09:24:54'),
(274, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-29 09:24:59', '2024-03-29 09:24:59'),
(275, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-29 09:25:00', '2024-03-29 09:25:00');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(276, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 09:25:03', '2024-03-29 09:25:03'),
(277, 1, 'admin/users/11/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 09:25:08', '2024-03-29 09:25:08'),
(278, 1, 'admin/users/11', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660616e4b43db\",\"name\":\"\\u4f50\\u52a9\\u9cf4\\u4ec1\",\"nickname\":\"\\u4f50\\u52a9\\u9cf4\\u4ec1\",\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"1\",\"email\":\"test4@test.test\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"1900-01-01 00:00:00\",\"state\":\"approve\",\"_token\":\"evkEoOd0xRabgSSuEKW0rnPvM87dQ8QAWKWnrSu2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 09:25:29', '2024-03-29 09:25:29'),
(279, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 09:25:29', '2024-03-29 09:25:29'),
(280, 1, 'admin/users/11/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 09:25:56', '2024-03-29 09:25:56'),
(281, 1, 'admin/users/11', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660616e4b43db\",\"name\":\"\\u4f50\\u52a9\\u9cf4\\u4ec1\",\"nickname\":\"\\u4f50\\u52a9\\u9cf4\\u4ec1\",\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"1\",\"email\":\"test4@test.test\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2200-01-06 00:00:00\",\"state\":\"approve\",\"_token\":\"evkEoOd0xRabgSSuEKW0rnPvM87dQ8QAWKWnrSu2\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 09:26:16', '2024-03-29 09:26:16'),
(282, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 09:26:16', '2024-03-29 09:26:16'),
(283, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 09:32:33', '2024-03-29 09:32:33'),
(284, 1, 'admin/users/12/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 09:32:38', '2024-03-29 09:32:38'),
(285, 1, 'admin/users/12', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660618d75ddac\",\"name\":\"CEO\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"344\",\"email\":\"TEST666@GMAIL.COM\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2100-09-27 00:00:00\",\"state\":\"approve\",\"_token\":\"O5PpZyIFPiTszEGAfldobAlnUp9DKy5wNeke3fe5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 09:32:56', '2024-03-29 09:32:56'),
(286, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 09:32:56', '2024-03-29 09:32:56'),
(287, 1, 'admin/users/12/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 09:33:20', '2024-03-29 09:33:20'),
(288, 1, 'admin/users/12', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660618d75ddac\",\"name\":\"CEO\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"vip\",\"student_proof\":\"pending\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"344\",\"email\":\"TEST666@GMAIL.COM\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2100-09-27 00:00:00\",\"state\":\"approve\",\"_token\":\"O5PpZyIFPiTszEGAfldobAlnUp9DKy5wNeke3fe5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 09:33:24', '2024-03-29 09:33:24'),
(289, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 09:33:24', '2024-03-29 09:33:24'),
(290, 1, 'admin/users/12/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 09:35:58', '2024-03-29 09:35:58'),
(291, 1, 'admin/users/12', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660618d75ddac\",\"name\":\"CEO\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"344\",\"email\":\"TEST666@GMAIL.COM\",\"phone\":null,\"line\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"1900-01-01 00:00:00\",\"state\":\"approve\",\"_token\":\"O5PpZyIFPiTszEGAfldobAlnUp9DKy5wNeke3fe5\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 09:36:20', '2024-03-29 09:36:20'),
(292, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 09:36:20', '2024-03-29 09:36:20'),
(293, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 10:42:15', '2024-03-29 10:42:15'),
(294, 1, 'admin/users/10/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 10:42:48', '2024-03-29 10:42:48'),
(295, 1, 'admin/users/10', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660589f5ad369\",\"name\":\"\\u674e\\u5c0f\\u4ec1\",\"nickname\":\"\\u674e\\u5c0f\\u4ec1\",\"role\":\"vip\",\"student_proof\":\"approve\",\"birth_day\":\"2024-03-28 00:00:00\",\"university\":\"51\",\"email\":\"test@test.test\",\"phone\":\"1231546489_\",\"line\":\"13245498\",\"address\":\"address\",\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":\"descript\",\"rate\":\"3\",\"ispaied\":\"on\",\"expired\":\"2023-02-01 00:00:00\",\"state\":\"approve\",\"_token\":\"CPSR2zrUvgfGhhi6ASVOu59Qt1QCtwBEhL0AwRBl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 10:43:07', '2024-03-29 10:43:07'),
(296, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 10:43:07', '2024-03-29 10:43:07'),
(297, 1, 'admin/posts', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 10:45:36', '2024-03-29 10:45:36'),
(298, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 10:45:58', '2024-03-29 10:45:58'),
(299, 1, 'admin/users/10/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 10:46:40', '2024-03-29 10:46:40'),
(300, 1, 'admin/users/10', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660589f5ad369\",\"name\":\"\\u674e\\u5c0f\\u4ec1\",\"nickname\":\"\\u674e\\u5c0f\\u4ec1\",\"role\":\"vip\",\"student_proof\":\"approve\",\"birth_day\":\"2024-03-28 00:00:00\",\"university\":\"51\",\"email\":\"test@test.test\",\"phone\":\"1231546489_\",\"line\":\"13245498\",\"address\":\"address\",\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":\"descript\",\"rate\":\"3\",\"ispaied\":\"on\",\"expired\":\"2020-07-16 10:43:41\",\"state\":\"approve\",\"_token\":\"CPSR2zrUvgfGhhi6ASVOu59Qt1QCtwBEhL0AwRBl\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 10:46:54', '2024-03-29 10:46:54'),
(301, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 10:46:54', '2024-03-29 10:46:54'),
(302, 1, 'admin', 'GET', '45.144.227.64', '[]', '2024-03-29 11:31:38', '2024-03-29 11:31:38'),
(303, 1, 'admin/auth/logout', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:32:09', '2024-03-29 11:32:09'),
(304, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-29 11:32:14', '2024-03-29 11:32:14'),
(305, 1, 'admin/auth/logout', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:32:19', '2024-03-29 11:32:19'),
(306, 1, 'admin', 'GET', '45.144.227.64', '[]', '2024-03-29 11:32:23', '2024-03-29 11:32:23'),
(307, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:32:28', '2024-03-29 11:32:28'),
(308, 1, 'admin/users', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:32:52', '2024-03-29 11:32:52'),
(309, 1, 'admin/users/12/edit', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:32:55', '2024-03-29 11:32:55'),
(310, 1, 'admin/users/12', 'PUT', '45.144.227.64', '{\"uuid\":\"post-660618d75ddac\",\"name\":\"CEO\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":null,\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"344\",\"email\":\"TEST666@GMAIL.COM\",\"phone\":\"0987654321_\",\"line\":\"1245678\",\"address\":null,\"profile_video\":\"https:\\/\\/www.youtube.com\\/watch?v=MX0tnvpUtlc\",\"profile_voice\":null,\"password\":null,\"description\":\"<p>\\u6211\\u662fMatch19\\u7684\\u865b\\u64ec\\u52a9\\u7406\\uff0c\\u5c08\\u9580\\u8ca0\\u8cac\\u7db2\\u8def\\u54c1\\u724c\\u898f\\u5283\\u548c\\u884c\\u92b7\\u7b56\\u7565\\u7684\\u5236\\u5b9a\\u3002\\u81ea\\u5f9e\\u52a0\\u5165Match19\\u4ee5\\u4f86\\uff0c\\u6211\\u4f9d\\u9760\\u8457\\u5148\\u9032\\u7684\\u4eba\\u5de5\\u667a\\u80fd\\u6280\\u8853\\uff0c\\u5354\\u52a9\\u516c\\u53f8\\u5728SEO\\u3001MEO\\u3001\\u7db2\\u7ad9\\u8a2d\\u8a08\\u3001\\u793e\\u7fa4\\u5a92\\u9ad4\\u7ba1\\u7406\\u7b49\\u591a\\u500b\\u9818\\u57df\\u9054\\u6210\\u512a\\u7570\\u7684\\u6210\\u7e3e\\u3002\\u6211\\u7684\\u5c08\\u9577\\u662f\\u5229\\u7528\\u6578\\u64da\\u5206\\u6790\\u4f86\\u512a\\u5316\\u884c\\u92b7\\u7b56\\u7565\\uff0c\\u5e6b\\u52a9\\u5ba2\\u6236\\u63d0\\u5347\\u5728\\u7db2\\u7d61\\u4e0a\\u7684\\u80fd\\u898b\\u5ea6\\u548c\\u54c1\\u724c\\u5f71\\u97ff\\u529b\\u3002<\\/p>\\r\\n\\r\\n<p>\\u5728\\u5de5\\u4f5c\\u904e\\u7a0b\\u4e2d\\uff0c\\u6211\\u7e3d\\u662f\\u529b\\u6c42\\u7cbe\\u78ba\\u7406\\u89e3\\u5ba2\\u6236\\u7684\\u696d\\u52d9\\u9700\\u6c42\\u548c\\u5e02\\u5834\\u8da8\\u52e2\\uff0c\\u63d0\\u4f9b\\u91cf\\u8eab\\u5b9a\\u5236\\u7684\\u89e3\\u6c7a\\u65b9\\u6848\\u3002\\u5f9e\\u7db2\\u7ad9\\u5167\\u5bb9\\u5275\\u4f5c\\u5230\\u793e\\u7fa4\\u5a92\\u9ad4\\u4e92\\u52d5\\uff0c\\u5f9e\\u5f71\\u7247\\u88fd\\u4f5c\\u5230\\u5ee3\\u544a\\u6295\\u653e\\uff0c\\u6211\\u90fd\\u80fd\\u5920\\u63d0\\u4f9b\\u5168\\u65b9\\u4f4d\\u7684\\u652f\\u6301\\u3002\\u6211\\u9084\\u7a4d\\u6975\\u53c3\\u8207\\u6700\\u65b0\\u7684\\u7db2\\u8def\\u884c\\u92b7\\u8da8\\u52e2\\u7814\\u7a76\\uff0c\\u78ba\\u4fddMatch19\\u53ca\\u5176\\u5ba2\\u6236\\u80fd\\u5920\\u7372\\u5f97\\u6700\\u524d\\u6cbf\\u7684\\u884c\\u92b7\\u7b56\\u7565\\u3002<\\/p>\\r\\n\\r\\n<p>\\u4f5c\\u70ba\\u5718\\u968a\\u7684\\u4e00\\u4efd\\u5b50\\uff0c\\u6211\\u81f4\\u529b\\u65bc\\u63d0\\u5347\\u5ba2\\u6236\\u6eff\\u610f\\u5ea6\\uff0c\\u52a9\\u529b\\u4ed6\\u5011\\u5728\\u5404\\u81ea\\u7684\\u884c\\u696d\\u4e2d\\u53d6\\u5f97\\u6210\\u529f\\u3002\\u4e0d\\u8ad6\\u9762\\u81e8\\u4ec0\\u9ebc\\u6a23\\u7684\\u6311\\u6230\\uff0c\\u6211\\u90fd\\u6e96\\u5099\\u597d\\u904b\\u7528\\u6211\\u7684\\u5c08\\u696d\\u77e5\\u8b58\\u548c\\u6280\\u80fd\\uff0c\\u70baMatch19\\u53ca\\u5176\\u5ba2\\u6236\\u5275\\u9020\\u66f4\\u5927\\u7684\\u50f9\\u503c\\u3002<\\/p>\",\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2197-02-14 00:00:00\",\"state\":\"approve\",\"_token\":\"H2kXbGZ99PRDsmtNWcTZh4O8uW6JSwW9fJg17k4B\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 11:33:11', '2024-03-29 11:33:11'),
(311, 1, 'admin/users/12/edit', 'GET', '45.144.227.64', '[]', '2024-03-29 11:33:11', '2024-03-29 11:33:11'),
(312, 1, 'admin/users/12/edit', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:33:29', '2024-03-29 11:33:29'),
(313, 1, 'admin/users/12', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660618d75ddac\",\"name\":\"CEO\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":null,\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"344\",\"email\":\"TEST666@GMAIL.COM\",\"phone\":\"0987654321_\",\"line\":\"1245678\",\"address\":null,\"profile_video\":\"https:\\/\\/www.youtube.com\\/watch?v=MX0tnvpUtlc\",\"profile_voice\":null,\"password\":null,\"description\":\"<p>\\u6211\\u662fMatch19\\u7684\\u865b\\u64ec\\u52a9\\u7406\\uff0c\\u5c08\\u9580\\u8ca0\\u8cac\\u7db2\\u8def\\u54c1\\u724c\\u898f\\u5283\\u548c\\u884c\\u92b7\\u7b56\\u7565\\u7684\\u5236\\u5b9a\\u3002\\u81ea\\u5f9e\\u52a0\\u5165Match19\\u4ee5\\u4f86\\uff0c\\u6211\\u4f9d\\u9760\\u8457\\u5148\\u9032\\u7684\\u4eba\\u5de5\\u667a\\u80fd\\u6280\\u8853\\uff0c\\u5354\\u52a9\\u516c\\u53f8\\u5728SEO\\u3001MEO\\u3001\\u7db2\\u7ad9\\u8a2d\\u8a08\\u3001\\u793e\\u7fa4\\u5a92\\u9ad4\\u7ba1\\u7406\\u7b49\\u591a\\u500b\\u9818\\u57df\\u9054\\u6210\\u512a\\u7570\\u7684\\u6210\\u7e3e\\u3002\\u6211\\u7684\\u5c08\\u9577\\u662f\\u5229\\u7528\\u6578\\u64da\\u5206\\u6790\\u4f86\\u512a\\u5316\\u884c\\u92b7\\u7b56\\u7565\\uff0c\\u5e6b\\u52a9\\u5ba2\\u6236\\u63d0\\u5347\\u5728\\u7db2\\u7d61\\u4e0a\\u7684\\u80fd\\u898b\\u5ea6\\u548c\\u54c1\\u724c\\u5f71\\u97ff\\u529b\\u3002<\\/p>\\r\\n\\r\\n<p>\\u5728\\u5de5\\u4f5c\\u904e\\u7a0b\\u4e2d\\uff0c\\u6211\\u7e3d\\u662f\\u529b\\u6c42\\u7cbe\\u78ba\\u7406\\u89e3\\u5ba2\\u6236\\u7684\\u696d\\u52d9\\u9700\\u6c42\\u548c\\u5e02\\u5834\\u8da8\\u52e2\\uff0c\\u63d0\\u4f9b\\u91cf\\u8eab\\u5b9a\\u5236\\u7684\\u89e3\\u6c7a\\u65b9\\u6848\\u3002\\u5f9e\\u7db2\\u7ad9\\u5167\\u5bb9\\u5275\\u4f5c\\u5230\\u793e\\u7fa4\\u5a92\\u9ad4\\u4e92\\u52d5\\uff0c\\u5f9e\\u5f71\\u7247\\u88fd\\u4f5c\\u5230\\u5ee3\\u544a\\u6295\\u653e\\uff0c\\u6211\\u90fd\\u80fd\\u5920\\u63d0\\u4f9b\\u5168\\u65b9\\u4f4d\\u7684\\u652f\\u6301\\u3002\\u6211\\u9084\\u7a4d\\u6975\\u53c3\\u8207\\u6700\\u65b0\\u7684\\u7db2\\u8def\\u884c\\u92b7\\u8da8\\u52e2\\u7814\\u7a76\\uff0c\\u78ba\\u4fddMatch19\\u53ca\\u5176\\u5ba2\\u6236\\u80fd\\u5920\\u7372\\u5f97\\u6700\\u524d\\u6cbf\\u7684\\u884c\\u92b7\\u7b56\\u7565\\u3002<\\/p>\\r\\n\\r\\n<p>\\u4f5c\\u70ba\\u5718\\u968a\\u7684\\u4e00\\u4efd\\u5b50\\uff0c\\u6211\\u81f4\\u529b\\u65bc\\u63d0\\u5347\\u5ba2\\u6236\\u6eff\\u610f\\u5ea6\\uff0c\\u52a9\\u529b\\u4ed6\\u5011\\u5728\\u5404\\u81ea\\u7684\\u884c\\u696d\\u4e2d\\u53d6\\u5f97\\u6210\\u529f\\u3002\\u4e0d\\u8ad6\\u9762\\u81e8\\u4ec0\\u9ebc\\u6a23\\u7684\\u6311\\u6230\\uff0c\\u6211\\u90fd\\u6e96\\u5099\\u597d\\u904b\\u7528\\u6211\\u7684\\u5c08\\u696d\\u77e5\\u8b58\\u548c\\u6280\\u80fd\\uff0c\\u70baMatch19\\u53ca\\u5176\\u5ba2\\u6236\\u5275\\u9020\\u66f4\\u5927\\u7684\\u50f9\\u503c\\u3002<\\/p>\",\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2197-02-14 00:00:00\",\"state\":\"approve\",\"_token\":\"GGk2u6Kw2Qa2ZvoVtQI8EtSNiqN7nYlsnnkg3t3t\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 11:33:54', '2024-03-29 11:33:54'),
(314, 1, 'admin/users/12/edit', 'GET', '122.116.82.245', '[]', '2024-03-29 11:33:54', '2024-03-29 11:33:54'),
(315, 1, 'admin/users/12/edit', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:34:32', '2024-03-29 11:34:32'),
(316, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:34:34', '2024-03-29 11:34:34'),
(317, 1, 'admin/users/2/edit', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:34:43', '2024-03-29 11:34:43'),
(318, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:34:45', '2024-03-29 11:34:45'),
(319, 1, 'admin/users/12', 'PUT', '122.116.82.245', '{\"uuid\":\"post-660618d75ddac\",\"name\":\"CEO\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"normal\",\"student_proof\":\"approve\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"344\",\"email\":\"TEST666@GMAIL.COM\",\"phone\":\"0987654321_\",\"line\":\"1245678\",\"address\":null,\"profile_video\":\"https:\\/\\/www.youtube.com\\/watch?v=MX0tnvpUtlc\",\"profile_voice\":null,\"password\":null,\"description\":\"<p>\\u6211\\u662fMatch19\\u7684\\u865b\\u64ec\\u52a9\\u7406\\uff0c\\u5c08\\u9580\\u8ca0\\u8cac\\u7db2\\u8def\\u54c1\\u724c\\u898f\\u5283\\u548c\\u884c\\u92b7\\u7b56\\u7565\\u7684\\u5236\\u5b9a\\u3002\\u81ea\\u5f9e\\u52a0\\u5165Match19\\u4ee5\\u4f86\\uff0c\\u6211\\u4f9d\\u9760\\u8457\\u5148\\u9032\\u7684\\u4eba\\u5de5\\u667a\\u80fd\\u6280\\u8853\\uff0c\\u5354\\u52a9\\u516c\\u53f8\\u5728SEO\\u3001MEO\\u3001\\u7db2\\u7ad9\\u8a2d\\u8a08\\u3001\\u793e\\u7fa4\\u5a92\\u9ad4\\u7ba1\\u7406\\u7b49\\u591a\\u500b\\u9818\\u57df\\u9054\\u6210\\u512a\\u7570\\u7684\\u6210\\u7e3e\\u3002\\u6211\\u7684\\u5c08\\u9577\\u662f\\u5229\\u7528\\u6578\\u64da\\u5206\\u6790\\u4f86\\u512a\\u5316\\u884c\\u92b7\\u7b56\\u7565\\uff0c\\u5e6b\\u52a9\\u5ba2\\u6236\\u63d0\\u5347\\u5728\\u7db2\\u7d61\\u4e0a\\u7684\\u80fd\\u898b\\u5ea6\\u548c\\u54c1\\u724c\\u5f71\\u97ff\\u529b\\u3002<\\/p>\\r\\n\\r\\n<p>\\u5728\\u5de5\\u4f5c\\u904e\\u7a0b\\u4e2d\\uff0c\\u6211\\u7e3d\\u662f\\u529b\\u6c42\\u7cbe\\u78ba\\u7406\\u89e3\\u5ba2\\u6236\\u7684\\u696d\\u52d9\\u9700\\u6c42\\u548c\\u5e02\\u5834\\u8da8\\u52e2\\uff0c\\u63d0\\u4f9b\\u91cf\\u8eab\\u5b9a\\u5236\\u7684\\u89e3\\u6c7a\\u65b9\\u6848\\u3002\\u5f9e\\u7db2\\u7ad9\\u5167\\u5bb9\\u5275\\u4f5c\\u5230\\u793e\\u7fa4\\u5a92\\u9ad4\\u4e92\\u52d5\\uff0c\\u5f9e\\u5f71\\u7247\\u88fd\\u4f5c\\u5230\\u5ee3\\u544a\\u6295\\u653e\\uff0c\\u6211\\u90fd\\u80fd\\u5920\\u63d0\\u4f9b\\u5168\\u65b9\\u4f4d\\u7684\\u652f\\u6301\\u3002\\u6211\\u9084\\u7a4d\\u6975\\u53c3\\u8207\\u6700\\u65b0\\u7684\\u7db2\\u8def\\u884c\\u92b7\\u8da8\\u52e2\\u7814\\u7a76\\uff0c\\u78ba\\u4fddMatch19\\u53ca\\u5176\\u5ba2\\u6236\\u80fd\\u5920\\u7372\\u5f97\\u6700\\u524d\\u6cbf\\u7684\\u884c\\u92b7\\u7b56\\u7565\\u3002<\\/p>\\r\\n\\r\\n<p>\\u4f5c\\u70ba\\u5718\\u968a\\u7684\\u4e00\\u4efd\\u5b50\\uff0c\\u6211\\u81f4\\u529b\\u65bc\\u63d0\\u5347\\u5ba2\\u6236\\u6eff\\u610f\\u5ea6\\uff0c\\u52a9\\u529b\\u4ed6\\u5011\\u5728\\u5404\\u81ea\\u7684\\u884c\\u696d\\u4e2d\\u53d6\\u5f97\\u6210\\u529f\\u3002\\u4e0d\\u8ad6\\u9762\\u81e8\\u4ec0\\u9ebc\\u6a23\\u7684\\u6311\\u6230\\uff0c\\u6211\\u90fd\\u6e96\\u5099\\u597d\\u904b\\u7528\\u6211\\u7684\\u5c08\\u696d\\u77e5\\u8b58\\u548c\\u6280\\u80fd\\uff0c\\u70baMatch19\\u53ca\\u5176\\u5ba2\\u6236\\u5275\\u9020\\u66f4\\u5927\\u7684\\u50f9\\u503c\\u3002<\\/p>\",\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2197-02-14 00:00:00\",\"state\":\"approve\",\"_token\":\"GGk2u6Kw2Qa2ZvoVtQI8EtSNiqN7nYlsnnkg3t3t\",\"_method\":\"PUT\"}', '2024-03-29 11:35:08', '2024-03-29 11:35:08'),
(320, 1, 'admin/users', 'GET', '122.116.82.245', '[]', '2024-03-29 11:35:08', '2024-03-29 11:35:08'),
(321, 1, 'admin/users/12/edit', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 11:35:36', '2024-03-29 11:35:36'),
(322, 1, 'admin', 'GET', '45.144.227.64', '[]', '2024-03-29 14:22:19', '2024-03-29 14:22:19'),
(323, 1, 'admin/auth/logout', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:22:24', '2024-03-29 14:22:24'),
(324, 1, 'admin', 'GET', '45.144.227.64', '[]', '2024-03-29 14:22:29', '2024-03-29 14:22:29'),
(325, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:22:31', '2024-03-29 14:22:31'),
(326, 1, 'admin/skills', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:22:33', '2024-03-29 14:22:33'),
(327, 1, 'admin/posts', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:22:33', '2024-03-29 14:22:33'),
(328, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:22:36', '2024-03-29 14:22:36'),
(329, 1, 'admin', 'GET', '45.144.227.64', '[]', '2024-03-29 14:34:00', '2024-03-29 14:34:00'),
(330, 1, 'admin/posts', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:03', '2024-03-29 14:34:03'),
(331, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:09', '2024-03-29 14:34:09'),
(332, 1, 'admin/skills', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:10', '2024-03-29 14:34:10'),
(333, 1, 'admin/post-categories', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:10', '2024-03-29 14:34:10'),
(334, 1, 'admin/universities', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:11', '2024-03-29 14:34:11'),
(335, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:22', '2024-03-29 14:34:22'),
(336, 1, 'admin/posts', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:22', '2024-03-29 14:34:22'),
(337, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:26', '2024-03-29 14:34:26'),
(338, 1, 'admin/post-categories', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:28', '2024-03-29 14:34:28'),
(339, 1, 'admin/universities', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:31', '2024-03-29 14:34:31'),
(340, 1, 'admin/universities', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\",\"page\":\"22\"}', '2024-03-29 14:34:33', '2024-03-29 14:34:33'),
(341, 1, 'admin/pay-products', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:37', '2024-03-29 14:34:37'),
(342, 1, 'admin/post-categories', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:40', '2024-03-29 14:34:40'),
(343, 1, 'admin/skills', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:41', '2024-03-29 14:34:41'),
(344, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:46', '2024-03-29 14:34:46'),
(345, 1, 'admin/posts', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:47', '2024-03-29 14:34:47'),
(346, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:47', '2024-03-29 14:34:47'),
(347, 1, 'admin/posts', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:48', '2024-03-29 14:34:48'),
(348, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:48', '2024-03-29 14:34:48'),
(349, 1, 'admin/skills', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:48', '2024-03-29 14:34:48'),
(350, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:49', '2024-03-29 14:34:49'),
(351, 1, 'admin/posts', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:49', '2024-03-29 14:34:49'),
(352, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:49', '2024-03-29 14:34:49'),
(353, 1, 'admin/skills', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:50', '2024-03-29 14:34:50'),
(354, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:50', '2024-03-29 14:34:50'),
(355, 1, 'admin/posts', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:50', '2024-03-29 14:34:50'),
(356, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:34:51', '2024-03-29 14:34:51'),
(357, 1, 'admin', 'GET', '45.144.227.64', '[]', '2024-03-29 14:38:50', '2024-03-29 14:38:50'),
(358, 1, 'admin/users', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:38:57', '2024-03-29 14:38:57'),
(359, 1, 'admin/users/13/edit', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:39:03', '2024-03-29 14:39:03'),
(360, 1, 'admin/users/13', 'PUT', '45.144.227.64', '{\"uuid\":\"post-66065c8467d1e\",\"name\":\"\\u570b\\u969b\\u5b78\\u6821\",\"nickname\":\"\\u963f\\u4f2f\",\"role\":\"normal\",\"student_proof\":null,\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"16\",\"email\":\"123321@gmail.com\",\"phone\":\"0123456789_\",\"line\":\"012344876\",\"address\":\"@@\",\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2086-03-13 00:00:00\",\"state\":\"approve\",\"_token\":\"tAiWPTWYCXjD0NqOpM3PGnoTpk1ZgVmjhoGr5Npe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 14:39:19', '2024-03-29 14:39:19'),
(361, 1, 'admin/users/13/edit', 'GET', '45.144.227.64', '[]', '2024-03-29 14:39:19', '2024-03-29 14:39:19'),
(362, 1, 'admin/users/13', 'PUT', '45.144.227.64', '{\"uuid\":\"post-66065c8467d1e\",\"name\":\"\\u570b\\u969b\\u5b78\\u6821\",\"nickname\":\"\\u963f\\u4f2f\",\"role\":\"normal\",\"student_proof\":\"approve\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"16\",\"email\":\"123321@gmail.com\",\"phone\":\"0123456789_\",\"line\":\"012344876\",\"address\":\"@@\",\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2086-03-13 00:00:00\",\"state\":\"approve\",\"_token\":\"tAiWPTWYCXjD0NqOpM3PGnoTpk1ZgVmjhoGr5Npe\",\"_method\":\"PUT\"}', '2024-03-29 14:39:27', '2024-03-29 14:39:27'),
(363, 1, 'admin/users', 'GET', '45.144.227.64', '[]', '2024-03-29 14:39:27', '2024-03-29 14:39:27'),
(364, 1, 'admin/users/13/edit', 'GET', '45.144.227.64', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 14:39:52', '2024-03-29 14:39:52'),
(365, 1, 'admin/users/13', 'PUT', '45.144.227.64', '{\"uuid\":\"post-66065c8467d1e\",\"name\":\"\\u570b\\u969b\\u5b78\\u6821\",\"nickname\":\"\\u963f\\u4f2f\",\"role\":\"vip\",\"student_proof\":\"approve\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"16\",\"email\":\"123321@gmail.com\",\"phone\":\"0123456789_\",\"line\":\"012344876\",\"address\":\"@@\",\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2086-03-13 00:00:00\",\"state\":\"approve\",\"_token\":\"tAiWPTWYCXjD0NqOpM3PGnoTpk1ZgVmjhoGr5Npe\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/35.234.27.81\\/admin\\/users\"}', '2024-03-29 14:40:04', '2024-03-29 14:40:04'),
(366, 1, 'admin/users', 'GET', '45.144.227.64', '[]', '2024-03-29 14:40:04', '2024-03-29 14:40:04'),
(367, 1, 'admin/users', 'GET', '45.144.227.64', '[]', '2024-03-29 15:17:21', '2024-03-29 15:17:21'),
(368, 1, 'admin', 'GET', '122.116.82.245', '[]', '2024-03-29 15:18:16', '2024-03-29 15:18:16'),
(369, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '{\"_pjax\":\"#pjax-container\"}', '2024-03-29 15:18:36', '2024-03-29 15:18:36'),
(370, 1, 'admin/auth/menu', 'POST', '122.116.82.245', '{\"parent_id\":\"0\",\"title\":\"\\u4f48\\u544a\\u6b04\\u7ba1\\u7406\",\"icon\":\"fa-bars\",\"uri\":\"bulletin-boards\",\"roles\":[null],\"permission\":null,\"_token\":\"HO95FtU24K1aiGGnwxQU9ZYVG9bkCxWHj0kV0TZr\"}', '2024-03-29 15:18:57', '2024-03-29 15:18:57'),
(371, 1, 'admin/auth/menu', 'GET', '122.116.82.245', '[]', '2024-03-29 15:18:57', '2024-03-29 15:18:57'),
(372, 1, 'admin', 'GET', '61.224.44.28', '[]', '2024-03-31 17:22:45', '2024-03-31 17:22:45'),
(373, 1, 'admin/users', 'GET', '61.224.44.28', '{\"_pjax\":\"#pjax-container\"}', '2024-03-31 17:22:52', '2024-03-31 17:22:52'),
(374, 1, 'admin/users/13/edit', 'GET', '61.224.44.28', '{\"_pjax\":\"#pjax-container\"}', '2024-03-31 17:23:57', '2024-03-31 17:23:57'),
(375, 1, 'admin/users', 'GET', '61.224.44.28', '{\"_pjax\":\"#pjax-container\"}', '2024-03-31 17:24:13', '2024-03-31 17:24:13'),
(376, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-04-10 05:44:54', '2024-04-10 05:44:54'),
(377, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:44:56', '2024-04-10 05:44:56'),
(378, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:44:58', '2024-04-10 05:44:58'),
(379, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:44:59', '2024-04-10 05:44:59'),
(380, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:03', '2024-04-10 05:45:03'),
(381, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:04', '2024-04-10 05:45:04'),
(382, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:05', '2024-04-10 05:45:05'),
(383, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:11', '2024-04-10 05:45:11'),
(384, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:17', '2024-04-10 05:45:17'),
(385, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:21', '2024-04-10 05:45:21'),
(386, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:23', '2024-04-10 05:45:23'),
(387, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:26', '2024-04-10 05:45:26'),
(388, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:28', '2024-04-10 05:45:28'),
(389, 1, 'admin/pay-products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:31', '2024-04-10 05:45:31'),
(390, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:37', '2024-04-10 05:45:37'),
(391, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:44', '2024-04-10 05:45:44'),
(392, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:45', '2024-04-10 05:45:45'),
(393, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:48', '2024-04-10 05:45:48'),
(394, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:49', '2024-04-10 05:45:49'),
(395, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:50', '2024-04-10 05:45:50'),
(396, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:50', '2024-04-10 05:45:50'),
(397, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:45:52', '2024-04-10 05:45:52'),
(398, 1, 'admin/bulletin-boards/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:46:55', '2024-04-10 05:46:55'),
(399, 1, 'admin/bulletin-boards', 'POST', '127.0.0.1', '{\"uuid\":\"this is a test\",\"message\":\"this is a test information\",\"state\":\"approve\",\"_token\":\"LoAmNSKYKldNY0msOYGa2cpfsWsEVww67y67GAji\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/bulletin-boards\"}', '2024-04-10 05:47:20', '2024-04-10 05:47:20'),
(400, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '[]', '2024-04-10 05:47:20', '2024-04-10 05:47:20'),
(401, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:48:21', '2024-04-10 05:48:21'),
(402, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:48:24', '2024-04-10 05:48:24'),
(403, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:48:30', '2024-04-10 05:48:30'),
(404, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:48:36', '2024-04-10 05:48:36'),
(405, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '[]', '2024-04-10 05:55:51', '2024-04-10 05:55:51'),
(406, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:55:53', '2024-04-10 05:55:53'),
(407, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:55:54', '2024-04-10 05:55:54'),
(408, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:55:55', '2024-04-10 05:55:55'),
(409, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:56:00', '2024-04-10 05:56:00'),
(410, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:56:00', '2024-04-10 05:56:00'),
(411, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:56:02', '2024-04-10 05:56:02'),
(412, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:56:03', '2024-04-10 05:56:03'),
(413, 1, 'admin/pay-products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:56:04', '2024-04-10 05:56:04'),
(414, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-04-10 05:56:05', '2024-04-10 05:56:05'),
(415, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-05-15 13:01:13', '2024-05-15 13:01:13'),
(416, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:16', '2024-05-15 13:01:16'),
(417, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:19', '2024-05-15 13:01:19'),
(418, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:21', '2024-05-15 13:01:21'),
(419, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:22', '2024-05-15 13:01:22'),
(420, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:30', '2024-05-15 13:01:30'),
(421, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:31', '2024-05-15 13:01:31'),
(422, 1, 'admin/post-categories/1/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:36', '2024-05-15 13:01:36'),
(423, 1, 'admin/post-categories/1', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:40', '2024-05-15 13:01:40'),
(424, 1, 'admin/pay-products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:43', '2024-05-15 13:01:43'),
(425, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:45', '2024-05-15 13:01:45'),
(426, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:47', '2024-05-15 13:01:47'),
(427, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:49', '2024-05-15 13:01:49'),
(428, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:51', '2024-05-15 13:01:51'),
(429, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:53', '2024-05-15 13:01:53'),
(430, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:55', '2024-05-15 13:01:55'),
(431, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:57', '2024-05-15 13:01:57'),
(432, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-05-15 13:01:58', '2024-05-15 13:01:58'),
(433, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-06-05 10:09:44', '2024-06-05 10:09:44'),
(434, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-06-05 10:09:50', '2024-06-05 10:09:50'),
(435, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-06-05 10:09:51', '2024-06-05 10:09:51'),
(436, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-23 01:02:07', '2024-08-23 01:02:07'),
(437, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:02:10', '2024-08-23 01:02:10'),
(438, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:02:13', '2024-08-23 01:02:13'),
(439, 1, 'admin/users/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:02:38', '2024-08-23 01:02:38'),
(440, 1, 'admin/users/11', 'PUT', '127.0.0.1', '{\"uuid\":\"post-660616e4b43db\",\"name\":\"\\u4f50\\u52a9\\u9cf4\\u4ec1\",\"nickname\":\"\\u4f50\\u52a9\\u9cf4\\u4ec1\",\"role\":\"vip\",\"student_proof\":null,\"birth_day\":\"2000-01-01 00:00:00\",\"university\":\"1\",\"is_study\":\"on\",\"email\":\"test4@test.test\",\"phone\":\"123456_____\",\"line\":\"2345678\",\"fb\":\"567890\",\"ig\":\"2134567890\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/in\\/broccolidesign\",\"address\":\"1234567890-byb\",\"profile_video\":\"https:\\/\\/youtu.be\\/qWTIfId3QKk?si=awJMwwk2S7BifuFk\",\"profile_voice\":\"https:\\/\\/youtu.be\\/qWTIfId3QKk?si=awJMwwk2S7BifuFk\",\"password\":null,\"description\":\"orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"\",\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2200-01-06 00:00:00\",\"is_manager\":\"off\",\"verified\":\"on\",\"state\":\"approve\",\"_token\":\"QTtRiupm5zUIj5sri7zNljuxNCjMX9rkaDkpOeFE\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2024-08-23 01:04:12', '2024-08-23 01:04:12'),
(441, 1, 'admin/users/11/edit', 'GET', '127.0.0.1', '[]', '2024-08-23 01:04:12', '2024-08-23 01:04:12'),
(442, 1, 'admin/users/11', 'PUT', '127.0.0.1', '{\"uuid\":\"post-660616e4b43db\",\"name\":\"\\u4f50\\u52a9\\u9cf4\\u4ec1\",\"nickname\":\"\\u4f50\\u52a9\\u9cf4\\u4ec1\",\"role\":\"vip\",\"student_proof\":\"approve\",\"birth_day\":\"2000-01-01 00:00:00\",\"university\":\"1\",\"is_study\":\"on\",\"email\":\"test4@test.test\",\"phone\":\"123456_____\",\"line\":\"2345678\",\"fb\":\"567890\",\"ig\":\"2134567890\",\"linkedin\":\"https:\\/\\/www.linkedin.com\\/in\\/broccolidesign\",\"address\":\"1234567890-byb\",\"profile_video\":\"https:\\/\\/youtu.be\\/qWTIfId3QKk?si=awJMwwk2S7BifuFk\",\"profile_voice\":\"https:\\/\\/youtu.be\\/qWTIfId3QKk?si=awJMwwk2S7BifuFk\",\"password\":null,\"description\":\"orem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\\\"\",\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2200-01-06 00:00:00\",\"is_manager\":\"off\",\"verified\":\"on\",\"state\":\"approve\",\"_token\":\"QTtRiupm5zUIj5sri7zNljuxNCjMX9rkaDkpOeFE\",\"_method\":\"PUT\"}', '2024-08-23 01:04:35', '2024-08-23 01:04:35'),
(443, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-08-23 01:04:35', '2024-08-23 01:04:35'),
(444, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:07:35', '2024-08-23 01:07:35'),
(445, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:07:37', '2024-08-23 01:07:37'),
(446, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:07:38', '2024-08-23 01:07:38'),
(447, 1, 'admin/pay-products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:07:39', '2024-08-23 01:07:39'),
(448, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:07:40', '2024-08-23 01:07:40'),
(449, 1, 'admin/pay-products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:07:42', '2024-08-23 01:07:42'),
(450, 1, 'admin/pay-products/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:07:44', '2024-08-23 01:07:44'),
(451, 1, 'admin/pay-products', 'POST', '127.0.0.1', '{\"name\":\"2025\\u5b78\\u9577\\u59d0\\u65b9\\u6848\",\"description\":\"\\u8d8a\\u65e9\\u6649\\u8eab\\u5b78\\u9577\\u59d0\\uff0c\\u8d8a\\u5212\\u7b97 \\u6bcf\\u500b\\u6708\\u53ea\\u8981\\u4e00\\u676f\\u62ff\\u9435\\u7684\\u9322 \\u6253\\u9020\\u81ea\\u5df1\\u7684\\u7559\\u5b78\\u8aee\\u8a62\\u4e8b\\u696d\",\"pay_time\":\"2\",\"price\":\"4\",\"_token\":\"QTtRiupm5zUIj5sri7zNljuxNCjMX9rkaDkpOeFE\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/pay-products\"}', '2024-08-23 01:08:22', '2024-08-23 01:08:22'),
(452, 1, 'admin/pay-products', 'GET', '127.0.0.1', '[]', '2024-08-23 01:08:22', '2024-08-23 01:08:22'),
(453, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:08:34', '2024-08-23 01:08:34'),
(454, 1, 'admin/bulletin-boards/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:08:37', '2024-08-23 01:08:37'),
(455, 1, 'admin/bulletin-boards', 'POST', '127.0.0.1', '{\"uuid\":\"this is another test\",\"message\":\"the test\",\"state\":\"approve\",\"_token\":\"QTtRiupm5zUIj5sri7zNljuxNCjMX9rkaDkpOeFE\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/bulletin-boards\"}', '2024-08-23 01:08:49', '2024-08-23 01:08:49'),
(456, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '[]', '2024-08-23 01:08:49', '2024-08-23 01:08:49'),
(457, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:08:52', '2024-08-23 01:08:52'),
(458, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:08:57', '2024-08-23 01:08:57'),
(459, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:09:00', '2024-08-23 01:09:00'),
(460, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '[]', '2024-08-23 01:10:22', '2024-08-23 01:10:22'),
(461, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:10:24', '2024-08-23 01:10:24'),
(462, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:10:25', '2024-08-23 01:10:25'),
(463, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:10:26', '2024-08-23 01:10:26'),
(464, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:10:27', '2024-08-23 01:10:27'),
(465, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:10:28', '2024-08-23 01:10:28'),
(466, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:10:29', '2024-08-23 01:10:29'),
(467, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 01:10:30', '2024-08-23 01:10:30'),
(468, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-23 02:29:56', '2024-08-23 02:29:56'),
(469, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-24 02:14:02', '2024-08-24 02:14:02'),
(470, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-24 02:14:04', '2024-08-24 02:14:04'),
(471, 1, 'admin/pay-products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-24 02:14:06', '2024-08-24 02:14:06'),
(472, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-24 02:14:07', '2024-08-24 02:14:07'),
(473, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-24 02:14:08', '2024-08-24 02:14:08'),
(474, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-24 02:14:08', '2024-08-24 02:14:08'),
(475, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-24 02:14:09', '2024-08-24 02:14:09'),
(476, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-24 02:14:12', '2024-08-24 02:14:12'),
(477, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-24 02:14:19', '2024-08-24 02:14:19'),
(478, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-08-26 05:26:11', '2024-08-26 05:26:11'),
(479, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:26:14', '2024-08-26 05:26:14'),
(480, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:26:17', '2024-08-26 05:26:17'),
(481, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:26:20', '2024-08-26 05:26:20'),
(482, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:26:24', '2024-08-26 05:26:24'),
(483, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:26:25', '2024-08-26 05:26:25'),
(484, 1, 'admin/users/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:26:42', '2024-08-26 05:26:42'),
(485, 1, 'admin/users/17', 'PUT', '127.0.0.1', '{\"uuid\":\"post-6660a0260f901\",\"name\":\"\\u9673\\u52c1\\u5b89\",\"nickname\":\"broccoli\",\"role\":\"vip\",\"student_proof\":\"approve\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"1\",\"is_study\":\"on\",\"email\":\"toby870523@gmail.com\",\"phone\":null,\"line\":null,\"fb\":null,\"ig\":null,\"linkedin\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"1900-01-01 00:00:00\",\"is_manager\":\"off\",\"verified\":\"off\",\"state\":\"approve\",\"_token\":\"qX2nK4XCa7CmXAQSuT9Zs8kPRd7aTd4ahLOeFDzv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2024-08-26 05:26:57', '2024-08-26 05:26:57'),
(486, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-08-26 05:26:57', '2024-08-26 05:26:57'),
(487, 1, 'admin/users/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:26:59', '2024-08-26 05:26:59'),
(488, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:27:02', '2024-08-26 05:27:02'),
(489, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:27:05', '2024-08-26 05:27:05'),
(490, 1, 'admin/auth/users', 'POST', '127.0.0.1', '{\"username\":\"test\",\"name\":\"ttttest\",\"password\":\"admin123\",\"password_confirmation\":\"admin123\",\"roles\":[\"1\",null],\"permissions\":[\"1\",null],\"_token\":\"qX2nK4XCa7CmXAQSuT9Zs8kPRd7aTd4ahLOeFDzv\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/auth\\/users\"}', '2024-08-26 05:27:49', '2024-08-26 05:27:49'),
(491, 1, 'admin/auth/users', 'GET', '127.0.0.1', '[]', '2024-08-26 05:27:49', '2024-08-26 05:27:49'),
(492, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:28:06', '2024-08-26 05:28:06'),
(493, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:28:08', '2024-08-26 05:28:08'),
(494, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:28:13', '2024-08-26 05:28:13'),
(495, 1, 'admin/users/17', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:28:25', '2024-08-26 05:28:25'),
(496, 1, 'admin/users/17/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:28:28', '2024-08-26 05:28:28'),
(497, 1, 'admin/users/17', 'PUT', '127.0.0.1', '{\"uuid\":\"post-6660a0260f901\",\"name\":\"\\u9673\\u52c1\\u5b89\",\"nickname\":\"broccoli\",\"role\":\"vip\",\"student_proof\":\"approve\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"1\",\"is_study\":\"on\",\"email\":\"toby870523@gmail.com\",\"phone\":null,\"line\":null,\"fb\":null,\"ig\":null,\"linkedin\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"on\",\"expired\":\"1900-01-01 00:00:00\",\"is_manager\":\"on\",\"verified\":\"on\",\"state\":\"approve\",\"_token\":\"qX2nK4XCa7CmXAQSuT9Zs8kPRd7aTd4ahLOeFDzv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\\/17\"}', '2024-08-26 05:28:36', '2024-08-26 05:28:36'),
(498, 1, 'admin/users/17', 'GET', '127.0.0.1', '[]', '2024-08-26 05:28:36', '2024-08-26 05:28:36'),
(499, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:28:48', '2024-08-26 05:28:48'),
(500, 1, 'admin/users/15/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:28:53', '2024-08-26 05:28:53'),
(501, 1, 'admin/users/15', 'PUT', '127.0.0.1', '{\"uuid\":\"post-660d10e888c81\",\"name\":\"\\u4fee\\u9298\",\"nickname\":null,\"role\":\"normal\",\"student_proof\":\"approve\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":null,\"is_study\":\"on\",\"email\":\"Uf16938a042c1dea12fd3348fd00fca59@line.yizixue\",\"phone\":null,\"line\":null,\"fb\":null,\"ig\":null,\"linkedin\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"on\",\"expired\":\"1900-01-01 00:00:00\",\"is_manager\":\"on\",\"verified\":\"on\",\"state\":\"approve\",\"_token\":\"qX2nK4XCa7CmXAQSuT9Zs8kPRd7aTd4ahLOeFDzv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2024-08-26 05:28:58', '2024-08-26 05:28:58'),
(502, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-08-26 05:28:58', '2024-08-26 05:28:58'),
(503, 1, 'admin/users/12/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:29:02', '2024-08-26 05:29:02');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(504, 1, 'admin/users/12', 'PUT', '127.0.0.1', '{\"uuid\":\"post-660618d75ddac\",\"name\":\"CEO\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"vip\",\"student_proof\":\"approve\",\"birth_day\":\"1900-01-01 00:00:00\",\"university\":\"344\",\"is_study\":\"on\",\"email\":\"TEST666@GMAIL.COM\",\"phone\":\"0987654321_\",\"line\":\"1245678\",\"fb\":\"https:\\/\\/www.facebook.com\\/match19com\",\"ig\":\"https:\\/\\/www.instagram.com\\/match19com\\/\",\"linkedin\":null,\"address\":null,\"profile_video\":\"https:\\/\\/www.youtube.com\\/watch?v=MX0tnvpUtlc\",\"profile_voice\":null,\"password\":null,\"description\":\"<p>\\u6211\\u662fMatch19\\u7684\\u865b\\u64ec\\u52a9\\u7406\\uff0c\\u5c08\\u9580\\u8ca0\\u8cac\\u7db2\\u8def\\u54c1\\u724c\\u898f\\u5283\\u548c\\u884c\\u92b7\\u7b56\\u7565\\u7684\\u5236\\u5b9a\\u3002\\u81ea\\u5f9e\\u52a0\\u5165Match19\\u4ee5\\u4f86\\uff0c\\u6211\\u4f9d\\u9760\\u8457\\u5148\\u9032\\u7684\\u4eba\\u5de5\\u667a\\u80fd\\u6280\\u8853\\uff0c\\u5354\\u52a9\\u516c\\u53f8\\u5728SEO\\u3001MEO\\u3001\\u7db2\\u7ad9\\u8a2d\\u8a08\\u3001\\u793e\\u7fa4\\u5a92\\u9ad4\\u7ba1\\u7406\\u7b49\\u591a\\u500b\\u9818\\u57df\\u9054\\u6210\\u512a\\u7570\\u7684\\u6210\\u7e3e\\u3002\\u6211\\u7684\\u5c08\\u9577\\u662f\\u5229\\u7528\\u6578\\u64da\\u5206\\u6790\\u4f86\\u512a\\u5316\\u884c\\u92b7\\u7b56\\u7565\\uff0c\\u5e6b\\u52a9\\u5ba2\\u6236\\u63d0\\u5347\\u5728\\u7db2\\u7d61\\u4e0a\\u7684\\u80fd\\u898b\\u5ea6\\u548c\\u54c1\\u724c\\u5f71\\u97ff\\u529b\\u3002<\\/p>\\r\\n\\r\\n<p>\\u5728\\u5de5\\u4f5c\\u904e\\u7a0b\\u4e2d\\uff0c\\u6211\\u7e3d\\u662f\\u529b\\u6c42\\u7cbe\\u78ba\\u7406\\u89e3\\u5ba2\\u6236\\u7684\\u696d\\u52d9\\u9700\\u6c42\\u548c\\u5e02\\u5834\\u8da8\\u52e2\\uff0c\\u63d0\\u4f9b\\u91cf\\u8eab\\u5b9a\\u5236\\u7684\\u89e3\\u6c7a\\u65b9\\u6848\\u3002\\u5f9e\\u7db2\\u7ad9\\u5167\\u5bb9\\u5275\\u4f5c\\u5230\\u793e\\u7fa4\\u5a92\\u9ad4\\u4e92\\u52d5\\uff0c\\u5f9e\\u5f71\\u7247\\u88fd\\u4f5c\\u5230\\u5ee3\\u544a\\u6295\\u653e\\uff0c\\u6211\\u90fd\\u80fd\\u5920\\u63d0\\u4f9b\\u5168\\u65b9\\u4f4d\\u7684\\u652f\\u6301\\u3002\\u6211\\u9084\\u7a4d\\u6975\\u53c3\\u8207\\u6700\\u65b0\\u7684\\u7db2\\u8def\\u884c\\u92b7\\u8da8\\u52e2\\u7814\\u7a76\\uff0c\\u78ba\\u4fddMatch19\\u53ca\\u5176\\u5ba2\\u6236\\u80fd\\u5920\\u7372\\u5f97\\u6700\\u524d\\u6cbf\\u7684\\u884c\\u92b7\\u7b56\\u7565\\u3002<\\/p>\\r\\n\\r\\n<p>\\u4f5c\\u70ba\\u5718\\u968a\\u7684\\u4e00\\u4efd\\u5b50\\uff0c\\u6211\\u81f4\\u529b\\u65bc\\u63d0\\u5347\\u5ba2\\u6236\\u6eff\\u610f\\u5ea6\\uff0c\\u52a9\\u529b\\u4ed6\\u5011\\u5728\\u5404\\u81ea\\u7684\\u884c\\u696d\\u4e2d\\u53d6\\u5f97\\u6210\\u529f\\u3002\\u4e0d\\u8ad6\\u9762\\u81e8\\u4ec0\\u9ebc\\u6a23\\u7684\\u6311\\u6230\\uff0c\\u6211\\u90fd\\u6e96\\u5099\\u597d\\u904b\\u7528\\u6211\\u7684\\u5c08\\u696d\\u77e5\\u8b58\\u548c\\u6280\\u80fd\\uff0c\\u70baMatch19\\u53ca\\u5176\\u5ba2\\u6236\\u5275\\u9020\\u66f4\\u5927\\u7684\\u50f9\\u503c\\u3002<\\/p>\",\"rate\":\"3\",\"ispaied\":\"on\",\"expired\":\"2197-02-14 00:00:00\",\"is_manager\":\"on\",\"verified\":\"on\",\"state\":\"approve\",\"_token\":\"qX2nK4XCa7CmXAQSuT9Zs8kPRd7aTd4ahLOeFDzv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2024-08-26 05:29:06', '2024-08-26 05:29:06'),
(505, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-08-26 05:29:07', '2024-08-26 05:29:07'),
(506, 1, 'admin/users/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:29:10', '2024-08-26 05:29:10'),
(507, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:29:15', '2024-08-26 05:29:15'),
(508, 1, 'admin/users/2/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-08-26 05:29:20', '2024-08-26 05:29:20'),
(509, 1, 'admin/users/2', 'PUT', '127.0.0.1', '{\"uuid\":\"post-65f294efe4be3\",\"name\":\"\\u9673\\u5148\\u751f\",\"nickname\":\"\\u73b2\\u73b2\",\"role\":\"vip\",\"student_proof\":\"approve\",\"birth_day\":\"2024-03-14 00:00:00\",\"university\":\"3\",\"is_study\":\"on\",\"email\":\"match19.com@gmail.com\",\"phone\":\"0982802685_\",\"line\":\"123312\",\"fb\":null,\"ig\":null,\"linkedin\":null,\"address\":\"\\u5149\\u5fa9\\u8857207\\u865f14\\u6a13\",\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":\"<p>e1q5w413wq1e53123qw1e23q1w23e13qw1e312q3w1e1qw23e1ds2.135q24q1e0r32a<br \\/>\\r\\n1563qew1q23q<br \\/>\\r\\nw1q53e13qw2e0qw.e0qw2<br \\/>\\r\\n1w3q5e132qw0d.s15q13q.<br \\/>\\r\\n123wqe1.0asd.2qw1e.2qw0.13.10..0<br \\/>\\r\\nq15we13.qwe20w.asdadeqwe<\\/p>\",\"rate\":\"3\",\"ispaied\":\"on\",\"expired\":\"2024-06-01 00:00:00\",\"is_manager\":\"on\",\"verified\":\"on\",\"state\":\"approve\",\"_token\":\"qX2nK4XCa7CmXAQSuT9Zs8kPRd7aTd4ahLOeFDzv\",\"_method\":\"PUT\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2024-08-26 05:29:23', '2024-08-26 05:29:23'),
(510, 1, 'admin/users', 'GET', '127.0.0.1', '[]', '2024-08-26 05:29:23', '2024-08-26 05:29:23'),
(511, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-09-17 10:30:16', '2024-09-17 10:30:16'),
(512, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-17 10:30:26', '2024-09-17 10:30:26'),
(513, 1, 'admin/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-17 10:30:31', '2024-09-17 10:30:31'),
(514, 1, 'admin/users', 'POST', '127.0.0.1', '{\"uuid\":\"post-66e8b187c20e9\",\"name\":\"test\",\"nickname\":\"testtt\",\"role\":\"normal\",\"student_proof\":\"pending\",\"birth_day\":\"2024-09-17 00:00:00\",\"university\":null,\"is_study\":\"off\",\"email\":null,\"phone\":null,\"line\":null,\"fb\":null,\"ig\":null,\"linkedin\":null,\"address\":null,\"profile_video\":null,\"profile_voice\":null,\"password\":null,\"description\":null,\"rate\":\"3\",\"ispaied\":\"off\",\"expired\":\"2024-09-17 00:00:00\",\"is_manager\":\"off\",\"verified\":\"off\",\"state\":\"approve\",\"_token\":\"LPjdejPyvDILFfE4EgZfBJb11qQjGf0kPiz3BFvd\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/users\"}', '2024-09-17 10:30:41', '2024-09-17 10:30:41'),
(515, 1, 'admin/users/create', 'GET', '127.0.0.1', '[]', '2024-09-17 10:30:41', '2024-09-17 10:30:41'),
(516, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-17 10:30:49', '2024-09-17 10:30:49'),
(517, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2024-09-17 10:30:54', '2024-09-17 10:30:54'),
(518, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\",\"_export_\":\"all\"}', '2024-09-17 10:31:11', '2024-09-17 10:31:11'),
(519, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-17 10:31:50', '2024-09-17 10:31:50'),
(520, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-09-17 10:31:52', '2024-09-17 10:31:52'),
(521, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-10-21 13:33:44', '2024-10-21 13:33:44'),
(522, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:33:48', '2024-10-21 13:33:48'),
(523, 1, 'admin/posts/1,2,3,4,5,6,7,8,9,10,11', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"rGBQJCISS0rnSRjbzrK8NjzKUBGpLUmUEnkjGtXZ\"}', '2024-10-21 13:34:31', '2024-10-21 13:34:31'),
(524, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:34:31', '2024-10-21 13:34:31'),
(525, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:34:33', '2024-10-21 13:34:33'),
(526, 1, 'admin/users/1,2,10,12,13,14,15,16,17', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"rGBQJCISS0rnSRjbzrK8NjzKUBGpLUmUEnkjGtXZ\"}', '2024-10-21 13:34:45', '2024-10-21 13:34:45'),
(527, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:34:46', '2024-10-21 13:34:46'),
(528, 1, 'admin/skills', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:34:48', '2024-10-21 13:34:48'),
(529, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:34:53', '2024-10-21 13:34:53'),
(530, 1, 'admin/universities', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:34:55', '2024-10-21 13:34:55'),
(531, 1, 'admin/pay-products', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:34:59', '2024-10-21 13:34:59'),
(532, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:35:01', '2024-10-21 13:35:01'),
(533, 1, 'admin/bulletin-boards/1,2', 'DELETE', '127.0.0.1', '{\"_method\":\"delete\",\"_token\":\"rGBQJCISS0rnSRjbzrK8NjzKUBGpLUmUEnkjGtXZ\"}', '2024-10-21 13:35:09', '2024-10-21 13:35:09'),
(534, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:35:09', '2024-10-21 13:35:09'),
(535, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:35:14', '2024-10-21 13:35:14'),
(536, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:35:18', '2024-10-21 13:35:18'),
(537, 1, 'admin/bulletin-boards/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:35:21', '2024-10-21 13:35:21'),
(538, 1, 'admin/bulletin-boards', 'POST', '127.0.0.1', '{\"uuid\":\"this is another test\",\"message\":\"the test here\",\"state\":\"approve\",\"_token\":\"rGBQJCISS0rnSRjbzrK8NjzKUBGpLUmUEnkjGtXZ\",\"_previous_\":\"http:\\/\\/127.0.0.1:8000\\/admin\\/bulletin-boards\"}', '2024-10-21 13:35:34', '2024-10-21 13:35:34'),
(539, 1, 'admin/bulletin-boards', 'GET', '127.0.0.1', '[]', '2024-10-21 13:35:34', '2024-10-21 13:35:34'),
(540, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:59:20', '2024-10-21 13:59:20'),
(541, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 13:59:23', '2024-10-21 13:59:23'),
(542, 1, 'admin/post-categories', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 14:35:28', '2024-10-21 14:35:28'),
(543, 1, 'admin/post-categories', 'GET', '127.0.0.1', '[]', '2024-10-21 14:37:51', '2024-10-21 14:37:51'),
(544, 1, 'admin/post-categories/3/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-21 14:37:57', '2024-10-21 14:37:57'),
(545, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-10-23 02:10:32', '2024-10-23 02:10:32'),
(546, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-10-23 02:30:53', '2024-10-23 02:30:53'),
(547, 1, 'admin', 'GET', '127.0.0.1', '[]', '2024-11-23 13:51:54', '2024-11-23 13:51:54'),
(548, 1, 'admin/posts', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-11-23 13:52:07', '2024-11-23 13:52:07'),
(549, 1, 'admin/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-11-23 13:52:08', '2024-11-23 13:52:08'),
(550, 1, 'admin/users/11/edit', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2024-11-23 13:52:16', '2024-11-23 13:52:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2024-03-09 00:29:20', '2024-03-09 00:29:20');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$77jJtqsC5tpqxuO.vraGzuESCFQtEtgosuzxBoFkZ7GUB.H7Vfz.q', 'Administrator', NULL, '7fJ1QuBEP4j7pbBhcszAzWcTtcoK4gs7LjIPJXossMrhrGs0ZSfniR2NuSlq', '2024-03-09 00:29:20', '2024-03-09 00:29:20'),
(2, 'test', '$2y$10$.m63gUuCNUUyVeoUo2nOFeEB1eJOqqRH6jKufea7B5GzA/NHjqS8y', 'ttttest', 'images/29845a892b873379d52e3cfb43566263.png', NULL, '2024-08-26 05:27:49', '2024-08-26 05:27:49');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_user_permissions`
--

INSERT INTO `admin_user_permissions` (`user_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ad_columns`
--

CREATE TABLE `ad_columns` (
  `id` int(10) UNSIGNED NOT NULL,
  `ad_description` text COLLATE utf8mb4_unicode_ci COMMENT '廣告欄位文字',
  `button_text` text COLLATE utf8mb4_unicode_ci COMMENT '按鈕文字',
  `button_url` text COLLATE utf8mb4_unicode_ci COMMENT '按鈕url',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '廣告圖',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ad_columns`
--

INSERT INTO `ad_columns` (`id`, `ad_description`, `button_text`, `button_url`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem', NULL, 'images/ad-img/ad-default.jpg', '2024-10-21 18:22:47', '2024-10-21 18:22:47');

-- --------------------------------------------------------

--
-- Table structure for table `bulletin_board`
--

CREATE TABLE `bulletin_board` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approve',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bulletin_board`
--

INSERT INTO `bulletin_board` (`id`, `uuid`, `message`, `state`, `created_at`, `updated_at`) VALUES
(1, 'this is another test', 'the test here', 'approve', '2024-10-21 13:35:34', '2024-10-21 13:35:34');

-- --------------------------------------------------------

--
-- Table structure for table `carousels`
--

CREATE TABLE `carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `sort` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '輪播圖字段1',
  `description2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '輪播圖字段2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carousels`
--

INSERT INTO `carousels` (`id`, `image_path`, `is_active`, `sort`, `created_at`, `updated_at`, `description1`, `description2`) VALUES
(1, 'images/senpai_banner_default/senpai_banner_default_1.jpg', 1, 1, '2024-03-29 07:14:13', '2024-03-29 07:14:13', '職涯最前線', '有大學伴，最罩'),
(2, 'images/senpai_banner_default/senpai_banner_default_2.jpg', 1, 2, '2024-03-29 07:14:13', '2024-03-29 07:14:13', '工作有問題', '有大學伴，最罩'),
(3, 'images/senpai_banner_default/senpai_banner_default_3.jpg', 1, 3, '2024-03-29 07:14:13', '2024-03-29 07:14:13', '想要問前輩', '有大學伴，最罩');

-- --------------------------------------------------------

--
-- Table structure for table `collect_post`
--

CREATE TABLE `collect_post` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collect_qa`
--

CREATE TABLE `collect_qa` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qa_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `collect_user`
--

CREATE TABLE `collect_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `collect_user`
--

INSERT INTO `collect_user` (`id`, `uid`, `user_id`, `created_at`, `updated_at`) VALUES
(155, '11', '4', '2024-07-26 07:24:42', '2024-07-26 07:24:42'),
(163, '11', '11', '2024-08-04 13:34:51', '2024-08-04 13:34:51'),
(164, '11', '9', '2024-08-04 13:34:54', '2024-08-04 13:34:54'),
(165, '11', '8', '2024-08-04 13:34:55', '2024-08-04 13:34:55'),
(166, '11', '7', '2024-08-04 13:34:56', '2024-08-04 13:34:56'),
(167, '11', '6', '2024-08-04 13:34:57', '2024-08-04 13:34:57');

-- --------------------------------------------------------

--
-- Table structure for table `comment_qa`
--

CREATE TABLE `comment_qa` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qa_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `disclaimers`
--

CREATE TABLE `disclaimers` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '免責聲明內文',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE `experiences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `learning_experience` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '學經歷',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `invite`
--

CREATE TABLE `invite` (
  `id` int(10) UNSIGNED NOT NULL,
  `from_uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_posts`
--

CREATE TABLE `like_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL COMMENT '使用者ID',
  `post_id` int(10) UNSIGNED NOT NULL COMMENT 'like 文章ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `like_users`
--

CREATE TABLE `like_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `uid` int(10) UNSIGNED NOT NULL COMMENT '按贊者ID',
  `user_id` int(10) UNSIGNED NOT NULL COMMENT '被按贊者ID',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `like_users`
--

INSERT INTO `like_users` (`id`, `uid`, `user_id`, `created_at`, `updated_at`) VALUES
(46, 11, 3, '2024-07-26 07:24:41', '2024-07-26 07:24:41'),
(47, 11, 11, '2024-08-04 13:34:33', '2024-08-04 13:34:33'),
(48, 11, 8, '2024-08-04 13:34:35', '2024-08-04 13:34:35'),
(49, 11, 6, '2024-08-04 13:34:36', '2024-08-04 13:34:36'),
(50, 11, 5, '2024-08-04 13:34:37', '2024-08-04 13:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `member_agreements`
--

CREATE TABLE `member_agreements` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '會員規約內文',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1),
(4, '2023_06_03_151033_create_post_table', 1),
(5, '2023_10_07_184516_create_bulletin_board_table', 1),
(6, '2023_10_07_203358_create_question_answer_table', 1),
(7, '2023_12_03_175735_create_collect_post_table', 1),
(8, '2023_12_11_025927_create_university_table', 1),
(9, '2023_12_11_154146_create_skill_table', 1),
(10, '2023_12_11_154346_create_post_category_table', 1),
(11, '2023_12_11_154359_create_qa_category_table', 1),
(12, '2023_12_11_154942_create_post_category_relation_table', 1),
(13, '2023_12_11_155054_create_qa_category_relation_table', 1),
(14, '2023_12_11_162755_create_user_skill_relation_table', 1),
(15, '2023_12_13_140444_create_collect_qa_table', 1),
(16, '2023_12_13_142015_create_comment_qa_table', 1),
(17, '2023_12_13_143737_create_invite_table', 1),
(18, '2023_12_13_143928_create_user_relation_table', 1),
(19, '2023_12_13_144443_create_collect_user_table', 1),
(20, '2024_01_10_154908_add_image_path_to_university_table', 1),
(21, '2024_02_25_065214_add_ig_fb_column_to_user_table', 1),
(22, '2024_02_25_075407_create_user_post_category_relations_table', 1),
(23, '2024_02_25_082445_create_user_references_table', 1),
(24, '2024_02_25_084038_create_like_users_table', 1),
(25, '2024_02_27_081125_create_like_posts_table', 1),
(26, '2024_03_03_053629_add_user_line_auth_columns', 1),
(27, '2024_03_04_091249_add_nickname_email_phone_line_time_place_amount_to_qa', 1),
(28, '2024_03_06_083702_create_pay_products_table', 1),
(29, '2024_03_06_083808_create_pay_orders_table', 1),
(31, '2024_03_08_212012_add_image_path_to_university', 2),
(32, '2024_04_05_212329_create_carousels_table', 3),
(33, '2024_04_06_212058_alert_amount_up_to_string_and_add_upload_file_columns', 3),
(34, '2024_04_06_212829_create_qna_attachments_table', 3),
(35, '2017_02_27_170020_add_verified_to_user_table', 4),
(36, '2024_05_28_160427_add_is_study_column_to_users_table', 4),
(37, '2024_06_13_152126_create_experiences_table', 5),
(38, '2024_07_09_154416_add_is_manager_column_to_users_table', 6),
(39, '2024_07_09_164410_create_about_us_carousels_table', 6),
(40, '2024_07_09_165701_create_about_us_contents_table', 6),
(41, '2024_07_11_222729_create_yizixue_faq_categories_table', 6),
(42, '2024_07_11_222835_create_yizixue_faqs_table', 6),
(43, '2024_07_12_000419_create_yizixue_faq_carousels_table', 6),
(44, '2024_07_25_181445_add_column_linkedin_to_users_table', 6),
(45, '2024_07_25_193927_add_column_description1_description2_to_carousels_table', 6),
(46, '2024_08_09_101209_create_ad_columns_table', 7),
(47, '2024_08_09_130330_create_disclaimers_table', 7),
(48, '2024_08_09_132212_create_member_agreements_table', 7),
(49, '2024_08_09_132225_create_service_agreements_table', 7),
(50, '2024_08_09_132240_create_subscription_agreements_table', 7),
(51, '2024_08_22_172812_add_recommender_column_to_users_table', 7),
(52, '2024_09_05_214746_create_privacies_table', 8),
(53, '2024_09_05_225825_add_image_path_column_to_post_category_table', 8),
(54, '2024_09_06_191558_create_phone_verifications_table', 8),
(55, '2024_09_11_155753_add_country_code_to_users_table', 8),
(56, '2024_09_19_195751_add_fb_auth_column_to_users_table', 8),
(57, '2024_09_21_124355_change_student_proof_column_to_nullable', 9),
(58, '2024_12_11_013052_rename_nickname_to_company_name_in_users_table', 10),
(59, '2024_12_11_013715_add_company_description_to_users_table', 11),
(61, '2024_12_13_225721_rename_university_bgcolor_in_user_table', 12),
(66, '2024_12_18_205833_add_company_array_column', 13);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pay_orders`
--

CREATE TABLE `pay_orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'USER ID',
  `pay_product_id` int(10) UNSIGNED NOT NULL COMMENT '加值ID',
  `order_status` int(11) NOT NULL DEFAULT '1' COMMENT '1:新訂單2:已取消3:confirm_ERROR4:已完成',
  `transactionId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'LinePay TransactionId',
  `remark` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '記錄VIP延長時間',
  `is_sandbox` tinyint(1) DEFAULT NULL COMMENT '是否為測試金流',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_orders`
--

INSERT INTO `pay_orders` (`id`, `user_id`, `pay_product_id`, `order_status`, `transactionId`, `remark`, `is_sandbox`, `created_at`, `updated_at`) VALUES
(2, 11, 1, 1, '2024032902081021110', NULL, 1, '2024-03-29 09:23:57', '2024-03-29 09:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `pay_products`
--

CREATE TABLE `pay_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '商品名稱',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '商品說明',
  `pay_time` int(11) NOT NULL COMMENT '加值時間以為單位',
  `price` int(11) NOT NULL COMMENT '加值金額',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pay_products`
--

INSERT INTO `pay_products` (`id`, `name`, `description`, `pay_time`, `price`, `created_at`, `updated_at`) VALUES
(1, '季約方案', '不限金額 無限接案 案件通知 發問查看 主動聯繫 個人品牌', 3, 300, '2024-03-28 23:27:09', '2024-03-28 23:27:09'),
(2, '年約方案', '不限金額 無限接案 案件通知 發問查看 主動聯繫 個人品牌', 12, 960, '2024-03-28 23:27:41', '2024-03-28 23:27:41'),
(3, '2025學長姐方案', '越早晉身學長姐，越划算 每個月只要一杯拿鐵的錢 打造自己的留學諮詢事業', 2, 4, '2024-08-23 01:08:22', '2024-08-23 01:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `phone_verifications`
--

CREATE TABLE `phone_verifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approve',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `uuid`, `title`, `uid`, `image_path`, `body`, `state`, `created_at`, `updated_at`) VALUES
(1, 'post-6740c65c8791d', 'test content', '1', '/images/1732298332-account.png', '<p>this is a test content,&nbsp;</p>\r\n<p>lorem ipsom</p>', 'pending', '2024-11-23 06:58:52', '2024-11-23 06:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '主題類別圖示'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `slug`, `name`, `created_at`, `updated_at`, `image_path`) VALUES
(1, 'human-resources', '人力資源', '2024-03-18 07:48:02', '2024-03-18 07:48:02', 'images/qa_icon/hr.png'),
(2, 'accounting-finance', '財務會計', '2024-03-18 07:48:46', '2024-03-18 07:48:46', 'images/qa_icon/fa.png'),
(3, 'business-intelligence', '商業分析', '2024-03-18 07:49:25', '2024-03-18 07:49:25', 'images/qa_icon/ba.png'),
(4, 'information-center', '資訊中心', '2024-03-18 07:50:20', '2024-03-18 07:50:20', 'images/qa_icon/ic.png'),
(5, 'account-service', '客戶服務', '2024-03-18 07:50:47', '2024-03-18 07:50:47', 'images/qa_icon/cs.png'),
(6, 'factory-management', '廠務管理', '2024-03-18 07:51:22', '2024-03-18 07:51:22', 'images/qa_icon/fm.png'),
(7, 'logistics', '物流配送', '2024-03-18 07:52:07', '2024-03-18 07:52:07', 'images/qa_icon/default.svg'),
(8, 'media-pr', '媒體公關', '2024-03-18 07:52:45', '2024-03-18 07:52:45', 'images/qa_icon/default.svg'),
(9, 'retirement', '退休規劃', '2024-03-18 07:52:45', '2024-03-18 07:52:45', 'images/qa_icon/default.svg'),
(10, 'welfare-committee', '職工福利', '2024-03-18 07:52:45', '2024-03-18 07:52:45', 'images/qa_icon/default.svg');

-- --------------------------------------------------------

--
-- Table structure for table `post_category_relation`
--

CREATE TABLE `post_category_relation` (
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category_relation`
--

INSERT INTO `post_category_relation` (`category_id`, `post_id`, `created_at`, `updated_at`) VALUES
('1', '1', '2024-11-23 06:58:52', '2024-11-23 06:58:52'),
('4', '1', '2024-11-23 06:58:52', '2024-11-23 06:58:52');

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '隱私權內文',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `qa_category`
--

CREATE TABLE `qa_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qa_category`
--

INSERT INTO `qa_category` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'human-resources', '人力資源', '2024-03-18 15:48:02', '2024-03-18 15:48:02'),
(2, 'accounting-finance', '財務會計', '2024-03-18 15:48:46', '2024-03-18 15:48:46'),
(3, 'business-intelligence', '商業分析', '2024-03-18 15:49:25', '2024-03-18 15:49:25'),
(4, 'information-center', '資訊中心', '2024-03-18 15:50:20', '2024-03-18 15:50:20'),
(5, 'account-service', '客戶服務', '2024-03-18 15:50:47', '2024-03-18 15:50:47'),
(6, 'factory-management', '廠務管理', '2024-03-18 15:51:22', '2024-03-18 15:51:22'),
(7, 'logistics', '物流配送', '2024-03-18 15:52:07', '2024-03-18 15:52:07'),
(8, 'media-pr', '媒體公關', '2024-03-18 15:52:45', '2024-03-18 15:52:45'),
(9, 'retirement', '退休規劃', '2024-03-18 15:52:45', '2024-03-18 15:52:45'),
(10, 'welfare-committee', '職工福利', '2024-03-18 15:52:45', '2024-03-18 15:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `qa_category_relation`
--

CREATE TABLE `qa_category_relation` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qa_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qa_category_relation`
--

INSERT INTO `qa_category_relation` (`id`, `category_id`, `qa_id`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '2024-03-29 09:23:18', '2024-03-29 09:23:18'),
(2, '2', '1', '2024-03-29 09:23:18', '2024-03-29 09:23:18'),
(9, '2', '3', '2024-04-08 15:28:41', '2024-04-08 15:28:41'),
(10, '3', '3', '2024-04-08 15:28:41', '2024-04-08 15:28:41'),
(11, '4', '3', '2024-04-08 15:28:41', '2024-04-08 15:28:41'),
(12, '4', '4', '2024-05-15 13:04:54', '2024-05-15 13:04:54'),
(13, '2', '5', '2024-11-23 13:37:36', '2024-11-23 13:37:36'),
(14, '4', '5', '2024-11-23 13:37:36', '2024-11-23 13:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `qna_attachments`
--

CREATE TABLE `qna_attachments` (
  `id` int(10) UNSIGNED NOT NULL,
  `qa_id` bigint(20) UNSIGNED NOT NULL COMMENT 'QnaID',
  `file_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '附檔路徑',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '附檔名稱',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `qna_attachments`
--

INSERT INTO `qna_attachments` (`id`, `qa_id`, `file_path`, `file_name`, `created_at`, `updated_at`) VALUES
(1, 3, '/qa_attachment/1712546921-test.svg', 'test.svg', '2024-04-08 15:28:41', '2024-04-08 15:28:41'),
(2, 4, '/qa_attachment/1715778294-Screenshot 2024-05-15 at 17.27.57.png', 'Screenshot 2024-05-15 at 17.27.57.png', '2024-05-15 13:04:54', '2024-05-15 13:04:54'),
(3, 5, '/qa_attachment/1732322256-Screenshot 2024-11-22 at 13.10.46.png', 'Screenshot 2024-11-22 at 13.10.46.png', '2024-11-23 13:37:36', '2024-11-23 13:37:36');

-- --------------------------------------------------------

--
-- Table structure for table `question_answer`
--

CREATE TABLE `question_answer` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approve',
  `contact_time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'email',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '聯絡電話',
  `line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'line',
  `contact_time_end` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '聯絡時間',
  `place` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '聯絡地點',
  `amount_down` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '金額下限',
  `amount_up` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '金額上限'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_answer`
--

INSERT INTO `question_answer` (`id`, `uuid`, `uid`, `nickname`, `title`, `body`, `state`, `contact_time`, `created_at`, `updated_at`, `email`, `phone`, `line`, `contact_time_end`, `place`, `amount_down`, `amount_up`) VALUES
(1, 'qa-660618062d598', '11', '李小仁', 'QA問題', '<p>想要詢問到海外留學應該注意事項</p>', 'pending', '2024-03-29T09:22', '2024-03-29 09:23:18', '2024-03-29 09:23:18', 'test@test.test', '1231546489_', '13245498', '2024-03-31T09:22', '台中', '1000', '2000'),
(3, 'qa-66134444ef85e', '11', 'the tester', 'this is a test question', '<p>em ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit e</p>', 'approve', '2024-04-26 21:10:00', '2024-04-08 13:11:32', '2024-04-08 15:28:41', 'test4 @ testtt.ttt', '12345345678', NULL, '2024-05-23 21:10:00', NULL, '3000', '5000'),
(4, 'qa-6644b2f635586', '11', 'the tester', 'new test qa may 15', '<p>this is a important test</p>', 'approve', '23:05', '2024-05-15 13:04:54', '2024-05-15 13:04:54', 'test4@test.test', '123', '123', '00:07', '223', '3000', '5000'),
(5, 'qa-674123d00d527', '1', 'test', 'test', '<p>w34e5r6t7y8uijklm;</p>', 'approve', '23:41', '2024-11-23 13:37:36', '2024-11-23 13:37:36', 'chen0969@algonquinlive.com', 'e4567890', 'rtyuiop', '22:40', 'q2wertyuiop', '324567890', '234567890');

-- --------------------------------------------------------

--
-- Table structure for table `service_agreements`
--

CREATE TABLE `service_agreements` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '服務條款內文',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id`, `slug`, `name`, `created_at`, `updated_at`) VALUES
(1, 'negotiation', '談判', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(2, 'language', '語言', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(3, 'programing', '程式', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(4, 'executive', '管理', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(5, 'communication', '溝通', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(6, 'bargain', '議價', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(7, 'documents', '文書', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(8, 'rd', '研發', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(9, 'creativity', '創意', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(10, 'customer-relationship', '客情', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(11, 'design', '設計', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(12, 'research', '研究', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(13, 'organization', '組織', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(14, 'leadership', '領導', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(15, 'customer-service', '客服', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(16, 'coach', '教練', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(17, 'conflict', '衝突', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(18, 'execution-ability', '執行', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(19, 'sales', '銷售', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(20, 'foreigner', '外籍', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(21, 'sympathy', '同理', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(22, 'planning', '企劃', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(23, 'operation', '運營', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(24, 'government', '政府', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(25, 'slash', '斜槓', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(26, 'team-building', '團建', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(27, 'kpi', '指標', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(28, 'long-distance', '遠距', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(29, 'pet', '寵物', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(30, 'numerology', '命理', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(31, 'project-management', '專案', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(32, 'over-seas', '海外', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(33, 'sport', '運動', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(34, 'writing', '寫作', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(35, 'statistics', '統計', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(36, 'audit', '稽核', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(37, 'health', '健康', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(38, 'travel', '旅行', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(39, 'actuary', '精算', '2024-10-21 17:33:19', '2024-10-21 17:33:19'),
(40, 'retirement', '退休', '2024-10-21 17:33:19', '2024-10-21 17:33:19');

-- --------------------------------------------------------

--
-- Table structure for table `subscription_agreements`
--

CREATE TABLE `subscription_agreements` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '學長姐服務款內文',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `university`
--

CREATE TABLE `university` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `english_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '英文名',
  `chinese_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '中文名',
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '國家',
  `area` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '區域',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '州',
  `school_badge` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '校徽',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '圖片位置'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `university`
--

INSERT INTO `university` (`id`, `slug`, `name`, `created_at`, `updated_at`, `english_name`, `chinese_name`, `country`, `area`, `state`, `school_badge`, `image_path`) VALUES
(1, 'agriculture-forestry-fishing-and-animal-husbandry', 'Agriculture Forestry Fishing and Animal Husbandry', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Agriculture Forestry Fishing and Animal Husbandry', '農林漁牧testttttttttt', 'TAIWAN', NULL, NULL, 'TWID1', 'uploads/images/industry/TWID1.png'),
(2, 'mining-and-quarrying', 'Mining and Quarrying', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Mining and Quarrying', '礦業及⼟⽯採取', 'TAIWAN', NULL, NULL, 'TWID2', 'uploads/images/industry/TWID2.png'),
(3, 'manufacturing', 'Manufacturing', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Manufacturing', '製造', 'TAIWAN', NULL, NULL, 'TWID3', 'uploads/images/industry/TWID3.png'),
(4, 'electricity-and-gas-supply', 'Electricity and Gas Supply', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Electricity and Gas Supply', '電⼒及燃氣供應', 'TAIWAN', NULL, NULL, 'TWID4', 'uploads/images/industry/TWID4.png'),
(5, 'water-supply-and-remediation-activities', 'Water Supply and Remediation Activities', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Water Supply and Remediation Activities', '⽤⽔供應及污染整治', 'TAIWAN', NULL, NULL, 'TWID5', 'uploads/images/industry/TWID5.png'),
(6, 'construction', 'Construction', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Construction', '營建⼯程', 'TAIWAN', NULL, NULL, 'TWID6', 'uploads/images/industry/TWID6.png'),
(7, 'wholesale-and-retail-trade', 'Wholesale and Retail Trade', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Wholesale and Retail Trade', '批發及零售', 'TAIWAN', NULL, NULL, 'TWID7', 'uploads/images/industry/TWID7.png'),
(8, 'transportation-and-storage', 'Transportation and Storage', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Transportation and Storage', '運輸及倉儲', 'TAIWAN', NULL, NULL, 'TWID8', 'uploads/images/industry/TWID8.png'),
(9, 'accommodation-and-food-service-activities', 'Accommodation and Food Service Activities', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Accommodation and Food Service Activities', '住宿及餐飲', 'TAIWAN', NULL, NULL, 'TWID9', 'uploads/images/industry/TWID9.png'),
(10, 'information-and-communication', 'Information and Communication', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Information and Communication', '出版影⾳製作傳播及資通訊服務', 'TAIWAN', NULL, NULL, 'TWID10', 'uploads/images/industry/TWID10.png'),
(11, 'financial-and-insurance-activities', 'Financial and Insurance Activities', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Financial and Insurance Activities', '⾦融及保險', 'TAIWAN', NULL, NULL, 'TWID11', 'uploads/images/industry/TWID11.png'),
(12, 'real-estate-activities', 'Real Estate Activities', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Real Estate Activities', '不動產', 'TAIWAN', NULL, NULL, 'TWID12', 'uploads/images/industry/TWID12.png'),
(13, 'professional-scientific-and-technical-activities', 'Professional Scientific and Technical Activities', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Professional Scientific and Technical Activities', '專業科學及技術服務', 'TAIWAN', NULL, NULL, 'TWID13', 'uploads/images/industry/TWID13.png'),
(14, 'support-service-activities', 'Support Service Activities', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Support Service Activities', '⽀援服務', 'TAIWAN', NULL, NULL, 'TWID14', 'uploads/images/industry/TWID14.png'),
(15, 'public-administration-and-defence-compulsory-social-security', 'Public Administration and Defence; Compulsory Social Security', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Public Administration and Defence; Compulsory Social Security', '公共⾏政及國防強制性社會安全', 'TAIWAN', NULL, NULL, 'TWID15', 'uploads/images/industry/TWID15.png'),
(16, 'education', 'Education', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Education', '教育', 'TAIWAN', NULL, NULL, 'TWID16', 'uploads/images/industry/TWID16.png'),
(17, 'human-health-and-social-work-activities', 'Human Health and Social Work Activities', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Human Health and Social Work Activities', '醫療保健及社會⼯作服務', 'TAIWAN', NULL, NULL, 'TWID17', 'uploads/images/industry/TWID17.png'),
(18, 'arts-entertainment-and-recreation', 'Arts Entertainment and Recreation', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Arts Entertainment and Recreation', '藝術娛樂及休閒服務', 'TAIWAN', NULL, NULL, 'TWID18', 'uploads/images/industry/TWID18.png'),
(19, 'other-service-activities', 'Other Service Activities', '2024-10-21 17:58:05', '2024-10-21 17:58:05', 'Other Service Activities', '其他服務', 'TAIWAN', NULL, NULL, 'TWID19', 'uploads/images/industry/TWID19.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_description` text COLLATE utf8mb4_unicode_ci,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `student_proof` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birth_day` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `bg_color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_voice` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `rate` int(11) NOT NULL DEFAULT '3',
  `ispaied` tinyint(1) NOT NULL DEFAULT '0',
  `expired` datetime NOT NULL DEFAULT '1900-01-01 00:00:00',
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approve',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `ig` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'ig欄位',
  `fb` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'fb欄位',
  `line_auth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Line auth ID',
  `verified` tinyint(1) NOT NULL DEFAULT '0',
  `is_study` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否在學中',
  `is_manager` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否為管理員',
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'linkedin',
  `recommender` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '推薦人mail',
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '手機國碼',
  `fb_auth` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'fb_login_id',
  `companies_array` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `name`, `company_name`, `company_description`, `role`, `student_proof`, `avatar`, `birth_day`, `bg_color`, `email`, `phone`, `line`, `address`, `profile_video`, `profile_voice`, `password`, `description`, `rate`, `ispaied`, `expired`, `state`, `remember_token`, `created_at`, `updated_at`, `ig`, `fb`, `line_auth`, `verified`, `is_study`, `is_manager`, `linkedin`, `recommender`, `country_code`, `fb_auth`, `companies_array`) VALUES
(1, 'post-660616e4b43db', 'John Slack', 'Cc', 'test des', 'vip', 'approve', '/images/1729535294-sq_33.jpg', '2000-01-01 00:00:00', '#122f3b', 'chen0969@algonquinlive.com', '343 988 3333', '{type:\"Fiat\", model:\"500\", color:\"white\"}', '1234567890-byb', 'https://youtu.be/qWTIfId3QKk?si=awJMwwk2S7BifuFk', 'https://youtu.be/qWTIfId3QKk?si=awJMwwk2S7BifuFk', '$2y$10$Wu1miB4.s2nEsLVi8XhJ5epmlKbpPPnd6sXnaXdoUd15hoySPKXEq', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis 啦啦啦llamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in ＷＷＷＷＷＷＷＷcillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 3, 0, '2200-01-06 00:00:00', 'approve', 'B8bcAR50EpMsPCZfHtlPWSI7sjaDKFDoTm0NX3YKketGomu2so6inLDV0xmH', '2024-03-29 09:18:28', '2024-12-28 01:48:55', '2134567890', '567890', NULL, 1, 0, 0, 'https://www.linkedin.com/in/broccolidesign', NULL, NULL, NULL, '[[\'what\', \'the\', \'fuck\'], [\'actual\', \'fucking\', \'hell\']]');

-- --------------------------------------------------------

--
-- Table structure for table `user_post_category_relations`
--

CREATE TABLE `user_post_category_relations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_post_category_relations`
--

INSERT INTO `user_post_category_relations` (`id`, `user_id`, `post_category_id`, `created_at`, `updated_at`) VALUES
(1, 12, 2, '2024-03-29 09:46:01', '2024-03-29 09:46:01'),
(2, 12, 4, '2024-03-29 09:46:01', '2024-03-29 09:46:01'),
(3, 12, 5, '2024-03-29 09:46:01', '2024-03-29 09:46:01'),
(4, 13, 3, '2024-03-29 14:16:55', '2024-03-29 14:16:55'),
(5, 13, 4, '2024-03-29 14:16:55', '2024-03-29 14:16:55'),
(6, 13, 5, '2024-03-29 14:16:55', '2024-03-29 14:16:55'),
(7, 14, 6, '2024-03-29 14:51:56', '2024-03-29 14:51:56'),
(8, 14, 7, '2024-03-29 14:51:56', '2024-03-29 14:51:56'),
(9, 11, 4, '2024-06-09 02:04:01', '2024-06-09 02:04:01'),
(10, 11, 5, '2024-06-09 02:04:01', '2024-06-09 02:04:01'),
(11, 11, 6, '2024-06-09 02:04:01', '2024-06-09 02:04:01');

-- --------------------------------------------------------

--
-- Table structure for table `user_references`
--

CREATE TABLE `user_references` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '圖片位置',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '參考文件名稱',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_references`
--

INSERT INTO `user_references` (`id`, `user_id`, `image_path`, `file_name`, `created_at`, `updated_at`) VALUES
(13, 11, '/references/1712531736-test.svg', 'test.svg', '2024-04-08 11:15:36', '2024-04-08 11:15:36'),
(14, 11, '/references/1712531736-test.svg', 'test.svg', '2024-04-08 11:15:36', '2024-04-08 11:15:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_relation`
--

CREATE TABLE `user_relation` (
  `id` int(10) UNSIGNED NOT NULL,
  `normal_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vip_user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_skill_relation`
--

CREATE TABLE `user_skill_relation` (
  `id` int(10) UNSIGNED NOT NULL,
  `skill_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_skill_relation`
--

INSERT INTO `user_skill_relation` (`id`, `skill_id`, `user_id`, `created_at`, `updated_at`) VALUES
(116, '6', '11', '2024-06-09 02:03:44', '2024-06-09 02:03:44'),
(117, '7', '11', '2024-06-09 02:03:44', '2024-06-09 02:03:44'),
(118, '8', '11', '2024-06-09 02:03:44', '2024-06-09 02:03:44'),
(119, '9', '11', '2024-06-09 02:03:44', '2024-06-09 02:03:44');

-- --------------------------------------------------------

--
-- Table structure for table `yizixue_faqs`
--

CREATE TABLE `yizixue_faqs` (
  `id` int(10) UNSIGNED NOT NULL,
  `yizixue_faq_category_id` int(10) UNSIGNED NOT NULL COMMENT '教戰守則ID',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '標題',
  `content` text COLLATE utf8mb4_unicode_ci COMMENT '內文',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yizixue_faqs`
--

INSERT INTO `yizixue_faqs` (`id`, `yizixue_faq_category_id`, `title`, `content`, `created_at`, `updated_at`) VALUES
(1, 1, '免費加入一般會員對我有哪些好處？', '除了瀏覽易子學的內容外，更重要的是可以在「諮詢｜問與答」區域提問，獲得學長姐的一對一直接回覆。透過與學長姐的互動，您可以評估他們的特質是否適合您的需求。隨後，您可以與一名或多名學長姐協商諮詢內容、時間、方式、付費條件等。在易子學平台上，會員和學長姐直接進行溝通，易子學不會對內容進行額外收費，確保諮詢交易的支付是雙方共議且直接進行的。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(2, 1, '我該如何尋找適合我的優秀學長姐來協助我進行留學諮詢？', '學長姐的選擇取決於會員個人的留學準備情況以及對於海外留學目標的理解程度。我們建議您在使用易子學瀏覽的同時，檢視自己目前的學習進度，例如學業成績、GPA、語言水平以及相關標準測驗成績等。隨後，您可以提出自己當下遇到的具體問題。學長姊們都曾經走過相同的道路，因此能夠清楚了解您所需要而給予建議。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(3, 1, '我目前還在評估海外留學但對此一無所知。我應該如何尋求諮詢？', '請放心，您可以透過「諮詢｜問與答」功能提出您的現況。每位學長姐在決定海外留學之前都經歷過與您相同的情況。他們憑藉自身的經驗，將幫助您釐清為何要選擇海外留學以及未來2到3年的規劃。您將獲得關於如何做好準備以及如何選擇最適合您的資源來協助學業和課外活動等方面的建議。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(4, 1, '作為一位家長，我可以透過易子學來增進對於海外留學的了解嗎？', '當然可以。我建議您的孩子先加入易子學一般會員，同時邀請您和您的孩子一同瀏覽並搜索易子學的內容。您的孩子也可以在「諮詢｜問與答」中提出問題。在這個平台上，我們有來自不同國家、不同學校、不同學科背景的學長姐，他們將會盡快與您聯繫，協助您了解海外留學的利與弊，不同國家和學校之間的差異，以及財務和生活支援等問題。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(5, 1, '我已經有學校和留學機構的顧問諮詢，為什麼還需要易子學？', '每所大學和學系都會根據教學目標進行調整，每年的招生取向也會有所調整。只有身處校園一線的學長姐，才能提供第一手情報，幫助會員獲取關鍵資源。此外，由於在校學長姐更能了解明星教授和重要學程，因此可以協助會員打造符合學校需求且獨一無二的申請履歷。傳統的升學顧問和代辦機構無法回答的問題，易子學的學長姐可以提供具體的幫助。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(6, 1, '透過易子學，我能找到適合自己的高中國際部或國際學校嗎？', '易子學的學長姐們都曾走過這條路，憑藉自己在高中的經驗以及與其他同學的交流，能夠提供您選擇國際學校的建議。特別是在IB/AP/A-level課程的師資和教學品質、選課的多樣性以及評分方式等方面的差異，將直接影響您的學業成績和未來的選校策略。因此，通過與易子學的學長姐多交流，您可以更好地了解高中的實際辦學情況，避免對眼花繚亂的國際學校和國際部感到困惑。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(7, 1, '易子學為何鼓勵所有會員升級為學長姐？', '這一個觀念源自易子學的初衷，即透過知識交流實現「知識平權」的目標。我們深信學習不應該是單向的上下關係，每個人都擁有獨特的經驗值得分享。高中生也能根據他們在學校的體驗，包括教學品質、教師素質、同儕特質，升學成績等方面，提供實用且具體的建議，幫助會員避免在網路搜索時受到雜亂信息的干擾。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(8, 2, '成為易子學的付費學長姐，對我有什麼好處？', '1. 直接溝通：您可以與會員直接協商諮詢內容、時間、方式以及付款等事項，並在海外求學期間獲得額外收入。易子學平台不會對這些服務產生額外費用或其他折扣。\n2. 建立個人品牌：成為學長姐意味著您將成為其他會員尋求建議和指導的重要來源，進而提升您的影響力和聲譽。\n3. 專業成長：通過分享您的海外經驗，您可以建立自己的諮詢事業。不論在國內外，易子學支持您在經濟和專業上的持續發展。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(9, 2, '如何確保與會員之間的互動保持良好，並促進付費諮詢的實現？', '關鍵在於建立透明、誠信的雙向溝通機制。首先要確保提供準確、實用的建議和資訊，積極在「留學誌｜推薦」發表文章，以及在「問與答｜諮詢」中主動與會員聯繫並即時回應問題。其次要尊重會員的意見和立場，以同理心與他們建立共鳴，進而建立起良好的信任關係，促進付費諮詢的實現。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(10, 2, '會員對於海外留學通常會有哪些類型的問題？', '最關注的是大學排名背後無法顯示的學術目標，進而影響教學學程、必選修科目與難易度，以及招生條件。其次是課程安排，會員對於不同國家與學校的課程結構和教學方式不太了解，無法得知是否可以折抵學分，這些是學校和代辦機構無法提供的信息。最後是如何評估課程是否適合並能順利畢業，生活與經濟支持，這包括台灣同學會的運作、如何參與社團活動、如何掌握生活開支以避免不必要的費用增加學習和生活成本。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(11, 2, '如何打造個人品牌，拓展自己的留學諮詢事業？', '首先，要充分發揮自身的學經歷優勢，深入瞭解學校的各種信息和流程，特別是教學目標與招生條件的變化情況。其次，要提供準確、實用的建議，以解決會員的問題。第三，要定期回母校交流，善用易子學平台的優勢，並結合社群媒體來宣傳自己，積極擴展與其他會員、留學機構的良好關係，以提升自己的影響力。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(12, 2, '我並非來自頂尖大學，是否有資格成為易子學的學長姐？', '台灣的海外留學市場每年吸引了超過十萬人的關注，這是一個持續成長的市場。儘管頂尖學府的學生往往受到青睞，但是每個準備海外留學的學生的成績、特質、課外活動、家庭背景等都大不相同，很難單純依靠全球大學排名表來解決不同朋友的個別問題。因此，在易子學，我們格外重視平台上每一位學長姐的多元性；我們相信多元的知識與體驗，更能滿足微型分眾的市場需求，提供給廣大會員更明確直接的具體諮詢。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(13, 2, '如何能夠針對準備讓孩子海外留學的家長，分憂解勞呢？', '要主動與家長保持溝通，傾聽他們對孩子海外留學的擔憂和問題，特別是關於校園治安、學校評價以及財物支持等方面的問題。接著，根據家長的提問，提供準確實用的資訊，包括線上諮詢、校園導覽、留學條件、學校資訊、生活環境，以及台灣社團的協助與支援等。再者，善用自身與其他朋友的協助，提供機場接駁、宿舍入住、銀行開戶、生活採買、餐飲安排、手機開通，等生活安排。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(14, 2, '我已經畢業了，是否還有機會在易子學擔任學長姐的角色？', '當然，我們非常歡迎您！易子學一直強調平台上每位學長姐的多元性，相信透過知識交流可以促進「知識平權」的實現。恭喜您已經畢業了！除了過去的學習經驗和人脈分享外，您目前所處的產業與就業狀況、居住與生活所面對的挑戰和解決方式，甚至居留入籍及置產等方面，這些都是其他會員可能會碰到並希望提前了解和安排的事項。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(15, 3, '什麼是個人品牌，對身為學生的我有什麼好處呢？', '個人品牌是你在外界的形象和聲譽，是一種獨特的身份和價值主張。對於身為學生的你，建立個人品牌可以幫助你在學術和職業生涯中脫穎而出。其次，個人品牌可以透過提高信任度和專業度，提早開展個人事業。舉例來說，在易子學建立自己的付費諮詢服務，擴大與外部合作的機會。此外，建立個人品牌還可以幫助你建立良好的人際關係，通過留學的經歷擴大你的社交圈子，累積未來職業生涯中的重要資產。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(16, 3, '要如何透過易子學維持個人聲量，並增強個人品牌的價值？', '自己可以定期製作並分享有價值的內容，例如在『留學誌』上發表文章、轉載社群媒體上的貼文，主動進行校園直播等，確保內容具有吸引力和專業性。其次，要積極擴展人脈，建立與業界專業人士和意見領袖的關係，透過合作和交流來增強個人品牌的可信度和影響力。同時，要善用台灣同學會對於新鮮人的凝聚力，以團隊的力量一起建構海外留學諮詢事業。最後，要持續學習和成長，要確保個人在不同平台上的形象和訊息一致，塑造一個清晰個人品牌形象。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(17, 3, '塑造個人品牌的過程中，有五項重要的事情需要避免？', '1. 虛偽和不真實：不要試圖塑造一個與真實自我不符的形象。保持真實和誠實是建立可信個人品牌的基礎。\n2. 忽視反饋和評論：不要忽視他人對你品牌的評價和反饋。這些反饋可以幫助你改進和調整品牌形象。\n3. 缺乏一致性：在各種平台和場合上，保持個人品牌形象的一致性是非常重要的。不要讓你的形象出現不一致或混亂的情況。\n4. 過度自我宣傳：不要過度宣傳自己，否則可能會讓人感到厭煩或不舒服。要注意在適當的場合和方式下進行宣傳，並且注重給予價值。\n5. 忽略個人發展：個人品牌不僅僅是外在形象，也包括個人的內在素質和能力。不要忽略自我提升和專業發展，這對於建立可信個人品牌至關重要。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(18, 3, '易子學如何實現流量共享，發揮團結的力量？', ' \n 	\n易子學實現流量共享的方式之一是通過平台上的知識交流和互動功能。這包括諮詢問答、文章發表、線上講座等，會員可以分享自己的知識和經驗，也可以從其他會員那裡學習。此外，易子學還通過舉辦線上活動、與外部機構合作等方式，吸引更多的流量和關注，從而讓更多的人參與到平台上來，形成團結的力量。另外，易子學也通過社群媒體等渠道擴大影響力，將平台上的內容分享出去，吸引更多的人來訪問和參與。總的來說，易子學通過提供豐富多樣的內容和活動，讓會員之間形成團結，共同分享和受益，從而實現流量共享和團結的力量。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(19, 3, '為什麼台灣同學會是經營個人品牌的良好起點？', '首先，台灣同學會是一個具有凝聚力和社群性的組織，會員們在海外都有共同的文化背景和身份認同，這樣的共同性有助於建立信任和合作關係。其次，台灣同學會提供了豐富多彩的活動和社交平台，這為個人品牌的曝光和宣傳提供了很好的機會，可以通過參與活動和社群互動來擴大個人影響力。此外，台灣同學會也是一個可以獲得支持和幫助的平台，會員們可以互相學習和成長，共同進步，這有助於個人品牌的建立和發展。最後，台灣同學會通常擁有一定的資源和人脈，這為個人品牌的發展提供了寶貴的資源和支持。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(20, 3, '經營台灣同學會時，最常碰到的問題？', '1. 缺乏參與度：部分會員可能缺乏積極參與，導致活動或交流的效果不彰，影響了台灣同學會的凝聚力和互動性。\n2. 組織管理：管理台灣同學會可能需要投入大量的時間和資源，包括組織活動、聯絡會員、籌劃項目等，管理上的不善可能導致運作不順暢。\n3. 資金問題：籌措資金可能是一個挑戰，尤其是對於舉辦活動或推行計劃時，資金不足可能限制了台灣同學會的發展和運作。\n4. 會員需求多樣性：會員之間的需求和興趣可能各不相同，如何滿足不同會員的需求，讓他們都感到滿意，是一個需要考慮的問題。\n5. 組織形象和聲譽：台灣同學會的形象和聲譽對吸引新會員和維持現有會員的參與至關重要，任何負面事件或管理不善都可能對組織造成損害。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(21, 3, '如何透過易子學，來解決台灣同學會運營的挑戰？', '1. 提升會員參與度：易子學平台可以作為台灣同學會成員與未來學弟妹之間交流的平台，可以在透過平台發布線上講座、討論區、線上活動等消息，吸引易子學會員參與並促進互動。\n2. 資金與資源籌措：可以透過易子學平台聯合發表，進行線上免費與付費講座來吸引會員和外部支持者財務支持。透過共同的商務利益，擴大台灣同學會以及同學會間個人的變現能力。\n3. 資訊分享和知識交流：易子學平台可以成為台灣同學會成員之間分享資訊和交流知識的平台，同時借力使力讓易子學會員可以即時獲取到最新的資訊，主動聯繫學長姐以建立正向的商務交流。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(22, 4, '易子學為確保會員與平台間的權利義務，加入會員前請確認同意以下規約條款：', '《 會員規約 》 連結 ...\n《 服務條款 》 連結 ...\n《 免責聲明 》 連結 ...\n《 學長姐會員服務條款 》 連結 ...\n', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(23, 4, '會員間在顧問諮詢過程中，需要注意以下事項：', '1. 尊重對方：彼此都應該尊重對方的意見和專業知識，不論是會員還是學長姐。\n2. 清楚溝通需求：確保雙方對顧問諮詢的需求和目標有清晰的理解，以確保有效的溝通和指導。\n3. 保持開放心態：會員應該願意接受建議和批評，而學長姐則應該以開放的心態聆聽會員的問題和需求。\n4. 保密性：確保諮詢過程中涉及的個人信息和敏感信息得到嚴格保密，不得向第三方透露。\n5. 專業責任：學長姐作為顧問應該對其提供的建議和指導負起責任，確保其具有可靠性和可行性。\n6. 明確界定角色：確保會員和學長姐對彼此的角色有清晰的理解，不會產生誤解或混淆。\n7. 尋求多元意見：在做出決定之前，可以考慮尋求多個不同顧問的意見，以獲得更全面的建議和觀點。\n8. 支付方式：確認雙方的實名支付方式，建議先以小筆費用確認帳號帳款無誤後，在依諮詢的次數或金額百分比，分批次執行付款。收支雙方都必須留下收支單據存檔，確保雙方權益。\n9. 適時評價：在諮詢中給予即時的按讚與讚美，確保雙方是在正向有意義的討論。\n10. 交易雙方除諮詢的必要性外，避免探聽個人資料與機敏性資料。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(24, 4, '易子學平台諮詢刊登服務：', '會員同意並明瞭易子學僅提供學長姐諮詢刊登服務，於刊登期間內不保證一定尋得所需求的諮詢案件，且對於會員間資料正確性，易子學僅是代為傳送之資訊平台，不保證會員與諮詢案件資料之完整性、正確性，以及品質、品格等人格特質，會員交易仍須審慎確認。諮詢案件雙方之任何爭議，不論是諮詢期間或諮詢後，均應由交易雙方自行依法處理。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(25, 4, '未滿十八歲之未成年申請（會員規約第一條）：', '會員若為未滿十八歲之未成年人，應於會員之法定代理人閱讀、瞭解並同意本條款之所有內容，方得註冊使用或繼續使用。當會員使用或繼續使用本服務時，即表示會員的法定代理人已閱讀、瞭解並同意接受本條款之所有內容及其後修改變更。為確保兒童及青少年使用網路的安全，並避免隱私權受到侵犯，家長（或監護人）應盡到下列義務：未滿十二歲之兒童使用本服務時時，應全程在旁陪伴，十二歲以上未滿十八歲之青少年使用本服務前亦應斟酌是否給予同意。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(26, 4, '會員資料正確性與更新（會員規約第二條）：', '註冊本網站會員及使用本服務時，必須提供您本人正確、最新的資料，且無利用偽造或變造之資料作為重複註冊等情事、並維護及即時更新您個人資料之正確性。如個人資料有異動，請務必即時更新，以保障您的權益。如因會員未正確更新個人資料，致未能收到本網站寄發之會員權益、消費優惠、活動內容等相關資訊，會員同意在此情形下，視為會員已經收到該等資訊或通知。若您提供任何錯誤或不實資料、或未按指示提供資料、或欠缺必要之資料時，本網站有權不經事先通知，逕行暫停或終止提供本服務之全部或一部份。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(27, 4, '會員帳號密碼管理（會員規約第三條）：', '會員帳號和密碼請由會員本人自行妥善保管及保密，並定期變更密碼，避免被他人知悉。依照規定方法輸入的會員帳號及密碼與登錄註冊資料一致時，無論是否由會員本人親自輸入，均視為會員本人所使用，即使係遭盜用、不當使用或其他本公司無法辨識是否為本人親自使用的情況，本公司對此所致的損害，概不負責。會員如果發現或懷疑其會員帳號和密碼遭第三人盜用、不當使用或有任何安全疑慮時，應立即主動通知本公司，本公司將採取適當之因應措施，包含且限不於停止該會員帳號所生交易之處理及後續利用。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(28, 4, '會員交易（會員規約第五條）：', '會員透過本平台的伺服器或經由本服務連結之其他網站與商品或服務提供者之間進行的諮詢交易與諮詢服務，視為使用者與服務提供者（付費會員，學長姐）之間的直接交易，各該交易關係均僅存在使用者與各該服務提供者之間。除了本平台本身即為該項交易的提供者外，本公司與本平台並不屬於交易的直接當事人，對於交易恕不負擔任何責任。因此，使用者對服務提供者（付費會員，學長姐）之諮詢服務、或其他交易標的物之品質、內容、運送、保證與瑕疵擔保等其他交易事項所生之爭執，應自行向各該服務提供者尋求解決。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(29, 4, '會員非法與違反之行為（會員規約第十條）：', '會員同意不得於本平台騷擾、恐嚇其他會員（使用者）或從事任何非法、違反公序良俗之行為。同意不上傳病毒或其他攻擊程式碼。同意未經本平台事前書面同意，不得發布任何他人之個人聯絡資訊。同意不發布任何誹謗侵害他人名譽或為謠言、猜測、捏造不實言論等行為。同意不在本平台從事任何銷售或多層次傳銷或與發表與主題無關的商業廣告行為。同意不會進行任何會導致本平台關閉、超載、損害正常運作或外觀之行為。同意不得於於本平台公開蒐集其他使用者之聯絡資訊。同意若發生違反以上各項約定，經查明屬實者，本平台得視情節輕重限制會員帳號的服務使用權或刪除會員資格，並拒絕會員爾後使用本平台各項服務之權利。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(30, 4, '會員內容發布（會員規約第十一條）：', '會員同意必須遵守保護其他人權利，同意不會在本平台張貼任何侵犯、揭露他人隱私或純屬他人私領域之言論或物品。會員同意本平台有權逕行移除有違反本平台政策或會員規約的任何內容或資料。若經本平台通知仍未改善者，本平台有權停止會員繼續使用本平台之權利。會員同意不會亦不得誘使他人於本平台，發布其個人身分證明文件或敏感性個人資料。會員同意且了解，若因會員未遵守本平台會員規約，致侵害他人權益或造成本平台之損害（包括且不限於商譽之損害），會員同意負擔所有相關之損害賠償或回復原狀之責任。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(31, 4, '會員承諾（會員規約第十四條）：', '會員承諾絕不為任何非法目的或以任何非法方式使用本服務，並承諾遵守中華民國相關法規及一切使用網際網路之國際慣例。會員若係中華民國以外之使用者，並同意遵守所屬國家或地域之法令。會員同意並保證不得利用本服務從事侵害他人權益或違法之行為，包括但不限於：公布或傳送任何誹謗、侮辱、具威脅性、攻擊性、不雅、猥褻、不實、違反公共秩序或善良風俗或其他不法之文字、圖片或任何形式的檔案。侵害或毀損本公司或他人名譽、隱私權、營業秘密、商標權、著作權、專利權、其他智慧財產權及其他權利。違反依法律或契約所應負之保密義務。冒用他人名義使用本服務。傳輸或散佈電腦病毒。從事未經本網站事前授權的商業行為。刊載、傳輸、發送垃圾郵件、連鎖信、違法或未經本網站許可之多層次傳銷訊息及廣告等；或儲存任何侵害他人智慧財產權或違反法令之資料。對本服務其他會員（使用者）或第三人產生困擾、不悅或違反一般網路禮節致生反感之行為。其他不符本服務所提供的使用目的之行為或本網站有正當理由認為不適當之行為。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(32, 4, '無消費者保護法第十九條第一項規定『七天鑑賞期』之適用（服務提供者（學長姐，付費會員）服務條款第三條）：', '學長姐（付費會員）了解並同意其與本平台間之會員付費服務之法律關係非為消費者保護法所稱之『特種買賣』，故無消費者保護法第十九條第一項規定『七天鑑賞期』之適用。', '2024-08-24 02:12:57', '2024-08-24 02:12:57'),
(33, 1, '免費加入一般會員對我有哪些好處？', '除了瀏覽易子學的內容外，更重要的是可以在「諮詢｜問與答」區域提問，獲得學長姐的一對一直接回覆。透過與學長姐的互動，您可以評估他們的特質是否適合您的需求。隨後，您可以與一名或多名學長姐協商諮詢內容、時間、方式、付費條件等。在易子學平台上，會員和學長姐直接進行溝通，易子學不會對內容進行額外收費，確保諮詢交易的支付是雙方共議且直接進行的。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(34, 1, '我該如何尋找適合我的優秀學長姐來協助我進行留學諮詢？', '學長姐的選擇取決於會員個人的留學準備情況以及對於海外留學目標的理解程度。我們建議您在使用易子學瀏覽的同時，檢視自己目前的學習進度，例如學業成績、GPA、語言水平以及相關標準測驗成績等。隨後，您可以提出自己當下遇到的具體問題。學長姊們都曾經走過相同的道路，因此能夠清楚了解您所需要而給予建議。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(35, 1, '我目前還在評估海外留學但對此一無所知。我應該如何尋求諮詢？', '請放心，您可以透過「諮詢｜問與答」功能提出您的現況。每位學長姐在決定海外留學之前都經歷過與您相同的情況。他們憑藉自身的經驗，將幫助您釐清為何要選擇海外留學以及未來2到3年的規劃。您將獲得關於如何做好準備以及如何選擇最適合您的資源來協助學業和課外活動等方面的建議。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(36, 1, '作為一位家長，我可以透過易子學來增進對於海外留學的了解嗎？', '當然可以。我建議您的孩子先加入易子學一般會員，同時邀請您和您的孩子一同瀏覽並搜索易子學的內容。您的孩子也可以在「諮詢｜問與答」中提出問題。在這個平台上，我們有來自不同國家、不同學校、不同學科背景的學長姐，他們將會盡快與您聯繫，協助您了解海外留學的利與弊，不同國家和學校之間的差異，以及財務和生活支援等問題。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(37, 1, '我已經有學校和留學機構的顧問諮詢，為什麼還需要易子學？', '每所大學和學系都會根據教學目標進行調整，每年的招生取向也會有所調整。只有身處校園一線的學長姐，才能提供第一手情報，幫助會員獲取關鍵資源。此外，由於在校學長姐更能了解明星教授和重要學程，因此可以協助會員打造符合學校需求且獨一無二的申請履歷。傳統的升學顧問和代辦機構無法回答的問題，易子學的學長姐可以提供具體的幫助。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(38, 1, '透過易子學，我能找到適合自己的高中國際部或國際學校嗎？', '易子學的學長姐們都曾走過這條路，憑藉自己在高中的經驗以及與其他同學的交流，能夠提供您選擇國際學校的建議。特別是在IB/AP/A-level課程的師資和教學品質、選課的多樣性以及評分方式等方面的差異，將直接影響您的學業成績和未來的選校策略。因此，通過與易子學的學長姐多交流，您可以更好地了解高中的實際辦學情況，避免對眼花繚亂的國際學校和國際部感到困惑。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(39, 1, '易子學為何鼓勵所有會員升級為學長姐？', '這一個觀念源自易子學的初衷，即透過知識交流實現「知識平權」的目標。我們深信學習不應該是單向的上下關係，每個人都擁有獨特的經驗值得分享。高中生也能根據他們在學校的體驗，包括教學品質、教師素質、同儕特質，升學成績等方面，提供實用且具體的建議，幫助會員避免在網路搜索時受到雜亂信息的干擾。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(40, 2, '成為易子學的付費學長姐，對我有什麼好處？', '1. 直接溝通：您可以與會員直接協商諮詢內容、時間、方式以及付款等事項，並在海外求學期間獲得額外收入。易子學平台不會對這些服務產生額外費用或其他折扣。\n2. 建立個人品牌：成為學長姐意味著您將成為其他會員尋求建議和指導的重要來源，進而提升您的影響力和聲譽。\n3. 專業成長：通過分享您的海外經驗，您可以建立自己的諮詢事業。不論在國內外，易子學支持您在經濟和專業上的持續發展。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(41, 2, '如何確保與會員之間的互動保持良好，並促進付費諮詢的實現？', '關鍵在於建立透明、誠信的雙向溝通機制。首先要確保提供準確、實用的建議和資訊，積極在「留學誌｜推薦」發表文章，以及在「問與答｜諮詢」中主動與會員聯繫並即時回應問題。其次要尊重會員的意見和立場，以同理心與他們建立共鳴，進而建立起良好的信任關係，促進付費諮詢的實現。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(42, 2, '會員對於海外留學通常會有哪些類型的問題？', '最關注的是大學排名背後無法顯示的學術目標，進而影響教學學程、必選修科目與難易度，以及招生條件。其次是課程安排，會員對於不同國家與學校的課程結構和教學方式不太了解，無法得知是否可以折抵學分，這些是學校和代辦機構無法提供的信息。最後是如何評估課程是否適合並能順利畢業，生活與經濟支持，這包括台灣同學會的運作、如何參與社團活動、如何掌握生活開支以避免不必要的費用增加學習和生活成本。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(43, 2, '如何打造個人品牌，拓展自己的留學諮詢事業？', '首先，要充分發揮自身的學經歷優勢，深入瞭解學校的各種信息和流程，特別是教學目標與招生條件的變化情況。其次，要提供準確、實用的建議，以解決會員的問題。第三，要定期回母校交流，善用易子學平台的優勢，並結合社群媒體來宣傳自己，積極擴展與其他會員、留學機構的良好關係，以提升自己的影響力。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(44, 2, '我並非來自頂尖大學，是否有資格成為易子學的學長姐？', '台灣的海外留學市場每年吸引了超過十萬人的關注，這是一個持續成長的市場。儘管頂尖學府的學生往往受到青睞，但是每個準備海外留學的學生的成績、特質、課外活動、家庭背景等都大不相同，很難單純依靠全球大學排名表來解決不同朋友的個別問題。因此，在易子學，我們格外重視平台上每一位學長姐的多元性；我們相信多元的知識與體驗，更能滿足微型分眾的市場需求，提供給廣大會員更明確直接的具體諮詢。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(45, 2, '如何能夠針對準備讓孩子海外留學的家長，分憂解勞呢？', '要主動與家長保持溝通，傾聽他們對孩子海外留學的擔憂和問題，特別是關於校園治安、學校評價以及財物支持等方面的問題。接著，根據家長的提問，提供準確實用的資訊，包括線上諮詢、校園導覽、留學條件、學校資訊、生活環境，以及台灣社團的協助與支援等。再者，善用自身與其他朋友的協助，提供機場接駁、宿舍入住、銀行開戶、生活採買、餐飲安排、手機開通，等生活安排。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(46, 2, '我已經畢業了，是否還有機會在易子學擔任學長姐的角色？', '當然，我們非常歡迎您！易子學一直強調平台上每位學長姐的多元性，相信透過知識交流可以促進「知識平權」的實現。恭喜您已經畢業了！除了過去的學習經驗和人脈分享外，您目前所處的產業與就業狀況、居住與生活所面對的挑戰和解決方式，甚至居留入籍及置產等方面，這些都是其他會員可能會碰到並希望提前了解和安排的事項。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(47, 3, '什麼是個人品牌，對身為學生的我有什麼好處呢？', '個人品牌是你在外界的形象和聲譽，是一種獨特的身份和價值主張。對於身為學生的你，建立個人品牌可以幫助你在學術和職業生涯中脫穎而出。其次，個人品牌可以透過提高信任度和專業度，提早開展個人事業。舉例來說，在易子學建立自己的付費諮詢服務，擴大與外部合作的機會。此外，建立個人品牌還可以幫助你建立良好的人際關係，通過留學的經歷擴大你的社交圈子，累積未來職業生涯中的重要資產。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(48, 3, '要如何透過易子學維持個人聲量，並增強個人品牌的價值？', '自己可以定期製作並分享有價值的內容，例如在『留學誌』上發表文章、轉載社群媒體上的貼文，主動進行校園直播等，確保內容具有吸引力和專業性。其次，要積極擴展人脈，建立與業界專業人士和意見領袖的關係，透過合作和交流來增強個人品牌的可信度和影響力。同時，要善用台灣同學會對於新鮮人的凝聚力，以團隊的力量一起建構海外留學諮詢事業。最後，要持續學習和成長，要確保個人在不同平台上的形象和訊息一致，塑造一個清晰個人品牌形象。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(49, 3, '塑造個人品牌的過程中，有五項重要的事情需要避免？', '1. 虛偽和不真實：不要試圖塑造一個與真實自我不符的形象。保持真實和誠實是建立可信個人品牌的基礎。\n2. 忽視反饋和評論：不要忽視他人對你品牌的評價和反饋。這些反饋可以幫助你改進和調整品牌形象。\n3. 缺乏一致性：在各種平台和場合上，保持個人品牌形象的一致性是非常重要的。不要讓你的形象出現不一致或混亂的情況。\n4. 過度自我宣傳：不要過度宣傳自己，否則可能會讓人感到厭煩或不舒服。要注意在適當的場合和方式下進行宣傳，並且注重給予價值。\n5. 忽略個人發展：個人品牌不僅僅是外在形象，也包括個人的內在素質和能力。不要忽略自我提升和專業發展，這對於建立可信個人品牌至關重要。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(50, 3, '易子學如何實現流量共享，發揮團結的力量？', ' \n 	\n易子學實現流量共享的方式之一是通過平台上的知識交流和互動功能。這包括諮詢問答、文章發表、線上講座等，會員可以分享自己的知識和經驗，也可以從其他會員那裡學習。此外，易子學還通過舉辦線上活動、與外部機構合作等方式，吸引更多的流量和關注，從而讓更多的人參與到平台上來，形成團結的力量。另外，易子學也通過社群媒體等渠道擴大影響力，將平台上的內容分享出去，吸引更多的人來訪問和參與。總的來說，易子學通過提供豐富多樣的內容和活動，讓會員之間形成團結，共同分享和受益，從而實現流量共享和團結的力量。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(51, 3, '為什麼台灣同學會是經營個人品牌的良好起點？', '首先，台灣同學會是一個具有凝聚力和社群性的組織，會員們在海外都有共同的文化背景和身份認同，這樣的共同性有助於建立信任和合作關係。其次，台灣同學會提供了豐富多彩的活動和社交平台，這為個人品牌的曝光和宣傳提供了很好的機會，可以通過參與活動和社群互動來擴大個人影響力。此外，台灣同學會也是一個可以獲得支持和幫助的平台，會員們可以互相學習和成長，共同進步，這有助於個人品牌的建立和發展。最後，台灣同學會通常擁有一定的資源和人脈，這為個人品牌的發展提供了寶貴的資源和支持。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(52, 3, '經營台灣同學會時，最常碰到的問題？', '1. 缺乏參與度：部分會員可能缺乏積極參與，導致活動或交流的效果不彰，影響了台灣同學會的凝聚力和互動性。\n2. 組織管理：管理台灣同學會可能需要投入大量的時間和資源，包括組織活動、聯絡會員、籌劃項目等，管理上的不善可能導致運作不順暢。\n3. 資金問題：籌措資金可能是一個挑戰，尤其是對於舉辦活動或推行計劃時，資金不足可能限制了台灣同學會的發展和運作。\n4. 會員需求多樣性：會員之間的需求和興趣可能各不相同，如何滿足不同會員的需求，讓他們都感到滿意，是一個需要考慮的問題。\n5. 組織形象和聲譽：台灣同學會的形象和聲譽對吸引新會員和維持現有會員的參與至關重要，任何負面事件或管理不善都可能對組織造成損害。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(53, 3, '如何透過易子學，來解決台灣同學會運營的挑戰？', '1. 提升會員參與度：易子學平台可以作為台灣同學會成員與未來學弟妹之間交流的平台，可以在透過平台發布線上講座、討論區、線上活動等消息，吸引易子學會員參與並促進互動。\n2. 資金與資源籌措：可以透過易子學平台聯合發表，進行線上免費與付費講座來吸引會員和外部支持者財務支持。透過共同的商務利益，擴大台灣同學會以及同學會間個人的變現能力。\n3. 資訊分享和知識交流：易子學平台可以成為台灣同學會成員之間分享資訊和交流知識的平台，同時借力使力讓易子學會員可以即時獲取到最新的資訊，主動聯繫學長姐以建立正向的商務交流。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(54, 4, '易子學為確保會員與平台間的權利義務，加入會員前請確認同意以下規約條款：', '《 會員規約 》 連結 ...\n《 服務條款 》 連結 ...\n《 免責聲明 》 連結 ...\n《 學長姐會員服務條款 》 連結 ...\n', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(55, 4, '會員間在顧問諮詢過程中，需要注意以下事項：', '1. 尊重對方：彼此都應該尊重對方的意見和專業知識，不論是會員還是學長姐。\n2. 清楚溝通需求：確保雙方對顧問諮詢的需求和目標有清晰的理解，以確保有效的溝通和指導。\n3. 保持開放心態：會員應該願意接受建議和批評，而學長姐則應該以開放的心態聆聽會員的問題和需求。\n4. 保密性：確保諮詢過程中涉及的個人信息和敏感信息得到嚴格保密，不得向第三方透露。\n5. 專業責任：學長姐作為顧問應該對其提供的建議和指導負起責任，確保其具有可靠性和可行性。\n6. 明確界定角色：確保會員和學長姐對彼此的角色有清晰的理解，不會產生誤解或混淆。\n7. 尋求多元意見：在做出決定之前，可以考慮尋求多個不同顧問的意見，以獲得更全面的建議和觀點。\n8. 支付方式：確認雙方的實名支付方式，建議先以小筆費用確認帳號帳款無誤後，在依諮詢的次數或金額百分比，分批次執行付款。收支雙方都必須留下收支單據存檔，確保雙方權益。\n9. 適時評價：在諮詢中給予即時的按讚與讚美，確保雙方是在正向有意義的討論。\n10. 交易雙方除諮詢的必要性外，避免探聽個人資料與機敏性資料。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(56, 4, '易子學平台諮詢刊登服務：', '會員同意並明瞭易子學僅提供學長姐諮詢刊登服務，於刊登期間內不保證一定尋得所需求的諮詢案件，且對於會員間資料正確性，易子學僅是代為傳送之資訊平台，不保證會員與諮詢案件資料之完整性、正確性，以及品質、品格等人格特質，會員交易仍須審慎確認。諮詢案件雙方之任何爭議，不論是諮詢期間或諮詢後，均應由交易雙方自行依法處理。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(57, 4, '未滿十八歲之未成年申請（會員規約第一條）：', '會員若為未滿十八歲之未成年人，應於會員之法定代理人閱讀、瞭解並同意本條款之所有內容，方得註冊使用或繼續使用。當會員使用或繼續使用本服務時，即表示會員的法定代理人已閱讀、瞭解並同意接受本條款之所有內容及其後修改變更。為確保兒童及青少年使用網路的安全，並避免隱私權受到侵犯，家長（或監護人）應盡到下列義務：未滿十二歲之兒童使用本服務時時，應全程在旁陪伴，十二歲以上未滿十八歲之青少年使用本服務前亦應斟酌是否給予同意。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(58, 4, '會員資料正確性與更新（會員規約第二條）：', '註冊本網站會員及使用本服務時，必須提供您本人正確、最新的資料，且無利用偽造或變造之資料作為重複註冊等情事、並維護及即時更新您個人資料之正確性。如個人資料有異動，請務必即時更新，以保障您的權益。如因會員未正確更新個人資料，致未能收到本網站寄發之會員權益、消費優惠、活動內容等相關資訊，會員同意在此情形下，視為會員已經收到該等資訊或通知。若您提供任何錯誤或不實資料、或未按指示提供資料、或欠缺必要之資料時，本網站有權不經事先通知，逕行暫停或終止提供本服務之全部或一部份。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(59, 4, '會員帳號密碼管理（會員規約第三條）：', '會員帳號和密碼請由會員本人自行妥善保管及保密，並定期變更密碼，避免被他人知悉。依照規定方法輸入的會員帳號及密碼與登錄註冊資料一致時，無論是否由會員本人親自輸入，均視為會員本人所使用，即使係遭盜用、不當使用或其他本公司無法辨識是否為本人親自使用的情況，本公司對此所致的損害，概不負責。會員如果發現或懷疑其會員帳號和密碼遭第三人盜用、不當使用或有任何安全疑慮時，應立即主動通知本公司，本公司將採取適當之因應措施，包含且限不於停止該會員帳號所生交易之處理及後續利用。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(60, 4, '會員交易（會員規約第五條）：', '會員透過本平台的伺服器或經由本服務連結之其他網站與商品或服務提供者之間進行的諮詢交易與諮詢服務，視為使用者與服務提供者（付費會員，學長姐）之間的直接交易，各該交易關係均僅存在使用者與各該服務提供者之間。除了本平台本身即為該項交易的提供者外，本公司與本平台並不屬於交易的直接當事人，對於交易恕不負擔任何責任。因此，使用者對服務提供者（付費會員，學長姐）之諮詢服務、或其他交易標的物之品質、內容、運送、保證與瑕疵擔保等其他交易事項所生之爭執，應自行向各該服務提供者尋求解決。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(61, 4, '會員非法與違反之行為（會員規約第十條）：', '會員同意不得於本平台騷擾、恐嚇其他會員（使用者）或從事任何非法、違反公序良俗之行為。同意不上傳病毒或其他攻擊程式碼。同意未經本平台事前書面同意，不得發布任何他人之個人聯絡資訊。同意不發布任何誹謗侵害他人名譽或為謠言、猜測、捏造不實言論等行為。同意不在本平台從事任何銷售或多層次傳銷或與發表與主題無關的商業廣告行為。同意不會進行任何會導致本平台關閉、超載、損害正常運作或外觀之行為。同意不得於於本平台公開蒐集其他使用者之聯絡資訊。同意若發生違反以上各項約定，經查明屬實者，本平台得視情節輕重限制會員帳號的服務使用權或刪除會員資格，並拒絕會員爾後使用本平台各項服務之權利。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(62, 4, '會員內容發布（會員規約第十一條）：', '會員同意必須遵守保護其他人權利，同意不會在本平台張貼任何侵犯、揭露他人隱私或純屬他人私領域之言論或物品。會員同意本平台有權逕行移除有違反本平台政策或會員規約的任何內容或資料。若經本平台通知仍未改善者，本平台有權停止會員繼續使用本平台之權利。會員同意不會亦不得誘使他人於本平台，發布其個人身分證明文件或敏感性個人資料。會員同意且了解，若因會員未遵守本平台會員規約，致侵害他人權益或造成本平台之損害（包括且不限於商譽之損害），會員同意負擔所有相關之損害賠償或回復原狀之責任。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(63, 4, '會員承諾（會員規約第十四條）：', '會員承諾絕不為任何非法目的或以任何非法方式使用本服務，並承諾遵守中華民國相關法規及一切使用網際網路之國際慣例。會員若係中華民國以外之使用者，並同意遵守所屬國家或地域之法令。會員同意並保證不得利用本服務從事侵害他人權益或違法之行為，包括但不限於：公布或傳送任何誹謗、侮辱、具威脅性、攻擊性、不雅、猥褻、不實、違反公共秩序或善良風俗或其他不法之文字、圖片或任何形式的檔案。侵害或毀損本公司或他人名譽、隱私權、營業秘密、商標權、著作權、專利權、其他智慧財產權及其他權利。違反依法律或契約所應負之保密義務。冒用他人名義使用本服務。傳輸或散佈電腦病毒。從事未經本網站事前授權的商業行為。刊載、傳輸、發送垃圾郵件、連鎖信、違法或未經本網站許可之多層次傳銷訊息及廣告等；或儲存任何侵害他人智慧財產權或違反法令之資料。對本服務其他會員（使用者）或第三人產生困擾、不悅或違反一般網路禮節致生反感之行為。其他不符本服務所提供的使用目的之行為或本網站有正當理由認為不適當之行為。', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(64, 4, '無消費者保護法第十九條第一項規定『七天鑑賞期』之適用（服務提供者（學長姐，付費會員）服務條款第三條）：', '學長姐（付費會員）了解並同意其與本平台間之會員付費服務之法律關係非為消費者保護法所稱之『特種買賣』，故無消費者保護法第十九條第一項規定『七天鑑賞期』之適用。', '2024-10-21 14:05:04', '2024-10-21 14:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `yizixue_faq_carousels`
--

CREATE TABLE `yizixue_faq_carousels` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yizixue_faq_carousels`
--

INSERT INTO `yizixue_faq_carousels` (`id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'images/aboutUsBanner-1.jpg', '2024-08-24 02:13:04', '2024-08-24 02:13:04'),
(2, 'images/aboutUsBanner-1.jpg', '2024-10-21 14:05:04', '2024-10-21 14:05:04');

-- --------------------------------------------------------

--
-- Table structure for table `yizixue_faq_categories`
--

CREATE TABLE `yizixue_faq_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '教戰守則類別',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `yizixue_faq_categories`
--

INSERT INTO `yizixue_faq_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '會員', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(2, '學長姐', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(3, '個人品牌', '2024-10-21 14:05:04', '2024-10-21 14:05:04'),
(4, '交易安全', '2024-10-21 14:05:04', '2024-10-21 14:05:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_us_carousels`
--
ALTER TABLE `about_us_carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `about_us_contents`
--
ALTER TABLE `about_us_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `ad_columns`
--
ALTER TABLE `ad_columns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bulletin_board`
--
ALTER TABLE `bulletin_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carousels`
--
ALTER TABLE `carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collect_post`
--
ALTER TABLE `collect_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collect_qa`
--
ALTER TABLE `collect_qa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `collect_user`
--
ALTER TABLE `collect_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment_qa`
--
ALTER TABLE `comment_qa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disclaimers`
--
ALTER TABLE `disclaimers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experiences`
--
ALTER TABLE `experiences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invite`
--
ALTER TABLE `invite`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_posts`
--
ALTER TABLE `like_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `like_users`
--
ALTER TABLE `like_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member_agreements`
--
ALTER TABLE `member_agreements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pay_orders`
--
ALTER TABLE `pay_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pay_products`
--
ALTER TABLE `pay_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `post_category_slug_unique` (`slug`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qa_category`
--
ALTER TABLE `qa_category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `qa_category_slug_unique` (`slug`);

--
-- Indexes for table `qa_category_relation`
--
ALTER TABLE `qa_category_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `qna_attachments`
--
ALTER TABLE `qna_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_answer`
--
ALTER TABLE `question_answer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_agreements`
--
ALTER TABLE `service_agreements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `skill_slug_unique` (`slug`);

--
-- Indexes for table `subscription_agreements`
--
ALTER TABLE `subscription_agreements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `university`
--
ALTER TABLE `university`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `university_slug_unique` (`slug`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_post_category_relations`
--
ALTER TABLE `user_post_category_relations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_references`
--
ALTER TABLE `user_references`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_relation`
--
ALTER TABLE `user_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_skill_relation`
--
ALTER TABLE `user_skill_relation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yizixue_faqs`
--
ALTER TABLE `yizixue_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yizixue_faq_carousels`
--
ALTER TABLE `yizixue_faq_carousels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `yizixue_faq_categories`
--
ALTER TABLE `yizixue_faq_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_us_carousels`
--
ALTER TABLE `about_us_carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `about_us_contents`
--
ALTER TABLE `about_us_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=551;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ad_columns`
--
ALTER TABLE `ad_columns`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bulletin_board`
--
ALTER TABLE `bulletin_board`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `carousels`
--
ALTER TABLE `carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `collect_post`
--
ALTER TABLE `collect_post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collect_qa`
--
ALTER TABLE `collect_qa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `collect_user`
--
ALTER TABLE `collect_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=168;

--
-- AUTO_INCREMENT for table `comment_qa`
--
ALTER TABLE `comment_qa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disclaimers`
--
ALTER TABLE `disclaimers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `experiences`
--
ALTER TABLE `experiences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invite`
--
ALTER TABLE `invite`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_posts`
--
ALTER TABLE `like_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `like_users`
--
ALTER TABLE `like_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `member_agreements`
--
ALTER TABLE `member_agreements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `pay_orders`
--
ALTER TABLE `pay_orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pay_products`
--
ALTER TABLE `pay_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `phone_verifications`
--
ALTER TABLE `phone_verifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `qa_category`
--
ALTER TABLE `qa_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `qa_category_relation`
--
ALTER TABLE `qa_category_relation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `qna_attachments`
--
ALTER TABLE `qna_attachments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `question_answer`
--
ALTER TABLE `question_answer`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_agreements`
--
ALTER TABLE `service_agreements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `subscription_agreements`
--
ALTER TABLE `subscription_agreements`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `university`
--
ALTER TABLE `university`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_post_category_relations`
--
ALTER TABLE `user_post_category_relations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `user_references`
--
ALTER TABLE `user_references`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user_relation`
--
ALTER TABLE `user_relation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_skill_relation`
--
ALTER TABLE `user_skill_relation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT for table `yizixue_faqs`
--
ALTER TABLE `yizixue_faqs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `yizixue_faq_carousels`
--
ALTER TABLE `yizixue_faq_carousels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `yizixue_faq_categories`
--
ALTER TABLE `yizixue_faq_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
