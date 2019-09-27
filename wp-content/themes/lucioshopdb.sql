-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2019 at 11:46 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lucioshopdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Một người bình luận WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2019-09-20 01:54:01', '2019-09-20 01:54:01', 'Xin chào, đây là một bình luận\nĐể bắt đầu với quản trị bình luận, chỉnh sửa hoặc xóa bình luận, vui lòng truy cập vào khu vực Bình luận trong trang quản trị.\nAvatar của người bình luận sử dụng <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/Lucioshop', 'yes'),
(2, 'home', 'http://localhost/Lucioshop', 'yes'),
(3, 'blogname', 'Lúcio Shop', 'yes'),
(4, 'blogdescription', 'Chuyên Hàng VNXK xuất xịn với giá cực hấp dẫn.', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'duynn250390@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'd/m/Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'j F, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:145:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"post_slideshow/?$\";s:34:\"index.php?post_type=post_slideshow\";s:47:\"post_slideshow/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=post_slideshow&feed=$matches[1]\";s:42:\"post_slideshow/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_type=post_slideshow&feed=$matches[1]\";s:34:\"post_slideshow/page/([0-9]{1,})/?$\";s:52:\"index.php?post_type=post_slideshow&paged=$matches[1]\";s:15:\"post_product/?$\";s:32:\"index.php?post_type=post_product\";s:45:\"post_product/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=post_product&feed=$matches[1]\";s:40:\"post_product/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?post_type=post_product&feed=$matches[1]\";s:32:\"post_product/page/([0-9]{1,})/?$\";s:50:\"index.php?post_type=post_product&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:45:\"size/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?size=$matches[1]&feed=$matches[2]\";s:40:\"size/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?size=$matches[1]&feed=$matches[2]\";s:21:\"size/([^/]+)/embed/?$\";s:37:\"index.php?size=$matches[1]&embed=true\";s:33:\"size/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?size=$matches[1]&paged=$matches[2]\";s:15:\"size/([^/]+)/?$\";s:26:\"index.php?size=$matches[1]\";s:46:\"color/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?color=$matches[1]&feed=$matches[2]\";s:41:\"color/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?color=$matches[1]&feed=$matches[2]\";s:22:\"color/([^/]+)/embed/?$\";s:38:\"index.php?color=$matches[1]&embed=true\";s:34:\"color/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?color=$matches[1]&paged=$matches[2]\";s:16:\"color/([^/]+)/?$\";s:27:\"index.php?color=$matches[1]\";s:42:\"post_slideshow/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"post_slideshow/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"post_slideshow/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"post_slideshow/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"post_slideshow/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"post_slideshow/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"post_slideshow/([^/]+)/embed/?$\";s:47:\"index.php?post_slideshow=$matches[1]&embed=true\";s:35:\"post_slideshow/([^/]+)/trackback/?$\";s:41:\"index.php?post_slideshow=$matches[1]&tb=1\";s:55:\"post_slideshow/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_slideshow=$matches[1]&feed=$matches[2]\";s:50:\"post_slideshow/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_slideshow=$matches[1]&feed=$matches[2]\";s:43:\"post_slideshow/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?post_slideshow=$matches[1]&paged=$matches[2]\";s:50:\"post_slideshow/([^/]+)/comment-page-([0-9]{1,})/?$\";s:54:\"index.php?post_slideshow=$matches[1]&cpage=$matches[2]\";s:39:\"post_slideshow/([^/]+)(?:/([0-9]+))?/?$\";s:53:\"index.php?post_slideshow=$matches[1]&page=$matches[2]\";s:31:\"post_slideshow/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"post_slideshow/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"post_slideshow/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"post_slideshow/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"post_slideshow/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"post_slideshow/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"post_product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"post_product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"post_product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"post_product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"post_product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"post_product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"post_product/([^/]+)/embed/?$\";s:45:\"index.php?post_product=$matches[1]&embed=true\";s:33:\"post_product/([^/]+)/trackback/?$\";s:39:\"index.php?post_product=$matches[1]&tb=1\";s:53:\"post_product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_product=$matches[1]&feed=$matches[2]\";s:48:\"post_product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?post_product=$matches[1]&feed=$matches[2]\";s:41:\"post_product/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?post_product=$matches[1]&paged=$matches[2]\";s:48:\"post_product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?post_product=$matches[1]&cpage=$matches[2]\";s:37:\"post_product/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?post_product=$matches[1]&page=$matches[2]\";s:29:\"post_product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"post_product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"post_product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"post_product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"post_product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"post_product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:33:\"products/description_products.php\";i:1;s:24:\"slideshsow/functions.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'WP_Lucio', 'yes'),
(41, 'stylesheet', 'WP_Lucio', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '44719', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'initial_db_version', '44719', 'yes'),
(94, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(95, 'fresh_site', '1', 'yes'),
(96, 'WPLANG', '', 'yes'),
(97, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(103, 'cron', 'a:6:{i:1569318841;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1569333241;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1569376441;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569376641;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1569392423;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(104, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'recovery_keys', 'a:0:{}', 'yes'),
(116, 'theme_mods_twentynineteen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1568945605;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:0:{}}', 'yes'),
(122, '_site_transient_timeout_browser_471e4b86e3560c6feb474def098169b6', '1569549250', 'no'),
(123, '_site_transient_browser_471e4b86e3560c6feb474def098169b6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"76.0.3809.132\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(124, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1569549250', 'no'),
(125, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(126, 'can_compress_scripts', '1', 'no'),
(146, 'current_theme', '', 'yes'),
(147, 'theme_mods_WP_Lucio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:10:\"global-nav\";i:2;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1568945581;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(148, 'theme_switched', '', 'yes'),
(158, 'new_admin_email', 'duynn250390@gmail.com', 'yes'),
(168, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(182, 'recovery_mode_email_last_sent', '1568961359', 'yes'),
(192, 'size_children', 'a:0:{}', 'yes'),
(210, 'recently_activated', 'a:0:{}', 'yes'),
(230, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.3\";s:7:\"version\";s:5:\"5.2.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1569290068;s:15:\"version_checked\";s:5:\"5.2.3\";s:12:\"translations\";a:0:{}}', 'no'),
(232, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1569287645;s:7:\"checked\";a:5:{s:8:\"WP_Lucio\";s:0:\"\";s:8:\"kyguibds\";s:0:\"\";s:14:\"twentynineteen\";s:3:\"1.4\";s:15:\"twentyseventeen\";s:3:\"2.2\";s:13:\"twentysixteen\";s:3:\"2.0\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(240, '_site_transient_timeout_theme_roots', '1569291868', 'no'),
(241, '_site_transient_theme_roots', 'a:5:{s:8:\"WP_Lucio\";s:7:\"/themes\";s:8:\"kyguibds\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no'),
(242, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1569290069;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.2\";s:23:\"slideshow/functions.php\";s:0:\"\";s:24:\"slideshsow/functions.php\";s:0:\"\";s:33:\"products/description_products.php\";s:0:\"\";}s:8:\"response\";a:2:{s:23:\"slideshow/functions.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:23:\"w.org/plugins/slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:6:\"plugin\";s:23:\"slideshow/functions.php\";s:11:\"new_version\";s:3:\"0.1\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/slideshow/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/slideshow.0.1.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:53:\"https://s.w.org/plugins/geopattern-icon/slideshow.svg\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"3.0.5\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:33:\"products/description_products.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:22:\"w.org/plugins/products\";s:4:\"slug\";s:8:\"products\";s:6:\"plugin\";s:33:\"products/description_products.php\";s:11:\"new_version\";s:6:\"131122\";s:3:\"url\";s:39:\"https://wordpress.org/plugins/products/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/products.131122.zip\";s:5:\"icons\";a:1:{s:7:\"default\";s:59:\"https://s.w.org/plugins/geopattern-icon/products_7c8636.svg\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:62:\"https://ps.w.org/products/assets/banner-772x250.png?rev=808644\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:6:\"3.7.26\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.2\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(249, 'color_children', 'a:0:{}', 'yes'),
(250, 'category_children', 'a:0:{}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_menu_item_type', 'custom'),
(4, 5, '_menu_item_menu_item_parent', '0'),
(5, 5, '_menu_item_object_id', '5'),
(6, 5, '_menu_item_object', 'custom'),
(7, 5, '_menu_item_target', ''),
(8, 5, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 5, '_menu_item_xfn', ''),
(10, 5, '_menu_item_url', 'http://localhost/Lucioshop/'),
(12, 6, '_menu_item_type', 'custom'),
(13, 6, '_menu_item_menu_item_parent', '0'),
(14, 6, '_menu_item_object_id', '6'),
(15, 6, '_menu_item_object', 'custom'),
(16, 6, '_menu_item_target', ''),
(17, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 6, '_menu_item_xfn', ''),
(19, 6, '_menu_item_url', 'http://http://localhost/Lucioshop/lien-he'),
(21, 17, '_edit_lock', '1568962927:1'),
(22, 21, '_wp_attached_file', '2019/09/NoPath-Copy-59.png'),
(23, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:266;s:6:\"height\";i:303;s:4:\"file\";s:26:\"2019/09/NoPath-Copy-59.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"NoPath-Copy-59-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"NoPath-Copy-59-263x300.png\";s:5:\"width\";i:263;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:26:\"NoPath-Copy-59-250x250.png\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:26:\"NoPath-Copy-59-210x160.png\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:9:\"image/png\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:25:\"NoPath-Copy-59-120x90.png\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:24:\"NoPath-Copy-59-82x82.png\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(24, 20, '_edit_last', '1'),
(25, 20, '_thumbnail_id', '27'),
(26, 20, '_edit_lock', '1568966542:1'),
(27, 25, '_wp_attached_file', '2019/09/2.jpg'),
(28, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:960;s:4:\"file\";s:13:\"2019/09/2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"2-640x538.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"2-640x440.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:12:\"2-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:11:\"2-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 26, '_wp_attached_file', '2019/09/3.jpg'),
(30, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:13:\"2019/09/3.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"3-480x440.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:12:\"3-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:11:\"3-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 27, '_wp_attached_file', '2019/09/4.jpg'),
(32, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:435;s:4:\"file\";s:13:\"2019/09/4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-206x300.jpg\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:12:\"4-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:11:\"4-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(33, 20, 'tdc_gallery_id', 'a:4:{i:0;s:2:\"26\";i:1;s:2:\"25\";i:2;s:2:\"21\";i:3;s:2:\"27\";}'),
(34, 28, '_edit_lock', '1568964890:1'),
(35, 20, '_gia_tien', ''),
(36, 64, '_wp_attached_file', '2019/09/1.jpg'),
(37, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2019/09/1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"1-800x538.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"1-800x440.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:12:\"1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:11:\"1-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(38, 65, '_wp_attached_file', '2019/09/2-1.jpg'),
(39, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:217;s:6:\"height\";i:232;s:4:\"file\";s:15:\"2019/09/2-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"2-1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-1-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(40, 66, '_wp_attached_file', '2019/09/3-1.jpg'),
(41, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:598;s:6:\"height\";i:870;s:4:\"file\";s:15:\"2019/09/3-1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-206x300.jpg\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-598x538.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"3-1-598x440.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"3-1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-1-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(42, 67, '_wp_attached_file', '2019/09/4-1.jpg'),
(43, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:221;s:6:\"height\";i:228;s:4:\"file\";s:15:\"2019/09/4-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"4-1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-1-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(44, 63, '_edit_last', '1'),
(45, 63, '_thumbnail_id', '67'),
(46, 63, 'tdc_gallery_id', 'a:4:{i:0;s:2:\"64\";i:1;s:2:\"65\";i:2;s:2:\"66\";i:3;s:2:\"67\";}'),
(47, 63, '_gia_tien', '500000'),
(48, 63, '_edit_lock', '1568967561:1'),
(49, 63, '_thong_tin', 'Go sporty this summer with this vintage navy and white striped v-neck t-shirt from the Nike. Perfect for pairing with denim and white kicks for a stylish sporty vibe.'),
(50, 70, '_edit_last', '1'),
(51, 70, '_edit_lock', '1569203435:1'),
(52, 71, '_wp_attached_file', '2019/09/1-1.jpg'),
(53, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/09/1-1.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-800x538.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"1-1-800x440.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"1-1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-1-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(54, 72, '_wp_attached_file', '2019/09/2-2.jpg'),
(55, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:460;s:6:\"height\";i:600;s:4:\"file\";s:15:\"2019/09/2-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-2-230x300.jpg\";s:5:\"width\";i:230;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-460x538.jpg\";s:5:\"width\";i:460;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"2-2-460x440.jpg\";s:5:\"width\";i:460;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"2-2-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-2-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(56, 73, '_wp_attached_file', '2019/09/3.jpeg'),
(57, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:850;s:6:\"height\";i:850;s:4:\"file\";s:14:\"2019/09/3.jpeg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"3-150x150.jpeg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"3-300x300.jpeg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"3-768x768.jpeg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"3-850x538.jpeg\";s:5:\"width\";i:850;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"3-850x440.jpeg\";s:5:\"width\";i:850;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:14:\"3-250x250.jpeg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:14:\"3-210x160.jpeg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-120x90.jpeg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:12:\"3-82x82.jpeg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 74, '_wp_attached_file', '2019/09/4-2.jpg'),
(59, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:700;s:6:\"height\";i:1050;s:4:\"file\";s:15:\"2019/09/4-2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"4-2-683x1024.jpg\";s:5:\"width\";i:683;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-700x538.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"4-2-700x440.jpg\";s:5:\"width\";i:700;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"4-2-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-2-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(60, 75, '_wp_attached_file', '2019/09/6.jpg'),
(61, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:756;s:4:\"file\";s:13:\"2019/09/6.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-214x300.jpg\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"6-540x538.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"6-540x440.jpg\";s:5:\"width\";i:540;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:12:\"6-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:11:\"6-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(62, 76, '_wp_attached_file', '2019/09/n1.jpg'),
(63, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:14:\"2019/09/n1.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"n1-640x538.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"n1-640x440.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:14:\"n1-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:14:\"n1-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:13:\"n1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:12:\"n1-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(64, 77, '_wp_attached_file', '2019/09/n2.jpg'),
(65, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:14:\"2019/09/n2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"n2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"n2-800x538.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"n2-800x440.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:14:\"n2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:14:\"n2-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:13:\"n2-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:12:\"n2-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(66, 78, '_wp_attached_file', '2019/09/n3.jpg'),
(67, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:719;s:6:\"height\";i:720;s:4:\"file\";s:14:\"2019/09/n3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"n3-719x538.jpg\";s:5:\"width\";i:719;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"n3-719x440.jpg\";s:5:\"width\";i:719;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:14:\"n3-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:14:\"n3-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:13:\"n3-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:12:\"n3-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(68, 79, '_wp_attached_file', '2019/09/n4.jpg'),
(69, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:564;s:6:\"height\";i:564;s:4:\"file\";s:14:\"2019/09/n4.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"n4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"n4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"n4-564x538.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"n4-564x440.jpg\";s:5:\"width\";i:564;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:14:\"n4-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:14:\"n4-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:13:\"n4-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:12:\"n4-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(70, 70, 'tdc_gallery_id', 'a:8:{i:0;s:2:\"71\";i:1;s:2:\"72\";i:2;s:2:\"73\";i:3;s:2:\"74\";i:4;s:2:\"75\";i:5;s:2:\"76\";i:6;s:2:\"77\";i:7;s:2:\"78\";}'),
(71, 70, '_gia_tien', '265000'),
(72, 70, '_thong_tin', 'Quần Jogger Kaki KOJIBA mang phong cách thể thao năng động, khỏe khoắn. Quần được may từ chất liệu Kaki thô tạo form dáng chuẩn cho bạn cảm giác thoải mái, dễ chịu nhất khi mặc. Thiết kế quần dáng bó ống, lưng khóa cùng hai túi hai bên tiện lợi, cá tính. Bạn có thể phối cùng áo sơ mi cộc tay và t-shirt với giày thể thao hay giày sandal để đi dạo phố cùng bạn bè, người thân. Hoặc mix giày vải, trong các hoạt động ngoài trời và du lịch. Hướng dẫn chọn size'),
(73, 92, '_edit_last', '1'),
(74, 92, '_edit_lock', '1569287622:1'),
(75, 92, '_sizeProduct', NULL),
(76, 92, '_colorProduct', NULL),
(77, 92, '__size_Product', '1'),
(78, 92, '_color_Product', 'Chất liệu vải conton 4 chiều co giản . Mặc cực kỳ thoải mái'),
(79, 92, '_size_Product', 'S - M - L - XL'),
(82, 95, '_wp_attached_file', '2019/09/9.jpg'),
(83, 95, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/9.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"9-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"9-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"9-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"9-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:13:\"9-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:13:\"9-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:12:\"9-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:11:\"9-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(84, 92, '_thumbnail_id', '137'),
(85, 97, '_wp_attached_file', '2019/09/6-1.jpg'),
(86, 97, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:15:\"2019/09/6-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"6-1-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"6-1-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:16:\"6-1-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:16:\"6-1-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:16:\"6-1-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"6-1-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-1-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(87, 96, '_edit_last', '1'),
(88, 96, '_thumbnail_id', '97'),
(89, 96, '_size_Product', ''),
(90, 96, '_color_Product', '312312'),
(91, 96, '_edit_lock', '1569202701:1'),
(92, 96, '_wp_trash_meta_status', 'publish'),
(93, 96, '_wp_trash_meta_time', '1569203583'),
(94, 96, '_wp_desired_post_slug', '96'),
(95, 99, '_edit_last', '1'),
(96, 99, '_edit_lock', '1569203560:1'),
(97, 100, '_wp_attached_file', '2019/09/2-3.jpg'),
(98, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:960;s:4:\"file\";s:15:\"2019/09/2-3.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-3-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-640x538.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"2-3-640x440.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"2-3-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-3-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 101, '_wp_attached_file', '2019/09/3-2.jpg'),
(100, 101, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:15:\"2019/09/3-2.jpg\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"3-2-480x440.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"3-2-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-2-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 102, '_wp_attached_file', '2019/09/4-3.jpg'),
(102, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:435;s:4:\"file\";s:15:\"2019/09/4-3.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-3-206x300.jpg\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-3-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-3-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"4-3-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-3-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 99, 'tdc_gallery_id', 'a:3:{i:0;s:3:\"100\";i:1;s:3:\"101\";i:2;s:3:\"102\";}'),
(104, 99, '_gia_tien', '123123'),
(105, 99, '_thong_tin', 'ádasd'),
(106, 104, '_edit_last', '1'),
(107, 104, '_edit_lock', '1569207139:1'),
(109, 104, '_size_Product', '312'),
(110, 104, '_color_Product', 'a312312'),
(111, 106, '_edit_last', '1'),
(112, 106, '_edit_lock', '1569207124:1'),
(113, 107, '_wp_attached_file', '2019/09/7.jpg'),
(114, 107, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/7.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"7-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"7-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"7-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:13:\"7-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:13:\"7-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:12:\"7-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:11:\"7-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 106, '_thumbnail_id', '135'),
(116, 106, '_size_Product', '21312'),
(117, 106, '_color_Product', '31231'),
(118, 109, '_edit_last', '1'),
(119, 109, '_edit_lock', '1569314872:1'),
(122, 111, '_wp_attached_file', '2019/09/21.jpg'),
(123, 111, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:14:\"2019/09/21.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"21-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"21-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"21-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"21-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"21-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:14:\"21-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:14:\"21-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:13:\"21-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:12:\"21-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 109, '_thumbnail_id', '134'),
(125, 109, '_size_Product', '213'),
(126, 109, '_color_Product', '31dsadas'),
(127, 113, '_edit_last', '1'),
(128, 113, '_edit_lock', '1569205859:1'),
(129, 114, '_wp_attached_file', '2019/09/1-2.jpg'),
(130, 114, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:659;s:4:\"file\";s:15:\"2019/09/1-2.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-2-228x300.jpg\";s:5:\"width\";i:228;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-500x538.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"1-2-500x440.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"1-2-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"1-2-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 115, '_wp_attached_file', '2019/09/2-4.jpg'),
(132, 115, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:474;s:6:\"height\";i:631;s:4:\"file\";s:15:\"2019/09/2-4.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-4-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"2-4-474x538.jpg\";s:5:\"width\";i:474;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"2-4-474x440.jpg\";s:5:\"width\";i:474;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-4-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"2-4-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"2-4-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-4-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1441982618\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(133, 116, '_wp_attached_file', '2019/09/3-3.jpg'),
(134, 116, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:15:\"2019/09/3-3.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-3-194x250.jpg\";s:5:\"width\";i:194;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"3-3-194x160.jpg\";s:5:\"width\";i:194;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"3-3-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-3-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 117, '_wp_attached_file', '2019/09/4-4.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(136, 117, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:15:\"2019/09/4-4.jpg\";s:5:\"sizes\";a:8:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"4-4-600x538.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"4-4-600x440.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallb_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-4-250x250.jpg\";s:5:\"width\";i:250;s:6:\"height\";i:250;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smallc_thumbnail\";a:4:{s:4:\"file\";s:15:\"4-4-210x160.jpg\";s:5:\"width\";i:210;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:23:\"square_smalld_thumbnail\";a:4:{s:4:\"file\";s:14:\"4-4-120x90.jpg\";s:5:\"width\";i:120;s:6:\"height\";i:90;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"square_news_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-4-82x82.jpg\";s:5:\"width\";i:82;s:6:\"height\";i:82;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 113, '_thumbnail_id', '126'),
(139, 113, '_gia_tien', '12321'),
(140, 113, '_thong_tin', '3sadasdas'),
(141, 119, '_edit_last', '1'),
(142, 119, '_edit_lock', '1569206226:1'),
(143, 119, '_thumbnail_id', '127'),
(144, 119, 'tdc_gallery_id', 'a:2:{i:0;s:2:\"72\";i:1;s:2:\"74\";}'),
(145, 119, '_gia_tien', '123'),
(146, 119, '_thong_tin', 'sadasd'),
(147, 121, '_wp_attached_file', '2019/09/9.jpg'),
(148, 121, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/9.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"9-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"9-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"9-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"9-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 122, '_wp_attached_file', '2019/09/7.jpg'),
(150, 122, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/7.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"7-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"7-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"7-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 104, '_thumbnail_id', '136'),
(152, 123, '_wp_attached_file', '2019/09/4.jpg'),
(153, 123, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/4.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"4-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"4-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"4-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 124, '_wp_attached_file', '2019/09/21.jpg'),
(155, 124, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:14:\"2019/09/21.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:14:\"21-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"21-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"21-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"21-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"21-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"21-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(156, 125, '_wp_attached_file', '2019/09/1.jpg'),
(157, 125, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/1.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"1-150x68.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"1-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"1-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(158, 126, '_wp_attached_file', '2019/09/1-1.jpg'),
(159, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:659;s:4:\"file\";s:15:\"2019/09/1-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-114x150.jpg\";s:5:\"width\";i:114;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-1-228x300.jpg\";s:5:\"width\";i:228;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"1-1-500x538.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"1-1-500x440.jpg\";s:5:\"width\";i:500;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(160, 113, 'tdc_gallery_id', 'a:4:{i:0;s:2:\"73\";i:1;s:2:\"74\";i:2;s:2:\"72\";i:3;s:2:\"71\";}'),
(161, 127, '_wp_attached_file', '2019/09/2.jpg'),
(162, 127, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:474;s:6:\"height\";i:631;s:4:\"file\";s:13:\"2019/09/2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-113x150.jpg\";s:5:\"width\";i:113;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"2-474x538.jpg\";s:5:\"width\";i:474;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"2-474x440.jpg\";s:5:\"width\";i:474;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1441982618\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(163, 128, '_edit_last', '1'),
(164, 128, '_edit_lock', '1569206444:1'),
(165, 129, '_wp_attached_file', '2019/09/4.jpg'),
(166, 129, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:13:\"2019/09/4.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"4-600x538.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"4-600x440.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(167, 128, '_thumbnail_id', '129'),
(168, 128, 'tdc_gallery_id', 'a:3:{i:0;s:3:\"127\";i:1;s:3:\"126\";i:2;s:3:\"129\";}'),
(169, 128, '_gia_tien', '123'),
(170, 128, '_thong_tin', 'đá'),
(171, 131, '_edit_last', '1'),
(172, 131, '_edit_lock', '1569207084:1'),
(173, 132, '_wp_attached_file', '2019/09/3.jpg'),
(174, 132, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:259;s:4:\"file\";s:13:\"2019/09/3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-112x150.jpg\";s:5:\"width\";i:112;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(175, 131, '_thumbnail_id', '132'),
(176, 131, 'tdc_gallery_id', 'a:4:{i:0;s:3:\"132\";i:1;s:3:\"129\";i:2;s:3:\"127\";i:3;s:3:\"126\";}'),
(177, 131, '_gia_tien', '312'),
(178, 131, '_thong_tin', '31231123'),
(179, 134, '_wp_attached_file', '2019/09/20.jpg'),
(180, 134, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:14:\"2019/09/20.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"20-150x68.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:14:\"20-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:14:\"20-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:15:\"20-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"20-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"20-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(181, 135, '_wp_attached_file', '2019/09/9.jpg'),
(182, 135, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/9.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"9-150x68.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"9-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"9-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"9-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"9-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"9-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(183, 136, '_wp_attached_file', '2019/09/7.jpg'),
(184, 136, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/7.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"7-150x68.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"7-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"7-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"7-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"7-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(185, 137, '_wp_attached_file', '2019/09/6.jpg'),
(186, 137, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2720;s:6:\"height\";i:1232;s:4:\"file\";s:13:\"2019/09/6.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:12:\"6-150x68.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:68;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x136.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:136;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x348.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:348;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"6-1024x464.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:464;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:14:\"6-1118x538.jpg\";s:5:\"width\";i:1118;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:14:\"6-1000x440.jpg\";s:5:\"width\";i:1000;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(187, 99, '_wp_trash_meta_status', 'publish'),
(188, 99, '_wp_trash_meta_time', '1569208801'),
(189, 99, '_wp_desired_post_slug', 'ao-khoac'),
(190, 70, '_wp_trash_meta_status', 'publish'),
(191, 70, '_wp_trash_meta_time', '1569208801'),
(192, 70, '_wp_desired_post_slug', 'quan-jogger-nam-nu'),
(193, 63, '_wp_trash_meta_status', 'publish'),
(194, 63, '_wp_trash_meta_time', '1569208801'),
(195, 63, '_wp_desired_post_slug', '63'),
(196, 20, '_wp_trash_meta_status', 'publish'),
(197, 20, '_wp_trash_meta_time', '1569208801'),
(198, 20, '_wp_desired_post_slug', 'ao-thun-co-tron'),
(199, 139, '_edit_last', '1'),
(200, 139, '_edit_lock', '1569210626:1'),
(201, 140, '_wp_attached_file', '2019/09/1-2.jpg'),
(202, 140, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/09/1-2.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"1-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"1-2-800x538.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"1-2-800x440.jpg\";s:5:\"width\";i:800;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 141, '_wp_attached_file', '2019/09/2-1.jpg'),
(204, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:217;s:6:\"height\";i:232;s:4:\"file\";s:15:\"2019/09/2-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-1-140x150.jpg\";s:5:\"width\";i:140;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 142, '_wp_attached_file', '2019/09/3-1.jpg'),
(206, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:598;s:6:\"height\";i:870;s:4:\"file\";s:15:\"2019/09/3-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-103x150.jpg\";s:5:\"width\";i:103;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-1-206x300.jpg\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"3-1-598x538.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"3-1-598x440.jpg\";s:5:\"width\";i:598;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 143, '_wp_attached_file', '2019/09/4-1.jpg'),
(208, 143, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:221;s:6:\"height\";i:228;s:4:\"file\";s:15:\"2019/09/4-1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-1-145x150.jpg\";s:5:\"width\";i:145;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 144, '_edit_last', '1'),
(210, 144, '_thumbnail_id', '143'),
(211, 144, 'tdc_gallery_id', 'a:4:{i:0;s:3:\"140\";i:1;s:3:\"142\";i:2;s:3:\"141\";i:3;s:3:\"143\";}'),
(212, 144, '_gia_tien', '150000'),
(213, 144, '_thong_tin', '21312312312312'),
(214, 144, '_edit_lock', '1569209708:1'),
(215, 139, '_thumbnail_id', '142'),
(216, 139, 'tdc_gallery_id', 'a:4:{i:0;s:3:\"143\";i:1;s:3:\"142\";i:2;s:3:\"141\";i:3;s:3:\"140\";}'),
(217, 139, '_gia_tien', '250000'),
(218, 139, '_thong_tin', '3213213213'),
(219, 148, '_edit_last', '1'),
(220, 148, '_edit_lock', '1569220602:1'),
(221, 149, '_wp_attached_file', '2019/09/2-2.jpg'),
(222, 149, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:960;s:4:\"file\";s:15:\"2019/09/2-2.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-100x150.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-2-200x300.jpg\";s:5:\"width\";i:200;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"2-2-640x538.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"2-2-640x440.jpg\";s:5:\"width\";i:640;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(223, 150, '_wp_attached_file', '2019/09/3-2.jpg'),
(224, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:480;s:6:\"height\";i:480;s:4:\"file\";s:15:\"2019/09/3-2.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"3-2-480x440.jpg\";s:5:\"width\";i:480;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(225, 151, '_wp_attached_file', '2019/09/4-2.jpg'),
(226, 151, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:299;s:6:\"height\";i:435;s:4:\"file\";s:15:\"2019/09/4-2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-2-103x150.jpg\";s:5:\"width\";i:103;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-2-206x300.jpg\";s:5:\"width\";i:206;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(227, 148, '_thumbnail_id', '150'),
(228, 148, 'tdc_gallery_id', 'a:3:{i:0;s:3:\"149\";i:1;s:3:\"150\";i:2;s:3:\"151\";}'),
(229, 148, '_gia_tien', '12'),
(230, 148, '_thong_tin', '321312'),
(231, 153, '_edit_last', '1'),
(232, 153, '_edit_lock', '1569232035:1'),
(233, 153, '_thumbnail_id', '149'),
(234, 153, 'tdc_gallery_id', 'a:3:{i:0;s:3:\"151\";i:1;s:3:\"149\";i:2;s:3:\"150\";}'),
(235, 153, '_gia_tien', '125000'),
(236, 153, '_thong_tin', 'sadasdasd'),
(237, 155, '_edit_last', '1'),
(238, 155, '_edit_lock', '1569288823:1'),
(239, 155, '_thumbnail_id', '151'),
(240, 155, 'tdc_gallery_id', 'a:3:{i:0;s:3:\"150\";i:1;s:3:\"149\";i:2;s:3:\"151\";}'),
(241, 155, '_gia_tien', '125000'),
(242, 155, '_thong_tin', '123123'),
(243, 131, 'post_views_count', '55'),
(244, 128, 'post_views_count', '24'),
(245, 144, 'post_views_count', '12'),
(246, 119, 'post_views_count', '0'),
(247, 139, 'post_views_count', '1'),
(248, 113, 'post_views_count', '0'),
(249, 148, 'post_views_count', '3'),
(250, 155, 'post_views_count', '19'),
(251, 158, '_edit_last', '1'),
(252, 158, '_edit_lock', '1569313461:1'),
(253, 159, '_wp_attached_file', '2019/09/1.png'),
(254, 159, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:910;s:6:\"height\";i:1080;s:4:\"file\";s:13:\"2019/09/1.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"1-126x150.png\";s:5:\"width\";i:126;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"1-253x300.png\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"1-768x911.png\";s:5:\"width\";i:768;s:6:\"height\";i:911;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"1-863x1024.png\";s:5:\"width\";i:863;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"1-910x538.png\";s:5:\"width\";i:910;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"1-910x440.png\";s:5:\"width\";i:910;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(255, 160, '_wp_attached_file', '2019/09/2.png'),
(256, 160, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:910;s:6:\"height\";i:1080;s:4:\"file\";s:13:\"2019/09/2.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-126x150.png\";s:5:\"width\";i:126;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-253x300.png\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x911.png\";s:5:\"width\";i:768;s:6:\"height\";i:911;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"2-863x1024.png\";s:5:\"width\";i:863;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"2-910x538.png\";s:5:\"width\";i:910;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"2-910x440.png\";s:5:\"width\";i:910;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(257, 161, '_wp_attached_file', '2019/09/3.png'),
(258, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:910;s:6:\"height\";i:1080;s:4:\"file\";s:13:\"2019/09/3.png\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-126x150.png\";s:5:\"width\";i:126;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-253x300.png\";s:5:\"width\";i:253;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x911.png\";s:5:\"width\";i:768;s:6:\"height\";i:911;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:14:\"3-863x1024.png\";s:5:\"width\";i:863;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"3-910x538.png\";s:5:\"width\";i:910;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"3-910x440.png\";s:5:\"width\";i:910;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(259, 158, '_thumbnail_id', '159'),
(260, 158, 'tdc_gallery_id', 'a:3:{i:0;s:3:\"159\";i:1;s:3:\"160\";i:2;s:3:\"161\";}'),
(261, 158, '_gia_tien', '250000'),
(262, 158, '_thong_tin', 'Fashion has been creating well-designed collections since 2010. The brand offers feminine designs delivering stylish separates and statement dresses which has since evolved into a full ready-to-wear collection in which every item is a vital part of a woman\'s wardrobe. The result? Cool, easy, chic looks with youthful elegance and unmistakable signature style. All the beautiful pieces are made in Italy and manufactured with the greatest attention. Now Fashion extends to a range of accessories including shoes, hats, belts and more!'),
(263, 158, 'post_views_count', '49'),
(264, 163, '_menu_item_type', 'taxonomy'),
(265, 163, '_menu_item_menu_item_parent', '0'),
(266, 163, '_menu_item_object_id', '1'),
(267, 163, '_menu_item_object', 'category'),
(268, 163, '_menu_item_target', ''),
(269, 163, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(270, 163, '_menu_item_xfn', ''),
(271, 163, '_menu_item_url', ''),
(273, 164, '_menu_item_type', 'taxonomy'),
(274, 164, '_menu_item_menu_item_parent', '0'),
(275, 164, '_menu_item_object_id', '17'),
(276, 164, '_menu_item_object', 'category'),
(277, 164, '_menu_item_target', ''),
(278, 164, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(279, 164, '_menu_item_xfn', ''),
(280, 164, '_menu_item_url', ''),
(282, 165, '_menu_item_type', 'taxonomy'),
(283, 165, '_menu_item_menu_item_parent', '0'),
(284, 165, '_menu_item_object_id', '18'),
(285, 165, '_menu_item_object', 'category'),
(286, 165, '_menu_item_target', ''),
(287, 165, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(288, 165, '_menu_item_xfn', ''),
(289, 165, '_menu_item_url', ''),
(291, 153, 'post_views_count', '0'),
(292, 1, 'post_views_count', '0'),
(293, 167, '_edit_lock', '1569297228:1'),
(294, 169, '_edit_lock', '1569307591:1'),
(295, 158, '_wp_page_template', 'single.php'),
(296, 170, '_edit_last', '1'),
(297, 170, '_edit_lock', '1569314977:1'),
(298, 171, '_wp_attached_file', '2019/09/1-3.jpg'),
(299, 171, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/09/1-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-107x150.jpg\";s:5:\"width\";i:107;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"1-3-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"1-3-572x538.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"1-3-572x440.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"TUANVU\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1503829928\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(300, 170, '_thumbnail_id', '171'),
(301, 173, '_edit_last', '1'),
(302, 173, '_edit_lock', '1569314997:1'),
(303, 174, '_wp_attached_file', '2019/09/2-3.jpg'),
(304, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/09/2-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-107x150.jpg\";s:5:\"width\";i:107;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"2-3-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"2-3-572x538.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"2-3-572x440.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:13:\"Administrator\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1529997695\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(305, 173, '_thumbnail_id', '174'),
(306, 176, '_edit_last', '1'),
(307, 176, '_edit_lock', '1569315008:1'),
(308, 177, '_wp_attached_file', '2019/09/3-3.jpg'),
(309, 177, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/09/3-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"3-3-107x150.jpg\";s:5:\"width\";i:107;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"3-3-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"3-3-572x538.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"3-3-572x440.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(310, 176, '_thumbnail_id', '177'),
(311, 179, '_edit_last', '1'),
(312, 179, '_edit_lock', '1569315024:1'),
(313, 180, '_wp_attached_file', '2019/09/4-3.jpg'),
(314, 180, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/09/4-3.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"4-3-107x150.jpg\";s:5:\"width\";i:107;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"4-3-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"4-3-572x538.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"4-3-572x440.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"TUANVU\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1505133144\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(315, 179, '_thumbnail_id', '180'),
(316, 182, '_edit_last', '1'),
(317, 182, '_edit_lock', '1569315038:1'),
(318, 183, '_wp_attached_file', '2019/09/5.jpg'),
(319, 183, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2019/09/5.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-107x150.jpg\";s:5:\"width\";i:107;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"5-572x538.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"5-572x440.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"TUANVU\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1488874555\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(320, 182, '_thumbnail_id', '183'),
(321, 185, '_edit_last', '1'),
(322, 185, '_edit_lock', '1569315212:1'),
(323, 186, '_wp_attached_file', '2019/09/6-1.jpg'),
(324, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:800;s:4:\"file\";s:15:\"2019/09/6-1.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-107x150.jpg\";s:5:\"width\";i:107;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"6-1-215x300.jpg\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:15:\"6-1-572x538.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:538;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:15:\"6-1-572x440.jpg\";s:5:\"width\";i:572;s:6:\"height\";i:440;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:6:\"TUANVU\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1507299698\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(325, 185, '_thumbnail_id', '186'),
(326, 188, '_edit_last', '1'),
(327, 188, '_edit_lock', '1569315910:1'),
(328, 189, '_wp_attached_file', '2019/09/7.png'),
(329, 189, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:572;s:6:\"height\";i:800;s:4:\"file\";s:13:\"2019/09/7.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"7-107x150.png\";s:5:\"width\";i:107;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"7-215x300.png\";s:5:\"width\";i:215;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:15:\"large-thumbnail\";a:4:{s:4:\"file\";s:13:\"7-572x538.png\";s:5:\"width\";i:572;s:6:\"height\";i:538;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"images_project\";a:4:{s:4:\"file\";s:13:\"7-572x440.png\";s:5:\"width\";i:572;s:6:\"height\";i:440;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(330, 188, '_thumbnail_id', '189');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2019-09-20 01:54:01', '2019-09-20 01:54:01', '<!-- wp:paragraph -->\n<p>Cảm ơn vì đã sử dụng WordPress. Đây là bài viết đầu tiên của bạn. Sửa hoặc xóa nó, và bắt đầu bài viết của bạn nhé!</p>\n<!-- /wp:paragraph -->', 'Chào tất cả mọi người!', '', 'publish', 'open', 'open', '', 'chao-moi-nguoi', '', '', '2019-09-20 01:54:01', '2019-09-20 01:54:01', '', 0, 'http://localhost/Lucioshop/?p=1', 0, 'post', '', 1),
(2, 1, '2019-09-20 01:54:01', '2019-09-20 01:54:01', '<!-- wp:paragraph -->\n<p>Đây là trang mẫu. Nó khác với bài viết bởi vì nó thường cố định và hiển thị trong menu của bạn. Nhiều người bắt đầu với trang Giới thiệu nơi bạn chia sẻ thông tin cho những ai ghé thăm. Nó có thể bắt đầu như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Chào bạn! Tôi là một người bán hàng, và đây là website của tôi. Tôi sống ở Hà Nội, có một gia đình nhỏ, và tôi thấy cách sử dụng WordPress rất thú vị.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>... hoặc cái gì đó như thế này:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Công ty chúng tôi được thành lập năm 2010, và cung cấp dịch vụ chất lượng cho rất nhiều sự kiện tại khắp Việt Nam. Với văn phòng đặt tại Hà Nội, TP. Hồ Chí Minh cùng hơn 40 nhân sự, chúng tôi là nơi nhiều đối tác tin tưởng giao cho tổ chức các sự kiện lớn.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Là một người dùng WordPress mới, bạn nên ghé thăm <a href=\"http://localhost/Lucioshop/wp-admin/\">bảng tin</a> để xóa trang này và tạo trang mới cho nội dung của chính bạn. Chúc bạn vui vẻ!</p>\n<!-- /wp:paragraph -->', 'Trang Mẫu', '', 'publish', 'closed', 'open', '', 'Trang mẫu', '', '', '2019-09-20 01:54:01', '2019-09-20 01:54:01', '', 0, 'http://localhost/Lucioshop/?page_id=2', 0, 'page', '', 0),
(3, 1, '2019-09-20 01:54:01', '2019-09-20 01:54:01', '<!-- wp:heading --><h2>Chúng tôi là ai</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Địa chỉ website là: http://localhost/Lucioshop.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin cá nhân nào bị thu thập và tại sao thu thập</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Bình luận</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Khi khách truy cập để lại bình luận trên trang web, chúng tôi thu thập dữ liệu được hiển thị trong biểu mẫu bình luận và cũng là địa chỉ IP của người truy cập và chuỗi user agent của người dùng trình duyệt để giúp phát hiện spam</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Một chuỗi ẩn danh được tạo từ địa chỉ email của bạn (còn được gọi là hash) có thể được cung cấp cho dịch vụ Gravatar để xem bạn có đang sử dụng nó hay không. Chính sách bảo mật của dịch vụ Gravatar có tại đây: https://automattic.com/privacy/. Sau khi chấp nhận bình luận của bạn, ảnh tiểu sử của bạn được hiển thị công khai trong ngữ cảnh bình luận của bạn.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thư viện</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn tải hình ảnh lên trang web, bạn nên tránh tải lên hình ảnh có dữ liệu vị trí được nhúng (EXIF GPS) đi kèm. Khách truy cập vào trang web có thể tải xuống và giải nén bất kỳ dữ liệu vị trí nào từ hình ảnh trên trang web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Thông tin liên hệ</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn viết bình luận trong website, bạn có thể cung cấp cần nhập tên, email địa chỉ website trong cookie. Các thông tin này nhằm giúp bạn không cần nhập thông tin nhiều lần khi viết bình luận khác. Cookie này sẽ được lưu giữ trong một năm.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn vào trang đăng nhập, chúng tôi sẽ thiết lập một cookie tạm thời để xác định nếu trình duyệt cho phép sử dụng cookie. Cookie này không bao gồm thông tin cá nhân và sẽ được gỡ bỏ khi bạn đóng trình duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Khi bạn đăng nhập, chúng tôi sẽ thiết lập một vài cookie để lưu thông tin đăng nhập và lựa chọn hiển thị. Thông tin đăng nhập gần nhất lưu trong hai ngày, và lựa chọn hiển thị gần nhất lưu trong một năm. Nếu bạn chọn &quot;Nhớ tôi&quot;, thông tin đăng nhập sẽ được lưu trong hai tuần. Nếu bạn thoát tài khoản, thông tin cookie đăng nhập sẽ bị xoá.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Nếu bạn sửa hoặc công bố bài viết, một bản cookie bổ sung sẽ được lưu trong trình duyệt. Cookie này không chứa thông tin cá nhân và chỉ đơn giản bao gồm ID của bài viết bạn đã sửa. Nó tự động hết hạn sau 1 ngày.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Nội dung nhúng từ website khác</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Các bài viết trên trang web này có thể bao gồm nội dung được nhúng (ví dụ: video, hình ảnh, bài viết, v.v.). Nội dung được nhúng từ các trang web khác hoạt động theo cùng một cách chính xác như khi khách truy cập đã truy cập trang web khác.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Những website này có thể thu thập dữ liệu về bạn, sử dụng cookie, nhúng các trình theo dõi của bên thứ ba và giám sát tương tác của bạn với nội dung được nhúng đó, bao gồm theo dõi tương tác của bạn với nội dung được nhúng nếu bạn có tài khoản và đã đăng nhập vào trang web đó.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Phân tích</h3><!-- /wp:heading --><!-- wp:heading --><h2>Chúng tôi chia sẻ dữ liệu của bạn với ai</h2><!-- /wp:heading --><!-- wp:heading --><h2>Dữ liệu của bạn tồn tại bao lâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn để lại bình luận, bình luận và siêu dữ liệu của nó sẽ được giữ lại vô thời hạn. Điều này là để chúng tôi có thể tự động nhận ra và chấp nhận bất kỳ bình luận nào thay vì giữ chúng trong khu vực đợi kiểm duyệt.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Đối với người dùng đăng ký trên trang web của chúng tôi (nếu có), chúng tôi cũng lưu trữ thông tin cá nhân mà họ cung cấp trong hồ sơ người dùng của họ. Tất cả người dùng có thể xem, chỉnh sửa hoặc xóa thông tin cá nhân của họ bất kỳ lúc nào (ngoại trừ họ không thể thay đổi tên người dùng của họ). Quản trị viên trang web cũng có thể xem và chỉnh sửa thông tin đó.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các quyền nào của bạn với dữ liệu của mình</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Nếu bạn có tài khoản trên trang web này hoặc đã để lại nhận xét, bạn có thể yêu cầu nhận tệp xuất dữ liệu cá nhân mà chúng tôi lưu giữ về bạn, bao gồm mọi dữ liệu bạn đã cung cấp cho chúng tôi. Bạn cũng có thể yêu cầu chúng tôi xóa mọi dữ liệu cá nhân mà chúng tôi lưu giữ về bạn. Điều này không bao gồm bất kỳ dữ liệu nào chúng tôi có nghĩa vụ giữ cho các mục đích hành chính, pháp lý hoặc bảo mật.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Các dữ liệu của bạn được gửi tới đâu</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Các bình luận của khách (không phải là thành viên) có thể được kiểm tra thông qua dịch vụ tự động phát hiện spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Thông tin liên hệ của bạn</h2><!-- /wp:heading --><!-- wp:heading --><h2>Thông tin bổ sung</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cách chúng tôi bảo vệ dữ liệu của bạn</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các quá trình tiết lộ dữ liệu mà chúng tôi thực hiện</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Những bên thứ ba chúng tôi nhận dữ liệu từ đó</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Việc quyết định và/hoặc thu thập thông tin tự động mà chúng tôi áp dụng với dữ liệu người dùng</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Các yêu cầu công bố thông tin được quản lý</h3><!-- /wp:heading -->', 'Chính sách bảo mật', '', 'draft', 'closed', 'open', '', 'chinh-sach-bao-mat', '', '', '2019-09-20 01:54:01', '2019-09-20 01:54:01', '', 0, 'http://localhost/Lucioshop/?page_id=3', 0, 'page', '', 0),
(4, 1, '2019-09-20 01:54:11', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 01:54:11', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?p=4', 0, 'post', '', 0),
(5, 1, '2019-09-20 04:17:30', '2019-09-20 04:17:30', '', 'Trang chủ', '', 'publish', 'closed', 'closed', '', 'trang-chu', '', '', '2019-09-24 01:41:22', '2019-09-24 01:41:22', '', 0, 'http://localhost/Lucioshop/?p=5', 1, 'nav_menu_item', '', 0),
(6, 1, '2019-09-20 04:17:30', '2019-09-20 04:17:30', '', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2019-09-24 01:41:22', '2019-09-24 01:41:22', '', 0, 'http://localhost/Lucioshop/?p=6', 5, 'nav_menu_item', '', 0),
(7, 1, '2019-09-20 06:20:23', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 06:20:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_land&p=7', 0, 'post_land', '', 0),
(8, 1, '2019-09-20 06:25:21', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 06:25:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_size&p=8', 0, 'post_size', '', 0),
(9, 1, '2019-09-20 06:26:30', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 06:26:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_size&p=9', 0, 'post_size', '', 0),
(10, 1, '2019-09-20 06:34:54', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 06:34:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_color&p=10', 0, 'post_color', '', 0),
(11, 1, '2019-09-20 06:46:29', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 06:46:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=11', 0, 'post_product', '', 0),
(12, 1, '2019-09-20 06:48:08', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 06:48:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=12', 0, 'post_product', '', 0),
(13, 1, '2019-09-20 06:50:50', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 06:50:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=13', 0, 'post_product', '', 0),
(14, 1, '2019-09-20 07:02:08', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:02:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=14', 0, 'post_product', '', 0),
(15, 1, '2019-09-20 07:03:51', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:03:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=15', 0, 'post_product', '', 0),
(16, 1, '2019-09-20 07:03:51', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:03:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=16', 0, 'post_product', '', 0),
(17, 1, '2019-09-20 07:04:23', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:04:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?p=17', 0, 'post', '', 0),
(18, 1, '2019-09-20 07:04:33', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:04:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=18', 0, 'post_product', '', 0),
(19, 1, '2019-09-20 07:06:42', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:06:42', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=19', 0, 'post_product', '', 0),
(20, 1, '2019-09-20 07:07:27', '2019-09-20 07:07:27', '', 'Áo thun cổ tròn', '', 'trash', 'open', 'open', '', 'ao-thun-co-tron__trashed', '', '', '2019-09-23 03:20:01', '2019-09-23 03:20:01', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=20', 0, 'post_product', '', 0),
(21, 1, '2019-09-20 07:07:12', '2019-09-20 07:07:12', '', 'NoPath - Copy (59)', '', 'inherit', 'open', 'closed', '', 'nopath-copy-59', '', '', '2019-09-20 07:07:12', '2019-09-20 07:07:12', '', 20, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/NoPath-Copy-59.png', 0, 'attachment', 'image/png', 0),
(22, 1, '2019-09-20 07:07:27', '2019-09-20 07:07:27', '', 'Áo thun cổ tròn', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2019-09-20 07:07:27', '2019-09-20 07:07:27', '', 20, 'http://localhost/Lucioshop/2019/09/20/20-revision-v1/', 0, 'revision', '', 0),
(23, 1, '2019-09-20 07:09:43', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:09:43', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=23', 0, 'post_product', '', 0),
(24, 1, '2019-09-20 07:10:04', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:10:04', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=24', 0, 'post_product', '', 0),
(25, 1, '2019-09-20 07:22:26', '2019-09-20 07:22:26', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2019-09-20 07:22:26', '2019-09-20 07:22:26', '', 20, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2019-09-20 07:22:26', '2019-09-20 07:22:26', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2019-09-20 07:22:26', '2019-09-20 07:22:26', '', 20, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2019-09-20 07:22:27', '2019-09-20 07:22:27', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2019-09-20 07:22:27', '2019-09-20 07:22:27', '', 20, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2019-09-20 07:37:10', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:37:10', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?p=28', 0, 'post', '', 0),
(29, 1, '2019-09-20 07:40:01', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:40:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=29', 0, 'post_product', '', 0),
(30, 1, '2019-09-20 07:40:44', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:40:44', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=30', 0, 'post_product', '', 0),
(31, 1, '2019-09-20 07:43:35', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:43:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=31', 0, 'post_product', '', 0),
(32, 1, '2019-09-20 07:48:01', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:48:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=32', 0, 'post_product', '', 0),
(33, 1, '2019-09-20 07:48:55', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:48:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=33', 0, 'post_product', '', 0),
(34, 1, '2019-09-20 07:48:57', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:48:57', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=34', 0, 'post_product', '', 0),
(35, 1, '2019-09-20 07:49:14', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:49:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=35', 0, 'post_product', '', 0),
(36, 1, '2019-09-20 07:49:35', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:49:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=36', 0, 'post_product', '', 0),
(37, 1, '2019-09-20 07:50:06', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:50:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=37', 0, 'post_product', '', 0),
(38, 1, '2019-09-20 07:50:16', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:50:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=38', 0, 'post_product', '', 0),
(39, 1, '2019-09-20 07:51:00', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:51:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=39', 0, 'post_product', '', 0),
(40, 1, '2019-09-20 07:51:12', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:51:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=40', 0, 'post_product', '', 0),
(41, 1, '2019-09-20 07:52:26', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:52:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=41', 0, 'post_product', '', 0),
(42, 1, '2019-09-20 07:52:28', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:52:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=42', 0, 'post_product', '', 0),
(43, 1, '2019-09-20 07:52:50', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:52:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=43', 0, 'post_product', '', 0),
(44, 1, '2019-09-20 07:53:23', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:53:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=44', 0, 'post_product', '', 0),
(45, 1, '2019-09-20 07:54:08', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:54:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=45', 0, 'post_product', '', 0),
(46, 1, '2019-09-20 07:54:09', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:54:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=46', 0, 'post_product', '', 0),
(47, 1, '2019-09-20 07:54:34', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:54:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=47', 0, 'post_product', '', 0),
(48, 1, '2019-09-20 07:54:39', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:54:39', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=48', 0, 'post_product', '', 0),
(49, 1, '2019-09-20 07:54:53', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:54:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=49', 0, 'post_product', '', 0),
(50, 1, '2019-09-20 07:55:17', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:55:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=50', 0, 'post_product', '', 0),
(51, 1, '2019-09-20 07:55:27', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:55:27', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=51', 0, 'post_product', '', 0),
(52, 1, '2019-09-20 07:55:35', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:55:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=52', 0, 'post_product', '', 0),
(53, 1, '2019-09-20 07:55:54', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:55:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=53', 0, 'post_product', '', 0),
(54, 1, '2019-09-20 07:55:58', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:55:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=54', 0, 'post_product', '', 0),
(55, 1, '2019-09-20 07:56:12', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:56:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=55', 0, 'post_product', '', 0),
(56, 1, '2019-09-20 07:57:12', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'open', 'open', '', '', '', '', '2019-09-20 07:57:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=56', 0, 'post_product', '', 0),
(57, 1, '2019-09-20 07:59:05', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 07:59:05', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=57', 0, 'post_product', '', 0),
(58, 1, '2019-09-20 08:00:52', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 08:00:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=58', 0, 'post_product', '', 0),
(59, 1, '2019-09-20 08:01:07', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 08:01:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=59', 0, 'post_product', '', 0),
(60, 1, '2019-09-20 08:01:47', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 08:01:47', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=60', 0, 'post_product', '', 0),
(61, 1, '2019-09-20 08:02:34', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 08:02:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=61', 0, 'post_product', '', 0),
(62, 1, '2019-09-20 08:02:35', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 08:02:35', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=62', 0, 'post_product', '', 0),
(63, 1, '2019-09-20 08:05:34', '2019-09-20 08:05:34', '', 'Áo Thun Cổ tròn vải tốt', '', 'trash', 'closed', 'closed', '', '63__trashed', '', '', '2019-09-23 03:20:01', '2019-09-23 03:20:01', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=63', 0, 'post_product', '', 0),
(64, 1, '2019-09-20 08:05:01', '2019-09-20 08:05:01', '', '1', '', 'inherit', 'open', 'closed', '', '1', '', '', '2019-09-20 08:05:01', '2019-09-20 08:05:01', '', 63, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 1, '2019-09-20 08:05:02', '2019-09-20 08:05:02', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2019-09-20 08:05:02', '2019-09-20 08:05:02', '', 63, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 1, '2019-09-20 08:05:02', '2019-09-20 08:05:02', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2019-09-20 08:05:02', '2019-09-20 08:05:02', '', 63, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 1, '2019-09-20 08:05:03', '2019-09-20 08:05:03', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2019-09-20 08:05:03', '2019-09-20 08:05:03', '', 63, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 1, '2019-09-20 08:05:34', '2019-09-20 08:05:34', '', '', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-09-20 08:05:34', '2019-09-20 08:05:34', '', 63, 'http://localhost/Lucioshop/2019/09/20/63-revision-v1/', 0, 'revision', '', 0),
(69, 1, '2019-09-20 08:05:50', '2019-09-20 08:05:50', '', 'Áo Thun Cổ tròn vải tốt', '', 'inherit', 'closed', 'closed', '', '63-revision-v1', '', '', '2019-09-20 08:05:50', '2019-09-20 08:05:50', '', 63, 'http://localhost/Lucioshop/2019/09/20/63-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2019-09-20 08:22:55', '2019-09-20 08:22:55', '', 'Quần Jogger Nam - Nữ', '', 'trash', 'closed', 'closed', '', 'quan-jogger-nam-nu__trashed', '', '', '2019-09-23 03:20:01', '2019-09-23 03:20:01', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=70', 0, 'post_product', '', 0),
(71, 1, '2019-09-20 08:22:12', '2019-09-20 08:22:12', '', '1', '', 'inherit', 'open', 'closed', '', '1-2', '', '', '2019-09-20 08:22:12', '2019-09-20 08:22:12', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2019-09-20 08:22:12', '2019-09-20 08:22:12', '', '2', '', 'inherit', 'open', 'closed', '', '2-3', '', '', '2019-09-20 08:22:12', '2019-09-20 08:22:12', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 1, '2019-09-20 08:22:13', '2019-09-20 08:22:13', '', '3', '', 'inherit', 'open', 'closed', '', '3-3', '', '', '2019-09-20 08:22:13', '2019-09-20 08:22:13', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3.jpeg', 0, 'attachment', 'image/jpeg', 0),
(74, 1, '2019-09-20 08:22:13', '2019-09-20 08:22:13', '', '4', '', 'inherit', 'open', 'closed', '', '4-3', '', '', '2019-09-20 08:22:13', '2019-09-20 08:22:13', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2019-09-20 08:22:14', '2019-09-20 08:22:14', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2019-09-20 08:22:14', '2019-09-20 08:22:14', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 1, '2019-09-20 08:22:14', '2019-09-20 08:22:14', '', 'n1', '', 'inherit', 'open', 'closed', '', 'n1', '', '', '2019-09-20 08:22:14', '2019-09-20 08:22:14', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/n1.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 1, '2019-09-20 08:22:15', '2019-09-20 08:22:15', '', 'n2', '', 'inherit', 'open', 'closed', '', 'n2', '', '', '2019-09-20 08:22:15', '2019-09-20 08:22:15', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/n2.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 1, '2019-09-20 08:22:15', '2019-09-20 08:22:15', '', 'n3', '', 'inherit', 'open', 'closed', '', 'n3', '', '', '2019-09-20 08:22:15', '2019-09-20 08:22:15', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/n3.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 1, '2019-09-20 08:22:16', '2019-09-20 08:22:16', '', 'n4', '', 'inherit', 'open', 'closed', '', 'n4', '', '', '2019-09-20 08:22:16', '2019-09-20 08:22:16', '', 70, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/n4.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 1, '2019-09-20 08:22:55', '2019-09-20 08:22:55', '', 'Quần Jogger Nam - Nữ', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2019-09-20 08:22:55', '2019-09-20 08:22:55', '', 70, 'http://localhost/Lucioshop/2019/09/20/70-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2019-09-20 09:42:20', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:42:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=81', 0, 'post_slideshow', '', 0),
(82, 1, '2019-09-20 09:42:28', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:42:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=82', 0, 'post_slideshow', '', 0),
(83, 1, '2019-09-20 09:42:58', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:42:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=83', 0, 'post_slideshow', '', 0),
(84, 1, '2019-09-20 09:44:15', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:44:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=84', 0, 'post_slideshow', '', 0),
(85, 1, '2019-09-20 09:44:22', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:44:22', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=85', 0, 'post_slideshow', '', 0),
(86, 1, '2019-09-20 09:52:28', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:52:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=86', 0, 'post_slideshow', '', 0),
(87, 1, '2019-09-20 09:52:33', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:52:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=87', 0, 'post_slideshow', '', 0),
(88, 1, '2019-09-20 09:54:34', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:54:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=88', 0, 'post_slideshow', '', 0),
(89, 1, '2019-09-20 09:54:36', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:54:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=89', 0, 'post_slideshow', '', 0),
(90, 1, '2019-09-20 09:56:34', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:56:34', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=90', 0, 'post_slideshow', '', 0),
(91, 1, '2019-09-20 09:57:46', '0000-00-00 00:00:00', '', 'Lưu bản nháp tự động', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-20 09:57:46', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&p=91', 0, 'post_slideshow', '', 0),
(92, 1, '2019-09-20 09:58:04', '2019-09-20 09:58:04', '', 'Quần Jogger', '', 'publish', 'closed', 'closed', '', 'slideshow1', '', '', '2019-09-23 03:05:49', '2019-09-23 03:05:49', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&#038;p=92', 0, 'post_slideshow', '', 0),
(93, 1, '2019-09-20 09:58:04', '2019-09-20 09:58:04', '', 'Slideshow1', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-09-20 09:58:04', '2019-09-20 09:58:04', '', 92, 'http://localhost/Lucioshop/2019/09/20/92-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2019-09-23 01:06:10', '2019-09-23 01:06:10', '', '9', '', 'inherit', 'open', 'closed', '', '9', '', '', '2019-09-23 01:06:10', '2019-09-23 01:06:10', '', 92, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(96, 1, '2019-09-23 01:06:39', '2019-09-23 01:06:39', '', '', '', 'trash', 'closed', 'closed', '', '96__trashed', '', '', '2019-09-23 01:53:03', '2019-09-23 01:53:03', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&#038;p=96', 0, 'post_slideshow', '', 0),
(97, 1, '2019-09-23 01:06:34', '2019-09-23 01:06:34', '', '6', '', 'inherit', 'open', 'closed', '', '6-2', '', '', '2019-09-23 01:06:34', '2019-09-23 01:06:34', '', 96, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2019-09-23 01:06:39', '2019-09-23 01:06:39', '', '', '', 'inherit', 'closed', 'closed', '', '96-revision-v1', '', '', '2019-09-23 01:06:39', '2019-09-23 01:06:39', '', 96, 'http://localhost/Lucioshop/2019/09/23/96-revision-v1/', 0, 'revision', '', 0),
(99, 1, '2019-09-23 01:54:28', '2019-09-23 01:54:28', '', 'Áo khoác', '', 'trash', 'closed', 'closed', '', 'ao-khoac__trashed', '', '', '2019-09-23 03:20:01', '2019-09-23 03:20:01', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=99', 0, 'post_product', '', 0),
(100, 1, '2019-09-23 01:53:48', '2019-09-23 01:53:48', '', '2', '', 'inherit', 'open', 'closed', '', '2-4', '', '', '2019-09-23 01:53:48', '2019-09-23 01:53:48', '', 99, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(101, 1, '2019-09-23 01:53:49', '2019-09-23 01:53:49', '', '3', '', 'inherit', 'open', 'closed', '', '3-4', '', '', '2019-09-23 01:53:49', '2019-09-23 01:53:49', '', 99, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(102, 1, '2019-09-23 01:53:49', '2019-09-23 01:53:49', '', '4', '', 'inherit', 'open', 'closed', '', '4-4', '', '', '2019-09-23 01:53:49', '2019-09-23 01:53:49', '', 99, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(103, 1, '2019-09-23 01:54:28', '2019-09-23 01:54:28', '', 'Áo khoác', '', 'inherit', 'closed', 'closed', '', '99-revision-v1', '', '', '2019-09-23 01:54:28', '2019-09-23 01:54:28', '', 99, 'http://localhost/Lucioshop/2019/09/23/99-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2019-09-23 01:59:42', '2019-09-23 01:59:42', '', 'Slideshow 2', '', 'publish', 'closed', 'closed', '', 'slideshow-2', '', '', '2019-09-23 02:54:42', '2019-09-23 02:54:42', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&#038;p=104', 0, 'post_slideshow', '', 0),
(105, 1, '2019-09-23 01:59:42', '2019-09-23 01:59:42', '', 'Slideshow 2', '', 'inherit', 'closed', 'closed', '', '104-revision-v1', '', '', '2019-09-23 01:59:42', '2019-09-23 01:59:42', '', 104, 'http://localhost/Lucioshop/2019/09/23/104-revision-v1/', 0, 'revision', '', 0),
(106, 1, '2019-09-23 02:00:05', '2019-09-23 02:00:05', '', 'Slideshow 3', '', 'publish', 'closed', 'closed', '', 'slideshow-3', '', '', '2019-09-23 02:54:27', '2019-09-23 02:54:27', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&#038;p=106', 0, 'post_slideshow', '', 0),
(107, 1, '2019-09-23 02:00:00', '2019-09-23 02:00:00', '', '7', '', 'inherit', 'open', 'closed', '', '7', '', '', '2019-09-23 02:00:00', '2019-09-23 02:00:00', '', 106, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(108, 1, '2019-09-23 02:00:05', '2019-09-23 02:00:05', '', 'Slideshow 3', '', 'inherit', 'closed', 'closed', '', '106-revision-v1', '', '', '2019-09-23 02:00:05', '2019-09-23 02:00:05', '', 106, 'http://localhost/Lucioshop/2019/09/23/106-revision-v1/', 0, 'revision', '', 0),
(109, 1, '2019-09-23 02:00:36', '2019-09-23 02:00:36', '', 'Slideshow 4', '', 'publish', 'closed', 'closed', '', 'slideshow-4', '', '', '2019-09-23 02:54:09', '2019-09-23 02:54:09', '', 0, 'http://localhost/Lucioshop/?post_type=post_slideshow&#038;p=109', 0, 'post_slideshow', '', 0),
(111, 1, '2019-09-23 02:00:32', '2019-09-23 02:00:32', '', '21', '', 'inherit', 'open', 'closed', '', '21', '', '', '2019-09-23 02:00:32', '2019-09-23 02:00:32', '', 109, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/21.jpg', 0, 'attachment', 'image/jpeg', 0),
(112, 1, '2019-09-23 02:00:36', '2019-09-23 02:00:36', '', 'Slideshow 4', '', 'inherit', 'closed', 'closed', '', '109-revision-v1', '', '', '2019-09-23 02:00:36', '2019-09-23 02:00:36', '', 109, 'http://localhost/Lucioshop/2019/09/23/109-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2019-09-23 02:03:03', '2019-09-23 02:03:03', '', 'Quần Jeans 01', '', 'publish', 'closed', 'closed', '', 'quan-jeans-01', '', '', '2019-09-23 02:33:19', '2019-09-23 02:33:19', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=113', 0, 'post_product', '', 0),
(114, 1, '2019-09-23 02:02:35', '2019-09-23 02:02:35', '', '1', '', 'inherit', 'open', 'closed', '', '1-3', '', '', '2019-09-23 02:02:35', '2019-09-23 02:02:35', '', 113, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2019-09-23 02:02:35', '2019-09-23 02:02:35', '', '2', '', 'inherit', 'open', 'closed', '', '2-5', '', '', '2019-09-23 02:02:35', '2019-09-23 02:02:35', '', 113, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2019-09-23 02:02:35', '2019-09-23 02:02:35', '', '3', '', 'inherit', 'open', 'closed', '', '3-5', '', '', '2019-09-23 02:02:35', '2019-09-23 02:02:35', '', 113, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2019-09-23 02:02:36', '2019-09-23 02:02:36', '', '4', '', 'inherit', 'open', 'closed', '', '4-5', '', '', '2019-09-23 02:02:36', '2019-09-23 02:02:36', '', 113, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2019-09-23 02:03:03', '2019-09-23 02:03:03', '', 'Quần Jeans 01', '', 'inherit', 'closed', 'closed', '', '113-revision-v1', '', '', '2019-09-23 02:03:03', '2019-09-23 02:03:03', '', 113, 'http://localhost/Lucioshop/2019/09/23/113-revision-v1/', 0, 'revision', '', 0),
(119, 1, '2019-09-23 02:03:36', '2019-09-23 02:03:36', '', 'Quần Jean 02', '', 'publish', 'closed', 'closed', '', 'quan-jean-02', '', '', '2019-09-23 02:33:48', '2019-09-23 02:33:48', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=119', 0, 'post_product', '', 0),
(120, 1, '2019-09-23 02:03:36', '2019-09-23 02:03:36', '', 'Quần Jean 02', '', 'inherit', 'closed', 'closed', '', '119-revision-v1', '', '', '2019-09-23 02:03:36', '2019-09-23 02:03:36', '', 119, 'http://localhost/Lucioshop/2019/09/23/119-revision-v1/', 0, 'revision', '', 0),
(121, 1, '2019-09-23 02:24:52', '2019-09-23 02:24:52', '', '9', '', 'inherit', 'open', 'closed', '', '9-2', '', '', '2019-09-23 02:24:52', '2019-09-23 02:24:52', '', 92, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(122, 1, '2019-09-23 02:25:14', '2019-09-23 02:25:14', '', '7', '', 'inherit', 'open', 'closed', '', '7-2', '', '', '2019-09-23 02:25:14', '2019-09-23 02:25:14', '', 104, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(123, 1, '2019-09-23 02:25:31', '2019-09-23 02:25:31', '', '4', '', 'inherit', 'open', 'closed', '', '4-6', '', '', '2019-09-23 02:25:31', '2019-09-23 02:25:31', '', 106, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(124, 1, '2019-09-23 02:25:45', '2019-09-23 02:25:45', '', '21', '', 'inherit', 'open', 'closed', '', '21-2', '', '', '2019-09-23 02:25:45', '2019-09-23 02:25:45', '', 109, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/21.jpg', 0, 'attachment', 'image/jpeg', 0),
(125, 1, '2019-09-23 02:28:58', '2019-09-23 02:28:58', '', '1', '', 'inherit', 'open', 'closed', '', '1-4', '', '', '2019-09-23 02:28:58', '2019-09-23 02:28:58', '', 92, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2019-09-23 02:30:18', '2019-09-23 02:30:18', '', '1', '', 'inherit', 'open', 'closed', '', '1-5', '', '', '2019-09-23 02:30:18', '2019-09-23 02:30:18', '', 113, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(127, 1, '2019-09-23 02:33:34', '2019-09-23 02:33:34', '', '2', '', 'inherit', 'open', 'closed', '', '2-6', '', '', '2019-09-23 02:33:34', '2019-09-23 02:33:34', '', 119, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2019-09-23 02:40:01', '2019-09-23 02:40:01', '', 'Quần Jeans 03', '', 'publish', 'closed', 'closed', '', 'quan-jeans-03', '', '', '2019-09-23 02:40:01', '2019-09-23 02:40:01', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=128', 0, 'post_product', '', 0),
(129, 1, '2019-09-23 02:39:52', '2019-09-23 02:39:52', '', '4', '', 'inherit', 'open', 'closed', '', '4-7', '', '', '2019-09-23 02:39:52', '2019-09-23 02:39:52', '', 128, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(130, 1, '2019-09-23 02:40:01', '2019-09-23 02:40:01', '', 'Quần Jeans 03', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2019-09-23 02:40:01', '2019-09-23 02:40:01', '', 128, 'http://localhost/Lucioshop/2019/09/23/128-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2019-09-23 02:43:44', '2019-09-23 02:43:44', '', 'Quần Jeans 04', '', 'publish', 'closed', 'closed', '', 'quan-jeans-04', '', '', '2019-09-23 02:43:44', '2019-09-23 02:43:44', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=131', 0, 'post_product', '', 0),
(132, 1, '2019-09-23 02:43:24', '2019-09-23 02:43:24', '', '3', '', 'inherit', 'open', 'closed', '', '3-6', '', '', '2019-09-23 02:43:24', '2019-09-23 02:43:24', '', 131, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(133, 1, '2019-09-23 02:43:44', '2019-09-23 02:43:44', '', 'Quần Jeans 04', '', 'inherit', 'closed', 'closed', '', '131-revision-v1', '', '', '2019-09-23 02:43:44', '2019-09-23 02:43:44', '', 131, 'http://localhost/Lucioshop/2019/09/23/131-revision-v1/', 0, 'revision', '', 0),
(134, 1, '2019-09-23 02:54:06', '2019-09-23 02:54:06', '', '20', '', 'inherit', 'open', 'closed', '', '20', '', '', '2019-09-23 02:54:06', '2019-09-23 02:54:06', '', 109, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/20.jpg', 0, 'attachment', 'image/jpeg', 0),
(135, 1, '2019-09-23 02:54:24', '2019-09-23 02:54:24', '', '9', '', 'inherit', 'open', 'closed', '', '9-3', '', '', '2019-09-23 02:54:24', '2019-09-23 02:54:24', '', 106, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/9.jpg', 0, 'attachment', 'image/jpeg', 0),
(136, 1, '2019-09-23 02:54:39', '2019-09-23 02:54:39', '', '7', '', 'inherit', 'open', 'closed', '', '7-3', '', '', '2019-09-23 02:54:39', '2019-09-23 02:54:39', '', 104, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/7.jpg', 0, 'attachment', 'image/jpeg', 0),
(137, 1, '2019-09-23 02:54:58', '2019-09-23 02:54:58', '', '6', '', 'inherit', 'open', 'closed', '', '6-3', '', '', '2019-09-23 02:54:58', '2019-09-23 02:54:58', '', 92, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(138, 1, '2019-09-23 03:05:49', '2019-09-23 03:05:49', '', 'Quần Jogger', '', 'inherit', 'closed', 'closed', '', '92-revision-v1', '', '', '2019-09-23 03:05:49', '2019-09-23 03:05:49', '', 92, 'http://localhost/Lucioshop/2019/09/23/92-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2019-09-23 03:38:08', '2019-09-23 03:38:08', '', 'Áo thun 02', '', 'publish', 'closed', 'closed', '', 'ao-thun-02', '', '', '2019-09-23 03:38:12', '2019-09-23 03:38:12', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=139', 0, 'post_product', '', 0),
(140, 1, '2019-09-23 03:34:58', '2019-09-23 03:34:58', '', '1', '', 'inherit', 'open', 'closed', '', '1-6', '', '', '2019-09-23 03:34:58', '2019-09-23 03:34:58', '', 139, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/1-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(141, 1, '2019-09-23 03:34:59', '2019-09-23 03:34:59', '', '2', '', 'inherit', 'open', 'closed', '', '2-7', '', '', '2019-09-23 03:34:59', '2019-09-23 03:34:59', '', 139, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2019-09-23 03:34:59', '2019-09-23 03:34:59', '', '3', '', 'inherit', 'open', 'closed', '', '3-7', '', '', '2019-09-23 03:34:59', '2019-09-23 03:34:59', '', 139, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2019-09-23 03:34:59', '2019-09-23 03:34:59', '', '4', '', 'inherit', 'open', 'closed', '', '4-8', '', '', '2019-09-23 03:34:59', '2019-09-23 03:34:59', '', 139, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(144, 1, '2019-09-23 03:37:12', '2019-09-23 03:37:12', '', 'Áo thun 01', '', 'publish', 'closed', 'closed', '', '144', '', '', '2019-09-23 03:37:21', '2019-09-23 03:37:21', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=144', 0, 'post_product', '', 0),
(145, 1, '2019-09-23 03:37:12', '2019-09-23 03:37:12', '', '', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2019-09-23 03:37:12', '2019-09-23 03:37:12', '', 144, 'http://localhost/Lucioshop/2019/09/23/144-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2019-09-23 03:37:21', '2019-09-23 03:37:21', '', 'Áo thun 01', '', 'inherit', 'closed', 'closed', '', '144-revision-v1', '', '', '2019-09-23 03:37:21', '2019-09-23 03:37:21', '', 144, 'http://localhost/Lucioshop/2019/09/23/144-revision-v1/', 0, 'revision', '', 0),
(147, 1, '2019-09-23 03:38:08', '2019-09-23 03:38:08', '', 'Áo thun 02', '', 'inherit', 'closed', 'closed', '', '139-revision-v1', '', '', '2019-09-23 03:38:08', '2019-09-23 03:38:08', '', 139, 'http://localhost/Lucioshop/2019/09/23/139-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2019-09-23 03:53:35', '2019-09-23 03:53:35', '', 'Áo khoác 01', '', 'publish', 'closed', 'closed', '', 'ao-khoac-01', '', '', '2019-09-23 03:53:35', '2019-09-23 03:53:35', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=148', 0, 'post_product', '', 0),
(149, 1, '2019-09-23 03:53:18', '2019-09-23 03:53:18', '', '2', '', 'inherit', 'open', 'closed', '', '2-8', '', '', '2019-09-23 03:53:18', '2019-09-23 03:53:18', '', 148, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(150, 1, '2019-09-23 03:53:18', '2019-09-23 03:53:18', '', '3', '', 'inherit', 'open', 'closed', '', '3-8', '', '', '2019-09-23 03:53:18', '2019-09-23 03:53:18', '', 148, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(151, 1, '2019-09-23 03:53:19', '2019-09-23 03:53:19', '', '4', '', 'inherit', 'open', 'closed', '', '4-9', '', '', '2019-09-23 03:53:19', '2019-09-23 03:53:19', '', 148, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(152, 1, '2019-09-23 03:53:35', '2019-09-23 03:53:35', '', 'Áo khoác 01', '', 'inherit', 'closed', 'closed', '', '148-revision-v1', '', '', '2019-09-23 03:53:35', '2019-09-23 03:53:35', '', 148, 'http://localhost/Lucioshop/2019/09/23/148-revision-v1/', 0, 'revision', '', 0),
(153, 1, '2019-09-23 06:39:35', '2019-09-23 06:39:35', '', 'Áo khoác 02', '', 'publish', 'closed', 'closed', '', 'ao-khoac-01-2', '', '', '2019-09-23 06:40:17', '2019-09-23 06:40:17', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=153', 0, 'post_product', '', 0),
(154, 1, '2019-09-23 06:39:35', '2019-09-23 06:39:35', '', 'Áo khoác 01', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2019-09-23 06:39:35', '2019-09-23 06:39:35', '', 153, 'http://localhost/Lucioshop/2019/09/23/153-revision-v1/', 0, 'revision', '', 0),
(155, 1, '2019-09-23 06:40:07', '2019-09-23 06:40:07', '', 'Áo khoác 3', '', 'publish', 'closed', 'closed', '', 'ao-khoac-3', '', '', '2019-09-23 06:40:07', '2019-09-23 06:40:07', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=155', 0, 'post_product', '', 0),
(156, 1, '2019-09-23 06:40:07', '2019-09-23 06:40:07', '', 'Áo khoác 3', '', 'inherit', 'closed', 'closed', '', '155-revision-v1', '', '', '2019-09-23 06:40:07', '2019-09-23 06:40:07', '', 155, 'http://localhost/Lucioshop/2019/09/23/155-revision-v1/', 0, 'revision', '', 0),
(157, 1, '2019-09-23 06:40:17', '2019-09-23 06:40:17', '', 'Áo khoác 02', '', 'inherit', 'closed', 'closed', '', '153-revision-v1', '', '', '2019-09-23 06:40:17', '2019-09-23 06:40:17', '', 153, 'http://localhost/Lucioshop/2019/09/23/153-revision-v1/', 0, 'revision', '', 0),
(158, 1, '2019-09-24 01:37:00', '2019-09-24 01:37:00', '', 'Áo khoác 04', '', 'publish', 'closed', 'closed', '', 'ao-khoac-04', '', '', '2019-09-24 07:26:08', '2019-09-24 07:26:08', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&#038;p=158', 0, 'post_product', '', 0),
(159, 1, '2019-09-24 01:36:20', '2019-09-24 01:36:20', '', '1', '', 'inherit', 'open', 'closed', '', '1-7', '', '', '2019-09-24 01:36:20', '2019-09-24 01:36:20', '', 158, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/1.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(160, 1, '2019-09-24 01:36:22', '2019-09-24 01:36:22', '', '2', '', 'inherit', 'open', 'closed', '', '2-9', '', '', '2019-09-24 01:36:22', '2019-09-24 01:36:22', '', 158, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2019-09-24 01:36:24', '2019-09-24 01:36:24', '', '3', '', 'inherit', 'open', 'closed', '', '3-9', '', '', '2019-09-24 01:36:24', '2019-09-24 01:36:24', '', 158, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2019-09-24 01:37:00', '2019-09-24 01:37:00', '', 'Áo khoác 04', '', 'inherit', 'closed', 'closed', '', '158-revision-v1', '', '', '2019-09-24 01:37:00', '2019-09-24 01:37:00', '', 158, 'http://localhost/Lucioshop/2019/09/24/158-revision-v1/', 0, 'revision', '', 0),
(163, 1, '2019-09-24 01:41:22', '2019-09-24 01:41:22', ' ', '', '', 'publish', 'closed', 'closed', '', '163', '', '', '2019-09-24 01:41:22', '2019-09-24 01:41:22', '', 0, 'http://localhost/Lucioshop/?p=163', 2, 'nav_menu_item', '', 0),
(164, 1, '2019-09-24 01:41:22', '2019-09-24 01:41:22', ' ', '', '', 'publish', 'closed', 'closed', '', '164', '', '', '2019-09-24 01:41:22', '2019-09-24 01:41:22', '', 0, 'http://localhost/Lucioshop/?p=164', 3, 'nav_menu_item', '', 0),
(165, 1, '2019-09-24 01:41:22', '2019-09-24 01:41:22', ' ', '', '', 'publish', 'closed', 'closed', '', '165', '', '', '2019-09-24 01:41:22', '2019-09-24 01:41:22', '', 0, 'http://localhost/Lucioshop/?p=165', 4, 'nav_menu_item', '', 0),
(166, 1, '2019-09-24 03:43:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-24 03:43:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=166', 0, 'post_product', '', 0),
(167, 1, '2019-09-24 03:56:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-24 03:56:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?page_id=167', 0, 'page', '', 0),
(168, 1, '2019-09-24 06:34:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-24 06:34:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?post_type=post_product&p=168', 0, 'post_product', '', 0),
(169, 1, '2019-09-24 06:35:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2019-09-24 06:35:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/Lucioshop/?page_id=169', 0, 'page', '', 0),
(170, 1, '2019-09-24 08:51:59', '2019-09-24 08:51:59', '', 'fb1', '', 'publish', 'closed', 'closed', '', 'fb1', '', '', '2019-09-24 08:51:59', '2019-09-24 08:51:59', '', 0, 'http://localhost/Lucioshop/?post_type=post_feedback&#038;p=170', 0, 'post_feedback', '', 0),
(171, 1, '2019-09-24 08:51:55', '2019-09-24 08:51:55', '', '1', '', 'inherit', 'open', 'closed', '', '1-8', '', '', '2019-09-24 08:51:55', '2019-09-24 08:51:55', '', 170, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(172, 1, '2019-09-24 08:51:59', '2019-09-24 08:51:59', '', 'fb1', '', 'inherit', 'closed', 'closed', '', '170-revision-v1', '', '', '2019-09-24 08:51:59', '2019-09-24 08:51:59', '', 170, 'http://localhost/Lucioshop/2019/09/24/170-revision-v1/', 0, 'revision', '', 0),
(173, 1, '2019-09-24 08:52:15', '2019-09-24 08:52:15', '', 'fb2', '', 'publish', 'closed', 'closed', '', 'fb2', '', '', '2019-09-24 08:52:15', '2019-09-24 08:52:15', '', 0, 'http://localhost/Lucioshop/?post_type=post_feedback&#038;p=173', 0, 'post_feedback', '', 0),
(174, 1, '2019-09-24 08:52:13', '2019-09-24 08:52:13', '', '2', '', 'inherit', 'open', 'closed', '', '2-10', '', '', '2019-09-24 08:52:13', '2019-09-24 08:52:13', '', 173, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/2-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(175, 1, '2019-09-24 08:52:15', '2019-09-24 08:52:15', '', 'fb2', '', 'inherit', 'closed', 'closed', '', '173-revision-v1', '', '', '2019-09-24 08:52:15', '2019-09-24 08:52:15', '', 173, 'http://localhost/Lucioshop/2019/09/24/173-revision-v1/', 0, 'revision', '', 0),
(176, 1, '2019-09-24 08:52:31', '2019-09-24 08:52:31', '', 'fb3', '', 'publish', 'closed', 'closed', '', 'fb3', '', '', '2019-09-24 08:52:31', '2019-09-24 08:52:31', '', 0, 'http://localhost/Lucioshop/?post_type=post_feedback&#038;p=176', 0, 'post_feedback', '', 0),
(177, 1, '2019-09-24 08:52:28', '2019-09-24 08:52:28', '', '3', '', 'inherit', 'open', 'closed', '', '3-10', '', '', '2019-09-24 08:52:28', '2019-09-24 08:52:28', '', 176, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/3-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(178, 1, '2019-09-24 08:52:31', '2019-09-24 08:52:31', '', 'fb3', '', 'inherit', 'closed', 'closed', '', '176-revision-v1', '', '', '2019-09-24 08:52:31', '2019-09-24 08:52:31', '', 176, 'http://localhost/Lucioshop/2019/09/24/176-revision-v1/', 0, 'revision', '', 0),
(179, 1, '2019-09-24 08:52:42', '2019-09-24 08:52:42', '', 'fb4', '', 'publish', 'closed', 'closed', '', 'fb4', '', '', '2019-09-24 08:52:42', '2019-09-24 08:52:42', '', 0, 'http://localhost/Lucioshop/?post_type=post_feedback&#038;p=179', 0, 'post_feedback', '', 0),
(180, 1, '2019-09-24 08:52:39', '2019-09-24 08:52:39', '', '4', '', 'inherit', 'open', 'closed', '', '4-10', '', '', '2019-09-24 08:52:39', '2019-09-24 08:52:39', '', 179, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/4-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(181, 1, '2019-09-24 08:52:42', '2019-09-24 08:52:42', '', 'fb4', '', 'inherit', 'closed', 'closed', '', '179-revision-v1', '', '', '2019-09-24 08:52:42', '2019-09-24 08:52:42', '', 179, 'http://localhost/Lucioshop/2019/09/24/179-revision-v1/', 0, 'revision', '', 0),
(182, 1, '2019-09-24 08:52:59', '2019-09-24 08:52:59', '', 'fb5', '', 'publish', 'closed', 'closed', '', 'fb5', '', '', '2019-09-24 08:52:59', '2019-09-24 08:52:59', '', 0, 'http://localhost/Lucioshop/?post_type=post_feedback&#038;p=182', 0, 'post_feedback', '', 0),
(183, 1, '2019-09-24 08:52:56', '2019-09-24 08:52:56', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2019-09-24 08:52:56', '2019-09-24 08:52:56', '', 182, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(184, 1, '2019-09-24 08:52:59', '2019-09-24 08:52:59', '', 'fb5', '', 'inherit', 'closed', 'closed', '', '182-revision-v1', '', '', '2019-09-24 08:52:59', '2019-09-24 08:52:59', '', 182, 'http://localhost/Lucioshop/2019/09/24/182-revision-v1/', 0, 'revision', '', 0),
(185, 1, '2019-09-24 08:55:52', '2019-09-24 08:55:52', '', 'fb6', '', 'publish', 'closed', 'closed', '', 'fb6', '', '', '2019-09-24 08:55:52', '2019-09-24 08:55:52', '', 0, 'http://localhost/Lucioshop/?post_type=post_feedback&#038;p=185', 0, 'post_feedback', '', 0),
(186, 1, '2019-09-24 08:53:09', '2019-09-24 08:53:09', '', '6', '', 'inherit', 'open', 'closed', '', '6-4', '', '', '2019-09-24 08:53:09', '2019-09-24 08:53:09', '', 185, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/6-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(187, 1, '2019-09-24 08:55:52', '2019-09-24 08:55:52', '', 'fb6', '', 'inherit', 'closed', 'closed', '', '185-revision-v1', '', '', '2019-09-24 08:55:52', '2019-09-24 08:55:52', '', 185, 'http://localhost/Lucioshop/2019/09/24/185-revision-v1/', 0, 'revision', '', 0),
(188, 1, '2019-09-24 08:56:07', '2019-09-24 08:56:07', '', 'fb7', '', 'publish', 'closed', 'closed', '', 'fb7', '', '', '2019-09-24 08:56:07', '2019-09-24 08:56:07', '', 0, 'http://localhost/Lucioshop/?post_type=post_feedback&#038;p=188', 0, 'post_feedback', '', 0),
(189, 1, '2019-09-24 08:56:04', '2019-09-24 08:56:04', '', '7', '', 'inherit', 'open', 'closed', '', '7-4', '', '', '2019-09-24 08:56:04', '2019-09-24 08:56:04', '', 188, 'http://localhost/Lucioshop/wp-content/uploads/2019/09/7.png', 0, 'attachment', 'image/png', 0),
(190, 1, '2019-09-24 08:56:07', '2019-09-24 08:56:07', '', 'fb7', '', 'inherit', 'closed', 'closed', '', '188-revision-v1', '', '', '2019-09-24 08:56:07', '2019-09-24 08:56:07', '', 188, 'http://localhost/Lucioshop/2019/09/24/188-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Áo Thun', 'ao-thun', 0),
(2, 'Menu header', 'menu-header', 0),
(7, 'M', 'm', 0),
(8, 'S', 's', 0),
(9, 'L', 'l', 0),
(10, 'XL', 'xl', 0),
(11, 'XXL', 'xxl', 0),
(12, 'Màu đen', 'den', 0),
(13, 'Màu Trắng', 'trang', 0),
(14, 'Màu Hồng', 'hong', 0),
(15, 'Màu Vàng', 'vang', 0),
(16, 'XXXL', 'xxxl', 0),
(17, 'Quần Jeans', 'quan-jeans', 0),
(18, 'Áo khoác', 'ao-khoac', 0),
(19, 'Quần Jogger', 'quan-jogger', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(5, 2, 0),
(6, 2, 0),
(20, 1, 0),
(20, 7, 0),
(20, 8, 0),
(20, 9, 0),
(20, 10, 0),
(20, 11, 0),
(20, 12, 0),
(20, 13, 0),
(20, 14, 0),
(20, 15, 0),
(63, 1, 0),
(63, 7, 0),
(63, 8, 0),
(63, 9, 0),
(63, 10, 0),
(63, 11, 0),
(63, 12, 0),
(70, 7, 0),
(70, 8, 0),
(70, 9, 0),
(70, 10, 0),
(70, 12, 0),
(70, 13, 0),
(70, 14, 0),
(70, 19, 0),
(99, 7, 0),
(99, 8, 0),
(99, 9, 0),
(99, 10, 0),
(99, 12, 0),
(99, 13, 0),
(99, 14, 0),
(99, 18, 0),
(113, 7, 0),
(113, 8, 0),
(113, 9, 0),
(113, 10, 0),
(113, 11, 0),
(113, 12, 0),
(113, 13, 0),
(113, 14, 0),
(113, 15, 0),
(113, 17, 0),
(119, 7, 0),
(119, 8, 0),
(119, 9, 0),
(119, 10, 0),
(119, 12, 0),
(119, 13, 0),
(119, 14, 0),
(119, 15, 0),
(119, 17, 0),
(128, 7, 0),
(128, 8, 0),
(128, 9, 0),
(128, 10, 0),
(128, 11, 0),
(128, 13, 0),
(128, 17, 0),
(131, 7, 0),
(131, 8, 0),
(131, 9, 0),
(131, 10, 0),
(131, 15, 0),
(131, 17, 0),
(139, 1, 0),
(139, 7, 0),
(139, 8, 0),
(139, 9, 0),
(139, 10, 0),
(139, 12, 0),
(144, 1, 0),
(144, 7, 0),
(144, 8, 0),
(144, 9, 0),
(144, 10, 0),
(144, 12, 0),
(148, 7, 0),
(148, 8, 0),
(148, 9, 0),
(148, 10, 0),
(148, 12, 0),
(148, 18, 0),
(153, 7, 0),
(153, 8, 0),
(153, 9, 0),
(153, 10, 0),
(153, 11, 0),
(153, 12, 0),
(153, 13, 0),
(153, 14, 0),
(153, 18, 0),
(155, 7, 0),
(155, 8, 0),
(155, 9, 0),
(155, 10, 0),
(155, 12, 0),
(155, 13, 0),
(155, 14, 0),
(155, 15, 0),
(155, 18, 0),
(158, 1, 0),
(158, 7, 0),
(158, 8, 0),
(158, 9, 0),
(158, 10, 0),
(158, 11, 0),
(158, 12, 0),
(158, 13, 0),
(158, 14, 0),
(158, 15, 0),
(163, 2, 0),
(164, 2, 0),
(165, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 4),
(2, 2, 'nav_menu', '', 0, 5),
(7, 7, 'size', 'Size M', 0, 10),
(8, 8, 'size', 'Size S', 0, 10),
(9, 9, 'size', 'Size L', 0, 10),
(10, 10, 'size', 'Size XL', 0, 10),
(11, 11, 'size', 'Size XXL', 0, 4),
(12, 12, 'color', '#000', 0, 8),
(13, 13, 'color', '#fff', 0, 6),
(14, 14, 'color', '#FF00FF', 0, 5),
(15, 15, 'color', '#FFFF00', 0, 5),
(16, 16, 'size', '', 0, 0),
(17, 17, 'category', '', 0, 4),
(18, 18, 'category', '', 0, 3),
(19, 19, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"160f5f258af073e6777dbe43f9c8cc1839df4aa661090f3e9141fe905de71201\";a:4:{s:10:\"expiration\";i:1570154049;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.132 Safari/537.36\";s:5:\"login\";i:1568944449;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'edit_post_color_per_page', '20'),
(22, 1, 'wp_user-settings', 'posts_list_mode=list&libraryContent=browse&editor_expand=on'),
(23, 1, 'wp_user-settings-time', '1569289016'),
(24, 1, 'closedpostboxes_post_product', 'a:0:{}'),
(25, 1, 'metaboxhidden_post_product', 'a:3:{i:0;s:16:\"tagsdiv-post_tag\";i:1;s:10:\"postcustom\";i:2;s:7:\"slugdiv\";}'),
(26, 1, 'closedpostboxes_dashboard', 'a:2:{i:0;s:18:\"dashboard_activity\";i:1;s:17:\"dashboard_primary\";}'),
(27, 1, 'metaboxhidden_dashboard', 'a:4:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:21:\"dashboard_quick_press\";i:3;s:17:\"dashboard_primary\";}'),
(28, 1, 'meta-box-order_post_product', 'a:3:{s:4:\"side\";s:68:\"submitdiv,categorydiv,tagsdiv-post_tag,sizediv,colordiv,postimagediv\";s:6:\"normal\";s:99:\"gallery-metabox,postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(29, 1, 'screen_layout_post_product', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BHCZ1Lz6G6SBtGDx7nDDEBGe2uloCq0', 'admin', 'duynn250390@gmail.com', '', '2019-09-20 01:54:01', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
