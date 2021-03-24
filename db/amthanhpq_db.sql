-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2021 at 01:23 PM
-- Server version: 5.6.45
-- PHP Version: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `amthanhpq_db`
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2021-03-15 03:48:38', '2021-03-15 03:48:38', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

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
(1, 'siteurl', 'http://amthanhphuquoc.com/', 'yes'),
(2, 'home', 'http://amthanhphuquoc.com/', 'yes'),
(3, 'blogname', 'Am Thanh Anh Sang', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'vuhoangnguyen49@gmail.com', 'yes'),
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
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:93:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:1:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'amthanh-anhsang', 'yes'),
(41, 'stylesheet', 'amthanh-anhsang', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '49752', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '1', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:0:{}', 'yes'),
(78, 'widget_rss', 'a:0:{}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1631332104', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'initial_db_version', '49752', 'yes'),
(99, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(100, 'fresh_site', '0', 'yes'),
(101, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(107, 'cron', 'a:7:{i:1616590123;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1616600923;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1616644121;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616644137;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1616644140;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1617076121;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'recovery_keys', 'a:0:{}', 'yes'),
(119, 'https_detection_errors', 'a:2:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:24:\"SSL verification failed.\";}s:19:\"bad_response_source\";a:1:{i:0;s:55:\"It looks like the response did not come from this site.\";}}', 'yes'),
(120, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.7.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.7-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.7-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.7\";s:7:\"version\";s:3:\"5.7\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.6\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1616574048;s:15:\"version_checked\";s:3:\"5.7\";s:12:\"translations\";a:0:{}}', 'no'),
(121, 'theme_mods_twentytwentyone', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616241241;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}}', 'yes'),
(126, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616574049;s:7:\"checked\";a:2:{s:15:\"amthanh-anhsang\";s:0:\"\";s:15:\"twentytwentyone\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:1:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.2.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(147, 'finished_updating_comment_type', '1', 'yes'),
(148, 'current_theme', '', 'yes'),
(149, 'theme_mods_amthanh-anhsang', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:8:\"main-nav\";i:5;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1616240245;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(150, 'theme_switched', '', 'yes'),
(151, 'recently_activated', 'a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1616218949;}', 'yes'),
(152, 'acf_version', '5.8.9', 'yes'),
(155, 'cptui_new_install', 'false', 'yes'),
(166, '_transient_health-check-site-status-result', '{\"good\":15,\"recommended\":4,\"critical\":1}', 'yes'),
(188, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(236, 'category_children', 'a:0:{}', 'yes'),
(241, 'recovery_mode_email_last_sent', '1616331839', 'yes'),
(248, '_transient_timeout_acf_plugin_updates', '1616727114', 'no'),
(249, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";}}', 'no'),
(253, '_site_transient_timeout_php_check_aadacc046d972fe89114cd3eaab035a8', '1617159120', 'no'),
(254, '_site_transient_php_check_aadacc046d972fe89114cd3eaab035a8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(257, '_site_transient_timeout_theme_roots', '1616575849', 'no'),
(258, '_site_transient_theme_roots', 'a:2:{s:15:\"amthanh-anhsang\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";}', 'no'),
(259, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1616574050;s:7:\"checked\";a:3:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.8.9\";s:19:\"akismet/akismet.php\";s:5:\"4.1.9\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.9.5\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:3:\"5.6\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.9\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

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
(68, 16, '_edit_lock', '1616053530:1'),
(69, 17, '_edit_lock', '1615651163:1'),
(70, 17, '_wp_page_template', 'category-news.php'),
(80, 20, '_edit_lock', '1616054735:1'),
(85, 24, '_edit_lock', '1615651769:1'),
(86, 24, '_wp_page_template', 'page-about.php'),
(102, 33, '_wp_attached_file', '2021/03/Astroworld-3.jpg'),
(103, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:24:\"2021/03/Astroworld-3.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Astroworld-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Astroworld-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(104, 34, '_wp_attached_file', '2021/03/Calltomind-1.jpg'),
(105, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:24:\"2021/03/Calltomind-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Calltomind-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Calltomind-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(106, 35, '_wp_attached_file', '2021/03/citylife.jpg'),
(107, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:20:\"2021/03/citylife.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"citylife-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"citylife-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(108, 36, '_wp_attached_file', '2021/03/empirestate.jpg'),
(109, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:23:\"2021/03/empirestate.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"empirestate-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"empirestate-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(110, 37, '_wp_attached_file', '2021/03/spacetrap2.jpg'),
(111, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:22:\"2021/03/spacetrap2.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"spacetrap2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"spacetrap2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(112, 38, '_wp_attached_file', '2021/03/Submissione.jpg'),
(113, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:650;s:6:\"height\";i:650;s:4:\"file\";s:23:\"2021/03/Submissione.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Submissione-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Submissione-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(114, 39, '_wp_attached_file', '2021/03/news2.jpg'),
(115, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2021/03/news2.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news2-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"news2-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"news2-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"news2-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(116, 40, '_wp_attached_file', '2021/03/news2-1024x640-1.jpg'),
(117, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:640;s:4:\"file\";s:28:\"2021/03/news2-1024x640-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"news2-1024x640-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"news2-1024x640-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"news2-1024x640-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 41, '_wp_attached_file', '2021/03/news3.jpg'),
(119, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2021/03/news3.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news3-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"news3-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"news3-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"news3-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(120, 42, '_wp_attached_file', '2021/03/news3-1024x640-1.jpg'),
(121, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:640;s:4:\"file\";s:28:\"2021/03/news3-1024x640-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"news3-1024x640-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"news3-1024x640-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"news3-1024x640-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(122, 43, '_wp_attached_file', '2021/03/news4.jpg'),
(123, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2021/03/news4.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news4-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"news4-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"news4-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"news4-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(124, 44, '_wp_attached_file', '2021/03/news4-1024x640-1.jpg'),
(125, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:640;s:4:\"file\";s:28:\"2021/03/news4-1024x640-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"news4-1024x640-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"news4-1024x640-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"news4-1024x640-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(126, 45, '_wp_attached_file', '2021/03/news7.jpg'),
(127, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:17:\"2021/03/news7.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"news7-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:18:\"news7-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"news7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:17:\"news7-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:18:\"news7-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(128, 46, '_wp_attached_file', '2021/03/news7-1024x640-1.jpg'),
(129, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:640;s:4:\"file\";s:28:\"2021/03/news7-1024x640-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"news7-1024x640-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"news7-1024x640-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"news7-1024x640-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(130, 47, '_wp_attached_file', '2021/03/newsbg.jpg'),
(131, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:1200;s:4:\"file\";s:18:\"2021/03/newsbg.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"newsbg-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"newsbg-1024x640.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:640;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"newsbg-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"newsbg-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:19:\"newsbg-1536x960.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:960;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 48, '_wp_attached_file', '2021/03/newsbg-1024x640-1.jpg'),
(133, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:640;s:4:\"file\";s:29:\"2021/03/newsbg-1024x640-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"newsbg-1024x640-1-300x188.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:188;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"newsbg-1024x640-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"newsbg-1024x640-1-768x480.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 49, '_edit_lock', '1616296595:1'),
(137, 49, '_thumbnail_id', '35'),
(138, 51, '_edit_lock', '1616296516:1'),
(139, 1, '_wp_trash_meta_status', 'publish'),
(140, 1, '_wp_trash_meta_time', '1616210667'),
(141, 1, '_wp_desired_post_slug', 'hello-world'),
(142, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(145, 51, '_thumbnail_id', '38'),
(146, 49, '_edit_last', '1'),
(147, 57, '_edit_lock', '1616296505:1'),
(150, 57, '_thumbnail_id', '37'),
(153, 57, '_edit_last', '1'),
(154, 57, 'detail_name', 'Work Hard'),
(155, 57, '_detail_name', 'field_60558d40bf40f'),
(156, 57, 'detail_content', 'aaa'),
(157, 57, '_detail_content', 'field_60558d50bf410'),
(158, 72, 'detail_name', 'Work Hard'),
(159, 72, '_detail_name', 'field_605581a9d6758'),
(160, 72, 'detail_content', 'Mixed by NGuyen'),
(161, 72, '_detail_content', 'field_605581bcd6759'),
(162, 49, 'detail_name', 'a'),
(163, 49, '_detail_name', 'field_605581a9d6758'),
(164, 49, 'detail_content', 'b'),
(165, 49, '_detail_content', 'field_605581bcd6759'),
(166, 73, 'detail_name', 'a'),
(167, 73, '_detail_name', 'field_605581a9d6758'),
(168, 73, 'detail_content', 'b'),
(169, 73, '_detail_content', 'field_605581bcd6759'),
(182, 74, '_edit_last', '1'),
(183, 74, '_edit_lock', '1616296409:1'),
(184, 82, 'detail_name', 'Work Hard'),
(185, 82, '_detail_name', 'field_60558caf8678a'),
(186, 82, 'detail_content', 'Mixed by NGuyen'),
(187, 82, '_detail_content', 'field_60558cb98678b'),
(188, 87, 'detail_name', 'Work Hard'),
(189, 87, '_detail_name', 'field_60558d40bf40f'),
(190, 87, 'detail_content', 'Mixed by Nguyen'),
(191, 87, '_detail_content', 'field_60558d50bf410'),
(192, 88, 'detail_name', 'Work Hard'),
(193, 88, '_detail_name', 'field_60558d40bf40f'),
(194, 88, 'detail_content', 'aaa'),
(195, 88, '_detail_content', 'field_60558d50bf410'),
(196, 51, '_edit_last', '1'),
(197, 51, 'detail_name', 'a'),
(198, 51, '_detail_name', 'field_60558d40bf40f'),
(199, 51, 'detail_content', 'b'),
(200, 51, '_detail_content', 'field_60558d50bf410'),
(201, 89, 'detail_name', 'a'),
(202, 89, '_detail_name', 'field_60558d40bf40f'),
(203, 89, 'detail_content', 'b'),
(204, 89, '_detail_content', 'field_60558d50bf410'),
(216, 98, '_edit_last', '1'),
(217, 98, '_edit_lock', '1616240488:1'),
(218, 98, '_wp_trash_meta_status', 'publish'),
(219, 98, '_wp_trash_meta_time', '1616241151'),
(220, 98, '_wp_desired_post_slug', 'group_6055df358e42a'),
(221, 99, '_wp_trash_meta_status', 'publish'),
(222, 99, '_wp_trash_meta_time', '1616241151'),
(223, 99, '_wp_desired_post_slug', 'field_60561a467c588'),
(224, 100, '_wp_trash_meta_status', 'publish'),
(225, 100, '_wp_trash_meta_time', '1616241151'),
(226, 100, '_wp_desired_post_slug', 'field_60561a5c7c589'),
(227, 101, '_edit_last', '1'),
(228, 101, '_edit_lock', '1616241056:1'),
(229, 101, '_wp_trash_meta_status', 'publish'),
(230, 101, '_wp_trash_meta_time', '1616241202'),
(231, 101, '_wp_desired_post_slug', 'group_6055e20216100'),
(232, 102, '_wp_trash_meta_status', 'publish'),
(233, 102, '_wp_trash_meta_time', '1616241202'),
(234, 102, '_wp_desired_post_slug', 'field_60561d1023482'),
(235, 57, 'detail_0_detail_name', 'Work Hard'),
(236, 57, '_detail_0_detail_name', 'field_60561d47020dc'),
(237, 57, 'detail_0_detail_content', 'Mixed by NGuyen'),
(238, 57, '_detail_0_detail_content', 'field_60561d4e020dd'),
(239, 57, 'detail', '3'),
(240, 57, '_detail', 'field_60558bb405efa'),
(241, 106, 'detail_name', 'Work Hard'),
(242, 106, '_detail_name', 'field_60558d40bf40f'),
(243, 106, 'detail_content', 'aaa'),
(244, 106, '_detail_content', 'field_60558d50bf410'),
(245, 106, 'detail_0_detail_name', 'Work Hard'),
(246, 106, '_detail_0_detail_name', 'field_60561d47020dc'),
(247, 106, 'detail_0_detail_content', 'Mixed by NGuyen'),
(248, 106, '_detail_0_detail_content', 'field_60561d4e020dd'),
(249, 106, 'detail', '1'),
(250, 106, '_detail', 'field_60558bb405efa'),
(251, 57, 'detail_1_detail_name', 'Play Hard'),
(252, 57, '_detail_1_detail_name', 'field_60561d47020dc'),
(253, 57, 'detail_1_detail_content', 'Mixed by VU'),
(254, 57, '_detail_1_detail_content', 'field_60561d4e020dd'),
(255, 107, 'detail_name', 'Work Hard'),
(256, 107, '_detail_name', 'field_60558d40bf40f'),
(257, 107, 'detail_content', 'aaa'),
(258, 107, '_detail_content', 'field_60558d50bf410'),
(259, 107, 'detail_0_detail_name', 'Work Hard'),
(260, 107, '_detail_0_detail_name', 'field_60561d47020dc'),
(261, 107, 'detail_0_detail_content', 'Mixed by NGuyen'),
(262, 107, '_detail_0_detail_content', 'field_60561d4e020dd'),
(263, 107, 'detail', '2'),
(264, 107, '_detail', 'field_60558bb405efa'),
(265, 107, 'detail_1_detail_name', 'Play Hard'),
(266, 107, '_detail_1_detail_name', 'field_60561d47020dc'),
(267, 107, 'detail_1_detail_content', 'Mixed by VU'),
(268, 107, '_detail_1_detail_content', 'field_60561d4e020dd'),
(269, 57, 'detail_2_detail_name', 'Test'),
(270, 57, '_detail_2_detail_name', 'field_60561d47020dc'),
(271, 57, 'detail_2_detail_content', 'Test'),
(272, 57, '_detail_2_detail_content', 'field_60561d4e020dd'),
(273, 108, 'detail_name', 'Work Hard'),
(274, 108, '_detail_name', 'field_60558d40bf40f'),
(275, 108, 'detail_content', 'aaa'),
(276, 108, '_detail_content', 'field_60558d50bf410'),
(277, 108, 'detail_0_detail_name', 'Work Hard'),
(278, 108, '_detail_0_detail_name', 'field_60561d47020dc'),
(279, 108, 'detail_0_detail_content', 'Mixed by NGuyen'),
(280, 108, '_detail_0_detail_content', 'field_60561d4e020dd'),
(281, 108, 'detail', '3'),
(282, 108, '_detail', 'field_60558bb405efa'),
(283, 108, 'detail_1_detail_name', 'Play Hard'),
(284, 108, '_detail_1_detail_name', 'field_60561d47020dc'),
(285, 108, 'detail_1_detail_content', 'Mixed by VU'),
(286, 108, '_detail_1_detail_content', 'field_60561d4e020dd'),
(287, 108, 'detail_2_detail_name', 'Test'),
(288, 108, '_detail_2_detail_name', 'field_60561d47020dc'),
(289, 108, 'detail_2_detail_content', 'Test'),
(290, 108, '_detail_2_detail_content', 'field_60561d4e020dd'),
(291, 51, 'detail_0_detail_name', 'Test'),
(292, 51, '_detail_0_detail_name', 'field_60561d47020dc'),
(293, 51, 'detail_0_detail_content', 'Test'),
(294, 51, '_detail_0_detail_content', 'field_60561d4e020dd'),
(295, 51, 'detail_1_detail_name', 'Test'),
(296, 51, '_detail_1_detail_name', 'field_60561d47020dc'),
(297, 51, 'detail_1_detail_content', 'Test'),
(298, 51, '_detail_1_detail_content', 'field_60561d4e020dd'),
(299, 51, 'detail_2_detail_name', 'Test'),
(300, 51, '_detail_2_detail_name', 'field_60561d47020dc'),
(301, 51, 'detail_2_detail_content', 'Test'),
(302, 51, '_detail_2_detail_content', 'field_60561d4e020dd'),
(303, 51, 'detail', '3'),
(304, 51, '_detail', 'field_60558bb405efa'),
(305, 109, 'detail_name', 'a'),
(306, 109, '_detail_name', 'field_60558d40bf40f'),
(307, 109, 'detail_content', 'b'),
(308, 109, '_detail_content', 'field_60558d50bf410'),
(309, 109, 'detail_0_detail_name', 'Test'),
(310, 109, '_detail_0_detail_name', 'field_60561d47020dc'),
(311, 109, 'detail_0_detail_content', 'Test'),
(312, 109, '_detail_0_detail_content', 'field_60561d4e020dd'),
(313, 109, 'detail_1_detail_name', 'Test'),
(314, 109, '_detail_1_detail_name', 'field_60561d47020dc'),
(315, 109, 'detail_1_detail_content', 'Test'),
(316, 109, '_detail_1_detail_content', 'field_60561d4e020dd'),
(317, 109, 'detail_2_detail_name', 'Test'),
(318, 109, '_detail_2_detail_name', 'field_60561d47020dc'),
(319, 109, 'detail_2_detail_content', 'Test'),
(320, 109, '_detail_2_detail_content', 'field_60561d4e020dd'),
(321, 109, 'detail', '3'),
(322, 109, '_detail', 'field_60558bb405efa'),
(323, 49, 'detail_0_detail_name', 'Test'),
(324, 49, '_detail_0_detail_name', 'field_60561d47020dc'),
(325, 49, 'detail_0_detail_content', 'Test'),
(326, 49, '_detail_0_detail_content', 'field_60561d4e020dd'),
(327, 49, 'detail_1_detail_name', 'Test'),
(328, 49, '_detail_1_detail_name', 'field_60561d47020dc'),
(329, 49, 'detail_1_detail_content', 'Test'),
(330, 49, '_detail_1_detail_content', 'field_60561d4e020dd'),
(331, 49, 'detail_2_detail_name', 'Test'),
(332, 49, '_detail_2_detail_name', 'field_60561d47020dc'),
(333, 49, 'detail_2_detail_content', 'Test'),
(334, 49, '_detail_2_detail_content', 'field_60561d4e020dd'),
(335, 49, 'detail', '3'),
(336, 49, '_detail', 'field_60558bb405efa'),
(337, 110, 'detail_name', 'a'),
(338, 110, '_detail_name', 'field_605581a9d6758'),
(339, 110, 'detail_content', 'b'),
(340, 110, '_detail_content', 'field_605581bcd6759'),
(341, 110, 'detail_0_detail_name', 'Test'),
(342, 110, '_detail_0_detail_name', 'field_60561d47020dc'),
(343, 110, 'detail_0_detail_content', 'Test'),
(344, 110, '_detail_0_detail_content', 'field_60561d4e020dd'),
(345, 110, 'detail_1_detail_name', 'Test'),
(346, 110, '_detail_1_detail_name', 'field_60561d47020dc'),
(347, 110, 'detail_1_detail_content', 'Test'),
(348, 110, '_detail_1_detail_content', 'field_60561d4e020dd'),
(349, 110, 'detail_2_detail_name', 'Test'),
(350, 110, '_detail_2_detail_name', 'field_60561d47020dc'),
(351, 110, 'detail_2_detail_content', 'Test'),
(352, 110, '_detail_2_detail_content', 'field_60561d4e020dd'),
(353, 110, 'detail', '3'),
(354, 110, '_detail', 'field_60558bb405efa'),
(369, 112, '_edit_last', '1'),
(370, 112, '_edit_lock', '1616298057:1'),
(371, 112, '_wp_trash_meta_status', 'publish'),
(372, 112, '_wp_trash_meta_time', '1616298206'),
(373, 112, '_wp_desired_post_slug', 'group_6056c0b71a0ee'),
(374, 113, '_wp_trash_meta_status', 'publish'),
(375, 113, '_wp_trash_meta_time', '1616298206'),
(376, 113, '_wp_desired_post_slug', 'field_6056c0b786ed2'),
(377, 114, '_edit_lock', '1616328847:1'),
(380, 114, '_thumbnail_id', '42'),
(381, 117, '_edit_lock', '1616332446:1'),
(384, 117, '_thumbnail_id', '48'),
(385, 128, '_edit_lock', '1616330983:1'),
(388, 128, '_thumbnail_id', '46'),
(389, 130, '_edit_lock', '1616330985:1'),
(392, 130, '_thumbnail_id', '44'),
(399, 141, '_edit_lock', '1615651777:1'),
(400, 141, '_wp_page_template', 'page-contact.php'),
(419, 145, '_menu_item_type', 'custom'),
(420, 145, '_menu_item_menu_item_parent', '0'),
(421, 145, '_menu_item_object_id', '145'),
(422, 145, '_menu_item_object', 'custom'),
(423, 145, '_menu_item_target', ''),
(424, 145, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(425, 145, '_menu_item_xfn', ''),
(426, 145, '_menu_item_url', 'http://amthanhphuquoc.com/'),
(428, 146, '_menu_item_type', 'custom'),
(429, 146, '_menu_item_menu_item_parent', '0'),
(430, 146, '_menu_item_object_id', '146'),
(431, 146, '_menu_item_object', 'custom'),
(432, 146, '_menu_item_target', '_blank'),
(433, 146, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(434, 146, '_menu_item_xfn', ''),
(435, 146, '_menu_item_url', 'http://sukienphuquoc.com/en/home/'),
(437, 147, '_menu_item_type', 'custom'),
(438, 147, '_menu_item_menu_item_parent', '0'),
(439, 147, '_menu_item_object_id', '147'),
(440, 147, '_menu_item_object', 'custom'),
(441, 147, '_menu_item_target', '_blank'),
(442, 147, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(443, 147, '_menu_item_xfn', ''),
(444, 147, '_menu_item_url', 'http://manhinhledphuquoc.com/'),
(446, 148, '_menu_item_type', 'post_type'),
(447, 148, '_menu_item_menu_item_parent', '0'),
(448, 148, '_menu_item_object_id', '17'),
(449, 148, '_menu_item_object', 'page'),
(450, 148, '_menu_item_target', ''),
(451, 148, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(452, 148, '_menu_item_xfn', ''),
(453, 148, '_menu_item_url', ''),
(455, 149, '_menu_item_type', 'post_type'),
(456, 149, '_menu_item_menu_item_parent', '0'),
(457, 149, '_menu_item_object_id', '24'),
(458, 149, '_menu_item_object', 'page'),
(459, 149, '_menu_item_target', ''),
(460, 149, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(461, 149, '_menu_item_xfn', ''),
(462, 149, '_menu_item_url', ''),
(464, 150, '_menu_item_type', 'post_type'),
(465, 150, '_menu_item_menu_item_parent', '0'),
(466, 150, '_menu_item_object_id', '141'),
(467, 150, '_menu_item_object', 'page'),
(468, 150, '_menu_item_target', ''),
(469, 150, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(470, 150, '_menu_item_xfn', ''),
(471, 150, '_menu_item_url', '');

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
(1, 1, '2021-03-15 03:48:38', '2021-03-15 03:48:38', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2021-03-20 03:24:27', '2021-03-20 03:24:27', '', 0, 'http://amthanh-anhsang.local/?p=1', 0, 'post', '', 1),
(16, 1, '2021-03-18 07:47:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-18 07:47:50', '0000-00-00 00:00:00', '', 0, 'http://amthanh-anhsang.local/?page_id=16', 0, 'page', '', 0),
(17, 1, '2021-03-18 07:48:30', '2021-03-18 07:48:30', '', 'Tin Tức', '', 'publish', 'closed', 'closed', '', 'tin-tuc', '', '', '2021-03-21 04:05:22', '2021-03-21 04:05:22', '', 0, 'http://amthanh-anhsang.local/?page_id=17', 1, 'page', '', 0),
(18, 1, '2021-03-18 07:48:30', '2021-03-18 07:48:30', '', 'News', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-18 07:48:30', '2021-03-18 07:48:30', '', 17, 'http://amthanh-anhsang.local/?p=18', 0, 'revision', '', 0),
(20, 1, '2021-03-18 08:07:57', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2021-03-18 08:07:57', '0000-00-00 00:00:00', '', 0, 'http://amthanh-anhsang.local/?page_id=20', 0, 'page', '', 0),
(23, 1, '2021-03-18 08:14:22', '2021-03-18 08:14:22', '', 'Tin Tức', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2021-03-18 08:14:22', '2021-03-18 08:14:22', '', 17, 'http://amthanh-anhsang.local/?p=23', 0, 'revision', '', 0),
(24, 1, '2021-03-18 08:14:52', '2021-03-18 08:14:52', '<div class=\"elementor-section-wrap\">\n<section class=\"elementor-section elementor-top-section elementor-element elementor-element-6cc422ad elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"6cc422ad\" data-element_type=\"section\">\n<div class=\"elementor-container elementor-column-gap-default\">\n<div class=\"elementor-row\">\n<div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-63b5dc7b\" data-id=\"63b5dc7b\" data-element_type=\"column\">\n<div class=\"elementor-column-wrap elementor-element-populated\">\n<div class=\"elementor-widget-wrap\">\n<div class=\"elementor-element elementor-element-1251a309 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"1251a309\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2000}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<h1 class=\"elementor-heading-title elementor-size-xxl\">VEX</h1>\n<p></p>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-1ca656e8 animated-fast  elementor-widget elementor-widget-text-editor\" data-id=\"1ca656e8\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2100}\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sagittis turpis eu orci malesuada tincidunt. Nunc malesuada auctor venenatis. Duis facilisis sed dolor id vestibulum. Nullam dignissim, arcu id faucibus varius, lacus nibh molestie orci, eu tempus ex nulla pellentesque ex. Fusce sit amet metus viverra, sodales est eget, scelerisque urna. Praesent ut lacinia orci. Fusce viverra interdum leo non faucibus. Aenean efficitur urna felis. Phasellus egestas dictum nisi, non laoreet diam aliquam ut. Vivamus molestie tortor ac egestas tincidunt. Aenean faucibus et erat in tristique.</p>\n<p></p>\n</div>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-fffcf3a animated-fast  elementor-widget elementor-widget-text-editor\" data-id=\"fffcf3a\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2200,&quot;_animation_mobile&quot;:&quot;none&quot;}\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit.</p>\n<p></p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section class=\"elementor-section elementor-top-section elementor-element elementor-element-7d482d58 animated-fast elementor-section-boxed elementor-section-height-default elementor-section-height-default \" data-id=\"7d482d58\" data-element_type=\"section\" data-settings=\"{&quot;animation&quot;:&quot;fadeInUp&quot;,&quot;animation_delay&quot;:2300,&quot;animation_mobile&quot;:&quot;none&quot;}\">\n<div class=\"elementor-container elementor-column-gap-default\">\n<div class=\"elementor-row\">\n<div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-5545c18a\" data-id=\"5545c18a\" data-element_type=\"column\">\n<div class=\"elementor-column-wrap elementor-element-populated\">\n<div class=\"elementor-widget-wrap\">\n<div class=\"elementor-element elementor-element-43f2d16e elementor-widget elementor-widget-text-editor\" data-id=\"43f2d16e\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\"></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n</div>\n\n<!-- wp:heading {\"level\":1} -->\n<blockquote>\n                                                      <p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.</p>\n                                                   </blockquote>\n<!-- /wp:heading -->\n\n<p></p>\n<div class=\"elementor-element elementor-element-5a15cf14 elementor-widget elementor-widget-text-editor\" data-id=\"5a15cf14\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<p>\n                                                      <!-- /wp:paragraph --><!-- wp:paragraph -->\n                                                   </p>\n<p></p>\n</div>\n</div>\n</div>', 'Giới thiệu', '', 'publish', 'closed', 'closed', '', 'gioi-thieu', '', '', '2021-03-18 08:40:06', '2021-03-18 08:40:06', '', 0, 'http://amthanh-anhsang.local/?page_id=24', 2, 'page', '', 0),
(25, 1, '2021-03-18 08:14:52', '2021-03-18 08:14:52', '', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-03-18 08:14:52', '2021-03-18 08:14:52', '', 24, 'http://amthanh-anhsang.local/?p=25', 0, 'revision', '', 0),
(27, 1, '2021-03-18 08:23:46', '2021-03-18 08:23:46', '<div class=\"elementor-section-wrap\">\n<section class=\"elementor-section elementor-top-section elementor-element elementor-element-6cc422ad elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"6cc422ad\" data-element_type=\"section\">\n<div class=\"elementor-container elementor-column-gap-default\">\n<div class=\"elementor-row\">\n<div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-63b5dc7b\" data-id=\"63b5dc7b\" data-element_type=\"column\">\n<div class=\"elementor-column-wrap elementor-element-populated\">\n<div class=\"elementor-widget-wrap\">\n<div class=\"elementor-element elementor-element-1251a309 animated-fast elementor-invisible elementor-widget elementor-widget-heading\" data-id=\"1251a309\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2000}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<h1 class=\"elementor-heading-title elementor-size-xxl\">VEX</h1>\n<p></p>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-1ca656e8 animated-fast elementor-invisible elementor-widget elementor-widget-text-editor\" data-id=\"1ca656e8\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2100}\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sagittis turpis eu orci malesuada tincidunt. Nunc malesuada auctor venenatis. Duis facilisis sed dolor id vestibulum. Nullam dignissim, arcu id faucibus varius, lacus nibh molestie orci, eu tempus ex nulla pellentesque ex. Fusce sit amet metus viverra, sodales est eget, scelerisque urna. Praesent ut lacinia orci. Fusce viverra interdum leo non faucibus. Aenean efficitur urna felis. Phasellus egestas dictum nisi, non laoreet diam aliquam ut. Vivamus molestie tortor ac egestas tincidunt. Aenean faucibus et erat in tristique.</p>\n<p></p>\n</div>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-fffcf3a animated-fast elementor-invisible elementor-widget elementor-widget-text-editor\" data-id=\"fffcf3a\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2200,&quot;_animation_mobile&quot;:&quot;none&quot;}\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit.</p>\n<p></p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section class=\"elementor-section elementor-top-section elementor-element elementor-element-7d482d58 animated-fast elementor-section-boxed elementor-section-height-default elementor-section-height-default elementor-invisible\" data-id=\"7d482d58\" data-element_type=\"section\" data-settings=\"{&quot;animation&quot;:&quot;fadeInUp&quot;,&quot;animation_delay&quot;:2300,&quot;animation_mobile&quot;:&quot;none&quot;}\">\n<div class=\"elementor-container elementor-column-gap-default\">\n<div class=\"elementor-row\">\n<div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-5545c18a\" data-id=\"5545c18a\" data-element_type=\"column\">\n<div class=\"elementor-column-wrap elementor-element-populated\">\n<div class=\"elementor-widget-wrap\">\n<div class=\"elementor-element elementor-element-43f2d16e elementor-widget elementor-widget-text-editor\" data-id=\"43f2d16e\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\"></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n</div>\n\n<!-- wp:heading {\"level\":1} -->\n<blockquote>\n                                                      <p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.</p>\n                                                   </blockquote>\n<!-- /wp:heading -->\n\n<p></p>\n<div class=\"elementor-element elementor-element-5a15cf14 elementor-widget elementor-widget-text-editor\" data-id=\"5a15cf14\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<p>\n                                                      <!-- /wp:paragraph --><!-- wp:paragraph -->\n                                                   </p>\n<p></p>\n</div>\n</div>\n</div>', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-03-18 08:23:46', '2021-03-18 08:23:46', '', 24, 'http://amthanh-anhsang.local/?p=27', 0, 'revision', '', 0),
(29, 1, '2021-03-18 08:33:34', '2021-03-18 08:33:34', '<div class=\"elementor-section-wrap\">\n<section class=\"elementor-section elementor-top-section elementor-element elementor-element-6cc422ad elementor-section-boxed elementor-section-height-default elementor-section-height-default\" data-id=\"6cc422ad\" data-element_type=\"section\">\n<div class=\"elementor-container elementor-column-gap-default\">\n<div class=\"elementor-row\">\n<div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-63b5dc7b\" data-id=\"63b5dc7b\" data-element_type=\"column\">\n<div class=\"elementor-column-wrap elementor-element-populated\">\n<div class=\"elementor-widget-wrap\">\n<div class=\"elementor-element elementor-element-1251a309 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"1251a309\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2000}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<h1 class=\"elementor-heading-title elementor-size-xxl\">VEX</h1>\n<p></p>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-1ca656e8 animated-fast  elementor-widget elementor-widget-text-editor\" data-id=\"1ca656e8\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2100}\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur sagittis turpis eu orci malesuada tincidunt. Nunc malesuada auctor venenatis. Duis facilisis sed dolor id vestibulum. Nullam dignissim, arcu id faucibus varius, lacus nibh molestie orci, eu tempus ex nulla pellentesque ex. Fusce sit amet metus viverra, sodales est eget, scelerisque urna. Praesent ut lacinia orci. Fusce viverra interdum leo non faucibus. Aenean efficitur urna felis. Phasellus egestas dictum nisi, non laoreet diam aliquam ut. Vivamus molestie tortor ac egestas tincidunt. Aenean faucibus et erat in tristique.</p>\n<p></p>\n</div>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-fffcf3a animated-fast  elementor-widget elementor-widget-text-editor\" data-id=\"fffcf3a\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;fadeInUp&quot;,&quot;_animation_delay&quot;:2200,&quot;_animation_mobile&quot;:&quot;none&quot;}\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit.</p>\n<p></p>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n<section class=\"elementor-section elementor-top-section elementor-element elementor-element-7d482d58 animated-fast elementor-section-boxed elementor-section-height-default elementor-section-height-default \" data-id=\"7d482d58\" data-element_type=\"section\" data-settings=\"{&quot;animation&quot;:&quot;fadeInUp&quot;,&quot;animation_delay&quot;:2300,&quot;animation_mobile&quot;:&quot;none&quot;}\">\n<div class=\"elementor-container elementor-column-gap-default\">\n<div class=\"elementor-row\">\n<div class=\"elementor-column elementor-col-100 elementor-top-column elementor-element elementor-element-5545c18a\" data-id=\"5545c18a\" data-element_type=\"column\">\n<div class=\"elementor-column-wrap elementor-element-populated\">\n<div class=\"elementor-widget-wrap\">\n<div class=\"elementor-element elementor-element-43f2d16e elementor-widget elementor-widget-text-editor\" data-id=\"43f2d16e\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\"></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</section>\n</div>\n\n<!-- wp:heading {\"level\":1} -->\n<blockquote>\n                                                      <p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.</p>\n                                                   </blockquote>\n<!-- /wp:heading -->\n\n<p></p>\n<div class=\"elementor-element elementor-element-5a15cf14 elementor-widget elementor-widget-text-editor\" data-id=\"5a15cf14\" data-element_type=\"widget\" data-widget_type=\"text-editor.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-text-editor elementor-clearfix\">\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<p>\n                                                      <!-- /wp:paragraph --><!-- wp:paragraph -->\n                                                   </p>\n<p></p>\n</div>\n</div>\n</div>', 'Giới thiệu', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2021-03-18 08:33:34', '2021-03-18 08:33:34', '', 24, 'http://amthanh-anhsang.local/?p=29', 0, 'revision', '', 0),
(33, 1, '2021-03-18 08:41:05', '2021-03-18 08:41:05', '', 'Astroworld-3', '', 'inherit', 'open', 'closed', '', 'astroworld-3', '', '', '2021-03-18 08:41:05', '2021-03-18 08:41:05', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/Astroworld-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2021-03-18 08:41:06', '2021-03-18 08:41:06', '', 'Calltomind-1', '', 'inherit', 'open', 'closed', '', 'calltomind-1', '', '', '2021-03-18 08:41:06', '2021-03-18 08:41:06', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/Calltomind-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2021-03-18 08:41:06', '2021-03-18 08:41:06', '', 'citylife', '', 'inherit', 'open', 'closed', '', 'citylife', '', '', '2021-03-18 08:41:06', '2021-03-18 08:41:06', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/citylife.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2021-03-18 08:41:07', '2021-03-18 08:41:07', '', 'empirestate', '', 'inherit', 'open', 'closed', '', 'empirestate', '', '', '2021-03-18 08:41:07', '2021-03-18 08:41:07', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/empirestate.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2021-03-18 08:41:08', '2021-03-18 08:41:08', '', 'spacetrap2', '', 'inherit', 'open', 'closed', '', 'spacetrap2', '', '', '2021-03-18 08:41:08', '2021-03-18 08:41:08', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/spacetrap2.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2021-03-18 08:41:08', '2021-03-18 08:41:08', '', 'Submissione', '', 'inherit', 'open', 'closed', '', 'submissione', '', '', '2021-03-18 08:41:08', '2021-03-18 08:41:08', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/Submissione.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2021-03-18 08:47:12', '2021-03-18 08:47:12', '', 'news2', '', 'inherit', 'open', 'closed', '', 'news2', '', '', '2021-03-18 08:47:12', '2021-03-18 08:47:12', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/news2.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2021-03-18 08:47:14', '2021-03-18 08:47:14', '', 'news2-1024x640', '', 'inherit', 'open', 'closed', '', 'news2-1024x640', '', '', '2021-03-18 08:47:14', '2021-03-18 08:47:14', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/news2-1024x640-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2021-03-18 08:47:15', '2021-03-18 08:47:15', '', 'news3', '', 'inherit', 'open', 'closed', '', 'news3', '', '', '2021-03-18 08:47:15', '2021-03-18 08:47:15', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/news3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2021-03-18 08:47:18', '2021-03-18 08:47:18', '', 'news3-1024x640', '', 'inherit', 'open', 'closed', '', 'news3-1024x640', '', '', '2021-03-18 08:47:18', '2021-03-18 08:47:18', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/news3-1024x640-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2021-03-18 08:47:19', '2021-03-18 08:47:19', '', 'news4', '', 'inherit', 'open', 'closed', '', 'news4', '', '', '2021-03-18 08:47:19', '2021-03-18 08:47:19', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/news4.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2021-03-18 08:47:20', '2021-03-18 08:47:20', '', 'news4-1024x640', '', 'inherit', 'open', 'closed', '', 'news4-1024x640', '', '', '2021-03-18 08:47:20', '2021-03-18 08:47:20', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/news4-1024x640-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2021-03-18 08:47:21', '2021-03-18 08:47:21', '', 'news7', '', 'inherit', 'open', 'closed', '', 'news7', '', '', '2021-03-18 08:47:21', '2021-03-18 08:47:21', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/news7.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2021-03-18 08:47:23', '2021-03-18 08:47:23', '', 'news7-1024x640', '', 'inherit', 'open', 'closed', '', 'news7-1024x640', '', '', '2021-03-18 08:47:23', '2021-03-18 08:47:23', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/news7-1024x640-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2021-03-18 08:47:23', '2021-03-18 08:47:23', '', 'newsbg', '', 'inherit', 'open', 'closed', '', 'newsbg', '', '', '2021-03-18 08:47:23', '2021-03-18 08:47:23', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/newsbg.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2021-03-18 08:47:26', '2021-03-18 08:47:26', '', 'newsbg-1024x640', '', 'inherit', 'open', 'closed', '', 'newsbg-1024x640', '', '', '2021-03-18 08:47:26', '2021-03-18 08:47:26', '', 17, 'http://amthanh-anhsang.local/wp-content/uploads/2021/03/newsbg-1024x640-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2021-03-20 03:23:48', '2021-03-20 03:23:48', 'Mixer In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Bàn Mixer', '', 'publish', 'open', 'open', '', 'ban-mixer', '', '', '2021-03-21 03:12:00', '2021-03-21 03:12:00', '', 0, 'http://localhost:8080/amthanh-anhsang/?p=49', 0, 'post', '', 0),
(50, 1, '2021-03-20 03:23:48', '2021-03-20 03:23:48', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Bàn Mixer', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-03-20 03:23:48', '2021-03-20 03:23:48', '', 49, 'http://localhost:8080/amthanh-anhsang/?p=50', 0, 'revision', '', 0),
(51, 1, '2021-03-20 03:25:24', '2021-03-20 03:25:24', 'Microphone In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Microphone', '', 'publish', 'open', 'open', '', 'microphone', '', '', '2021-03-21 03:11:46', '2021-03-21 03:11:46', '', 0, 'http://localhost:8080/amthanh-anhsang/?p=51', 0, 'post', '', 0),
(52, 1, '2021-03-20 03:24:27', '2021-03-20 03:24:27', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2021-03-20 03:24:27', '2021-03-20 03:24:27', '', 1, 'http://localhost:8080/amthanh-anhsang/?p=52', 0, 'revision', '', 0),
(53, 1, '2021-03-20 03:24:36', '2021-03-20 03:24:36', '', 'Microphone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-20 03:24:36', '2021-03-20 03:24:36', '', 51, 'http://localhost:8080/amthanh-anhsang/?p=53', 0, 'revision', '', 0),
(54, 1, '2021-03-20 03:25:24', '2021-03-20 03:25:24', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Microphone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-20 03:25:24', '2021-03-20 03:25:24', '', 51, 'http://localhost:8080/amthanh-anhsang/?p=54', 0, 'revision', '', 0),
(56, 1, '2021-03-20 03:26:02', '2021-03-20 03:26:02', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Microphone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-20 03:26:02', '2021-03-20 03:26:02', '', 51, 'http://localhost:8080/amthanh-anhsang/?p=56', 0, 'revision', '', 0),
(57, 1, '2021-03-20 03:27:43', '2021-03-20 03:27:43', '<p>Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor<br>\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.</p>\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor<br>\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices<br>\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem<br>\na, blandit interdum odio.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'publish', 'open', 'open', '', 'amplifier', '', '', '2021-03-21 03:11:36', '2021-03-21 03:11:36', '', 0, 'http://localhost:8080/amthanh-anhsang/?p=57', 0, 'post', '', 0),
(58, 1, '2021-03-20 03:27:43', '2021-03-20 03:27:43', '<!-- wp:paragraph -->\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 03:27:43', '2021-03-20 03:27:43', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=58', 0, 'revision', '', 0),
(60, 1, '2021-03-20 04:21:28', '2021-03-20 04:21:28', 'In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Microphone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-20 04:21:28', '2021-03-20 04:21:28', '', 51, 'http://localhost:8080/amthanh-anhsang/?p=60', 0, 'revision', '', 0),
(61, 1, '2021-03-20 04:22:06', '2021-03-20 04:22:06', 'In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Bàn Mixer', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-03-20 04:22:06', '2021-03-20 04:22:06', '', 49, 'http://localhost:8080/amthanh-anhsang/?p=61', 0, 'revision', '', 0),
(62, 1, '2021-03-20 04:22:09', '2021-03-20 04:22:09', 'In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 04:22:09', '2021-03-20 04:22:09', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=62', 0, 'revision', '', 0),
(65, 1, '2021-03-20 04:23:46', '2021-03-20 04:23:46', 'Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 04:23:46', '2021-03-20 04:23:46', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=65', 0, 'revision', '', 0),
(66, 1, '2021-03-20 04:23:56', '2021-03-20 04:23:56', 'Microphone In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Microphone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-20 04:23:56', '2021-03-20 04:23:56', '', 51, 'http://localhost:8080/amthanh-anhsang/?p=66', 0, 'revision', '', 0),
(67, 1, '2021-03-20 04:24:19', '2021-03-20 04:24:19', 'Mixer In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Bàn Mixer', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-03-20 04:24:19', '2021-03-20 04:24:19', '', 49, 'http://localhost:8080/amthanh-anhsang/?p=67', 0, 'revision', '', 0),
(72, 1, '2021-03-20 05:08:37', '2021-03-20 05:08:37', 'Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 05:08:37', '2021-03-20 05:08:37', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=72', 0, 'revision', '', 0),
(73, 1, '2021-03-20 05:18:02', '2021-03-20 05:18:02', 'Mixer In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Bàn Mixer', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-03-20 05:18:02', '2021-03-20 05:18:02', '', 49, 'http://localhost:8080/amthanh-anhsang/?p=73', 0, 'revision', '', 0),
(74, 1, '2021-03-20 05:45:29', '2021-03-20 05:45:29', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"post_category\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:24:\"category:amthanh-anhsang\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:4:\"left\";s:21:\"instruction_placement\";s:5:\"field\";s:14:\"hide_on_screen\";a:14:{i:0;s:9:\"permalink\";i:1;s:11:\"the_content\";i:2;s:7:\"excerpt\";i:3;s:10:\"discussion\";i:4;s:8:\"comments\";i:5;s:9:\"revisions\";i:6;s:4:\"slug\";i:7;s:6:\"author\";i:8;s:6:\"format\";i:9;s:15:\"page_attributes\";i:10;s:14:\"featured_image\";i:11;s:10:\"categories\";i:12;s:4:\"tags\";i:13;s:15:\"send-trackbacks\";}s:11:\"description\";s:0:\"\";}', 'amthanh-anhsang', 'amthanh-anhsang', 'publish', 'closed', 'closed', '', 'group_60558bb1cbc2d', '', '', '2021-03-20 11:53:50', '2021-03-20 11:53:50', '', 0, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field-group&#038;p=74', 0, 'acf-field-group', '', 0),
(75, 1, '2021-03-20 05:45:29', '2021-03-20 05:45:29', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:7:\"Add Row\";}', 'Detail', 'detail', 'publish', 'closed', 'closed', '', 'field_60558bb405efa', '', '', '2021-03-20 11:25:22', '2021-03-20 11:25:22', '', 74, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field&#038;p=75', 0, 'acf-field', '', 0),
(81, 1, '2021-03-20 05:49:55', '2021-03-20 05:49:55', '<p>Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor<br>\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.</p>\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor<br>\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices<br>\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem<br>\na, blandit interdum odio.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 05:49:55', '2021-03-20 05:49:55', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=81', 0, 'revision', '', 0),
(82, 1, '2021-03-20 05:49:55', '2021-03-20 05:49:55', '<p>Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor<br>\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.</p>\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor<br>\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices<br>\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem<br>\na, blandit interdum odio.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 05:49:55', '2021-03-20 05:49:55', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=82', 0, 'revision', '', 0),
(87, 1, '2021-03-20 06:23:12', '2021-03-20 06:23:12', '<p>Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor<br>\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.</p>\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor<br>\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices<br>\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem<br>\na, blandit interdum odio.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 06:23:12', '2021-03-20 06:23:12', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=87', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(88, 1, '2021-03-20 06:23:24', '2021-03-20 06:23:24', '<p>Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor<br>\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.</p>\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor<br>\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices<br>\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem<br>\na, blandit interdum odio.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 06:23:24', '2021-03-20 06:23:24', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=88', 0, 'revision', '', 0),
(89, 1, '2021-03-20 06:24:04', '2021-03-20 06:24:04', 'Microphone In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Microphone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-20 06:24:04', '2021-03-20 06:24:04', '', 51, 'http://localhost:8080/amthanh-anhsang/?p=89', 0, 'revision', '', 0),
(98, 1, '2021-03-20 11:41:18', '2021-03-20 11:41:18', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'a', 'a', 'trash', 'closed', 'closed', '', 'group_6055df358e42a__trashed', '', '', '2021-03-20 11:52:31', '2021-03-20 11:52:31', '', 0, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0),
(99, 1, '2021-03-20 11:41:18', '2021-03-20 11:41:18', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'b', 'b', 'trash', 'closed', 'closed', '', 'field_60561a467c588__trashed', '', '', '2021-03-20 11:52:31', '2021-03-20 11:52:31', '', 98, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field&#038;p=99', 0, 'acf-field', '', 0),
(100, 1, '2021-03-20 11:41:18', '2021-03-20 11:41:18', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'c', 'c', 'trash', 'closed', 'closed', '', 'field_60561a5c7c589__trashed', '', '', '2021-03-20 11:52:31', '2021-03-20 11:52:31', '', 98, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field&#038;p=100', 0, 'acf-field', '', 0),
(101, 1, '2021-03-20 11:53:06', '2021-03-20 11:53:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'teset', 'teset', 'trash', 'closed', 'closed', '', 'group_6055e20216100__trashed', '', '', '2021-03-20 11:53:22', '2021-03-20 11:53:22', '', 0, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field-group&#038;p=101', 0, 'acf-field-group', '', 0),
(102, 1, '2021-03-20 11:53:06', '2021-03-20 11:53:06', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'de', 'de', 'trash', 'closed', 'closed', '', 'field_60561d1023482__trashed', '', '', '2021-03-20 11:53:22', '2021-03-20 11:53:22', '', 101, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field&#038;p=102', 0, 'acf-field', '', 0),
(103, 1, '2021-03-20 11:53:06', '2021-03-20 11:53:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'dddd', 'dddd', 'publish', 'closed', 'closed', '', 'field_60561d2523483', '', '', '2021-03-20 11:53:06', '2021-03-20 11:53:06', '', 102, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field&p=103', 0, 'acf-field', '', 0),
(104, 1, '2021-03-20 11:53:49', '2021-03-20 11:53:49', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Detail Name', 'detail_name', 'publish', 'closed', 'closed', '', 'field_60561d47020dc', '', '', '2021-03-20 11:53:49', '2021-03-20 11:53:49', '', 75, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field&p=104', 0, 'acf-field', '', 0),
(105, 1, '2021-03-20 11:53:50', '2021-03-20 11:53:50', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Detail Content', 'detail_content', 'publish', 'closed', 'closed', '', 'field_60561d4e020dd', '', '', '2021-03-20 11:53:50', '2021-03-20 11:53:50', '', 75, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field&p=105', 1, 'acf-field', '', 0),
(106, 1, '2021-03-20 11:54:43', '2021-03-20 11:54:43', '<p>Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor<br>\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.</p>\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor<br>\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices<br>\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem<br>\na, blandit interdum odio.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 11:54:43', '2021-03-20 11:54:43', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=106', 0, 'revision', '', 0),
(107, 1, '2021-03-20 11:55:02', '2021-03-20 11:55:02', '<p>Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor<br>\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.</p>\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor<br>\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices<br>\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem<br>\na, blandit interdum odio.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-20 11:55:02', '2021-03-20 11:55:02', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=107', 0, 'revision', '', 0),
(108, 1, '2021-03-21 03:11:36', '2021-03-21 03:11:36', '<p>Amplifier In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor<br>\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.</p>\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor<br>\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices<br>\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem<br>\na, blandit interdum odio.</p>\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Amplifier', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2021-03-21 03:11:36', '2021-03-21 03:11:36', '', 57, 'http://localhost:8080/amthanh-anhsang/?p=108', 0, 'revision', '', 0),
(109, 1, '2021-03-21 03:11:46', '2021-03-21 03:11:46', 'Microphone In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Microphone', '', 'inherit', 'closed', 'closed', '', '51-revision-v1', '', '', '2021-03-21 03:11:46', '2021-03-21 03:11:46', '', 51, 'http://localhost:8080/amthanh-anhsang/?p=109', 0, 'revision', '', 0),
(110, 1, '2021-03-21 03:12:00', '2021-03-21 03:12:00', 'Mixer In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor\ncondimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor\npurus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices\ntempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem\na, blandit interdum odio.', 'Bàn Mixer', '', 'inherit', 'closed', 'closed', '', '49-revision-v1', '', '', '2021-03-21 03:12:00', '2021-03-21 03:12:00', '', 49, 'http://localhost:8080/amthanh-anhsang/?p=110', 0, 'revision', '', 0),
(112, 1, '2021-03-21 03:42:54', '2021-03-21 03:42:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'tintuc', 'tintuc', 'trash', 'closed', 'closed', '', 'group_6056c0b71a0ee__trashed', '', '', '2021-03-21 03:43:26', '2021-03-21 03:43:26', '', 0, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field-group&#038;p=112', 0, 'acf-field-group', '', 0),
(113, 1, '2021-03-21 03:42:54', '2021-03-21 03:42:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'tintuc', 'tintuc', 'trash', 'closed', 'closed', '', 'field_6056c0b786ed2__trashed', '', '', '2021-03-21 03:43:26', '2021-03-21 03:43:26', '', 112, 'http://localhost:8080/amthanh-anhsang/?post_type=acf-field&#038;p=113', 0, 'acf-field', '', 0),
(114, 1, '2021-03-21 03:45:10', '2021-03-21 03:45:10', '<ul>\n 	<li> Phasellus eleifend lacinia</li>\n 	<li> Integer interdum</li>\n 	<li> Donec a lacus id dolor condimentum</li>\n</ul>\nMauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia\nCurae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum\nquis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor\njusto ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.\n<blockquote class=\"wp-block-quote\">Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.\n\n<cite>Johny Drama</cite></blockquote>\nEtiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat\neu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque\nrisus ac sem viverra, et fringilla metus viverra.', 'DJ Max Drama End of Year Mixtape Is the Only Music You Need This Holiday Season', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'publish', 'open', 'open', '', 'dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season', '', '', '2021-03-21 12:00:30', '2021-03-21 12:00:30', '', 0, 'http://localhost:8080/amthanh-anhsang/?p=114', 0, 'post', '', 0),
(115, 1, '2021-03-21 03:45:10', '2021-03-21 03:45:10', '', 'DJ Max Drama End of Year Mixtape Is the Only Music You Need This Holiday Season', '', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2021-03-21 03:45:10', '2021-03-21 03:45:10', '', 114, 'http://localhost:8080/amthanh-anhsang/?p=115', 0, 'revision', '', 0),
(116, 1, '2021-03-21 03:46:20', '2021-03-21 03:46:20', '', 'DJ Max Drama End of Year Mixtape Is the Only Music You Need This Holiday Season', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2021-03-21 03:46:20', '2021-03-21 03:46:20', '', 114, 'http://localhost:8080/amthanh-anhsang/?p=116', 0, 'revision', '', 0),
(117, 1, '2021-03-21 03:48:56', '2021-03-21 03:48:56', '<ul>\n 	<li> Phasellus eleifend lacinia</li>\n 	<li> Integer interdum</li>\n 	<li> Donec a lacus id dolor condimentum</li>\n</ul>\nMauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia\nCurae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum\nquis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor\njusto ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.\n<blockquote class=\"wp-block-quote\">Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.\n\n<cite>Johny Drama</cite></blockquote>\nEtiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat\neu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque\nrisus ac sem viverra, et fringilla metus viverra.', 'Silvia talks about her music video', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'publish', 'open', 'open', '', 'silvia-talks-about-her-music-video', '', '', '2021-03-21 12:00:16', '2021-03-21 12:00:16', '', 0, 'http://localhost:8080/amthanh-anhsang/?p=117', 0, 'post', '', 0),
(118, 1, '2021-03-21 03:48:56', '2021-03-21 03:48:56', '', 'Silvia talks about her music video', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2021-03-21 03:48:56', '2021-03-21 03:48:56', '', 117, 'http://localhost:8080/amthanh-anhsang/?p=118', 0, 'revision', '', 0),
(120, 1, '2021-03-21 11:50:39', '2021-03-21 11:50:39', '<div class=\"content content--layout-narrow small-gap fx-move-from-bottom is-waypoint done\">\n<div class=\"post-content\">\n<div class=\"container container--narrow\">\n<article id=\"post-115\" class=\"post-content__article post-115 post type-post status-publish format-standard has-post-thumbnail hentry category-fashion category-reviews tag-fashion tag-sneakers tag-soundcloud tag-video\">\n<h3>Simple Heading</h3>\nPraesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor purus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio.\n<figure class=\"wp-block-embed-soundcloud alignwide wp-block-embed is-type-rich is-provider-soundcloud wp-embed-aspect-4-3 wp-has-aspect-ratio\">\n<div class=\"wp-block-embed__wrapper\">\n<iframe title=\"2???Bumps2 by The Deli\" width=\"1180\" height=\"400\" scrolling=\"no\" frameborder=\"no\" src=\"https://w.soundcloud.com/player/?visual=true&amp;url=https%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F248885192&amp;show_artwork=true&amp;maxwidth=1180&amp;maxheight=1000&amp;dnt=1\"></iframe></div></figure>\n<ul>\n 	<li> Phasellus eleifend lacinia</li>\n 	<li>  Integer interdum</li>\n 	<li> Donec a lacus id dolor condimentum</li>\n</ul>\nMauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.\n<blockquote class=\"wp-block-quote\">Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.\n\n<cite>Johny Drama</cite></blockquote>\nEtiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque risus ac sem viverra, et fringilla metus viverra.\n<div class=\"post-footer\">\n<div class=\"share\">\n						<span class=\"icon icon-share\"></span>\n<a class=\"share-button fb-share-btn\" target=\"_blank\" href=\"http://www.facebook.com/sharer.php?u=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noopener\"><span class=\"icon icon-facebook\"></span></a>\n<a class=\"share-button twitter-share-btn\" target=\"_blank\" href=\"http://twitter.com/share?url=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noopener\"><span class=\"icon icon-twitter\"></span></a>\n<a class=\"share-button linkedin-share-btn\" target=\"_blank\" href=\"https://www.linkedin.com/cws/share?url=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noopener\"><span class=\"icon icon-linkedin\"></span></a></div>\n<div class=\"meta-tags\"><span class=\"icon icon-tag\"></span><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/fashion/\" rel=\"tag\">fashion</a> <a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/sneakers/\" rel=\"tag\">sneakers</a> <a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/soundcloud/\" rel=\"tag\">soundcloud</a> <a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/video/\" rel=\"tag\">video</a></div>\n</div>\n<nav class=\"navigation post-navigation\">\n<div class=\"nav-links\">\n			<span class=\"post-nav-inner link-full\"><a href=\"https://rascalsthemes.com/demo/vex/demo1/check-out-some-of-the-best-street-style-from-new-york/\" class=\"prev-link\"><span class=\"nav-desc\"><span class=\"nav-direction\">Prev</span><span class=\"nav-title\">Check Out Some of the Best Street Style From New York</span></span></a></span><span class=\"post-nav-inner link-empty\"></span></div>\n<!-- .nav-links -->\n</nav><!-- .navigation -->\n\n</article>  <!-- .article -->\n\n</div>\n</div>\n<!-- .container -->\n<div class=\"comments\">\n<div class=\"container container--narrow\">\n<div class=\"comments_inner\">\n<h4 class=\"comments__title\">Comments <span class=\"comments__number\">3</span></h4>\n<div class=\"comments__container clearfix\">\n<ul class=\"comment-list\">    <!-- Comment -->\n 	<li id=\"li-comment-8\" class=\"comment even thread-even depth-1 theme_comment\">\n<article id=\"comment-8\">\n<div class=\"avatar-wrap\">\n                <img alt=\"\" src=\"https://secure.gravatar.com/avatar/515bb127d62c5184e39efe9f55ad7c23?s=100&amp;d=mm&amp;r=g\" srcset=\"https://secure.gravatar.com/avatar/515bb127d62c5184e39efe9f55ad7c23?s=200&amp;d=mm&amp;r=g 2x\" class=\"avatar avatar-100 photo\" height=\"100\" width=\"100\" loading=\"lazy\"></div>\n<div class=\"comment-meta\">\n<h5 class=\"author\">admin</h5>\n<p class=\"date\">January 3, 2020 <span class=\"reply\"><a rel=\"nofollow\" class=\"comment-reply-link\" href=\"https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/?replytocom=8#respond\" data-commentid=\"8\" data-postid=\"115\" data-belowelement=\"comment-8\" data-respondelement=\"respond\" data-replyto=\"Reply to admin\" aria-label=\"Reply to admin\">Reply</a></span></p>\n\n\n</div>\n<div class=\"comment-body\">\n\nEtiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula,\n\n</div>\n</article>\n<ul class=\"children\">    <!-- Comment -->\n 	<li id=\"li-comment-9\" class=\"comment odd alt depth-2 theme_comment\">\n<article id=\"comment-9\">\n<div class=\"avatar-wrap\">\n                <img alt=\"\" src=\"https://secure.gravatar.com/avatar/8ac8370530226334da874e80e9777be9?s=100&amp;d=mm&amp;r=g\" srcset=\"https://secure.gravatar.com/avatar/8ac8370530226334da874e80e9777be9?s=200&amp;d=mm&amp;r=g 2x\" class=\"avatar avatar-100 photo\" height=\"100\" width=\"100\" loading=\"lazy\"></div>\n<div class=\"comment-meta\">\n<h5 class=\"author\">Peter Swang</h5>\n<p class=\"date\">January 3, 2020 <span class=\"reply\"><a rel=\"nofollow\" class=\"comment-reply-link\" href=\"https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/?replytocom=9#respond\" data-commentid=\"9\" data-postid=\"115\" data-belowelement=\"comment-9\" data-respondelement=\"respond\" data-replyto=\"Reply to Peter Swang\" aria-label=\"Reply to Peter Swang\">Reply</a></span></p>\n\n\n</div>\n<div class=\"comment-body\">\n\nDonec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis.\n\n</div>\n</article></li>\n<!-- #comment-## --></ul>\n<!-- .children --></li>\n<!-- #comment-## -->\n\n<!-- Comment -->\n 	<li id=\"li-comment-10\" class=\"comment even thread-odd thread-alt depth-1 theme_comment\">\n<article id=\"comment-10\">\n<div class=\"avatar-wrap\">\n                <img alt=\"\" src=\"https://secure.gravatar.com/avatar/f1cf7c1a76fb57a80dd7af7688d47abf?s=100&amp;d=mm&amp;r=g\" srcset=\"https://secure.gravatar.com/avatar/f1cf7c1a76fb57a80dd7af7688d47abf?s=200&amp;d=mm&amp;r=g 2x\" class=\"avatar avatar-100 photo\" height=\"100\" width=\"100\" loading=\"lazy\"></div>\n<div class=\"comment-meta\">\n<h5 class=\"author\">Marky Drama</h5>\n<p class=\"date\">January 3, 2020 <span class=\"reply\"><a rel=\"nofollow\" class=\"comment-reply-link\" href=\"https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/?replytocom=10#respond\" data-commentid=\"10\" data-postid=\"115\" data-belowelement=\"comment-10\" data-respondelement=\"respond\" data-replyto=\"Reply to Marky Drama\" aria-label=\"Reply to Marky Drama\">Reply</a></span></p>\n\n\n</div>\n<div class=\"comment-body\">\n\nPhasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi.\n\n</div>\n</article></li>\n<!-- #comment-## --></ul>\n<nav class=\"comments__navigation\" role=\"navigation\">\n<div class=\"nav-prev\"></div>\n<div class=\"nav-next\"></div>\n</nav></div>\n<div id=\"respond\" class=\"comment-respond\">\n<h3 id=\"reply-title\" class=\"comment-reply-title\">Leave a Reply <small><a rel=\"nofollow\" id=\"cancel-comment-reply-link\" href=\"/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/#respond\" style=\"display:none;\">(Cancel Reply)</a></small></h3>\n<form action=\"https://rascalsthemes.com/demo/vex/demo1/wp-comments-post.php\" method=\"post\" id=\"commentform\" class=\"comment-form\" novalidate=\"\">\n<div class=\"comment-field\">\n                <textarea placeholder=\"Comment *\" tabindex=\"4\" rows=\"9\" id=\"comment\" name=\"comment\" class=\"textarea\" required=\"\"></textarea></div>\n<p class=\"form-allowed-tags\">* Your email address will not be published.\nYou may use these HTML tags and attributes:  <span>&lt;a href=\"\" title=\"\"&gt; &lt;abbr title=\"\"&gt; &lt;acronym title=\"\"&gt; &lt;b&gt; &lt;blockquote cite=\"\"&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=\"\"&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=\"\"&gt; &lt;s&gt; &lt;strike&gt; &lt;strong&gt; </span></p>\n\n<div class=\"flex-col-1-3 first\">\n                <input placeholder=\"Name *\" type=\"text\" name=\"author\" id=\"author\" value=\"\" size=\"22\" tabindex=\"1\" required=\"\"></div>\n<div class=\"flex-col-1-3\">\n                <input placeholder=\"Email *\" type=\"text\" name=\"email\" id=\"email\" value=\"\" size=\"22\" tabindex=\"2\" required=\"\"></div>\n<div class=\"flex-col-1-3 last\">\n                <input placeholder=\"URL\" type=\"text\" name=\"url\" id=\"url\" value=\"\" size=\"22\" tabindex=\"3\"></div>\n<div class=\"clear\"></div>\n<div class=\"comment-form-cookies-consent\"><input id=\"wp-comment-cookies-consent\" name=\"wp-comment-cookies-consent\" type=\"checkbox\" value=\"yes\"><label for=\"wp-comment-cookies-consent\">Save my name, email, and website in this browser for the next time I comment.</label></div>\n<p class=\"form-submit\"></p>\n\n<div class=\"magneto-wrapper\" style=\"display: inline-block; position: relative;\"><input name=\"submit\" type=\"submit\" id=\"submit\" class=\"submit magneto--ready\" value=\"Post Comment\"></div>\n<input type=\"hidden\" name=\"comment_post_ID\" value=\"115\" id=\"comment_post_ID\">\n<input type=\"hidden\" name=\"comment_parent\" id=\"comment_parent\" value=\"0\">\n\n</form></div>\n<!-- #respond -->\n\n</div>\n</div>\n</div>\n</div>', 'Silvia talks about her music video', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2021-03-21 11:50:39', '2021-03-21 11:50:39', '', 117, 'http://localhost:8080/amthanh-anhsang/?p=120', 0, 'revision', '', 0),
(121, 1, '2021-03-21 11:52:18', '2021-03-21 11:52:18', '<!-- wp:heading {\"level\":3} -->\n<h3>Simple Heading</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor purus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio. https://w.soundcloud.com/player/?visual=true&amp;url=https%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F248885192&amp;show_artwork=true&amp;maxwidth=1180&amp;maxheight=1000&amp;dnt=1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><cite>Johny Drama</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque risus ac sem viverra, et fringilla metus viverra. <a target=\"_blank\" href=\"http://www.facebook.com/sharer.php?u=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a target=\"_blank\" href=\"http://twitter.com/share?url=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a target=\"_blank\" href=\"https://www.linkedin.com/cws/share?url=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/fashion/\">fashion</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/sneakers/\">sneakers</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/soundcloud/\">soundcloud</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/video/\">video</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/check-out-some-of-the-best-street-style-from-new-york/\">PrevCheck Out Some of the Best Street Style From New York</a></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:heading {\"level\":4} -->\n<h4>Comments 3</h4>\n<!-- /wp:heading -->\n\n<!-- wp:list -->\n<ul><li><img alt=\"\" src=\"https://secure.gravatar.com/avatar/515bb127d62c5184e39efe9f55ad7c23?s=100&amp;d=mm&amp;r=g\" srcset=\"https://secure.gravatar.com/avatar/515bb127d62c5184e39efe9f55ad7c23?s=200&amp;d=mm&amp;r=g 2x\" height=\"100\" width=\"100\"> admin January 3, 2020 <a href=\"https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/?replytocom=8#respond\">Reply</a> Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula,<ul><li><img alt=\"\" src=\"https://secure.gravatar.com/avatar/8ac8370530226334da874e80e9777be9?s=100&amp;d=mm&amp;r=g\" srcset=\"https://secure.gravatar.com/avatar/8ac8370530226334da874e80e9777be9?s=200&amp;d=mm&amp;r=g 2x\" height=\"100\" width=\"100\"> Peter Swang January 3, 2020 <a href=\"https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/?replytocom=9#respond\">Reply</a> Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis.</li></ul></li><li><img alt=\"\" src=\"https://secure.gravatar.com/avatar/f1cf7c1a76fb57a80dd7af7688d47abf?s=100&amp;d=mm&amp;r=g\" srcset=\"https://secure.gravatar.com/avatar/f1cf7c1a76fb57a80dd7af7688d47abf?s=200&amp;d=mm&amp;r=g 2x\" height=\"100\" width=\"100\"> Marky Drama January 3, 2020 <a href=\"https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/?replytocom=10#respond\">Reply</a> Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi.</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:heading {\"level\":3} -->\n<h3 id=\"reply-title\">Leave a Reply <small><a href=\"/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/#respond\">(Cancel Reply)</a></small></h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>* Your email address will not be published. You may use these HTML tags and attributes: &lt;a href=\"\" title=\"\"&gt; &lt;abbr title=\"\"&gt; &lt;acronym title=\"\"&gt; &lt;b&gt; &lt;blockquote cite=\"\"&gt; &lt;cite&gt; &lt;code&gt; &lt;del datetime=\"\"&gt; &lt;em&gt; &lt;i&gt; &lt;q cite=\"\"&gt; &lt;s&gt; &lt;strike&gt; &lt;strong&gt; Save my name, email, and website in this browser for the next time I comment.</p>\n<!-- /wp:paragraph -->', 'DJ Max Drama End of Year Mixtape Is the Only Music You Need This Holiday Season', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2021-03-21 11:52:18', '2021-03-21 11:52:18', '', 114, 'http://localhost:8080/amthanh-anhsang/?p=121', 0, 'revision', '', 0),
(122, 1, '2021-03-21 11:53:03', '2021-03-21 11:53:03', '<!-- wp:heading {\"level\":3} -->\n<h3>Simple Heading</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor purus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio. https://w.soundcloud.com/player/?visual=true&amp;url=https%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F248885192&amp;show_artwork=true&amp;maxwidth=1180&amp;maxheight=1000&amp;dnt=1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><cite>Johny Drama</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque risus ac sem viverra, et fringilla metus viverra. <a target=\"_blank\" href=\"http://www.facebook.com/sharer.php?u=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a target=\"_blank\" href=\"http://twitter.com/share?url=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a target=\"_blank\" href=\"https://www.linkedin.com/cws/share?url=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/fashion/\">fashion</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/sneakers/\">sneakers</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/soundcloud/\">soundcloud</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/video/\">video</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/check-out-some-of-the-best-street-style-from-new-york/\">PrevCheck Out Some of the Best Street Style From New York</a></p>\n<!-- /wp:paragraph -->', 'DJ Max Drama End of Year Mixtape Is the Only Music You Need This Holiday Season', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2021-03-21 11:53:03', '2021-03-21 11:53:03', '', 114, 'http://localhost:8080/amthanh-anhsang/?p=122', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(123, 1, '2021-03-21 11:53:35', '2021-03-21 11:53:35', '<!-- wp:heading {\"level\":3} -->\n<h3>Simple Heading</h3>\n<!-- /wp:heading -->\n\n<!-- wp:paragraph -->\n<p>Praesent eget justo et nunc sollicitudin viverra id vitae tellus. Quisque vulputate laoreet enim ut facilisis. Phasellus rutrum tortor scelerisque pretium aliquet. Pellentesque vel egestas ante. In quis turpis elit. Etiam vitae auctor purus. Phasellus eleifend lacinia nisl et laoreet. Phasellus velit diam, tincidunt non ipsum a, iaculis tristique sapien. Ut vestibulum est sit amet sem suscipit feugiat. In porta pretium dui sed venenatis. Proin elit nisl, ultrices tempor augue a, pharetra lacinia nisi. Integer interdum, justo at sollicitudin consectetur, diam lorem hendrerit ipsum, eu finibus erat est sed quam. Donec a lacus id dolor condimentum dictum. Nunc ante orci, porttitor sodales lorem a, blandit interdum odio. https://w.soundcloud.com/player/?visual=true&amp;url=https%3A%2F%2Fapi.soundcloud.com%2Ftracks%2F248885192&amp;show_artwork=true&amp;maxwidth=1180&amp;maxheight=1000&amp;dnt=1</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><cite>Johny Drama</cite></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque risus ac sem viverra, et fringilla metus viverra. <a target=\"_blank\" href=\"http://www.facebook.com/sharer.php?u=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a target=\"_blank\" href=\"http://twitter.com/share?url=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a target=\"_blank\" href=\"https://www.linkedin.com/cws/share?url=https://rascalsthemes.com/demo/vex/demo1/dj-max-drama-end-of-year-mixtape-is-the-only-music-you-need-this-holiday-season/\" rel=\"noreferrer noopener\"></a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/fashion/\">fashion</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/sneakers/\">sneakers</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/soundcloud/\">soundcloud</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/tag/video/\">video</a><a href=\"https://rascalsthemes.com/demo/vex/demo1/check-out-some-of-the-best-street-style-from-new-york/\">PrevCheck Out Some of the Best Street Style From New York</a></p>\n<!-- /wp:paragraph -->', 'Silvia talks about her music video', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2021-03-21 11:53:35', '2021-03-21 11:53:35', '', 117, 'http://localhost:8080/amthanh-anhsang/?p=123', 0, 'revision', '', 0),
(125, 1, '2021-03-21 11:54:29', '2021-03-21 11:54:29', 'a', 'Silvia talks about her music video', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2021-03-21 11:54:29', '2021-03-21 11:54:29', '', 117, 'http://localhost:8080/amthanh-anhsang/?p=125', 0, 'revision', '', 0),
(126, 1, '2021-03-21 12:00:16', '2021-03-21 12:00:16', '<ul>\n 	<li> Phasellus eleifend lacinia</li>\n 	<li> Integer interdum</li>\n 	<li> Donec a lacus id dolor condimentum</li>\n</ul>\nMauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia\nCurae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum\nquis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor\njusto ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.\n<blockquote class=\"wp-block-quote\">Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.\n\n<cite>Johny Drama</cite></blockquote>\nEtiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat\neu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque\nrisus ac sem viverra, et fringilla metus viverra.', 'Silvia talks about her music video', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '117-revision-v1', '', '', '2021-03-21 12:00:16', '2021-03-21 12:00:16', '', 117, 'http://localhost:8080/amthanh-anhsang/?p=126', 0, 'revision', '', 0),
(127, 1, '2021-03-21 12:00:30', '2021-03-21 12:00:30', '<ul>\n 	<li> Phasellus eleifend lacinia</li>\n 	<li> Integer interdum</li>\n 	<li> Donec a lacus id dolor condimentum</li>\n</ul>\nMauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia\nCurae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum\nquis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor\njusto ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.\n<blockquote class=\"wp-block-quote\">Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.\n\n<cite>Johny Drama</cite></blockquote>\nEtiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat\neu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque\nrisus ac sem viverra, et fringilla metus viverra.', 'DJ Max Drama End of Year Mixtape Is the Only Music You Need This Holiday Season', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '114-revision-v1', '', '', '2021-03-21 12:00:30', '2021-03-21 12:00:30', '', 114, 'http://localhost:8080/amthanh-anhsang/?p=127', 0, 'revision', '', 0),
(128, 1, '2021-03-21 12:14:49', '2021-03-21 12:14:49', '<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia<br>Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum<br>quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor<br>justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><p>Johny Drama</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat<br>eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque<br>risus ac sem viverra, et fringilla metus viverra.</p>\n<!-- /wp:paragraph -->', '10 of the Best Sneakers for Women and Man', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'publish', 'open', 'open', '', '10-of-the-best-sneakers-for-women-and-man', '', '', '2021-03-21 12:40:51', '2021-03-21 12:40:51', '', 0, 'http://localhost:8080/amthanh-anhsang/?p=128', 0, 'post', '', 0),
(129, 1, '2021-03-21 12:14:49', '2021-03-21 12:14:49', '<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia<br>Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum<br>quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor<br>justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><p>Johny Drama</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat<br>eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque<br>risus ac sem viverra, et fringilla metus viverra.</p>\n<!-- /wp:paragraph -->', '10 of the Best Sneakers for Women and Man', '', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2021-03-21 12:14:49', '2021-03-21 12:14:49', '', 128, 'http://localhost:8080/amthanh-anhsang/?p=129', 0, 'revision', '', 0),
(130, 1, '2021-03-21 12:16:51', '2021-03-21 12:16:51', '<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia<br>Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum<br>quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor<br>justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><p>Johny Drama</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat<br>eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque<br>risus ac sem viverra, et fringilla metus viverra.</p>\n<!-- /wp:paragraph -->', 'Black and orange wireless headset', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'publish', 'open', 'open', '', 'black-and-orange-wireless-headset', '', '', '2021-03-21 12:40:53', '2021-03-21 12:40:53', '', 0, 'http://localhost:8080/amthanh-anhsang/?p=130', 0, 'post', '', 0),
(131, 1, '2021-03-21 12:16:51', '2021-03-21 12:16:51', '<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia<br>Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum<br>quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor<br>justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><p>Johny Drama</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat<br>eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque<br>risus ac sem viverra, et fringilla metus viverra.</p>\n<!-- /wp:paragraph -->', 'Black and orange wireless headset', '', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2021-03-21 12:16:51', '2021-03-21 12:16:51', '', 130, 'http://localhost:8080/amthanh-anhsang/?p=131', 0, 'revision', '', 0),
(132, 1, '2021-03-21 12:40:51', '2021-03-21 12:40:51', '<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia<br>Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum<br>quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor<br>justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><p>Johny Drama</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat<br>eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque<br>risus ac sem viverra, et fringilla metus viverra.</p>\n<!-- /wp:paragraph -->', '10 of the Best Sneakers for Women and Man', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '128-revision-v1', '', '', '2021-03-21 12:40:51', '2021-03-21 12:40:51', '', 128, 'http://localhost:8080/amthanh-anhsang/?p=132', 0, 'revision', '', 0),
(133, 1, '2021-03-21 12:40:53', '2021-03-21 12:40:53', '<!-- wp:list -->\n<ul><li>Phasellus eleifend lacinia</li><li>Integer interdum</li><li>Donec a lacus id dolor condimentum</li></ul>\n<!-- /wp:list -->\n\n<!-- wp:paragraph -->\n<p>Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia<br>Curae; Proin luctus, dui at vehicula maximus, lacus urna fringilla mi, quis feugiat lectus sapien nec felis. Nullam gravida rutrum velit et suscipit. Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Vivamus dictum<br>quis mi non tristique. Donec sit amet commodo sem. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales. Interdum et malesuada fames ac ante ipsum primis in faucibus. Mauris convallis purus id sapien eleifend, tempor tempor<br>justo ultrices. Duis auctor non neque et tincidunt. Donec hendrerit elit sed elit congue, in ultricies quam elementum. Quisque facilisis rutrum leo, et interdum purus tempor eget.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Quisque cursus augue eu neque pellentesque, vitae ornare nisl facilisis. Morbi feugiat mi a lorem accumsan, sit amet maximus nisi sodales.</p><p>Johny Drama</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Etiam sit amet turpis at velit congue dictum quis ac nibh. Ut ac fermentum felis. In hac habitasse platea dictumst. Proin aliquam ipsum a sollicitudin malesuada. Integer bibendum laoreet mauris sit amet pharetra. Maecenas magna nisi, volutpat<br>eu egestas auctor, malesuada non libero. Nullam sed massa augue. Suspendisse sollicitudin velit malesuada ipsum vehicula, vel egestas nunc porttitor. Morbi arcu quam, tempor eget cursus id, sodales at mi. Suspendisse potenti. Proin pellentesque<br>risus ac sem viverra, et fringilla metus viverra.</p>\n<!-- /wp:paragraph -->', 'Black and orange wireless headset', 'Mauris malesuada euismod sem ac semper. Pellentesque diam tellus, porta at enim nec, luctus viverra elit. Donec ut mi tincidunt, aliquet neque at, gravida neque.', 'inherit', 'closed', 'closed', '', '130-revision-v1', '', '', '2021-03-21 12:40:53', '2021-03-21 12:40:53', '', 130, 'http://localhost:8080/amthanh-anhsang/?p=133', 0, 'revision', '', 0),
(141, 1, '2021-03-13 16:03:52', '2021-03-13 16:03:52', '<div class=\"elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-56f1e1ff \" data-id=\"56f1e1ff\" data-element_type=\"column\" data-settings=\"{&quot;animation&quot;:&quot;slideInUp&quot;,&quot;animation_delay&quot;:800}\">\n<div class=\"elementor-column-wrap elementor-element-populated\">\n<div class=\"elementor-widget-wrap\">\n<div class=\"elementor-element elementor-element-79f49271 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"79f49271\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:800}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<h1 class=\"elementor-heading-title elementor-size-large\">Contact</h1>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-44f75d77 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"44f75d77\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:900}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<p class=\"elementor-heading-title elementor-size-small\">Media Manager</p>\n\n</div>\n</div>\n<div class=\"elementor-element elementor-element-6fd58a9a magneto animated-fast  elementor-widget elementor-widget-heading\" data-id=\"6fd58a9a\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:900}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\"><span class=\"elementor-heading-title elementor-size-large\"><a href=\"#\">+48 22 223 345 12345</a></span></div>\n</div>\n<div class=\"elementor-element elementor-element-6c83fc85 elementor-widget elementor-widget-spacer\" data-id=\"6c83fc85\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-spacer\">\n<div class=\"elementor-spacer-inner\"></div>\n</div>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-2c4378e4 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"2c4378e4\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1100}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<p class=\"elementor-heading-title elementor-size-small\">Booking</p>\n\n</div>\n</div>\n<div class=\"elementor-element elementor-element-c804d37 magneto animated-fast  elementor-widget elementor-widget-heading\" data-id=\"c804d37\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1100}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\"><span class=\"elementor-heading-title elementor-size-large\"><a href=\"#\">+48 22 113 148 124</a></span></div>\n</div>\n<div class=\"elementor-element elementor-element-19d2d1f5 elementor-widget elementor-widget-spacer\" data-id=\"19d2d1f5\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-spacer\">\n<div class=\"elementor-spacer-inner\"></div>\n</div>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-229e1272 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"229e1272\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1200}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<p class=\"elementor-heading-title elementor-size-small\">Tickets and Marketing</p>\n\n</div>\n</div>\n<div class=\"elementor-element elementor-element-6b397af1 magneto animated-fast  elementor-widget elementor-widget-heading\" data-id=\"6b397af1\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1200}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\"><span class=\"elementor-heading-title elementor-size-large\"><a href=\"#\">+48 22 913 248 124</a></span></div>\n</div>\n</div>\n</div>\n</div>', 'Liên hệ', '', 'publish', 'closed', 'closed', '', 'lien-he', '', '', '2021-03-13 16:03:52', '2021-03-13 16:03:52', '', 0, 'http://amthanhphuquoc.com/?page_id=141', 0, 'page', '', 0),
(142, 1, '2021-03-13 16:03:52', '2021-03-13 16:03:52', '<div class=\"elementor-column elementor-col-50 elementor-top-column elementor-element elementor-element-56f1e1ff \" data-id=\"56f1e1ff\" data-element_type=\"column\" data-settings=\"{&quot;animation&quot;:&quot;slideInUp&quot;,&quot;animation_delay&quot;:800}\">\n<div class=\"elementor-column-wrap elementor-element-populated\">\n<div class=\"elementor-widget-wrap\">\n<div class=\"elementor-element elementor-element-79f49271 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"79f49271\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:800}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<h1 class=\"elementor-heading-title elementor-size-large\">Contact</h1>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-44f75d77 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"44f75d77\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:900}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<p class=\"elementor-heading-title elementor-size-small\">Media Manager</p>\n\n</div>\n</div>\n<div class=\"elementor-element elementor-element-6fd58a9a magneto animated-fast  elementor-widget elementor-widget-heading\" data-id=\"6fd58a9a\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:900}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\"><span class=\"elementor-heading-title elementor-size-large\"><a href=\"#\">+48 22 223 345 12345</a></span></div>\n</div>\n<div class=\"elementor-element elementor-element-6c83fc85 elementor-widget elementor-widget-spacer\" data-id=\"6c83fc85\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-spacer\">\n<div class=\"elementor-spacer-inner\"></div>\n</div>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-2c4378e4 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"2c4378e4\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1100}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<p class=\"elementor-heading-title elementor-size-small\">Booking</p>\n\n</div>\n</div>\n<div class=\"elementor-element elementor-element-c804d37 magneto animated-fast  elementor-widget elementor-widget-heading\" data-id=\"c804d37\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1100}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\"><span class=\"elementor-heading-title elementor-size-large\"><a href=\"#\">+48 22 113 148 124</a></span></div>\n</div>\n<div class=\"elementor-element elementor-element-19d2d1f5 elementor-widget elementor-widget-spacer\" data-id=\"19d2d1f5\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">\n<div class=\"elementor-widget-container\">\n<div class=\"elementor-spacer\">\n<div class=\"elementor-spacer-inner\"></div>\n</div>\n</div>\n</div>\n<div class=\"elementor-element elementor-element-229e1272 animated-fast  elementor-widget elementor-widget-heading\" data-id=\"229e1272\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1200}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\">\n<p class=\"elementor-heading-title elementor-size-small\">Tickets and Marketing</p>\n\n</div>\n</div>\n<div class=\"elementor-element elementor-element-6b397af1 magneto animated-fast  elementor-widget elementor-widget-heading\" data-id=\"6b397af1\" data-element_type=\"widget\" data-settings=\"{&quot;_animation&quot;:&quot;slideInUp&quot;,&quot;_animation_delay&quot;:1200}\" data-widget_type=\"heading.default\">\n<div class=\"elementor-widget-container\"><span class=\"elementor-heading-title elementor-size-large\"><a href=\"#\">+48 22 913 248 124</a></span></div>\n</div>\n</div>\n</div>\n</div>', 'Liên hệ', '', 'inherit', 'closed', 'closed', '', '141-revision-v1', '', '', '2021-03-13 16:03:52', '2021-03-13 16:03:52', '', 141, 'http://amthanhphuquoc.com/?p=142', 0, 'revision', '', 0),
(145, 1, '2021-03-13 16:09:07', '2021-03-13 16:07:20', '', 'Âm Thanh Ánh Sáng', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2021-03-13 16:09:07', '2021-03-13 16:09:07', '', 0, 'http://amthanhphuquoc.com/?p=145', 1, 'nav_menu_item', '', 0),
(146, 1, '2021-03-13 16:09:07', '2021-03-13 16:08:12', '', 'Tổ Chức Sự Kiện', '', 'publish', 'closed', 'closed', '', 'to-chuc-su-kien', '', '', '2021-03-13 16:09:07', '2021-03-13 16:09:07', '', 0, 'http://amthanhphuquoc.com/?p=146', 2, 'nav_menu_item', '', 0),
(147, 1, '2021-03-13 16:09:07', '2021-03-13 16:08:40', '', 'Màn Hình Led', '', 'publish', 'closed', 'closed', '', 'man-hinh-led', '', '', '2021-03-13 16:09:07', '2021-03-13 16:09:07', '', 0, 'http://amthanhphuquoc.com/?p=147', 3, 'nav_menu_item', '', 0),
(148, 1, '2021-03-13 16:09:07', '2021-03-13 16:09:07', ' ', '', '', 'publish', 'closed', 'closed', '', '148', '', '', '2021-03-13 16:09:07', '2021-03-13 16:09:07', '', 0, 'http://amthanhphuquoc.com/?p=148', 4, 'nav_menu_item', '', 0),
(149, 1, '2021-03-13 16:09:07', '2021-03-13 16:09:07', ' ', '', '', 'publish', 'closed', 'closed', '', '149', '', '', '2021-03-13 16:09:07', '2021-03-13 16:09:07', '', 0, 'http://amthanhphuquoc.com/?p=149', 5, 'nav_menu_item', '', 0),
(150, 1, '2021-03-13 16:09:07', '2021-03-13 16:09:07', ' ', '', '', 'publish', 'closed', 'closed', '', '150', '', '', '2021-03-13 16:09:07', '2021-03-13 16:09:07', '', 0, 'http://amthanhphuquoc.com/?p=150', 6, 'nav_menu_item', '', 0);

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
(1, 'Uncategorized', 'uncategorized', 0),
(3, 'News', 'tin-tuc', 0),
(4, 'Âm Thanh - Ánh Sáng', 'amthanh-anhsang', 0),
(5, 'main-nav', 'main-nav', 0);

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
(49, 4, 0),
(51, 4, 0),
(57, 4, 0),
(114, 3, 0),
(117, 3, 0),
(128, 3, 0),
(130, 3, 0),
(145, 5, 0),
(146, 5, 0),
(147, 5, 0),
(148, 5, 0),
(149, 5, 0),
(150, 5, 0);

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
(1, 1, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 4),
(4, 4, 'category', '', 0, 3),
(5, 5, 'nav_menu', '', 0, 6);

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
(1, 1, 'nickname', 'nguyen.vuhoang'),
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
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"14.161.16.0\";}'),
(19, 1, 'session_tokens', 'a:3:{s:64:\"9c283aab571f91f35fcd55188dc81a137fcc5826b21baa476d2d68a354b5ad72\";a:4:{s:10:\"expiration\";i:1617260746;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.82 Safari/537.36\";s:5:\"login\";i:1616051146;}s:64:\"9a2e19c79b46764a21ff0febd12fe7dd296ea69f17f94260908e4ff5ef01f1fd\";a:4:{s:10:\"expiration\";i:1617285213;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1616075613;}s:64:\"9b976652127ce16e6c601ee8111c01b32e3f2a76de18bea602dde21f4c44505d\";a:4:{s:10:\"expiration\";i:1616860699;s:2:\"ip\";s:12:\"14.161.16.73\";s:2:\"ua\";s:114:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/89.0.4389.90 Safari/537.36\";s:5:\"login\";i:1615651099;}}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:15:\"title-attribute\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '5'),
(23, 1, 'wp_user-settings', 'libraryContent=browse'),
(24, 1, 'wp_user-settings-time', '1616075340'),
(25, 1, 'closedpostboxes_', 'a:0:{}'),
(26, 1, 'metaboxhidden_', 'a:0:{}'),
(27, 1, 'meta-box-order_', 'a:3:{s:6:\"normal\";s:47:\"acf-group_60558bb1cbc2d,acf-group_6055d7bc52498\";s:4:\"side\";s:0:\"\";s:8:\"advanced\";s:0:\"\";}');

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
(1, 'nguyen.vuhoang', '$P$BiN30n2y0zhjDAjhf0vJG2Q9bAoDrD.', 'nguyen-vuhoang', 'vuhoangnguyen49@gmail.com', 'http://amthanh-anhsang.local', '2021-03-15 03:48:37', '', 0, 'nguyen.vuhoang');

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;