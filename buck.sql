-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Mar 15, 2017 at 05:40 PM
-- Server version: 5.5.42
-- PHP Version: 5.6.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buck`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wpengine.com/', '', '2017-01-05 16:04:41', '2017-01-05 16:04:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(191) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://buck.site', 'yes'),
(2, 'home', 'http://buck.site', 'yes'),
(3, 'blogname', 'Buck Productions', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'steve@broadviewstation.com', 'yes'),
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
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:34:"advanced-custom-fields-pro/acf.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:25:"fakerpress/fakerpress.php";i:3;s:27:"svg-support/svg-support.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'buck', 'yes'),
(41, 'stylesheet', 'buck', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
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
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(79, 'widget_text', 'a:0:{}', 'yes'),
(80, 'widget_rss', 'a:0:{}', 'yes'),
(81, 'uninstall_plugins', 'a:2:{s:32:"svg-support copy/svg-support.php";s:22:"bodhi_svgs_deactivated";s:27:"svg-support/svg-support.php";s:22:"bodhi_svgs_deactivated";}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '5', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'initial_db_version', '38590', 'yes'),
(92, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(93, 'fresh_site', '0', 'yes'),
(94, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(97, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(98, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(99, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:19:"primary-widget-area";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(100, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(101, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(102, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(103, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(104, 'cron', 'a:5:{i:1489613668;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1489614911;a:1:{s:34:"check_plugin_updates-SD-mobile-nav";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1489617534;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1489637082;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}s:7:"version";i:2;}', 'yes'),
(106, 'widget_wpe_powered_by_widget', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(113, 'theme_mods_twentyseventeen', 'a:2:{s:18:"custom_css_post_id";i:-1;s:16:"sidebars_widgets";a:2:{s:4:"time";i:1489443669;s:4:"data";a:4:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:9:"sidebar-2";a:0:{}s:9:"sidebar-3";a:0:{}}}}', 'yes'),
(117, 'wpe_notices', 'a:1:{s:4:"read";s:0:"";}', 'yes'),
(118, 'wpe_notices_ttl', '1489436609', 'yes'),
(136, 'can_compress_scripts', '0', 'no'),
(157, 'recently_activated', 'a:0:{}', 'yes'),
(172, 'wpmdb_settings', 'a:11:{s:3:"key";s:40:"5RRX7uf3ma2qSurqrUMAN/K4lbENAvX3Q6BZHm8k";s:10:"allow_pull";b:0;s:10:"allow_push";b:0;s:8:"profiles";a:0:{}s:7:"licence";s:0:"";s:10:"verify_ssl";b:0;s:17:"blacklist_plugins";a:0:{}s:11:"max_request";i:1048576;s:22:"delay_between_requests";i:0;s:18:"prog_tables_hidden";b:1;s:21:"pause_before_finalize";b:0;}', 'no'),
(173, 'wpmdb_schema_version', '1', 'no'),
(174, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:59:"https://downloads.wordpress.org/release/wordpress-4.7.3.zip";s:10:"no_content";s:70:"https://downloads.wordpress.org/release/wordpress-4.7.3-no-content.zip";s:11:"new_bundled";s:71:"https://downloads.wordpress.org/release/wordpress-4.7.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.7.3";s:7:"version";s:5:"4.7.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.7";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1489594005;s:15:"version_checked";s:5:"4.7.3";s:12:"translations";a:0:{}}', 'no'),
(178, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1489594008;s:7:"checked";a:4:{s:4:"buck";s:5:"4.0.3";s:13:"twentyfifteen";s:3:"1.7";s:15:"twentyseventeen";s:3:"1.1";s:13:"twentysixteen";s:3:"1.3";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'no'),
(179, '_site_transient_timeout_browser_cc5d8203ce9b96784a0bea9c5a67de54', '1490039271', 'no'),
(180, '_site_transient_browser_cc5d8203ce9b96784a0bea9c5a67de54', 'a:9:{s:8:"platform";s:9:"Macintosh";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"56.0.2924.87";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'no'),
(191, '_transient_timeout_plugin_slugs', '1489538786', 'no'),
(192, '_transient_plugin_slugs', 'a:9:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:34:"advanced-custom-fields-pro/acf.php";i:2;s:33:"ajax-load-more/ajax-load-more.php";i:3;s:19:"akismet/akismet.php";i:4;s:25:"fakerpress/fakerpress.php";i:5;s:29:"gravityforms/gravityforms.php";i:6;s:9:"hello.php";i:7;s:27:"svg-support/svg-support.php";i:8;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'no'),
(196, 'sdrn_options', 'a:35:{s:7:"enabled";i:1;s:4:"menu";s:0:"";s:20:"custom_for_logged_in";s:2:"no";s:14:"logged_in_menu";s:0:"";s:15:"menu_symbol_pos";s:4:"left";s:9:"bar_title";s:4:"MENU";s:12:"bar_logo_url";s:0:"";s:12:"nesting_icon";s:0:"";s:17:"nesting_icon_open";s:0:"";s:22:"expand_sub_with_parent";s:2:"no";s:10:"display_on";s:12:"screen_width";s:10:"from_width";i:961;s:7:"devices";a:0:{}s:8:"position";s:3:"top";s:8:"how_wide";s:2:"80";s:13:"swipe_actions";s:3:"yes";s:4:"hide";a:0:{}s:7:"zooming";s:2:"no";s:9:"animation";s:11:"sdrn_jquery";s:9:"searchbar";s:2:"no";s:15:"searchbar_label";s:6:"Search";s:7:"bar_bgd";s:7:"#0D0D0D";s:9:"bar_color";s:7:"#F2F2F2";s:8:"menu_bgd";s:7:"#2E2E2E";s:10:"menu_color";s:7:"#CFCFCF";s:16:"menu_color_hover";s:7:"#606060";s:15:"menu_border_top";s:7:"#474747";s:18:"menu_border_bottom";s:7:"#131212";s:23:"menu_border_bottom_show";s:3:"yes";s:9:"open_sans";s:3:"yes";s:15:"icons_for_items";a:0:{}s:23:"logmenu_icons_for_items";a:0:{}s:22:"searchbar_border_color";s:7:"#696969";s:26:"searchbar_background_color";s:7:"#565656";s:16:"font_awesome_css";s:0:"";}', 'yes'),
(197, 'bodhi_svgs_plugin_version', '2.3.6', 'yes'),
(199, 'external_updates-SD-mobile-nav', 'O:8:"stdClass":3:{s:9:"lastCheck";i:1489442112;s:14:"checkedVersion";s:5:"1.5.6";s:6:"update";N;}', 'no'),
(200, 'acf_version', '5.4.8', 'yes'),
(205, 'current_theme', 'buck', 'yes'),
(206, 'theme_mods_buck', 'a:3:{i:0;b:0;s:18:"custom_css_post_id";i:-1;s:18:"nav_menu_locations";a:1:{s:9:"main-menu";i:2;}}', 'yes'),
(207, 'theme_switched', '', 'yes'),
(209, '_site_transient_timeout_available_translations', '1489455561', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(210, '_site_transient_available_translations', 'a:108:{s:2:"af";a:8:{s:8:"language";s:2:"af";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:38:06";s:12:"english_name";s:9:"Afrikaans";s:11:"native_name";s:9:"Afrikaans";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/af.zip";s:3:"iso";a:2:{i:1;s:2:"af";i:2;s:3:"afr";}s:7:"strings";a:1:{s:8:"continue";s:10:"Gaan voort";}}s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:08";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:3:"ary";a:8:{s:8:"language";s:3:"ary";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:35";s:12:"english_name";s:15:"Moroccan Arabic";s:11:"native_name";s:31:"العربية المغربية";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.3/ary.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:3;s:3:"ary";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"as";a:8:{s:8:"language";s:2:"as";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-22 18:59:07";s:12:"english_name";s:8:"Assamese";s:11:"native_name";s:21:"অসমীয়া";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/as.zip";s:3:"iso";a:3:{i:1;s:2:"as";i:2;s:3:"asm";i:3;s:3:"asm";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-06 00:09:27";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:3:"azb";a:8:{s:8:"language";s:3:"azb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-12 20:34:31";s:12:"english_name";s:17:"South Azerbaijani";s:11:"native_name";s:29:"گؤنئی آذربایجان";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:3;s:3:"azb";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:3:"bel";a:8:{s:8:"language";s:3:"bel";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-01 08:27:29";s:12:"english_name";s:10:"Belarusian";s:11:"native_name";s:29:"Беларуская мова";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/bel.zip";s:3:"iso";a:2:{i:1;s:2:"be";i:2;s:3:"bel";}s:7:"strings";a:1:{s:8:"continue";s:20:"Працягнуць";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-06 09:18:57";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:12:"Напред";}}s:5:"bn_BD";a:8:{s:8:"language";s:5:"bn_BD";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-04 16:58:43";s:12:"english_name";s:7:"Bengali";s:11:"native_name";s:15:"বাংলা";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bn_BD.zip";s:3:"iso";a:1:{i:1;s:2:"bn";}s:7:"strings";a:1:{s:8:"continue";s:23:"এগিয়ে চল.";}}s:2:"bo";a:8:{s:8:"language";s:2:"bo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-05 09:44:12";s:12:"english_name";s:7:"Tibetan";s:11:"native_name";s:21:"བོད་ཡིག";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/bo.zip";s:3:"iso";a:2:{i:1;s:2:"bo";i:2;s:3:"tib";}s:7:"strings";a:1:{s:8:"continue";s:24:"མུ་མཐུད།";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-04 20:20:28";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-05 11:34:47";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:3:"ceb";a:8:{s:8:"language";s:3:"ceb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-02 17:25:51";s:12:"english_name";s:7:"Cebuano";s:11:"native_name";s:7:"Cebuano";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip";s:3:"iso";a:2:{i:2;s:3:"ceb";i:3;s:3:"ceb";}s:7:"strings";a:1:{s:8:"continue";s:7:"Padayun";}}s:5:"cs_CZ";a:8:{s:8:"language";s:5:"cs_CZ";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 08:46:26";s:12:"english_name";s:5:"Czech";s:11:"native_name";s:12:"Čeština‎";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/cs_CZ.zip";s:3:"iso";a:2:{i:1;s:2:"cs";i:2;s:3:"ces";}s:7:"strings";a:1:{s:8:"continue";s:11:"Pokračovat";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:29";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-28 00:33:54";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-18 10:54:37";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:03";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:14:"de_CH_informal";a:8:{s:8:"language";s:14:"de_CH_informal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:39:59";s:12:"english_name";s:30:"German (Switzerland, Informal)";s:11:"native_name";s:21:"Deutsch (Schweiz, Du)";s:7:"package";s:73:"https://downloads.wordpress.org/translation/core/4.7.3/de_CH_informal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-18 10:45:41";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:6:"Weiter";}}s:3:"dzo";a:8:{s:8:"language";s:3:"dzo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-06-29 08:59:03";s:12:"english_name";s:8:"Dzongkha";s:11:"native_name";s:18:"རྫོང་ཁ";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip";s:3:"iso";a:2:{i:1;s:2:"dz";i:2;s:3:"dzo";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-21 10:37:42";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-27 00:40:28";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:34";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_NZ";a:8:{s:8:"language";s:5:"en_NZ";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:30";s:12:"english_name";s:21:"English (New Zealand)";s:11:"native_name";s:21:"English (New Zealand)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_NZ.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_ZA";a:8:{s:8:"language";s:5:"en_ZA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:53:43";s:12:"english_name";s:22:"English (South Africa)";s:11:"native_name";s:22:"English (South Africa)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_ZA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-28 03:10:25";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:47:07";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-17 15:41:04";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_AR";a:8:{s:8:"language";s:5:"es_AR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:41:31";s:12:"english_name";s:19:"Spanish (Argentina)";s:11:"native_name";s:21:"Español de Argentina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_AR.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_VE";a:8:{s:8:"language";s:5:"es_VE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:53:56";s:12:"english_name";s:19:"Spanish (Venezuela)";s:11:"native_name";s:21:"Español de Venezuela";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_VE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CO";a:8:{s:8:"language";s:5:"es_CO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:18:"Spanish (Colombia)";s:11:"native_name";s:20:"Español de Colombia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_CO.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-28 20:09:49";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-09 09:36:22";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_GT";a:8:{s:8:"language";s:5:"es_GT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:37";s:12:"english_name";s:19:"Spanish (Guatemala)";s:11:"native_name";s:21:"Español de Guatemala";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_GT.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:28";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 16:37:11";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:33";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-02 15:21:03";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:25";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-19 21:32:45";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_CA";a:8:{s:8:"language";s:5:"fr_CA";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-03 21:08:25";s:12:"english_name";s:15:"French (Canada)";s:11:"native_name";s:19:"Français du Canada";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_CA.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:5:"fr_BE";a:8:{s:8:"language";s:5:"fr_BE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:32";s:12:"english_name";s:16:"French (Belgium)";s:11:"native_name";s:21:"Français de Belgique";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/fr_BE.zip";s:3:"iso";a:2:{i:1;s:2:"fr";i:2;s:3:"fra";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-08-23 17:41:37";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:40:27";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"gu";a:8:{s:8:"language";s:2:"gu";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-07 18:47:03";s:12:"english_name";s:8:"Gujarati";s:11:"native_name";s:21:"ગુજરાતી";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/gu.zip";s:3:"iso";a:2:{i:1;s:2:"gu";i:2;s:3:"guj";}s:7:"strings";a:1:{s:8:"continue";s:31:"ચાલુ રાખવું";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.4.2";s:7:"updated";s:19:"2015-12-05 00:59:09";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip";s:3:"iso";a:1:{i:3;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-29 21:21:10";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:8:"המשך";}}s:5:"hi_IN";a:8:{s:8:"language";s:5:"hi_IN";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-03 12:18:25";s:12:"english_name";s:5:"Hindi";s:11:"native_name";s:18:"हिन्दी";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/hi_IN.zip";s:3:"iso";a:2:{i:1;s:2:"hi";i:2;s:3:"hin";}s:7:"strings";a:1:{s:8:"continue";s:12:"जारी";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-29 13:53:21";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:39";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:10:"Folytatás";}}s:2:"hy";a:8:{s:8:"language";s:2:"hy";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-03 16:21:10";s:12:"english_name";s:8:"Armenian";s:11:"native_name";s:14:"Հայերեն";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip";s:3:"iso";a:2:{i:1;s:2:"hy";i:2;s:3:"hye";}s:7:"strings";a:1:{s:8:"continue";s:20:"Շարունակել";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-06 16:02:41";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-16 13:36:46";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-04 15:41:03";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-03 01:42:19";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ka_GE";a:8:{s:8:"language";s:5:"ka_GE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:24";s:12:"english_name";s:8:"Georgian";s:11:"native_name";s:21:"ქართული";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ka_GE.zip";s:3:"iso";a:2:{i:1;s:2:"ka";i:2;s:3:"kat";}s:7:"strings";a:1:{s:8:"continue";s:30:"გაგრძელება";}}s:3:"kab";a:8:{s:8:"language";s:3:"kab";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:39:13";s:12:"english_name";s:6:"Kabyle";s:11:"native_name";s:9:"Taqbaylit";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/kab.zip";s:3:"iso";a:2:{i:2;s:3:"kab";i:3;s:3:"kab";}s:7:"strings";a:1:{s:8:"continue";s:6:"Kemmel";}}s:2:"km";a:8:{s:8:"language";s:2:"km";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-07 02:07:59";s:12:"english_name";s:5:"Khmer";s:11:"native_name";s:27:"ភាសាខ្មែរ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/km.zip";s:3:"iso";a:2:{i:1;s:2:"km";i:2;s:3:"khm";}s:7:"strings";a:1:{s:8:"continue";s:12:"បន្ត";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:39:53";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:3:"ckb";a:8:{s:8:"language";s:3:"ckb";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:25";s:12:"english_name";s:16:"Kurdish (Sorani)";s:11:"native_name";s:13:"كوردی‎";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/ckb.zip";s:3:"iso";a:2:{i:1;s:2:"ku";i:3;s:3:"ckb";}s:7:"strings";a:1:{s:8:"continue";s:30:"به‌رده‌وام به‌";}}s:2:"lo";a:8:{s:8:"language";s:2:"lo";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 09:59:23";s:12:"english_name";s:3:"Lao";s:11:"native_name";s:21:"ພາສາລາວ";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip";s:3:"iso";a:2:{i:1;s:2:"lo";i:2;s:3:"lao";}s:7:"strings";a:1:{s:8:"continue";s:18:"ຕໍ່​ໄປ";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:34";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:2:"lv";a:8:{s:8:"language";s:2:"lv";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-27 07:51:28";s:12:"english_name";s:7:"Latvian";s:11:"native_name";s:16:"Latviešu valoda";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/lv.zip";s:3:"iso";a:2:{i:1;s:2:"lv";i:2;s:3:"lav";}s:7:"strings";a:1:{s:8:"continue";s:9:"Turpināt";}}s:5:"mk_MK";a:8:{s:8:"language";s:5:"mk_MK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:41";s:12:"english_name";s:10:"Macedonian";s:11:"native_name";s:31:"Македонски јазик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/mk_MK.zip";s:3:"iso";a:2:{i:1;s:2:"mk";i:2;s:3:"mkd";}s:7:"strings";a:1:{s:8:"continue";s:16:"Продолжи";}}s:5:"ml_IN";a:8:{s:8:"language";s:5:"ml_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:43:32";s:12:"english_name";s:9:"Malayalam";s:11:"native_name";s:18:"മലയാളം";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ml";i:2;s:3:"mal";}s:7:"strings";a:1:{s:8:"continue";s:18:"തുടരുക";}}s:2:"mn";a:8:{s:8:"language";s:2:"mn";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-12 07:29:35";s:12:"english_name";s:9:"Mongolian";s:11:"native_name";s:12:"Монгол";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip";s:3:"iso";a:2:{i:1;s:2:"mn";i:2;s:3:"mon";}s:7:"strings";a:1:{s:8:"continue";s:24:"Үргэлжлүүлэх";}}s:2:"mr";a:8:{s:8:"language";s:2:"mr";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:42:37";s:12:"english_name";s:7:"Marathi";s:11:"native_name";s:15:"मराठी";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/mr.zip";s:3:"iso";a:2:{i:1;s:2:"mr";i:2;s:3:"mar";}s:7:"strings";a:1:{s:8:"continue";s:25:"सुरु ठेवा";}}s:5:"ms_MY";a:8:{s:8:"language";s:5:"ms_MY";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-05 09:45:10";s:12:"english_name";s:5:"Malay";s:11:"native_name";s:13:"Bahasa Melayu";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ms_MY.zip";s:3:"iso";a:2:{i:1;s:2:"ms";i:2;s:3:"msa";}s:7:"strings";a:1:{s:8:"continue";s:8:"Teruskan";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:6:"4.1.16";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:65:"https://downloads.wordpress.org/translation/core/4.1.16/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ဆောင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:31";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"ne_NP";a:8:{s:8:"language";s:5:"ne_NP";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:31";s:12:"english_name";s:6:"Nepali";s:11:"native_name";s:18:"नेपाली";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ne_NP.zip";s:3:"iso";a:2:{i:1;s:2:"ne";i:2;s:3:"nep";}s:7:"strings";a:1:{s:8:"continue";s:43:"जारी राख्नुहोस्";}}s:12:"nl_NL_formal";a:8:{s:8:"language";s:12:"nl_NL_formal";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-16 13:24:21";s:12:"english_name";s:14:"Dutch (Formal)";s:11:"native_name";s:20:"Nederlands (Formeel)";s:7:"package";s:71:"https://downloads.wordpress.org/translation/core/4.7.3/nl_NL_formal.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-03 13:02:03";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nl_BE";a:8:{s:8:"language";s:5:"nl_BE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:49:13";s:12:"english_name";s:15:"Dutch (Belgium)";s:11:"native_name";s:20:"Nederlands (België)";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nl_BE.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:57";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-02 13:47:38";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pa_IN";a:8:{s:8:"language";s:5:"pa_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-16 05:19:43";s:12:"english_name";s:7:"Punjabi";s:11:"native_name";s:18:"ਪੰਜਾਬੀ";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip";s:3:"iso";a:2:{i:1;s:2:"pa";i:2;s:3:"pan";}s:7:"strings";a:1:{s:8:"continue";s:25:"ਜਾਰੀ ਰੱਖੋ";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-09 22:44:40";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:6:"4.1.16";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.1.16/ps.zip";s:3:"iso";a:2:{i:1;s:2:"ps";i:2;s:3:"pus";}s:7:"strings";a:1:{s:8:"continue";s:19:"دوام ورکړه";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-17 03:35:07";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-20 18:48:35";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"rhg";a:8:{s:8:"language";s:3:"rhg";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-16 13:03:18";s:12:"english_name";s:8:"Rohingya";s:11:"native_name";s:8:"Ruáinga";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip";s:3:"iso";a:1:{i:3;s:3:"rhg";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:42:11";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-03 06:09:17";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:3:"sah";a:8:{s:8:"language";s:3:"sah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-21 02:06:41";s:12:"english_name";s:5:"Sakha";s:11:"native_name";s:14:"Сахалыы";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip";s:3:"iso";a:2:{i:2;s:3:"sah";i:3;s:3:"sah";}s:7:"strings";a:1:{s:8:"continue";s:12:"Салҕаа";}}s:5:"si_LK";a:8:{s:8:"language";s:5:"si_LK";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-12 06:00:52";s:12:"english_name";s:7:"Sinhala";s:11:"native_name";s:15:"සිංහල";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip";s:3:"iso";a:2:{i:1;s:2:"si";i:2;s:3:"sin";}s:7:"strings";a:1:{s:8:"continue";s:44:"දිගටම කරගෙන යන්න";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-03-02 14:28:53";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-08 17:57:45";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:8:"Nadaljuj";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-29 18:17:50";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:41:03";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:40:55";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:3:"szl";a:8:{s:8:"language";s:3:"szl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-09-24 19:58:14";s:12:"english_name";s:8:"Silesian";s:11:"native_name";s:17:"Ślōnskŏ gŏdka";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip";s:3:"iso";a:1:{i:3;s:3:"szl";}s:7:"strings";a:1:{s:8:"continue";s:13:"Kōntynuować";}}s:5:"ta_IN";a:8:{s:8:"language";s:5:"ta_IN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-27 03:22:47";s:12:"english_name";s:5:"Tamil";s:11:"native_name";s:15:"தமிழ்";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip";s:3:"iso";a:2:{i:1;s:2:"ta";i:2;s:3:"tam";}s:7:"strings";a:1:{s:8:"continue";s:24:"தொடரவும்";}}s:2:"te";a:8:{s:8:"language";s:2:"te";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:47:39";s:12:"english_name";s:6:"Telugu";s:11:"native_name";s:18:"తెలుగు";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/te.zip";s:3:"iso";a:2:{i:1;s:2:"te";i:2;s:3:"tel";}s:7:"strings";a:1:{s:8:"continue";s:30:"కొనసాగించు";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2017-01-26 15:48:43";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-30 02:38:08";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-17 11:46:52";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"tt_RU";a:8:{s:8:"language";s:5:"tt_RU";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-11-20 20:20:50";s:12:"english_name";s:5:"Tatar";s:11:"native_name";s:19:"Татар теле";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip";s:3:"iso";a:2:{i:1;s:2:"tt";i:2;s:3:"tat";}s:7:"strings";a:1:{s:8:"continue";s:17:"дәвам итү";}}s:3:"tah";a:8:{s:8:"language";s:3:"tah";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-03-06 18:39:39";s:12:"english_name";s:8:"Tahitian";s:11:"native_name";s:10:"Reo Tahiti";s:7:"package";s:62:"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip";s:3:"iso";a:3:{i:1;s:2:"ty";i:2;s:3:"tah";i:3;s:3:"tah";}s:7:"strings";a:1:{s:8:"continue";s:0:"";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.7.2";s:7:"updated";s:19:"2016-12-05 09:23:39";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.2/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-21 17:42:28";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:2:"ur";a:8:{s:8:"language";s:2:"ur";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-30 07:08:17";s:12:"english_name";s:4:"Urdu";s:11:"native_name";s:8:"اردو";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/ur.zip";s:3:"iso";a:2:{i:1;s:2:"ur";i:2;s:3:"urd";}s:7:"strings";a:1:{s:8:"continue";s:19:"جاری رکھیں";}}s:5:"uz_UZ";a:8:{s:8:"language";s:5:"uz_UZ";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-15 15:45:53";s:12:"english_name";s:5:"Uzbek";s:11:"native_name";s:11:"O‘zbekcha";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/uz_UZ.zip";s:3:"iso";a:2:{i:1;s:2:"uz";i:2;s:3:"uzb";}s:7:"strings";a:1:{s:8:"continue";s:11:"Davom etish";}}s:2:"vi";a:8:{s:8:"language";s:2:"vi";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-27 02:33:07";s:12:"english_name";s:10:"Vietnamese";s:11:"native_name";s:14:"Tiếng Việt";s:7:"package";s:61:"https://downloads.wordpress.org/translation/core/4.7.3/vi.zip";s:3:"iso";a:2:{i:1;s:2:"vi";i:2;s:3:"vie";}s:7:"strings";a:1:{s:8:"continue";s:12:"Tiếp tục";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:54:45";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}s:5:"zh_HK";a:8:{s:8:"language";s:5:"zh_HK";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-01-26 15:55:14";s:12:"english_name";s:19:"Chinese (Hong Kong)";s:11:"native_name";s:16:"香港中文版	";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_HK.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.7.3";s:7:"updated";s:19:"2017-02-14 16:53:54";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:64:"https://downloads.wordpress.org/translation/core/4.7.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}}', 'no'),
(211, 'WPLANG', '', 'yes'),
(216, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(227, 'category_children', 'a:0:{}', 'yes'),
(228, 'bodhi_svgs_admin_notice_dismissed', '1', 'yes'),
(234, '_transient_timeout_feed_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1489563952', 'no'),
(235, '_transient_timeout_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1489563952', 'no'),
(236, '_transient_feed_mod_ac0b00fe65abe10e0c5b588f3ed8c7ca', '1489520752', 'no'),
(237, '_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9', '1489563953', 'no'),
(238, '_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1489563953', 'no'),
(239, '_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9', '1489520753', 'no'),
(240, '_transient_timeout_feed_b9388c83948825c1edaef0d856b7b109', '1489563954', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(241, '_transient_feed_b9388c83948825c1edaef0d856b7b109', 'a:4:{s:5:"child";a:1:{s:0:"";a:1:{s:3:"rss";a:1:{i:0;a:6:{s:4:"data";s:3:"\n	\n";s:7:"attribs";a:1:{s:0:"";a:1:{s:7:"version";s:3:"2.0";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:1:{s:0:"";a:1:{s:7:"channel";a:1:{i:0;a:6:{s:4:"data";s:117:"\n		\n		\n		\n		\n		\n		\n				\n\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n		\n\n	";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:7:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:45:"https://wordpress.org/plugins/browse/popular/";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:34:"WordPress Plugins » View: Popular";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:8:"language";a:1:{i:0;a:5:{s:4:"data";s:5:"en-US";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 14 Mar 2017 19:14:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:9:"generator";a:1:{i:0;a:5:{s:4:"data";s:25:"http://bbpress.org/?v=1.1";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"item";a:30:{i:0;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"WP Super Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/wp-super-cache/#post-2572";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Nov 2007 11:40:04 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2572@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:73:"A very fast caching engine for WordPress that produces static html files.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Donncha O Caoimh";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:1;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WooCommerce";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/woocommerce/#post-29860";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 05 Sep 2011 08:13:36 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29860@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:97:"WooCommerce is a powerful, extendable eCommerce plugin that helps you sell anything. Beautifully.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"WooThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:2;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:9:"Yoast SEO";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:54:"https://wordpress.org/plugins/wordpress-seo/#post-8321";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 01 Jan 2009 20:34:44 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"8321@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:118:"Improve your WordPress SEO: Write better content and have a fully optimized WordPress site using the Yoast SEO plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"Joost de Valk";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:3;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:22:"Advanced Custom Fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/advanced-custom-fields/#post-25254";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 17 Mar 2011 04:07:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"25254@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:68:"Customise WordPress with powerful, professional and intuitive fields";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"elliotcondon";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:4;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:24:"Jetpack by WordPress.com";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:49:"https://wordpress.org/plugins/jetpack/#post-23862";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 Jan 2011 02:21:38 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"23862@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"The one plugin you need for stats, related posts, search engine optimization, social sharing, protection, backups, speed, and email list management.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Automattic";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:5;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Hello Dolly";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/hello-dolly/#post-5790";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 29 May 2008 22:11:34 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"5790@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"This is not just a plugin, it symbolizes the hope and enthusiasm of an entire generation summed up in two words sung most famously by Louis Armstrong.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:6;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"W3 Total Cache";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/w3-total-cache/#post-12073";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 29 Jul 2009 18:46:31 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"12073@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:144:"Search Engine (SEO) &#38; Performance Optimization (WPO) via caching. Integrated caching: CDN, Minify, Page, Object, Fragment, Database support.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Frederick Townes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:7;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WordPress Importer";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wordpress-importer/#post-18101";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 20 May 2010 17:42:45 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"18101@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:101:"Import posts, pages, comments, custom fields, categories, tags and more from a WordPress export file.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Brian Colinger";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:8;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"Wordfence Security";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wordfence/#post-29832";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 04 Sep 2011 03:13:51 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"29832@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:149:"Secure your website with the most comprehensive WordPress security plugin. Firewall, malware scan, blocking, live traffic, login security &#38; more.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Wordfence";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:9;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"WP-PageNavi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:51:"https://wordpress.org/plugins/wp-pagenavi/#post-363";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 23:17:57 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"363@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:49:"Adds a more advanced paging navigation interface.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Lester Chan";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:10;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"Google XML Sitemaps";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:64:"https://wordpress.org/plugins/google-sitemap-generator/#post-132";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:31:32 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"132@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:105:"This plugin will generate a special XML sitemap which will help search engines to better index your blog.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Arne Brachhold";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:11;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:49:"Google Analytics for WordPress by MonsterInsights";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:71:"https://wordpress.org/plugins/google-analytics-for-wordpress/#post-2316";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 14 Sep 2007 12:15:27 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2316@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:125:"The best Google Analytics plugin for WordPress. See how visitors find and use your website, so you can keep them coming back.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Syed Balkhi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:12;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"TinyMCE Advanced";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:57:"https://wordpress.org/plugins/tinymce-advanced/#post-2082";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 27 Jun 2007 15:00:26 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2082@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:58:"Extends and enhances TinyMCE, the WordPress Visual Editor.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Andrew Ozz";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:13;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:42:"NextGEN Gallery - WordPress Gallery Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:56:"https://wordpress.org/plugins/nextgen-gallery/#post-1169";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 23 Apr 2007 20:08:06 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"1169@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:123:"The most popular WordPress gallery plugin and one of the most popular plugins of all time with over 16.5 million downloads.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:9:"Alex Rabe";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:14;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:35:"UpdraftPlus WordPress Backup Plugin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/updraftplus/#post-38058";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 21 May 2012 15:14:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"38058@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:148:"Backup and restoration made easy. Complete backups; manual or scheduled (backup to S3, Dropbox, Google Drive, Rackspace, FTP, SFTP, email + others).";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"David Anderson";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:15;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Contact Form 7";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/contact-form-7/#post-2141";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 02 Aug 2007 12:45:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2141@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:54:"Just another contact form plugin. Simple but flexible.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:16;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:7:"Akismet";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:46:"https://wordpress.org/plugins/akismet/#post-15";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 09 Mar 2007 22:11:30 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:33:"15@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Akismet checks your comments and contact form submissions against our global database of spam to protect you and your site from malicious content.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:14:"Matt Mullenweg";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:17;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Really Simple CAPTCHA";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/really-simple-captcha/#post-9542";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 09 Mar 2009 02:17:35 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"9542@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:138:"Really Simple CAPTCHA is a CAPTCHA module intended to be called from other plugins. It is originally created for my Contact Form 7 plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:16:"Takayuki Miyoshi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:18;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:19:"All in One SEO Pack";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/all-in-one-seo-pack/#post-753";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 30 Mar 2007 20:08:18 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:34:"753@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:83:"The original SEO plugin for WordPress, downloaded over 30,000,000 times since 2007.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:8:"uberdose";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:19;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:14:"Duplicate Post";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:55:"https://wordpress.org/plugins/duplicate-post/#post-2646";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Wed, 05 Dec 2007 17:40:03 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"2646@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:22:"Clone posts and pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:4:"Lopo";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:20;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:26:"Page Builder by SiteOrigin";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/siteorigin-panels/#post-51888";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 11 Apr 2013 10:36:42 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"51888@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:111:"Build responsive page layouts using the widgets you know and love using this simple drag and drop page builder.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:21;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:21:"Regenerate Thumbnails";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:62:"https://wordpress.org/plugins/regenerate-thumbnails/#post-6743";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 23 Aug 2008 14:38:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:35:"6743@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:76:"Allows you to regenerate your thumbnails after changing the thumbnail sizes.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:25:"Alex Mills (Viper007Bond)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:22;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:33:"Google Analytics Dashboard for WP";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:75:"https://wordpress.org/plugins/google-analytics-dashboard-for-wp/#post-50539";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sun, 10 Mar 2013 17:07:11 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"50539@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:125:"Displays Google Analytics stats in your WordPress Dashboard. Inserts the latest Google Analytics tracking code in your pages.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Alin Marcu";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:23;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:10:"Duplicator";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:52:"https://wordpress.org/plugins/duplicator/#post-26607";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Mon, 16 May 2011 12:15:41 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26607@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:88:"Duplicate, clone, backup, move and transfer an entire site from one location to another.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Cory Lamle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:24;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:16:"Disable Comments";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:58:"https://wordpress.org/plugins/disable-comments/#post-26907";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 27 May 2011 04:42:58 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"26907@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:150:"Allows administrators to globally disable comments on their site. Comments can be disabled according to post type. Multisite friendly. Provides tool t";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:10:"Samir Shah";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:25;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:18:"WP Multibyte Patch";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/wp-multibyte-patch/#post-28395";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 14 Jul 2011 12:22:53 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"28395@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:71:"Multibyte functionality enhancement for the WordPress Japanese package.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:13:"plugin-master";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:26;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:27:"Black Studio TinyMCE Widget";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:69:"https://wordpress.org/plugins/black-studio-tinymce-widget/#post-31973";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Thu, 10 Nov 2011 15:06:14 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"31973@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:39:"The visual editor widget for Wordpress.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Marco Chiesi";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:27;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:25:"SiteOrigin Widgets Bundle";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:59:"https://wordpress.org/plugins/so-widgets-bundle/#post-67824";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Sat, 24 May 2014 14:27:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"67824@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:128:"A collection of all widgets, neatly bundled into a single plugin. It&#039;s also a framework to code your own widgets on top of.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:11:"Greg Priday";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:28;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:46:"iThemes Security (formerly Better WP Security)";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:60:"https://wordpress.org/plugins/better-wp-security/#post-21738";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Fri, 22 Oct 2010 22:06:05 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"21738@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:146:"Take the guesswork out of WordPress security. iThemes Security offers 30+ ways to lock down WordPress in an easy-to-use WordPress security plugin.";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:7:"iThemes";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}i:29;a:6:{s:4:"data";s:30:"\n			\n			\n			\n			\n			\n			\n					";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";s:5:"child";a:2:{s:0:"";a:5:{s:5:"title";a:1:{i:0;a:5:{s:4:"data";s:11:"Ninja Forms";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:53:"https://wordpress.org/plugins/ninja-forms/#post-33147";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:7:"pubDate";a:1:{i:0;a:5:{s:4:"data";s:31:"Tue, 20 Dec 2011 18:11:48 +0000";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:4:"guid";a:1:{i:0;a:5:{s:4:"data";s:36:"33147@https://wordpress.org/plugins/";s:7:"attribs";a:1:{s:0:"";a:1:{s:11:"isPermaLink";s:5:"false";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}s:11:"description";a:1:{i:0;a:5:{s:4:"data";s:147:"Drag and drop fields in an intuitive UI to create create contact forms, email subscription forms, order forms, payment forms, send emails and more!";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}s:32:"http://purl.org/dc/elements/1.1/";a:1:{s:7:"creator";a:1:{i:0;a:5:{s:4:"data";s:12:"Kevin Stover";s:7:"attribs";a:0:{}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}s:27:"http://www.w3.org/2005/Atom";a:1:{s:4:"link";a:1:{i:0;a:5:{s:4:"data";s:0:"";s:7:"attribs";a:1:{s:0:"";a:3:{s:4:"href";s:46:"https://wordpress.org/plugins/rss/view/popular";s:3:"rel";s:4:"self";s:4:"type";s:19:"application/rss+xml";}}s:8:"xml_base";s:0:"";s:17:"xml_base_explicit";b:0;s:8:"xml_lang";s:0:"";}}}}}}}}}}}}s:4:"type";i:128;s:7:"headers";O:42:"Requests_Utility_CaseInsensitiveDictionary":1:{s:7:"\0*\0data";a:12:{s:6:"server";s:5:"nginx";s:4:"date";s:29:"Tue, 14 Mar 2017 19:46:08 GMT";s:12:"content-type";s:23:"text/xml; charset=UTF-8";s:4:"vary";s:15:"Accept-Encoding";s:25:"strict-transport-security";s:11:"max-age=360";s:7:"expires";s:29:"Tue, 14 Mar 2017 19:49:45 GMT";s:13:"cache-control";s:0:"";s:6:"pragma";s:0:"";s:13:"last-modified";s:31:"Tue, 14 Mar 2017 19:14:45 +0000";s:15:"x-frame-options";s:10:"SAMEORIGIN";s:4:"x-nc";s:11:"HIT lax 250";s:16:"content-encoding";s:4:"gzip";}}s:5:"build";s:14:"20130911080210";}', 'no'),
(242, '_transient_timeout_feed_mod_b9388c83948825c1edaef0d856b7b109', '1489563954', 'no'),
(243, '_transient_feed_mod_b9388c83948825c1edaef0d856b7b109', '1489520754', 'no'),
(244, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1489563954', 'no'),
(245, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wordpress.org/news/2017/03/wordpress-4-7-3-security-and-maintenance-release/''>WordPress 4.7.3 Security and Maintenance Release</a> <span class="rss-date">March 6, 2017</span><div class="rssSummary">WordPress 4.7.3 is now available. This is a security release for all previous versions and we strongly encourage you to update your sites immediately. WordPress versions 4.7.2 and earlier are affected by six security issues: Cross-site scripting (XSS) via media file metadata.  Reported by Chris Andrè Dale, Yorick Koster, and Simon P. Briggs. Control characters can trick redirect [&hellip;]</div></li></ul></div><div class="rss-widget"><ul><li><a class=''rsswidget'' href=''https://wptavern.com/varying-vagrant-vagrants-2-0-0-introduces-yaml-configuration-revamps-documentation''>WPTavern: Varying Vagrant Vagrants 2.0.0 Introduces YAML Configuration, Revamps Documentation</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/wordpress-com-updates-its-post-editor-with-a-distraction-free-interface''>WPTavern: WordPress.com Updates Its Post Editor With a Distraction-Free Interface</a></li><li><a class=''rsswidget'' href=''https://wptavern.com/john-maedas-2017-design-in-tech-report-puts-the-spotlight-on-inclusive-design''>WPTavern: John Maeda’s 2017 Design in Tech Report Puts the Spotlight on Inclusive Design</a></li></ul></div><div class="rss-widget"><ul><li class="dashboard-news-plugin"><span>Popular Plugin:</span> SiteOrigin Widgets Bundle&nbsp;<a href="plugin-install.php?tab=plugin-information&amp;plugin=so-widgets-bundle&amp;_wpnonce=4ad2c2757c&amp;TB_iframe=true&amp;width=600&amp;height=800" class="thickbox open-plugin-details-modal" aria-label="Install SiteOrigin Widgets Bundle">(Install)</a></li></ul></div>', 'no'),
(252, '_transient_timeout_acf_get_remote_plugin_info', '1489680039', 'no'),
(253, '_transient_acf_get_remote_plugin_info', 'a:12:{s:4:"name";s:26:"Advanced Custom Fields PRO";s:4:"slug";s:26:"advanced-custom-fields-pro";s:8:"homepage";s:37:"https://www.advancedcustomfields.com/";s:7:"version";s:6:"5.5.10";s:6:"author";s:13:"Elliot Condon";s:10:"author_url";s:28:"http://www.elliotcondon.com/";s:12:"contributors";s:12:"elliotcondon";s:8:"requires";s:5:"3.6.0";s:6:"tested";s:5:"4.7.0";s:6:"tagged";s:123:"acf, advanced, custom, field, fields, custom field, custom fields, simple fields, magic fields, more fields, repeater, edit";s:9:"changelog";s:1015:"<h4>5.5.10</h4><ul><li>API: Added new functionality to the `acf_form()` function:</li><li>- added new <code>html_updated_message</code> setting</li><li>- added new <code>html_submit_button</code> setting</li><li>- added new <code>html_submit_spinner</code> setting</li><li>- added new <code>acf/pre_submit_form</code> filter run when form is successfully submit (before saving $_POST)</li><li>- added new <code>acf/submit_form</code> action run when form is successfully submit (after saving $_POST)</li><li>- added new <code>%post_id%</code> replace string to the <code>return</code> setting</li><li>- added new encryption logic to prevent $_POST exploits</li><li>- added new `acf_register_form()` function</li><li>Core: Fixed bug preventing values being loaded on a new post/page preview</li><li>Core: Fixed missing <code>Bulk Actions</code> dropdown on sync screen when no field groups exist</li><li>Core: Fixed bug ignoring PHP field groups if exists in JSON</li><li>Core: Minor fixes and improvements</li></ul>";s:14:"upgrade_notice";s:0:"";}', 'no'),
(254, '_site_transient_timeout_theme_roots', '1489595440', 'no'),
(255, '_site_transient_theme_roots', 'a:4:{s:4:"buck";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:15:"twentyseventeen";s:7:"/themes";s:13:"twentysixteen";s:7:"/themes";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(259, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1489594007;s:8:"response";a:1:{s:34:"advanced-custom-fields-pro/acf.php";O:8:"stdClass":5:{s:4:"slug";s:26:"advanced-custom-fields-pro";s:6:"plugin";s:34:"advanced-custom-fields-pro/acf.php";s:11:"new_version";s:6:"5.5.10";s:3:"url";s:37:"https://www.advancedcustomfields.com/";s:7:"package";s:0:"";}}s:12:"translations";a:0:{}s:9:"no_update";a:7:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:6:"4.4.11";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:72:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.11.zip";}s:33:"ajax-load-more/ajax-load-more.php";O:8:"stdClass":6:{s:2:"id";s:5:"51135";s:4:"slug";s:14:"ajax-load-more";s:6:"plugin";s:33:"ajax-load-more/ajax-load-more.php";s:11:"new_version";s:6:"2.14.0";s:3:"url";s:45:"https://wordpress.org/plugins/ajax-load-more/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/ajax-load-more.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:3:"3.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:54:"https://downloads.wordpress.org/plugin/akismet.3.3.zip";}s:25:"fakerpress/fakerpress.php";O:8:"stdClass":6:{s:2:"id";s:5:"51295";s:4:"slug";s:10:"fakerpress";s:6:"plugin";s:25:"fakerpress/fakerpress.php";s:11:"new_version";s:5:"0.4.7";s:3:"url";s:41:"https://wordpress.org/plugins/fakerpress/";s:7:"package";s:53:"https://downloads.wordpress.org/plugin/fakerpress.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:27:"svg-support/svg-support.php";O:8:"stdClass":7:{s:2:"id";s:5:"52275";s:4:"slug";s:11:"svg-support";s:6:"plugin";s:27:"svg-support/svg-support.php";s:11:"new_version";s:5:"2.3.6";s:3:"url";s:42:"https://wordpress.org/plugins/svg-support/";s:7:"package";s:60:"https://downloads.wordpress.org/plugin/svg-support.2.3.6.zip";s:14:"upgrade_notice";s:115:"Adds support for older browsers, fixes a couple of seemingly isolated errors reported, removes some redundant code.";}s:31:"wp-migrate-db/wp-migrate-db.php";O:8:"stdClass":6:{s:2:"id";s:4:"9135";s:4:"slug";s:13:"wp-migrate-db";s:6:"plugin";s:31:"wp-migrate-db/wp-migrate-db.php";s:11:"new_version";s:5:"0.9.2";s:3:"url";s:44:"https://wordpress.org/plugins/wp-migrate-db/";s:7:"package";s:62:"https://downloads.wordpress.org/plugin/wp-migrate-db.0.9.2.zip";}}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=654 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 5, 'inline_featured_image', '0'),
(3, 5, '_edit_lock', '1489539949:3'),
(4, 5, '_edit_last', '3'),
(5, 5, '_wp_page_template', 'templates/page-home.php'),
(6, 7, 'inline_featured_image', '0'),
(7, 7, '_menu_item_type', 'post_type'),
(8, 7, '_menu_item_menu_item_parent', '0'),
(9, 7, '_menu_item_object_id', '5'),
(10, 7, '_menu_item_object', 'page'),
(11, 7, '_menu_item_target', ''),
(12, 7, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(13, 7, '_menu_item_xfn', ''),
(14, 7, '_menu_item_url', ''),
(16, 8, 'inline_featured_image', '0'),
(17, 8, '_menu_item_type', 'post_type'),
(18, 8, '_menu_item_menu_item_parent', '0'),
(19, 8, '_menu_item_object_id', '5'),
(20, 8, '_menu_item_object', 'page'),
(21, 8, '_menu_item_target', ''),
(22, 8, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(23, 8, '_menu_item_xfn', ''),
(24, 8, '_menu_item_url', ''),
(25, 8, '_menu_item_orphaned', '1489444892'),
(26, 9, 'inline_featured_image', '0'),
(27, 9, '_menu_item_type', 'post_type'),
(28, 9, '_menu_item_menu_item_parent', '0'),
(29, 9, '_menu_item_object_id', '2'),
(30, 9, '_menu_item_object', 'page'),
(31, 9, '_menu_item_target', ''),
(32, 9, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(33, 9, '_menu_item_xfn', ''),
(34, 9, '_menu_item_url', ''),
(35, 9, '_menu_item_orphaned', '1489444892'),
(36, 10, 'inline_featured_image', '0'),
(37, 10, '_menu_item_type', 'custom'),
(38, 10, '_menu_item_menu_item_parent', '0'),
(39, 10, '_menu_item_object_id', '10'),
(40, 10, '_menu_item_object', 'custom'),
(41, 10, '_menu_item_target', ''),
(42, 10, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(43, 10, '_menu_item_xfn', ''),
(44, 10, '_menu_item_url', '#contact'),
(46, 11, 'inline_featured_image', '0'),
(47, 11, '_edit_lock', '1489444954:3'),
(48, 11, '_edit_last', '3'),
(49, 11, '_wp_page_template', 'templates/page-home.php'),
(50, 13, 'inline_featured_image', '0'),
(51, 13, '_menu_item_type', 'post_type'),
(52, 13, '_menu_item_menu_item_parent', '0'),
(53, 13, '_menu_item_object_id', '11'),
(54, 13, '_menu_item_object', 'page'),
(55, 13, '_menu_item_target', ''),
(56, 13, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(57, 13, '_menu_item_xfn', ''),
(58, 13, '_menu_item_url', ''),
(60, 14, 'inline_featured_image', '0'),
(61, 14, '_edit_lock', '1489445614:3'),
(62, 15, '_edit_lock', '1489532249:3'),
(63, 15, '_edit_last', '3'),
(64, 20, '_edit_lock', '1489539949:3'),
(65, 20, '_edit_last', '3'),
(66, 24, '_edit_lock', '1489532257:3'),
(67, 24, '_edit_last', '3'),
(68, 27, '_edit_lock', '1489532264:3'),
(69, 27, '_edit_last', '3'),
(70, 34, '_edit_lock', '1489532273:3'),
(71, 34, '_edit_last', '3'),
(72, 44, '_edit_lock', '1489451046:3'),
(73, 44, '_edit_last', '3'),
(74, 60, '_wp_attached_file', '2017/03/buckman.svg'),
(75, 61, '_wp_attached_file', '2017/03/facebook-square.svg'),
(76, 62, '_wp_attached_file', '2017/03/twitter.svg'),
(77, 63, '_wp_attached_file', '2017/03/filmset.jpg'),
(78, 63, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1200;s:6:"height";i:800;s:4:"file";s:19:"2017/03/filmset.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"filmset-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:19:"filmset-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:19:"filmset-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"filmset-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"1.4";s:6:"credit";s:16:"Andrzej Bilinski";s:6:"camera";s:20:"Canon EOS 5D Mark II";s:7:"caption";s:51:"Cinemavision mirror rig at the movie set. Native 3D";s:17:"created_timestamp";s:10:"1422207499";s:9:"copyright";s:0:"";s:12:"focal_length";s:2:"35";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:15:"0.0166666666667";s:5:"title";s:51:"Cinemavision mirror rig at the movie set. Native 3D";s:11:"orientation";s:1:"1";s:8:"keywords";a:64:{i:0;s:5:"3d 4k";i:1;s:7:"3d film";i:2;s:8:"3d movie";i:3;s:9:"3d poland";i:4;s:9:"3d polska";i:5;s:13:"3d 4k content";i:6;s:10:"8k content";i:7;s:27:"adrianna janowska moniuszko";i:8;s:11:"aladin mkII";i:9;s:12:"Alina Sztoch";i:10;s:17:"andrzej mastalerz";i:11;s:9:"angenieux";i:12;s:12:"angenieux 3d";i:13;s:15:"anna pijanowska";i:14;s:4:"arri";i:15;s:12:"beamsplitter";i:16;s:10:"camera red";i:17;s:10:"carl zeiss";i:18;s:9:"chrosziel";i:19;s:9:"cinemizer";i:20;s:10:"czułość";i:21;s:14:"dominika lichy";i:22;s:4:"eizo";i:23;s:12:"filip baczun";i:24;s:15:"film production";i:25;s:21:"grzegorz mikołajczyk";i:26;s:2:"hd";i:27;s:16:"hiroaki murakami";i:28;s:7:"imax 3d";i:29;s:7:"isyrius";i:30;s:10:"isyrius 3d";i:31;s:15:"jakub kryształ";i:32;s:18:"joanna kwiatkowska";i:33;s:18:"justyna wasilewska";i:34;s:16:"kamila kamińska";i:35;s:19:"katarzyna grabowska";i:36;s:21:"katarzyna pilichowska";i:37;s:8:"lg 3d 4k";i:38;s:14:"lukasz konopka";i:39;s:15:"maria szafirska";i:40;s:10:"Mario Suze";i:41;s:17:"mariusz krakowiak";i:42;s:14:"mariusz suszek";i:43;s:17:"mateusz mosiewicz";i:44;s:6:"matrox";i:45;s:15:"michał barczak";i:46;s:10:"mirror rig";i:47;s:14:"monika mielnik";i:48;s:18:"pałacyk ksawerów";i:49;s:18:"patryk palusiński";i:50;s:15:"patryk pietrzak";i:51;s:14:"pawel domagala";i:52;s:14:"phantom flex4k";i:53;s:12:"produkcja 3d";i:54;s:17:"produkcja filmów";i:55;s:13:"rafał łysak";i:56;s:8:"red epic";i:57;s:6:"redmag";i:58;s:6:"rig 3d";i:59;s:12:"stereography";i:60;s:10:"tenderness";i:61;s:7:"ultrahd";i:62;s:21:"wacław mikłaszewski";i:63;s:19:"szkola filmowa lodz";}}}'),
(79, 64, '_wp_attached_file', '2017/03/grid-circle.svg'),
(80, 65, '_wp_attached_file', '2017/03/grid-square.svg'),
(81, 5, 'logo', '60'),
(82, 5, '_logo', 'field_58c724a43967a'),
(83, 5, 'social_media_item_0_url', 'https://facebook.com'),
(84, 5, '_social_media_item_0_url', 'field_58c724c73967c'),
(85, 5, 'social_media_item_0_icon', '61'),
(86, 5, '_social_media_item_0_icon', 'field_58c724d93967d'),
(87, 5, 'social_media_item_1_url', 'https://twitter.com'),
(88, 5, '_social_media_item_1_url', 'field_58c724c73967c'),
(89, 5, 'social_media_item_1_icon', '62'),
(90, 5, '_social_media_item_1_icon', 'field_58c724d93967d'),
(91, 5, 'social_media_item', '2'),
(92, 5, '_social_media_item', 'field_58c724b53967b'),
(93, 5, 'hero_image', '60'),
(94, 5, '_hero_image', 'field_58c72524bc91c'),
(95, 5, 'link_text', 'Watch our reel'),
(96, 5, '_link_text', 'field_58c7254bbc91d'),
(97, 5, 'video_url', 'https://vimeo.com/206456987'),
(98, 5, '_video_url', 'field_58c725b4bc91e'),
(99, 5, 'text', 'Well, do you have anything to say for yourself? here. put that in your report!” and “i may have found a way out of here. are you feeling lucky punk when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross. well, do you have anything to say for yourself? man’s gotta know his limitations. this is my gun, clyde! this is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.'),
(100, 5, '_text', 'field_58c727e851bdd'),
(101, 5, 'background_image', '63'),
(102, 5, '_background_image', 'field_58c7280c51bde'),
(103, 5, 'text_sidebar', 'this is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.\r\n\r\nthis is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.'),
(104, 5, '_text_sidebar', 'field_58c7287d907ea'),
(105, 5, 'logo_grid_0_logo', '64'),
(106, 5, '_logo_grid_0_logo', 'field_58c728ff907ec'),
(107, 5, 'logo_grid_0_url', 'http://google.com'),
(108, 5, '_logo_grid_0_url', 'field_58c7290c907ed'),
(109, 5, 'logo_grid_1_logo', '65'),
(110, 5, '_logo_grid_1_logo', 'field_58c728ff907ec'),
(111, 5, 'logo_grid_1_url', 'http://google.com'),
(112, 5, '_logo_grid_1_url', 'field_58c7290c907ed'),
(113, 5, 'logo_grid_2_logo', '64'),
(114, 5, '_logo_grid_2_logo', 'field_58c728ff907ec'),
(115, 5, 'logo_grid_2_url', 'http://google.com'),
(116, 5, '_logo_grid_2_url', 'field_58c7290c907ed'),
(117, 5, 'logo_grid_3_logo', '64'),
(118, 5, '_logo_grid_3_logo', 'field_58c728ff907ec'),
(119, 5, 'logo_grid_3_url', ''),
(120, 5, '_logo_grid_3_url', 'field_58c7290c907ed'),
(121, 5, 'logo_grid_4_logo', '65'),
(122, 5, '_logo_grid_4_logo', 'field_58c728ff907ec'),
(123, 5, 'logo_grid_4_url', 'http://google.com'),
(124, 5, '_logo_grid_4_url', 'field_58c7290c907ed'),
(125, 5, 'logo_grid_5_logo', '64'),
(126, 5, '_logo_grid_5_logo', 'field_58c728ff907ec'),
(127, 5, 'logo_grid_5_url', 'http://google.com'),
(128, 5, '_logo_grid_5_url', 'field_58c7290c907ed'),
(129, 5, 'logo_grid_6_logo', '65'),
(130, 5, '_logo_grid_6_logo', 'field_58c728ff907ec'),
(131, 5, 'logo_grid_6_url', ''),
(132, 5, '_logo_grid_6_url', 'field_58c7290c907ed'),
(133, 5, 'logo_grid_7_logo', '65'),
(134, 5, '_logo_grid_7_logo', 'field_58c728ff907ec'),
(135, 5, 'logo_grid_7_url', 'http://google.com'),
(136, 5, '_logo_grid_7_url', 'field_58c7290c907ed'),
(137, 5, 'logo_grid_8_logo', '65'),
(138, 5, '_logo_grid_8_logo', 'field_58c728ff907ec'),
(139, 5, 'logo_grid_8_url', ''),
(140, 5, '_logo_grid_8_url', 'field_58c7290c907ed'),
(141, 5, 'logo_grid_9_logo', '64'),
(142, 5, '_logo_grid_9_logo', 'field_58c728ff907ec'),
(143, 5, 'logo_grid_9_url', 'http://google.com'),
(144, 5, '_logo_grid_9_url', 'field_58c7290c907ed'),
(145, 5, 'logo_grid_10_logo', '65'),
(146, 5, '_logo_grid_10_logo', 'field_58c728ff907ec'),
(147, 5, 'logo_grid_10_url', ''),
(148, 5, '_logo_grid_10_url', 'field_58c7290c907ed'),
(149, 5, 'logo_grid_11_logo', '64'),
(150, 5, '_logo_grid_11_logo', 'field_58c728ff907ec'),
(151, 5, 'logo_grid_11_url', ''),
(152, 5, '_logo_grid_11_url', 'field_58c7290c907ed'),
(153, 5, 'logo_grid_12_logo', '64'),
(154, 5, '_logo_grid_12_logo', 'field_58c728ff907ec'),
(155, 5, 'logo_grid_12_url', 'http://google.com'),
(156, 5, '_logo_grid_12_url', 'field_58c7290c907ed'),
(157, 5, 'logo_grid_13_logo', '65'),
(158, 5, '_logo_grid_13_logo', 'field_58c728ff907ec'),
(159, 5, 'logo_grid_13_url', 'http://google.com'),
(160, 5, '_logo_grid_13_url', 'field_58c7290c907ed'),
(161, 5, 'logo_grid_14_logo', '64'),
(162, 5, '_logo_grid_14_logo', 'field_58c728ff907ec'),
(163, 5, 'logo_grid_14_url', ''),
(164, 5, '_logo_grid_14_url', 'field_58c7290c907ed'),
(165, 5, 'logo_grid_15_logo', '64'),
(166, 5, '_logo_grid_15_logo', 'field_58c728ff907ec'),
(167, 5, 'logo_grid_15_url', ''),
(168, 5, '_logo_grid_15_url', 'field_58c7290c907ed'),
(169, 5, 'logo_grid', '16'),
(170, 5, '_logo_grid', 'field_58c72891907eb'),
(171, 5, 'images_0_image', '67'),
(172, 5, '_images_0_image', 'field_58c72a2279940'),
(173, 5, 'images_1_image', '68'),
(174, 5, '_images_1_image', 'field_58c72a2279940'),
(175, 5, 'images_2_image', '69'),
(176, 5, '_images_2_image', 'field_58c72a2279940'),
(177, 5, 'images_3_image', '70'),
(178, 5, '_images_3_image', 'field_58c72a2279940'),
(179, 5, 'images', '4'),
(180, 5, '_images', 'field_58c729277993f'),
(181, 5, 'footer_headline', 'Buck Productions'),
(182, 5, '_footer_headline', 'field_58c72a6b5d3ae'),
(183, 5, 'locations', '3'),
(184, 5, '_locations', 'field_58c72a8b5d3af'),
(185, 5, 'footer_text', '<span class="bold">Interested in submitting an idea or project to Buck? </span>Fill out this <a href="http://buckproductions.com/buckSubmission.pdf" target="_blank">Idea Submission Form</a> and include it with your email to <a href="mailto:submissions@buckproductions.com">submissions@buckproductions.com.</a>'),
(186, 5, '_footer_text', 'field_58c72b569bfcd'),
(187, 5, 'footer_logo', '71'),
(188, 5, '_footer_logo', 'field_58c72b7e9bfce'),
(189, 66, 'logo', '60'),
(190, 66, '_logo', 'field_58c724a43967a'),
(191, 66, 'social_media_item_0_url', 'https://facebook.com'),
(192, 66, '_social_media_item_0_url', 'field_58c724c73967c'),
(193, 66, 'social_media_item_0_icon', '61'),
(194, 66, '_social_media_item_0_icon', 'field_58c724d93967d'),
(195, 66, 'social_media_item_1_url', 'https://twitter.com'),
(196, 66, '_social_media_item_1_url', 'field_58c724c73967c'),
(197, 66, 'social_media_item_1_icon', '62'),
(198, 66, '_social_media_item_1_icon', 'field_58c724d93967d'),
(199, 66, 'social_media_item', '2'),
(200, 66, '_social_media_item', 'field_58c724b53967b'),
(201, 66, 'hero_image', '60'),
(202, 66, '_hero_image', 'field_58c72524bc91c'),
(203, 66, 'link_text', 'Watch our reel'),
(204, 66, '_link_text', 'field_58c7254bbc91d'),
(205, 66, 'video_url', 'https://vimeo.com/203729413'),
(206, 66, '_video_url', 'field_58c725b4bc91e'),
(207, 66, 'text', 'Well, do you have anything to say for yourself? here. put that in your report!” and “i may have found a way out of here. are you feeling lucky punk when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross. well, do you have anything to say for yourself? man’s gotta know his limitations. this is my gun, clyde! this is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.'),
(208, 66, '_text', 'field_58c727e851bdd'),
(209, 66, 'background_image', '63'),
(210, 66, '_background_image', 'field_58c7280c51bde'),
(211, 66, 'text_sidebar', 'this is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.\r\n\r\nthis is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.'),
(212, 66, '_text_sidebar', 'field_58c7287d907ea'),
(213, 66, 'logo_grid_0_logo', '64'),
(214, 66, '_logo_grid_0_logo', 'field_58c728ff907ec'),
(215, 66, 'logo_grid_0_url', 'http://google.com'),
(216, 66, '_logo_grid_0_url', 'field_58c7290c907ed'),
(217, 66, 'logo_grid_1_logo', '65'),
(218, 66, '_logo_grid_1_logo', 'field_58c728ff907ec'),
(219, 66, 'logo_grid_1_url', 'http://google.com'),
(220, 66, '_logo_grid_1_url', 'field_58c7290c907ed'),
(221, 66, 'logo_grid_2_logo', '64'),
(222, 66, '_logo_grid_2_logo', 'field_58c728ff907ec'),
(223, 66, 'logo_grid_2_url', 'http://google.com'),
(224, 66, '_logo_grid_2_url', 'field_58c7290c907ed'),
(225, 66, 'logo_grid_3_logo', '64'),
(226, 66, '_logo_grid_3_logo', 'field_58c728ff907ec'),
(227, 66, 'logo_grid_3_url', ''),
(228, 66, '_logo_grid_3_url', 'field_58c7290c907ed'),
(229, 66, 'logo_grid_4_logo', '65'),
(230, 66, '_logo_grid_4_logo', 'field_58c728ff907ec'),
(231, 66, 'logo_grid_4_url', 'http://google.com'),
(232, 66, '_logo_grid_4_url', 'field_58c7290c907ed'),
(233, 66, 'logo_grid_5_logo', '64'),
(234, 66, '_logo_grid_5_logo', 'field_58c728ff907ec'),
(235, 66, 'logo_grid_5_url', 'http://google.com'),
(236, 66, '_logo_grid_5_url', 'field_58c7290c907ed'),
(237, 66, 'logo_grid_6_logo', '65'),
(238, 66, '_logo_grid_6_logo', 'field_58c728ff907ec'),
(239, 66, 'logo_grid_6_url', ''),
(240, 66, '_logo_grid_6_url', 'field_58c7290c907ed'),
(241, 66, 'logo_grid_7_logo', '65'),
(242, 66, '_logo_grid_7_logo', 'field_58c728ff907ec'),
(243, 66, 'logo_grid_7_url', 'http://google.com'),
(244, 66, '_logo_grid_7_url', 'field_58c7290c907ed'),
(245, 66, 'logo_grid_8_logo', '65'),
(246, 66, '_logo_grid_8_logo', 'field_58c728ff907ec'),
(247, 66, 'logo_grid_8_url', ''),
(248, 66, '_logo_grid_8_url', 'field_58c7290c907ed'),
(249, 66, 'logo_grid_9_logo', '64'),
(250, 66, '_logo_grid_9_logo', 'field_58c728ff907ec'),
(251, 66, 'logo_grid_9_url', 'http://google.com'),
(252, 66, '_logo_grid_9_url', 'field_58c7290c907ed'),
(253, 66, 'logo_grid_10_logo', '65'),
(254, 66, '_logo_grid_10_logo', 'field_58c728ff907ec'),
(255, 66, 'logo_grid_10_url', ''),
(256, 66, '_logo_grid_10_url', 'field_58c7290c907ed'),
(257, 66, 'logo_grid_11_logo', '64'),
(258, 66, '_logo_grid_11_logo', 'field_58c728ff907ec'),
(259, 66, 'logo_grid_11_url', ''),
(260, 66, '_logo_grid_11_url', 'field_58c7290c907ed'),
(261, 66, 'logo_grid_12_logo', '64'),
(262, 66, '_logo_grid_12_logo', 'field_58c728ff907ec'),
(263, 66, 'logo_grid_12_url', 'http://google.com'),
(264, 66, '_logo_grid_12_url', 'field_58c7290c907ed'),
(265, 66, 'logo_grid_13_logo', '65'),
(266, 66, '_logo_grid_13_logo', 'field_58c728ff907ec'),
(267, 66, 'logo_grid_13_url', 'http://google.com'),
(268, 66, '_logo_grid_13_url', 'field_58c7290c907ed'),
(269, 66, 'logo_grid_14_logo', '64'),
(270, 66, '_logo_grid_14_logo', 'field_58c728ff907ec'),
(271, 66, 'logo_grid_14_url', ''),
(272, 66, '_logo_grid_14_url', 'field_58c7290c907ed'),
(273, 66, 'logo_grid_15_logo', '64'),
(274, 66, '_logo_grid_15_logo', 'field_58c728ff907ec'),
(275, 66, 'logo_grid_15_url', ''),
(276, 66, '_logo_grid_15_url', 'field_58c7290c907ed'),
(277, 66, 'logo_grid', '16'),
(278, 66, '_logo_grid', 'field_58c72891907eb'),
(279, 66, 'images_0_image', ''),
(280, 66, '_images_0_image', 'field_58c72a2279940'),
(281, 66, 'images_1_image', ''),
(282, 66, '_images_1_image', 'field_58c72a2279940'),
(283, 66, 'images_2_image', ''),
(284, 66, '_images_2_image', 'field_58c72a2279940'),
(285, 66, 'images_3_image', ''),
(286, 66, '_images_3_image', 'field_58c72a2279940'),
(287, 66, 'images', '4'),
(288, 66, '_images', 'field_58c729277993f'),
(289, 66, 'footer_headline', ''),
(290, 66, '_footer_headline', 'field_58c72a6b5d3ae'),
(291, 66, 'locations', ''),
(292, 66, '_locations', 'field_58c72a8b5d3af'),
(293, 66, 'footer_text', ''),
(294, 66, '_footer_text', 'field_58c72b569bfcd'),
(295, 66, 'footer_logo', ''),
(296, 66, '_footer_logo', 'field_58c72b7e9bfce'),
(297, 67, '_wp_attached_file', '2017/03/4xphoto3.jpg'),
(298, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:2048;s:6:"height";i:1368;s:4:"file";s:20:"2017/03/4xphoto3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"4xphoto3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"4xphoto3-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"4xphoto3-768x513.jpg";s:5:"width";i:768;s:6:"height";i:513;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"4xphoto3-1024x684.jpg";s:5:"width";i:1024;s:6:"height";i:684;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:13:"Shaun Jeffers";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:25:"SHAUN JEFFERS PHOTOGRAPHY";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(299, 68, '_wp_attached_file', '2017/03/4xphoto2.jpg'),
(300, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1200;s:4:"file";s:20:"2017/03/4xphoto2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"4xphoto2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"4xphoto2-300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"4xphoto2-768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"4xphoto2-1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"5.6";s:6:"credit";s:24:"Chris Large 403-860-9068";s:6:"camera";s:13:"Canon EOS 40D";s:7:"caption";s:42:"PASSCHENDAELE\r\rPhoto credit:   CHRIS LARGE";s:17:"created_timestamp";s:10:"1191531818";s:9:"copyright";s:27:"ALL RIGHT RESERVED   c.2007";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"400";s:13:"shutter_speed";s:7:"0.00625";s:5:"title";s:42:"PASSCHENDAELE\r\rPhoto credit:   CHRIS LARGE";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(301, 69, '_wp_attached_file', '2017/03/4xphoto1.jpg'),
(302, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:700;s:6:"height";i:465;s:4:"file";s:20:"2017/03/4xphoto1.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"4xphoto1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"4xphoto1-300x199.jpg";s:5:"width";i:300;s:6:"height";i:199;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(303, 70, '_wp_attached_file', '2017/03/4xphoto4.jpg'),
(304, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1800;s:6:"height";i:1158;s:4:"file";s:20:"2017/03/4xphoto4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:20:"4xphoto4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:20:"4xphoto4-300x193.jpg";s:5:"width";i:300;s:6:"height";i:193;s:9:"mime-type";s:10:"image/jpeg";}s:12:"medium_large";a:4:{s:4:"file";s:20:"4xphoto4-768x494.jpg";s:5:"width";i:768;s:6:"height";i:494;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:21:"4xphoto4-1024x659.jpg";s:5:"width";i:1024;s:6:"height";i:659;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:12:{s:8:"aperture";s:3:"2.8";s:6:"credit";s:12:"Jessica Frey";s:6:"camera";s:10:"NIKON D700";s:7:"caption";s:0:"";s:17:"created_timestamp";s:10:"1348746637";s:9:"copyright";s:24:"Jessica Frey Photography";s:12:"focal_length";s:2:"26";s:3:"iso";s:3:"250";s:13:"shutter_speed";s:7:"0.00125";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:9:{i:0;s:7:"Bag End";i:1;s:5:"Frodo";i:2;s:12:"Hobbit Homes";i:3;s:16:"Hobbit movie set";i:4;s:8:"Hobbiton";i:5;s:24:"Jessica Frey Photography";i:6;s:27:"Lord of the Rings movie set";i:7;s:11:"New Zealand";i:8;s:19:"The Shire movie set";}}}'),
(305, 71, '_wp_attached_file', '2017/03/buck-logo.svg'),
(306, 5, 'locations_0_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7'),
(307, 5, '_locations_0_address', 'field_58c72a985d3b0'),
(308, 5, 'locations_0_phone_numbers_0_label', 'Main'),
(309, 5, '_locations_0_phone_numbers_0_label', 'field_58c72af95d3b2'),
(310, 5, 'locations_0_phone_numbers_0_number', '416-362-3330'),
(311, 5, '_locations_0_phone_numbers_0_number', 'field_58c72b035d3b3'),
(312, 5, 'locations_0_phone_numbers_1_label', 'Fax'),
(313, 5, '_locations_0_phone_numbers_1_label', 'field_58c72af95d3b2'),
(314, 5, 'locations_0_phone_numbers_1_number', '416-362-3336'),
(315, 5, '_locations_0_phone_numbers_1_number', 'field_58c72b035d3b3'),
(316, 5, 'locations_0_phone_numbers', '2'),
(317, 5, '_locations_0_phone_numbers', 'field_58c72ada5d3b1'),
(318, 5, 'locations_0_email', 'infovan@buckproductions.com'),
(319, 5, '_locations_0_email', 'field_58c72b2bac79c'),
(320, 5, 'locations_1_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7 #2'),
(321, 5, '_locations_1_address', 'field_58c72a985d3b0'),
(322, 5, 'locations_1_phone_numbers_0_label', 'Main'),
(323, 5, '_locations_1_phone_numbers_0_label', 'field_58c72af95d3b2'),
(324, 5, 'locations_1_phone_numbers_0_number', '516-362-3330'),
(325, 5, '_locations_1_phone_numbers_0_number', 'field_58c72b035d3b3'),
(326, 5, 'locations_1_phone_numbers_1_label', 'Fax'),
(327, 5, '_locations_1_phone_numbers_1_label', 'field_58c72af95d3b2'),
(328, 5, 'locations_1_phone_numbers_1_number', '516-362-3336'),
(329, 5, '_locations_1_phone_numbers_1_number', 'field_58c72b035d3b3'),
(330, 5, 'locations_1_phone_numbers', '2'),
(331, 5, '_locations_1_phone_numbers', 'field_58c72ada5d3b1'),
(332, 5, 'locations_1_email', 'infovan2@buckproductions.com'),
(333, 5, '_locations_1_email', 'field_58c72b2bac79c'),
(334, 5, 'locations_2_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7 #3'),
(335, 5, '_locations_2_address', 'field_58c72a985d3b0'),
(336, 5, 'locations_2_phone_numbers_0_label', 'Main'),
(337, 5, '_locations_2_phone_numbers_0_label', 'field_58c72af95d3b2'),
(338, 5, 'locations_2_phone_numbers_0_number', '616-362-3330'),
(339, 5, '_locations_2_phone_numbers_0_number', 'field_58c72b035d3b3'),
(340, 5, 'locations_2_phone_numbers_1_label', 'Fax'),
(341, 5, '_locations_2_phone_numbers_1_label', 'field_58c72af95d3b2'),
(342, 5, 'locations_2_phone_numbers_1_number', '616-362-3336'),
(343, 5, '_locations_2_phone_numbers_1_number', 'field_58c72b035d3b3'),
(344, 5, 'locations_2_phone_numbers', '2'),
(345, 5, '_locations_2_phone_numbers', 'field_58c72ada5d3b1'),
(346, 5, 'locations_2_email', 'infovan3@buckproductions.com'),
(347, 5, '_locations_2_email', 'field_58c72b2bac79c'),
(348, 72, 'logo', '60'),
(349, 72, '_logo', 'field_58c724a43967a'),
(350, 72, 'social_media_item_0_url', 'https://facebook.com'),
(351, 72, '_social_media_item_0_url', 'field_58c724c73967c'),
(352, 72, 'social_media_item_0_icon', '61'),
(353, 72, '_social_media_item_0_icon', 'field_58c724d93967d'),
(354, 72, 'social_media_item_1_url', 'https://twitter.com'),
(355, 72, '_social_media_item_1_url', 'field_58c724c73967c'),
(356, 72, 'social_media_item_1_icon', '62'),
(357, 72, '_social_media_item_1_icon', 'field_58c724d93967d'),
(358, 72, 'social_media_item', '2'),
(359, 72, '_social_media_item', 'field_58c724b53967b'),
(360, 72, 'hero_image', '60'),
(361, 72, '_hero_image', 'field_58c72524bc91c'),
(362, 72, 'link_text', 'Watch our reel'),
(363, 72, '_link_text', 'field_58c7254bbc91d'),
(364, 72, 'video_url', 'https://vimeo.com/203729413'),
(365, 72, '_video_url', 'field_58c725b4bc91e'),
(366, 72, 'text', 'Well, do you have anything to say for yourself? here. put that in your report!” and “i may have found a way out of here. are you feeling lucky punk when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross. well, do you have anything to say for yourself? man’s gotta know his limitations. this is my gun, clyde! this is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.'),
(367, 72, '_text', 'field_58c727e851bdd'),
(368, 72, 'background_image', '63'),
(369, 72, '_background_image', 'field_58c7280c51bde'),
(370, 72, 'text_sidebar', 'this is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.\r\n\r\nthis is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.'),
(371, 72, '_text_sidebar', 'field_58c7287d907ea'),
(372, 72, 'logo_grid_0_logo', '64'),
(373, 72, '_logo_grid_0_logo', 'field_58c728ff907ec'),
(374, 72, 'logo_grid_0_url', 'http://google.com'),
(375, 72, '_logo_grid_0_url', 'field_58c7290c907ed'),
(376, 72, 'logo_grid_1_logo', '65'),
(377, 72, '_logo_grid_1_logo', 'field_58c728ff907ec'),
(378, 72, 'logo_grid_1_url', 'http://google.com'),
(379, 72, '_logo_grid_1_url', 'field_58c7290c907ed'),
(380, 72, 'logo_grid_2_logo', '64'),
(381, 72, '_logo_grid_2_logo', 'field_58c728ff907ec'),
(382, 72, 'logo_grid_2_url', 'http://google.com'),
(383, 72, '_logo_grid_2_url', 'field_58c7290c907ed'),
(384, 72, 'logo_grid_3_logo', '64'),
(385, 72, '_logo_grid_3_logo', 'field_58c728ff907ec'),
(386, 72, 'logo_grid_3_url', ''),
(387, 72, '_logo_grid_3_url', 'field_58c7290c907ed'),
(388, 72, 'logo_grid_4_logo', '65'),
(389, 72, '_logo_grid_4_logo', 'field_58c728ff907ec'),
(390, 72, 'logo_grid_4_url', 'http://google.com'),
(391, 72, '_logo_grid_4_url', 'field_58c7290c907ed'),
(392, 72, 'logo_grid_5_logo', '64'),
(393, 72, '_logo_grid_5_logo', 'field_58c728ff907ec'),
(394, 72, 'logo_grid_5_url', 'http://google.com'),
(395, 72, '_logo_grid_5_url', 'field_58c7290c907ed'),
(396, 72, 'logo_grid_6_logo', '65'),
(397, 72, '_logo_grid_6_logo', 'field_58c728ff907ec'),
(398, 72, 'logo_grid_6_url', ''),
(399, 72, '_logo_grid_6_url', 'field_58c7290c907ed'),
(400, 72, 'logo_grid_7_logo', '65'),
(401, 72, '_logo_grid_7_logo', 'field_58c728ff907ec'),
(402, 72, 'logo_grid_7_url', 'http://google.com'),
(403, 72, '_logo_grid_7_url', 'field_58c7290c907ed'),
(404, 72, 'logo_grid_8_logo', '65'),
(405, 72, '_logo_grid_8_logo', 'field_58c728ff907ec'),
(406, 72, 'logo_grid_8_url', ''),
(407, 72, '_logo_grid_8_url', 'field_58c7290c907ed'),
(408, 72, 'logo_grid_9_logo', '64'),
(409, 72, '_logo_grid_9_logo', 'field_58c728ff907ec'),
(410, 72, 'logo_grid_9_url', 'http://google.com'),
(411, 72, '_logo_grid_9_url', 'field_58c7290c907ed'),
(412, 72, 'logo_grid_10_logo', '65'),
(413, 72, '_logo_grid_10_logo', 'field_58c728ff907ec'),
(414, 72, 'logo_grid_10_url', ''),
(415, 72, '_logo_grid_10_url', 'field_58c7290c907ed'),
(416, 72, 'logo_grid_11_logo', '64'),
(417, 72, '_logo_grid_11_logo', 'field_58c728ff907ec'),
(418, 72, 'logo_grid_11_url', ''),
(419, 72, '_logo_grid_11_url', 'field_58c7290c907ed'),
(420, 72, 'logo_grid_12_logo', '64'),
(421, 72, '_logo_grid_12_logo', 'field_58c728ff907ec'),
(422, 72, 'logo_grid_12_url', 'http://google.com'),
(423, 72, '_logo_grid_12_url', 'field_58c7290c907ed'),
(424, 72, 'logo_grid_13_logo', '65'),
(425, 72, '_logo_grid_13_logo', 'field_58c728ff907ec'),
(426, 72, 'logo_grid_13_url', 'http://google.com'),
(427, 72, '_logo_grid_13_url', 'field_58c7290c907ed'),
(428, 72, 'logo_grid_14_logo', '64'),
(429, 72, '_logo_grid_14_logo', 'field_58c728ff907ec'),
(430, 72, 'logo_grid_14_url', ''),
(431, 72, '_logo_grid_14_url', 'field_58c7290c907ed'),
(432, 72, 'logo_grid_15_logo', '64'),
(433, 72, '_logo_grid_15_logo', 'field_58c728ff907ec'),
(434, 72, 'logo_grid_15_url', ''),
(435, 72, '_logo_grid_15_url', 'field_58c7290c907ed'),
(436, 72, 'logo_grid', '16'),
(437, 72, '_logo_grid', 'field_58c72891907eb'),
(438, 72, 'images_0_image', '67'),
(439, 72, '_images_0_image', 'field_58c72a2279940'),
(440, 72, 'images_1_image', '68'),
(441, 72, '_images_1_image', 'field_58c72a2279940'),
(442, 72, 'images_2_image', '69'),
(443, 72, '_images_2_image', 'field_58c72a2279940'),
(444, 72, 'images_3_image', '70'),
(445, 72, '_images_3_image', 'field_58c72a2279940'),
(446, 72, 'images', '4'),
(447, 72, '_images', 'field_58c729277993f'),
(448, 72, 'footer_headline', 'Buck Productions'),
(449, 72, '_footer_headline', 'field_58c72a6b5d3ae'),
(450, 72, 'locations', '3'),
(451, 72, '_locations', 'field_58c72a8b5d3af'),
(452, 72, 'footer_text', '<span class="bold">Interested in submitting an idea or project to Buck? </span>Fill out this <a href="http://buckproductions.com/buckSubmission.pdf" target="_blank">Idea Submission Form</a> and include it with your email to <a href="mailto:submissions@buckproductions.com">submissions@buckproductions.com.</a>'),
(453, 72, '_footer_text', 'field_58c72b569bfcd'),
(454, 72, 'footer_logo', '71'),
(455, 72, '_footer_logo', 'field_58c72b7e9bfce'),
(456, 72, 'locations_0_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7'),
(457, 72, '_locations_0_address', 'field_58c72a985d3b0'),
(458, 72, 'locations_0_phone_numbers_0_label', 'Main'),
(459, 72, '_locations_0_phone_numbers_0_label', 'field_58c72af95d3b2'),
(460, 72, 'locations_0_phone_numbers_0_number', '416-362-3330'),
(461, 72, '_locations_0_phone_numbers_0_number', 'field_58c72b035d3b3'),
(462, 72, 'locations_0_phone_numbers_1_label', 'Fax'),
(463, 72, '_locations_0_phone_numbers_1_label', 'field_58c72af95d3b2'),
(464, 72, 'locations_0_phone_numbers_1_number', '416-362-3336'),
(465, 72, '_locations_0_phone_numbers_1_number', 'field_58c72b035d3b3'),
(466, 72, 'locations_0_phone_numbers', '2'),
(467, 72, '_locations_0_phone_numbers', 'field_58c72ada5d3b1'),
(468, 72, 'locations_0_email', 'infovan@buckproductions.com'),
(469, 72, '_locations_0_email', 'field_58c72b2bac79c'),
(470, 72, 'locations_1_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7 #2'),
(471, 72, '_locations_1_address', 'field_58c72a985d3b0'),
(472, 72, 'locations_1_phone_numbers_0_label', 'Main'),
(473, 72, '_locations_1_phone_numbers_0_label', 'field_58c72af95d3b2'),
(474, 72, 'locations_1_phone_numbers_0_number', '516-362-3330'),
(475, 72, '_locations_1_phone_numbers_0_number', 'field_58c72b035d3b3'),
(476, 72, 'locations_1_phone_numbers_1_label', 'Fax'),
(477, 72, '_locations_1_phone_numbers_1_label', 'field_58c72af95d3b2'),
(478, 72, 'locations_1_phone_numbers_1_number', '516-362-3336'),
(479, 72, '_locations_1_phone_numbers_1_number', 'field_58c72b035d3b3'),
(480, 72, 'locations_1_phone_numbers', '2'),
(481, 72, '_locations_1_phone_numbers', 'field_58c72ada5d3b1'),
(482, 72, 'locations_1_email', 'infovan2@buckproductions.com'),
(483, 72, '_locations_1_email', 'field_58c72b2bac79c'),
(484, 72, 'locations_2_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7 #3'),
(485, 72, '_locations_2_address', 'field_58c72a985d3b0'),
(486, 72, 'locations_2_phone_numbers_0_label', 'Main'),
(487, 72, '_locations_2_phone_numbers_0_label', 'field_58c72af95d3b2'),
(488, 72, 'locations_2_phone_numbers_0_number', '616-362-3330'),
(489, 72, '_locations_2_phone_numbers_0_number', 'field_58c72b035d3b3'),
(490, 72, 'locations_2_phone_numbers_1_label', 'Fax'),
(491, 72, '_locations_2_phone_numbers_1_label', 'field_58c72af95d3b2'),
(492, 72, 'locations_2_phone_numbers_1_number', '616-362-3336'),
(493, 72, '_locations_2_phone_numbers_1_number', 'field_58c72b035d3b3'),
(494, 72, 'locations_2_phone_numbers', '2'),
(495, 72, '_locations_2_phone_numbers', 'field_58c72ada5d3b1'),
(496, 72, 'locations_2_email', 'infovan3@buckproductions.com'),
(497, 72, '_locations_2_email', 'field_58c72b2bac79c'),
(498, 15, 'inline_featured_image', '0'),
(499, 20, 'inline_featured_image', '0'),
(500, 24, 'inline_featured_image', '0'),
(501, 27, 'inline_featured_image', '0'),
(502, 34, 'inline_featured_image', '0'),
(503, 73, 'logo', '60'),
(504, 73, '_logo', 'field_58c724a43967a'),
(505, 73, 'social_media_item_0_url', 'https://facebook.com'),
(506, 73, '_social_media_item_0_url', 'field_58c724c73967c'),
(507, 73, 'social_media_item_0_icon', '61'),
(508, 73, '_social_media_item_0_icon', 'field_58c724d93967d'),
(509, 73, 'social_media_item_1_url', 'https://twitter.com'),
(510, 73, '_social_media_item_1_url', 'field_58c724c73967c'),
(511, 73, 'social_media_item_1_icon', '62'),
(512, 73, '_social_media_item_1_icon', 'field_58c724d93967d'),
(513, 73, 'social_media_item', '2'),
(514, 73, '_social_media_item', 'field_58c724b53967b'),
(515, 73, 'hero_image', '60'),
(516, 73, '_hero_image', 'field_58c72524bc91c'),
(517, 73, 'link_text', 'Watch our reel'),
(518, 73, '_link_text', 'field_58c7254bbc91d'),
(519, 73, 'video_url', 'https://vimeo.com/206456987'),
(520, 73, '_video_url', 'field_58c725b4bc91e'),
(521, 73, 'text', 'Well, do you have anything to say for yourself? here. put that in your report!” and “i may have found a way out of here. are you feeling lucky punk when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross. well, do you have anything to say for yourself? man’s gotta know his limitations. this is my gun, clyde! this is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.'),
(522, 73, '_text', 'field_58c727e851bdd'),
(523, 73, 'background_image', '63'),
(524, 73, '_background_image', 'field_58c7280c51bde'),
(525, 73, 'text_sidebar', 'this is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.\r\n\r\nthis is my gun, clyde! you see, in this world there’s two kinds of people, my friend: those with loaded guns and those who dig. you dig. here. put that in your report!” and “i may have found a way out of here. don’t p!ss down my back and tell me it’s raining. when a naked man’s chasing a woman through an alley with a butcher knife and a hard-on, i figure he’s not out collecting for the red cross.'),
(526, 73, '_text_sidebar', 'field_58c7287d907ea'),
(527, 73, 'logo_grid_0_logo', '64'),
(528, 73, '_logo_grid_0_logo', 'field_58c728ff907ec'),
(529, 73, 'logo_grid_0_url', 'http://google.com'),
(530, 73, '_logo_grid_0_url', 'field_58c7290c907ed'),
(531, 73, 'logo_grid_1_logo', '65'),
(532, 73, '_logo_grid_1_logo', 'field_58c728ff907ec'),
(533, 73, 'logo_grid_1_url', 'http://google.com'),
(534, 73, '_logo_grid_1_url', 'field_58c7290c907ed'),
(535, 73, 'logo_grid_2_logo', '64'),
(536, 73, '_logo_grid_2_logo', 'field_58c728ff907ec'),
(537, 73, 'logo_grid_2_url', 'http://google.com'),
(538, 73, '_logo_grid_2_url', 'field_58c7290c907ed'),
(539, 73, 'logo_grid_3_logo', '64'),
(540, 73, '_logo_grid_3_logo', 'field_58c728ff907ec'),
(541, 73, 'logo_grid_3_url', ''),
(542, 73, '_logo_grid_3_url', 'field_58c7290c907ed'),
(543, 73, 'logo_grid_4_logo', '65'),
(544, 73, '_logo_grid_4_logo', 'field_58c728ff907ec'),
(545, 73, 'logo_grid_4_url', 'http://google.com'),
(546, 73, '_logo_grid_4_url', 'field_58c7290c907ed'),
(547, 73, 'logo_grid_5_logo', '64'),
(548, 73, '_logo_grid_5_logo', 'field_58c728ff907ec'),
(549, 73, 'logo_grid_5_url', 'http://google.com'),
(550, 73, '_logo_grid_5_url', 'field_58c7290c907ed'),
(551, 73, 'logo_grid_6_logo', '65'),
(552, 73, '_logo_grid_6_logo', 'field_58c728ff907ec'),
(553, 73, 'logo_grid_6_url', ''),
(554, 73, '_logo_grid_6_url', 'field_58c7290c907ed'),
(555, 73, 'logo_grid_7_logo', '65'),
(556, 73, '_logo_grid_7_logo', 'field_58c728ff907ec'),
(557, 73, 'logo_grid_7_url', 'http://google.com'),
(558, 73, '_logo_grid_7_url', 'field_58c7290c907ed'),
(559, 73, 'logo_grid_8_logo', '65'),
(560, 73, '_logo_grid_8_logo', 'field_58c728ff907ec'),
(561, 73, 'logo_grid_8_url', ''),
(562, 73, '_logo_grid_8_url', 'field_58c7290c907ed'),
(563, 73, 'logo_grid_9_logo', '64'),
(564, 73, '_logo_grid_9_logo', 'field_58c728ff907ec'),
(565, 73, 'logo_grid_9_url', 'http://google.com'),
(566, 73, '_logo_grid_9_url', 'field_58c7290c907ed'),
(567, 73, 'logo_grid_10_logo', '65'),
(568, 73, '_logo_grid_10_logo', 'field_58c728ff907ec'),
(569, 73, 'logo_grid_10_url', ''),
(570, 73, '_logo_grid_10_url', 'field_58c7290c907ed'),
(571, 73, 'logo_grid_11_logo', '64'),
(572, 73, '_logo_grid_11_logo', 'field_58c728ff907ec'),
(573, 73, 'logo_grid_11_url', ''),
(574, 73, '_logo_grid_11_url', 'field_58c7290c907ed'),
(575, 73, 'logo_grid_12_logo', '64'),
(576, 73, '_logo_grid_12_logo', 'field_58c728ff907ec'),
(577, 73, 'logo_grid_12_url', 'http://google.com'),
(578, 73, '_logo_grid_12_url', 'field_58c7290c907ed'),
(579, 73, 'logo_grid_13_logo', '65'),
(580, 73, '_logo_grid_13_logo', 'field_58c728ff907ec'),
(581, 73, 'logo_grid_13_url', 'http://google.com'),
(582, 73, '_logo_grid_13_url', 'field_58c7290c907ed'),
(583, 73, 'logo_grid_14_logo', '64'),
(584, 73, '_logo_grid_14_logo', 'field_58c728ff907ec'),
(585, 73, 'logo_grid_14_url', ''),
(586, 73, '_logo_grid_14_url', 'field_58c7290c907ed'),
(587, 73, 'logo_grid_15_logo', '64'),
(588, 73, '_logo_grid_15_logo', 'field_58c728ff907ec'),
(589, 73, 'logo_grid_15_url', ''),
(590, 73, '_logo_grid_15_url', 'field_58c7290c907ed'),
(591, 73, 'logo_grid', '16'),
(592, 73, '_logo_grid', 'field_58c72891907eb'),
(593, 73, 'images_0_image', '67'),
(594, 73, '_images_0_image', 'field_58c72a2279940'),
(595, 73, 'images_1_image', '68'),
(596, 73, '_images_1_image', 'field_58c72a2279940'),
(597, 73, 'images_2_image', '69'),
(598, 73, '_images_2_image', 'field_58c72a2279940'),
(599, 73, 'images_3_image', '70'),
(600, 73, '_images_3_image', 'field_58c72a2279940'),
(601, 73, 'images', '4'),
(602, 73, '_images', 'field_58c729277993f'),
(603, 73, 'footer_headline', 'Buck Productions'),
(604, 73, '_footer_headline', 'field_58c72a6b5d3ae'),
(605, 73, 'locations', '3'),
(606, 73, '_locations', 'field_58c72a8b5d3af'),
(607, 73, 'footer_text', '<span class="bold">Interested in submitting an idea or project to Buck? </span>Fill out this <a href="http://buckproductions.com/buckSubmission.pdf" target="_blank">Idea Submission Form</a> and include it with your email to <a href="mailto:submissions@buckproductions.com">submissions@buckproductions.com.</a>'),
(608, 73, '_footer_text', 'field_58c72b569bfcd'),
(609, 73, 'footer_logo', '71'),
(610, 73, '_footer_logo', 'field_58c72b7e9bfce'),
(611, 73, 'locations_0_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7'),
(612, 73, '_locations_0_address', 'field_58c72a985d3b0'),
(613, 73, 'locations_0_phone_numbers_0_label', 'Main'),
(614, 73, '_locations_0_phone_numbers_0_label', 'field_58c72af95d3b2'),
(615, 73, 'locations_0_phone_numbers_0_number', '416-362-3330'),
(616, 73, '_locations_0_phone_numbers_0_number', 'field_58c72b035d3b3'),
(617, 73, 'locations_0_phone_numbers_1_label', 'Fax'),
(618, 73, '_locations_0_phone_numbers_1_label', 'field_58c72af95d3b2'),
(619, 73, 'locations_0_phone_numbers_1_number', '416-362-3336'),
(620, 73, '_locations_0_phone_numbers_1_number', 'field_58c72b035d3b3'),
(621, 73, 'locations_0_phone_numbers', '2'),
(622, 73, '_locations_0_phone_numbers', 'field_58c72ada5d3b1'),
(623, 73, 'locations_0_email', 'infovan@buckproductions.com'),
(624, 73, '_locations_0_email', 'field_58c72b2bac79c'),
(625, 73, 'locations_1_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7 #2'),
(626, 73, '_locations_1_address', 'field_58c72a985d3b0'),
(627, 73, 'locations_1_phone_numbers_0_label', 'Main'),
(628, 73, '_locations_1_phone_numbers_0_label', 'field_58c72af95d3b2'),
(629, 73, 'locations_1_phone_numbers_0_number', '516-362-3330'),
(630, 73, '_locations_1_phone_numbers_0_number', 'field_58c72b035d3b3'),
(631, 73, 'locations_1_phone_numbers_1_label', 'Fax'),
(632, 73, '_locations_1_phone_numbers_1_label', 'field_58c72af95d3b2'),
(633, 73, 'locations_1_phone_numbers_1_number', '516-362-3336'),
(634, 73, '_locations_1_phone_numbers_1_number', 'field_58c72b035d3b3'),
(635, 73, 'locations_1_phone_numbers', '2'),
(636, 73, '_locations_1_phone_numbers', 'field_58c72ada5d3b1'),
(637, 73, 'locations_1_email', 'infovan2@buckproductions.com'),
(638, 73, '_locations_1_email', 'field_58c72b2bac79c'),
(639, 73, 'locations_2_address', '56 The Esplanade Suite 302 Toronto, ON M5E 1A7 #3'),
(640, 73, '_locations_2_address', 'field_58c72a985d3b0'),
(641, 73, 'locations_2_phone_numbers_0_label', 'Main'),
(642, 73, '_locations_2_phone_numbers_0_label', 'field_58c72af95d3b2'),
(643, 73, 'locations_2_phone_numbers_0_number', '616-362-3330'),
(644, 73, '_locations_2_phone_numbers_0_number', 'field_58c72b035d3b3'),
(645, 73, 'locations_2_phone_numbers_1_label', 'Fax'),
(646, 73, '_locations_2_phone_numbers_1_label', 'field_58c72af95d3b2'),
(647, 73, 'locations_2_phone_numbers_1_number', '616-362-3336'),
(648, 73, '_locations_2_phone_numbers_1_number', 'field_58c72b035d3b3'),
(649, 73, 'locations_2_phone_numbers', '2'),
(650, 73, '_locations_2_phone_numbers', 'field_58c72ada5d3b1'),
(651, 73, 'locations_2_email', 'infovan3@buckproductions.com'),
(652, 73, '_locations_2_email', 'field_58c72b2bac79c'),
(653, 23, 'inline_featured_image', '0');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8_unicode_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2017-01-05 16:04:41', '2017-01-05 16:04:41', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2017-01-05 16:04:41', '2017-01-05 16:04:41', '', 0, 'http://wpengine.com7/4.7/?p=1', 0, 'post', '', 1),
(2, 1, '2017-01-05 16:04:41', '2017-01-05 16:04:41', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://wpengine.com7/4.7/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2017-01-05 16:04:41', '2017-01-05 16:04:41', '', 0, 'http://wpengine.com7/4.7/?page_id=2', 0, 'page', '', 0),
(3, 2, '2017-03-12 21:34:28', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-12 21:34:28', '0000-00-00 00:00:00', '', 0, 'http://buck.site/?p=3', 0, 'post', '', 0),
(4, 3, '2017-03-13 16:16:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2017-03-13 16:16:24', '0000-00-00 00:00:00', '', 0, 'http://buck.site/?p=4', 0, 'post', '', 0),
(5, 3, '2017-03-13 22:39:03', '2017-03-13 22:39:03', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2017-03-15 00:59:55', '2017-03-15 00:59:55', '', 0, 'http://buck.site/?page_id=5', 0, 'page', '', 0),
(6, 3, '2017-03-13 22:39:03', '2017-03-13 22:39:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-13 22:39:03', '2017-03-13 22:39:03', '', 5, 'http://buck.site/?p=6', 0, 'revision', '', 0),
(7, 3, '2017-03-13 22:42:59', '2017-03-13 22:42:59', ' ', '', '', 'publish', 'closed', 'closed', '', '7', '', '', '2017-03-13 22:45:50', '2017-03-13 22:45:50', '', 0, 'http://buck.site/?p=7', 1, 'nav_menu_item', '', 0),
(8, 3, '2017-03-13 22:41:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-13 22:41:32', '0000-00-00 00:00:00', '', 0, 'http://buck.site/?p=8', 1, 'nav_menu_item', '', 0),
(9, 3, '2017-03-13 22:41:32', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2017-03-13 22:41:32', '0000-00-00 00:00:00', '', 0, 'http://buck.site/?p=9', 1, 'nav_menu_item', '', 0),
(10, 3, '2017-03-13 22:42:59', '2017-03-13 22:42:59', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2017-03-13 22:45:50', '2017-03-13 22:45:50', '', 0, 'http://buck.site/?p=10', 3, 'nav_menu_item', '', 0),
(11, 3, '2017-03-13 22:44:50', '2017-03-13 22:44:50', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2017-03-13 22:44:50', '2017-03-13 22:44:50', '', 0, 'http://buck.site/?page_id=11', 0, 'page', '', 0),
(12, 3, '2017-03-13 22:44:50', '2017-03-13 22:44:50', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2017-03-13 22:44:50', '2017-03-13 22:44:50', '', 11, 'http://buck.site/?p=12', 0, 'revision', '', 0),
(13, 3, '2017-03-13 22:45:50', '2017-03-13 22:45:50', ' ', '', '', 'publish', 'closed', 'closed', '', '13', '', '', '2017-03-13 22:45:50', '2017-03-13 22:45:50', '', 0, 'http://buck.site/?p=13', 2, 'nav_menu_item', '', 0),
(14, 3, '2017-03-13 22:51:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2017-03-13 22:51:18', '0000-00-00 00:00:00', '', 0, 'http://buck.site/?post_type=acf&p=14', 0, 'acf', '', 0),
(15, 3, '2017-03-13 23:02:08', '2017-03-13 23:02:08', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:23:"templates/page-home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Navigation', 'navigation', 'publish', 'closed', 'closed', '', 'group_58c7249632a3f', '', '', '2017-03-14 22:57:43', '2017-03-14 22:57:43', '', 0, 'http://buck.site/?post_type=acf-field-group&#038;p=15', 0, 'acf-field-group', '', 0),
(16, 3, '2017-03-13 23:02:08', '2017-03-13 23:02:08', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_58c724a43967a', '', '', '2017-03-13 23:02:08', '2017-03-13 23:02:08', '', 15, 'http://buck.site/?post_type=acf-field&p=16', 0, 'acf-field', '', 0),
(17, 3, '2017-03-13 23:02:08', '2017-03-13 23:02:08', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Social Media Item', 'social_media_item', 'publish', 'closed', 'closed', '', 'field_58c724b53967b', '', '', '2017-03-13 23:02:08', '2017-03-13 23:02:08', '', 15, 'http://buck.site/?post_type=acf-field&p=17', 1, 'acf-field', '', 0),
(18, 3, '2017-03-13 23:02:08', '2017-03-13 23:02:08', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_58c724c73967c', '', '', '2017-03-13 23:02:08', '2017-03-13 23:02:08', '', 17, 'http://buck.site/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 3, '2017-03-13 23:02:08', '2017-03-13 23:02:08', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_58c724d93967d', '', '', '2017-03-13 23:02:08', '2017-03-13 23:02:08', '', 17, 'http://buck.site/?post_type=acf-field&p=19', 1, 'acf-field', '', 0),
(20, 3, '2017-03-13 23:05:43', '2017-03-13 23:05:43', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:23:"templates/page-home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Hero Region', 'hero-region', 'publish', 'closed', 'closed', '', 'group_58c7251bd2b2b', '', '', '2017-03-15 00:58:31', '2017-03-15 00:58:31', '', 0, 'http://buck.site/?post_type=acf-field-group&#038;p=20', 1, 'acf-field-group', '', 0),
(21, 3, '2017-03-13 23:05:43', '2017-03-13 23:05:43', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Hero Image', 'hero_image', 'publish', 'closed', 'closed', '', 'field_58c72524bc91c', '', '', '2017-03-13 23:05:43', '2017-03-13 23:05:43', '', 20, 'http://buck.site/?post_type=acf-field&p=21', 0, 'acf-field', '', 0),
(22, 3, '2017-03-13 23:05:43', '2017-03-13 23:05:43', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Link Text', 'link_text', 'publish', 'closed', 'closed', '', 'field_58c7254bbc91d', '', '', '2017-03-13 23:05:43', '2017-03-13 23:05:43', '', 20, 'http://buck.site/?post_type=acf-field&p=22', 1, 'acf-field', '', 0),
(23, 3, '2017-03-13 23:05:43', '2017-03-13 23:05:43', 'a:7:{s:4:"type";s:6:"oembed";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:5:"width";s:0:"";s:6:"height";s:0:"";}', 'Video URL', 'video_url', 'publish', 'closed', 'closed', '', 'field_58c725b4bc91e', '', '', '2017-03-15 00:58:31', '2017-03-15 00:58:31', '', 20, 'http://buck.site/?post_type=acf-field&#038;p=23', 2, 'acf-field', '', 0),
(24, 3, '2017-03-13 23:15:39', '2017-03-13 23:15:39', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:23:"templates/page-home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Parallax Region', 'parallax-region', 'publish', 'closed', 'closed', '', 'group_58c727d23042d', '', '', '2017-03-14 22:59:59', '2017-03-14 22:59:59', '', 0, 'http://buck.site/?post_type=acf-field-group&#038;p=24', 2, 'acf-field-group', '', 0),
(25, 3, '2017-03-13 23:15:39', '2017-03-13 23:15:39', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Text', 'text', 'publish', 'closed', 'closed', '', 'field_58c727e851bdd', '', '', '2017-03-13 23:15:39', '2017-03-13 23:15:39', '', 24, 'http://buck.site/?post_type=acf-field&p=25', 0, 'acf-field', '', 0),
(26, 3, '2017-03-13 23:15:39', '2017-03-13 23:15:39', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Background Image', 'background_image', 'publish', 'closed', 'closed', '', 'field_58c7280c51bde', '', '', '2017-03-13 23:15:39', '2017-03-13 23:15:39', '', 24, 'http://buck.site/?post_type=acf-field&p=26', 1, 'acf-field', '', 0),
(27, 3, '2017-03-13 23:20:01', '2017-03-13 23:20:01', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:23:"templates/page-home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Homepage Content', 'homepage-content', 'publish', 'closed', 'closed', '', 'group_58c72872b11a8', '', '', '2017-03-14 23:00:06', '2017-03-14 23:00:06', '', 0, 'http://buck.site/?post_type=acf-field-group&#038;p=27', 3, 'acf-field-group', '', 0),
(28, 3, '2017-03-13 23:20:02', '2017-03-13 23:20:02', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Text Sidebar', 'text_sidebar', 'publish', 'closed', 'closed', '', 'field_58c7287d907ea', '', '', '2017-03-13 23:20:02', '2017-03-13 23:20:02', '', 27, 'http://buck.site/?post_type=acf-field&p=28', 0, 'acf-field', '', 0),
(29, 3, '2017-03-13 23:20:02', '2017-03-13 23:20:02', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Logo Grid', 'logo_grid', 'publish', 'closed', 'closed', '', 'field_58c72891907eb', '', '', '2017-03-13 23:20:02', '2017-03-13 23:20:02', '', 27, 'http://buck.site/?post_type=acf-field&p=29', 1, 'acf-field', '', 0),
(30, 3, '2017-03-13 23:20:02', '2017-03-13 23:20:02', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Logo', 'logo', 'publish', 'closed', 'closed', '', 'field_58c728ff907ec', '', '', '2017-03-13 23:20:02', '2017-03-13 23:20:02', '', 29, 'http://buck.site/?post_type=acf-field&p=30', 0, 'acf-field', '', 0),
(31, 3, '2017-03-13 23:20:02', '2017-03-13 23:20:02', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_58c7290c907ed', '', '', '2017-03-13 23:20:02', '2017-03-13 23:20:02', '', 29, 'http://buck.site/?post_type=acf-field&p=31', 1, 'acf-field', '', 0),
(32, 3, '2017-03-13 23:24:45', '2017-03-13 23:24:45', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";i:4;s:3:"max";i:4;s:6:"layout";s:5:"block";s:12:"button_label";s:7:"Add Row";}', '4x Images', 'images', 'publish', 'closed', 'closed', '', 'field_58c729277993f', '', '', '2017-03-13 23:24:45', '2017-03-13 23:24:45', '', 27, 'http://buck.site/?post_type=acf-field&p=32', 2, 'acf-field', '', 0),
(33, 3, '2017-03-13 23:24:46', '2017-03-13 23:24:46', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Image', 'image', 'publish', 'closed', 'closed', '', 'field_58c72a2279940', '', '', '2017-03-13 23:24:46', '2017-03-13 23:24:46', '', 32, 'http://buck.site/?post_type=acf-field&p=33', 0, 'acf-field', '', 0),
(34, 3, '2017-03-13 23:28:31', '2017-03-13 23:28:31', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:23:"templates/page-home.php";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Footer', 'footer', 'publish', 'closed', 'closed', '', 'group_58c72a662b04a', '', '', '2017-03-14 23:00:13', '2017-03-14 23:00:13', '', 0, 'http://buck.site/?post_type=acf-field-group&#038;p=34', 4, 'acf-field-group', '', 0),
(35, 3, '2017-03-13 23:28:31', '2017-03-13 23:28:31', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Footer Headline', 'footer_headline', 'publish', 'closed', 'closed', '', 'field_58c72a6b5d3ae', '', '', '2017-03-13 23:28:31', '2017-03-13 23:28:31', '', 34, 'http://buck.site/?post_type=acf-field&p=35', 0, 'acf-field', '', 0),
(36, 3, '2017-03-13 23:28:31', '2017-03-13 23:28:31', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";i:3;s:6:"layout";s:5:"block";s:12:"button_label";s:7:"Add Row";}', 'Locations', 'locations', 'publish', 'closed', 'closed', '', 'field_58c72a8b5d3af', '', '', '2017-03-13 23:29:13', '2017-03-13 23:29:13', '', 34, 'http://buck.site/?post_type=acf-field&#038;p=36', 1, 'acf-field', '', 0),
(37, 3, '2017-03-13 23:28:31', '2017-03-13 23:28:31', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Address', 'address', 'publish', 'closed', 'closed', '', 'field_58c72a985d3b0', '', '', '2017-03-13 23:28:31', '2017-03-13 23:28:31', '', 36, 'http://buck.site/?post_type=acf-field&p=37', 0, 'acf-field', '', 0),
(38, 3, '2017-03-13 23:28:31', '2017-03-13 23:28:31', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Phone Numbers', 'phone_numbers', 'publish', 'closed', 'closed', '', 'field_58c72ada5d3b1', '', '', '2017-03-13 23:28:31', '2017-03-13 23:28:31', '', 36, 'http://buck.site/?post_type=acf-field&p=38', 1, 'acf-field', '', 0),
(39, 3, '2017-03-13 23:28:31', '2017-03-13 23:28:31', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Label', 'label', 'publish', 'closed', 'closed', '', 'field_58c72af95d3b2', '', '', '2017-03-13 23:28:31', '2017-03-13 23:28:31', '', 38, 'http://buck.site/?post_type=acf-field&p=39', 0, 'acf-field', '', 0),
(40, 3, '2017-03-13 23:28:31', '2017-03-13 23:28:31', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Number', 'number', 'publish', 'closed', 'closed', '', 'field_58c72b035d3b3', '', '', '2017-03-13 23:28:31', '2017-03-13 23:28:31', '', 38, 'http://buck.site/?post_type=acf-field&p=40', 1, 'acf-field', '', 0),
(41, 3, '2017-03-13 23:29:00', '2017-03-13 23:29:00', 'a:9:{s:4:"type";s:5:"email";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Email', 'email', 'publish', 'closed', 'closed', '', 'field_58c72b2bac79c', '', '', '2017-03-13 23:29:00', '2017-03-13 23:29:00', '', 36, 'http://buck.site/?post_type=acf-field&p=41', 2, 'acf-field', '', 0),
(42, 3, '2017-03-13 23:30:33', '2017-03-13 23:30:33', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Footer Text', 'footer_text', 'publish', 'closed', 'closed', '', 'field_58c72b569bfcd', '', '', '2017-03-13 23:30:33', '2017-03-13 23:30:33', '', 34, 'http://buck.site/?post_type=acf-field&p=42', 2, 'acf-field', '', 0),
(43, 3, '2017-03-13 23:30:33', '2017-03-13 23:30:33', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:5:"array";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Footer Logo', 'footer_logo', 'publish', 'closed', 'closed', '', 'field_58c72b7e9bfce', '', '', '2017-03-13 23:30:33', '2017-03-13 23:30:33', '', 34, 'http://buck.site/?post_type=acf-field&p=43', 3, 'acf-field', '', 0),
(44, 3, '2017-03-13 23:44:19', '2017-03-13 23:44:19', 'a:7:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";}', 'Portfolio', 'portfolio', 'publish', 'closed', 'closed', '', 'group_58c72cca42bfc', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 0, 'http://buck.site/?post_type=acf-field-group&#038;p=44', 0, 'acf-field-group', '', 0),
(45, 3, '2017-03-13 23:44:19', '2017-03-13 23:44:19', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Thumbnail', 'thumbnail', 'publish', 'closed', 'closed', '', 'field_58c72cd8fafea', '', '', '2017-03-13 23:44:19', '2017-03-13 23:44:19', '', 44, 'http://buck.site/?post_type=acf-field&p=45', 0, 'acf-field', '', 0),
(46, 3, '2017-03-13 23:44:19', '2017-03-13 23:44:19', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Video URL', 'video_url', 'publish', 'closed', 'closed', '', 'field_58c72d03fafeb', '', '', '2017-03-13 23:44:19', '2017-03-13 23:44:19', '', 44, 'http://buck.site/?post_type=acf-field&p=46', 1, 'acf-field', '', 0),
(47, 3, '2017-03-13 23:44:19', '2017-03-13 23:44:19', 'a:15:{s:4:"type";s:5:"image";s:12:"instructions";s:0:"";s:8:"required";i:1;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"return_format";s:3:"url";s:12:"preview_size";s:9:"thumbnail";s:7:"library";s:3:"all";s:9:"min_width";s:0:"";s:10:"min_height";s:0:"";s:8:"min_size";s:0:"";s:9:"max_width";s:0:"";s:10:"max_height";s:0:"";s:8:"max_size";s:0:"";s:10:"mime_types";s:0:"";}', 'Video Cover Image', 'video_cover_image', 'publish', 'closed', 'closed', '', 'field_58c72d44fafed', '', '', '2017-03-13 23:44:19', '2017-03-13 23:44:19', '', 44, 'http://buck.site/?post_type=acf-field&p=47', 2, 'acf-field', '', 0),
(48, 3, '2017-03-13 23:44:19', '2017-03-13 23:44:19', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Tag Line', 'tag_line', 'publish', 'closed', 'closed', '', 'field_58c72d34fafec', '', '', '2017-03-13 23:44:19', '2017-03-13 23:44:19', '', 44, 'http://buck.site/?post_type=acf-field&p=48', 3, 'acf-field', '', 0),
(49, 3, '2017-03-13 23:44:19', '2017-03-13 23:44:19', 'a:9:{s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:4:"tabs";s:3:"all";s:7:"toolbar";s:4:"full";s:12:"media_upload";i:1;}', 'Project Description', 'project_description', 'publish', 'closed', 'closed', '', 'field_58c72db7fafee', '', '', '2017-03-13 23:44:19', '2017-03-13 23:44:19', '', 44, 'http://buck.site/?post_type=acf-field&p=49', 4, 'acf-field', '', 0),
(50, 3, '2017-03-13 23:44:19', '2017-03-13 23:44:19', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Credits', 'credits', 'publish', 'closed', 'closed', '', 'field_58c72ddffafef', '', '', '2017-03-13 23:44:19', '2017-03-13 23:44:19', '', 44, 'http://buck.site/?post_type=acf-field&p=50', 5, 'acf-field', '', 0),
(51, 3, '2017-03-13 23:44:19', '2017-03-13 23:44:19', 'a:10:{s:4:"type";s:8:"textarea";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:9:"maxlength";s:0:"";s:4:"rows";s:0:"";s:9:"new_lines";s:7:"wpautop";}', 'Credit', 'credit', 'publish', 'closed', 'closed', '', 'field_58c72e57faff0', '', '', '2017-03-13 23:44:19', '2017-03-13 23:44:19', '', 50, 'http://buck.site/?post_type=acf-field&p=51', 0, 'acf-field', '', 0),
(52, 3, '2017-03-13 23:47:20', '2017-03-13 23:47:20', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Awards Label', 'awards_label', 'publish', 'closed', 'closed', '', 'field_58c72ed656ea7', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 44, 'http://buck.site/?post_type=acf-field&p=52', 6, 'acf-field', '', 0),
(53, 3, '2017-03-13 23:47:20', '2017-03-13 23:47:20', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'Award', 'award', 'publish', 'closed', 'closed', '', 'field_58c72f1456ea8', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 44, 'http://buck.site/?post_type=acf-field&p=53', 7, 'acf-field', '', 0),
(54, 3, '2017-03-13 23:47:20', '2017-03-13 23:47:20', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Award Title', 'award_title', 'publish', 'closed', 'closed', '', 'field_58c72f1d56ea9', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 53, 'http://buck.site/?post_type=acf-field&p=54', 0, 'acf-field', '', 0),
(55, 3, '2017-03-13 23:47:20', '2017-03-13 23:47:20', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Optional URL', 'optional_url', 'publish', 'closed', 'closed', '', 'field_58c72f2856eaa', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 53, 'http://buck.site/?post_type=acf-field&p=55', 1, 'acf-field', '', 0),
(56, 3, '2017-03-13 23:47:20', '2017-03-13 23:47:20', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'News Label', 'news_label', 'publish', 'closed', 'closed', '', 'field_58c72f3b56eab', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 44, 'http://buck.site/?post_type=acf-field&p=56', 8, 'acf-field', '', 0),
(57, 3, '2017-03-13 23:47:20', '2017-03-13 23:47:20', 'a:10:{s:4:"type";s:8:"repeater";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:9:"collapsed";s:0:"";s:3:"min";s:0:"";s:3:"max";s:0:"";s:6:"layout";s:5:"table";s:12:"button_label";s:7:"Add Row";}', 'News Item', 'news_item', 'publish', 'closed', 'closed', '', 'field_58c72f5256eac', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 44, 'http://buck.site/?post_type=acf-field&p=57', 9, 'acf-field', '', 0),
(58, 3, '2017-03-13 23:47:20', '2017-03-13 23:47:20', 'a:10:{s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:9:"maxlength";s:0:"";}', 'Title', 'title', 'publish', 'closed', 'closed', '', 'field_58c72f5d56ead', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 57, 'http://buck.site/?post_type=acf-field&p=58', 0, 'acf-field', '', 0),
(59, 3, '2017-03-13 23:47:20', '2017-03-13 23:47:20', 'a:7:{s:4:"type";s:3:"url";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";}', 'Optional URL', 'optional_url', 'publish', 'closed', 'closed', '', 'field_58c72f6856eae', '', '', '2017-03-13 23:47:20', '2017-03-13 23:47:20', '', 57, 'http://buck.site/?post_type=acf-field&p=59', 1, 'acf-field', '', 0),
(60, 3, '2017-03-14 00:48:53', '2017-03-14 00:48:53', '', 'buckman', '', 'inherit', 'open', 'closed', '', 'buckman', '', '', '2017-03-14 00:48:53', '2017-03-14 00:48:53', '', 5, 'http://buck.site/wp-content/uploads/2017/03/buckman.svg', 0, 'attachment', 'image/svg+xml', 0),
(61, 3, '2017-03-14 19:54:59', '2017-03-14 19:54:59', '', 'facebook-square', '', 'inherit', 'open', 'closed', '', 'facebook-square', '', '', '2017-03-14 19:54:59', '2017-03-14 19:54:59', '', 5, 'http://buck.site/wp-content/uploads/2017/03/facebook-square.svg', 0, 'attachment', 'image/svg+xml', 0),
(62, 3, '2017-03-14 19:55:29', '2017-03-14 19:55:29', '', 'twitter', '', 'inherit', 'open', 'closed', '', 'twitter', '', '', '2017-03-14 19:55:29', '2017-03-14 19:55:29', '', 5, 'http://buck.site/wp-content/uploads/2017/03/twitter.svg', 0, 'attachment', 'image/svg+xml', 0),
(63, 3, '2017-03-14 20:18:41', '2017-03-14 20:18:41', '', 'Cinemavision mirror rig at the movie set. Native 3D', 'Cinemavision mirror rig at the movie set. Native 3D', 'inherit', 'open', 'closed', '', 'cinemavision-mirror-rig-at-the-movie-set-native-3d', '', '', '2017-03-14 20:19:04', '2017-03-14 20:19:04', '', 5, 'http://buck.site/wp-content/uploads/2017/03/filmset.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 3, '2017-03-14 20:26:58', '2017-03-14 20:26:58', '', 'grid-circle', '', 'inherit', 'open', 'closed', '', 'grid-circle', '', '', '2017-03-14 20:26:58', '2017-03-14 20:26:58', '', 5, 'http://buck.site/wp-content/uploads/2017/03/grid-circle.svg', 0, 'attachment', 'image/svg+xml', 0),
(65, 3, '2017-03-14 20:30:14', '2017-03-14 20:30:14', '', 'grid-square', '', 'inherit', 'open', 'closed', '', 'grid-square', '', '', '2017-03-14 20:30:14', '2017-03-14 20:30:14', '', 5, 'http://buck.site/wp-content/uploads/2017/03/grid-square.svg', 0, 'attachment', 'image/svg+xml', 0),
(66, 3, '2017-03-14 20:32:08', '2017-03-14 20:32:08', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-14 20:32:08', '2017-03-14 20:32:08', '', 5, 'http://buck.site/?p=66', 0, 'revision', '', 0),
(67, 3, '2017-03-14 20:37:11', '2017-03-14 20:37:11', '', '4xphoto3', '', 'inherit', 'open', 'closed', '', '4xphoto3', '', '', '2017-03-14 20:37:13', '2017-03-14 20:37:13', '', 5, 'http://buck.site/wp-content/uploads/2017/03/4xphoto3.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 3, '2017-03-14 20:37:24', '2017-03-14 20:37:24', '', 'PASSCHENDAELEPhoto credit:   CHRIS LARGE', 'PASSCHENDAELE\n\nPhoto credit:   CHRIS LARGE', 'inherit', 'open', 'closed', '', 'passchendaelephoto-credit-chris-large', '', '', '2017-03-14 20:37:26', '2017-03-14 20:37:26', '', 5, 'http://buck.site/wp-content/uploads/2017/03/4xphoto2.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 3, '2017-03-14 20:37:41', '2017-03-14 20:37:41', '', '4xphoto1', '', 'inherit', 'open', 'closed', '', '4xphoto1', '', '', '2017-03-14 20:37:43', '2017-03-14 20:37:43', '', 5, 'http://buck.site/wp-content/uploads/2017/03/4xphoto1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 3, '2017-03-14 20:37:54', '2017-03-14 20:37:54', '', '4xphoto4', '', 'inherit', 'open', 'closed', '', '4xphoto4', '', '', '2017-03-14 20:37:56', '2017-03-14 20:37:56', '', 5, 'http://buck.site/wp-content/uploads/2017/03/4xphoto4.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 3, '2017-03-14 20:42:33', '2017-03-14 20:42:33', '', 'buck-logo', '', 'inherit', 'open', 'closed', '', 'buck-logo', '', '', '2017-03-14 20:42:33', '2017-03-14 20:42:33', '', 5, 'http://buck.site/wp-content/uploads/2017/03/buck-logo.svg', 0, 'attachment', 'image/svg+xml', 0),
(72, 3, '2017-03-14 20:42:44', '2017-03-14 20:42:44', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-14 20:42:44', '2017-03-14 20:42:44', '', 5, 'http://buck.site/?p=72', 0, 'revision', '', 0),
(73, 3, '2017-03-15 00:42:01', '2017-03-15 00:42:01', '', 'Home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2017-03-15 00:42:01', '2017-03-15 00:42:01', '', 5, 'http://buck.site/?p=73', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
CREATE TABLE IF NOT EXISTS `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Television', 'television', 0),
(4, 'Documentary', 'documentary', 0),
(5, 'Film', 'film', 0),
(6, 'Branded Content', 'branded-content', 0),
(7, 'Creative Execution', 'creative-execution', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(7, 2, 0),
(10, 2, 0),
(13, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'category', '', 0, 0),
(4, 4, 'category', '', 0, 0),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 0),
(7, 7, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wpengine'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', 'This is the "wpengine" admin user that our staff uses to gain access to your admin area to provide support and troubleshooting. It can only be accessed by a button in our secure log that auto generates a password and dumps that password after the staff member has logged in. We have taken extreme measures to ensure that our own user is not going to be misused to harm any of our clients sites.'),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'locale', ''),
(11, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(12, 1, 'wp_user_level', '10'),
(13, 1, 'dismissed_wp_pointers', ''),
(14, 1, 'show_welcome_panel', '1'),
(15, 2, 'nickname', 'bproductions'),
(16, 2, 'first_name', ''),
(17, 2, 'last_name', ''),
(18, 2, 'description', ''),
(19, 2, 'rich_editing', 'true'),
(20, 2, 'comment_shortcuts', 'false'),
(21, 2, 'admin_color', 'fresh'),
(22, 2, 'use_ssl', '0'),
(23, 2, 'show_admin_bar_front', 'true'),
(24, 2, 'locale', ''),
(25, 2, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(26, 2, 'wp_user_level', '10'),
(27, 2, 'default_password_nag', ''),
(28, 2, 'session_tokens', 'a:1:{s:64:"0d8d98d1a44f50643a1444e5987533eb6ad71749f5d7b472d0979f2bc6164a7c";a:4:{s:10:"expiration";i:1489527267;s:2:"ip";s:13:"100.33.69.153";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489354467;}}'),
(29, 2, 'wp_dashboard_quick_press_last_post_id', '3'),
(30, 3, 'nickname', 'torin'),
(31, 3, 'first_name', ''),
(32, 3, 'last_name', ''),
(33, 3, 'description', ''),
(34, 3, 'rich_editing', 'true'),
(35, 3, 'comment_shortcuts', 'false'),
(36, 3, 'admin_color', 'fresh'),
(37, 3, 'use_ssl', '0'),
(38, 3, 'show_admin_bar_front', 'true'),
(39, 3, 'locale', ''),
(40, 3, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(41, 3, 'wp_user_level', '10'),
(42, 3, 'dismissed_wp_pointers', ''),
(43, 3, 'default_password_nag', ''),
(44, 3, 'session_tokens', 'a:5:{s:64:"1b7a304193453350ddc1a48b27096a0fb723ac5da875c552a6f6f9e808d63eed";a:4:{s:10:"expiration";i:1489594583;s:2:"ip";s:13:"100.33.69.153";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489421783;}s:64:"2535a002693c2113facd6d71ddce61ea7c9c8631cef4fac142bf0a076c8d025f";a:4:{s:10:"expiration";i:1489606802;s:2:"ip";s:13:"100.33.69.153";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489434002;}s:64:"27523a7a29db021156e701b788acfdcee99cb6117c0bd738d0f02eae7aae3fd5";a:4:{s:10:"expiration";i:1489606955;s:2:"ip";s:13:"100.33.69.153";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489434155;}s:64:"6b20299827e6a9c0c3a0a896f1760be46a542f18b3e98d0c76d96c7aa1178b26";a:4:{s:10:"expiration";i:1489607269;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489434469;}s:64:"e579593f5edd17d2701a15bb50377753f236d0a6f0029c6c66dcd65d737ad146";a:4:{s:10:"expiration";i:1489714919;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:120:"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/56.0.2924.87 Safari/537.36";s:5:"login";i:1489542119;}}'),
(45, 3, 'wp_dashboard_quick_press_last_post_id', '4'),
(46, 3, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(47, 3, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(48, 3, 'nav_menu_recently_edited', '2'),
(49, 3, 'acf_user_settings', 'a:0:{}'),
(50, 3, 'closedpostboxes_page', 'a:0:{}'),
(51, 3, 'metaboxhidden_page', 'a:7:{i:0;s:12:"postimagediv";i:1;s:23:"acf-group_58c72cca42bfc";i:2;s:10:"postcustom";i:3;s:16:"commentstatusdiv";i:4;s:11:"commentsdiv";i:5;s:7:"slugdiv";i:6;s:9:"authordiv";}'),
(52, 3, 'wp_user-settings', 'editor_expand=off&libraryContent=browse'),
(53, 3, 'wp_user-settings-time', '1489520744');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wpengine', '$P$B/.GLWotlKb4nA98A8rRaLa59dpi8C.', 'wpengine', 'bitbucket@wpengine.com', 'http://wpengine.com', '2017-01-05 16:04:41', '', 0, 'wpengine'),
(2, 'bproductions', '$P$B.AhtzUwFs3j0Gmdr92J0eSjSLI7bW.', 'bproductions', 'steve@broadviewstation.com', 'http://buck.site', '2017-03-12 21:18:30', '', 0, 'bproductions'),
(3, 'torin', '$P$BNdMK3mEQG2QuJ8RQslDcUcGo5BtlH.', 'torin', 'torin@broadviewstation.com', '', '2017-03-12 21:35:01', '', 0, 'torin');

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
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=260;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=654;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
