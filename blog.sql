-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 11:00 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`) VALUES
(1, 'Larvel', 'laravel'),
(2, 'VueJs', 'vuejs'),
(3, 'JSON', 'json'),
(4, 'jQuery', 'jquery'),
(5, 'php', 'php'),
(6, 'html', 'html'),
(7, 'css', 'css'),
(8, 'wordpress', 'wordpress');

-- --------------------------------------------------------

--
-- Table structure for table `categories_posts`
--

CREATE TABLE `categories_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_posts`
--

INSERT INTO `categories_posts` (`id`, `category_id`, `post_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 1, 1),
(4, 2, 2),
(5, 2, 3),
(6, 2, 4),
(7, 3, 4),
(8, 4, 5),
(9, 5, 6),
(10, 8, 7),
(11, 8, 8),
(12, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `post_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Aamir H', 'aamir.2k18@gmail.com', 'Hi, This is my first comment posting on this website!', 1, '2019-10-01 00:22:21', '2019-10-01 00:22:21', NULL),
(2, 'jos', 'joseph.dyson@gmx.com', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu. Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem.', 1, '2019-10-01 00:27:47', '2019-10-01 00:27:47', NULL),
(3, 'Happy', 'gateful@cmail.com', 'Vestibulum et feugiat nisl. Vivamus luctus, mi at pulvinar commodo, libero nunc commodo lectus, a consectetur ligula leo posuere lorem. Donec et velit non mauris tempus gravida sed nec dui. Nam viverra ligula nec blandit feugiat. Nam egestas tincidunt sodales. Phasellus in est enim. Sed in nisi sagittis, laoreet massa at, facilisis nunc.', 2, '2019-10-01 00:30:33', '2019-10-01 00:30:33', NULL),
(4, 'Nam viverra', 'Nam-viverra@gmail.com', 'Nam viverra ligula nec blandit feugiat. Nam egestas tincidunt sodales. Phasellus in est enim. Sed in nisi sagittis, laoreet massa at, facilisis nunc.', 2, '2019-10-01 00:32:14', '2019-10-01 00:32:14', NULL),
(5, 'aamir', 'aamir.2k15@gmail.com', 'but it isn\'t the standard version, right?', 3, '2019-10-01 00:33:27', '2019-10-01 00:33:27', NULL),
(6, 'joe', 'joe@mail.net', 'almost everything about vuejs is complicated! i think!', 4, '2019-10-01 00:37:00', '2019-10-01 00:37:00', NULL),
(7, 'smarty@goodnet.org', 'smarty@goodnet.org', 'smarty@goodnet.org', 5, '2019-10-01 02:09:32', '2019-10-01 02:09:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contacted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `contacted_at`, `created_at`, `updated_at`) VALUES
(1, 'sdaafsdfad', 'adfadfadf', 'adfadfadf', '2019-10-01 02:00:45', NULL, NULL),
(2, 'bin', 'bingo@tmail.co', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu. Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem.', '2019-10-01 02:38:26', '2019-09-30 21:38:26', '2019-09-30 21:38:26'),
(3, 'toe', 'adfa@kal.pa', 'adfaaaaaaaaaa f', '2019-10-01 02:46:54', '2019-09-30 21:46:54', '2019-09-30 21:46:54'),
(4, 'bin@go.bingo', 'bin@go.bingo', 'bin@go.bingo', '2019-10-01 02:48:04', '2019-09-30 21:48:04', '2019-09-30 21:48:04'),
(5, 'aamir', 'aamir.2k15@gmail.com', 'saying hello!', '2019-10-01 05:38:22', '2019-10-01 00:38:22', '2019-10-01 00:38:22');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_09_26_115233_create_pages_table', 1),
(4, '2019_09_27_130019_create_posts_table', 1),
(5, '2019_09_27_130537_create_comments_table', 1),
(6, '2019_09_28_013254_create_categories_table', 1),
(7, '2019_09_28_013411_create_tags_table', 1),
(8, '2019_09_28_013822_create_posts_tags_table', 1),
(9, '2019_09_28_013944_create_categories_posts_table', 1),
(10, '2019_09_29_012415_create_social_media_table', 1),
(11, '2019_09_30_134805_create_site_table', 1),
(12, '2019_09_30_135133_create_searches_table', 1),
(13, '2019_09_30_222643_create_contacts_table', 1),
(14, '2019_10_01_002523_create_newsletters_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscriber_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subscribed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `subscriber_email`, `subscribed_at`, `created_at`, `updated_at`) VALUES
(1, 'Aamir@company.com', '2019-10-01 02:00:21', '2019-09-30 21:00:21', '2019-09-30 21:00:21'),
(2, 'aamir.getranked@gmail.com', '2019-10-01 07:59:15', '2019-10-01 02:59:15', '2019-10-01 02:59:15');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `image`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'home', '/', '', '', '2019-09-30 23:21:38', '2019-09-30 23:21:38', NULL),
(2, 'about', '/about', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu.', '2019-09-30 23:21:38', '2019-10-01 06:31:18', NULL),
(3, 'contact', '/contact', '', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu.', '2019-09-30 23:21:38', '2019-10-01 06:31:26', NULL),
(4, 'blog', '/blog', '', 'Lor ips dol sit', '2019-10-01 05:41:02', '2019-10-01 06:31:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `image`, `body`, `type`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hello World', 'hello-world', '3.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu.\r\n Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem. Suspendisse potenti. Nullam vulputate pretium dui non dictum. Proin a leo non enim semper porttitor a eget ipsum. Curabitur dapibus massa in aliquam volutpat.', 'home1', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(2, 'Welcome to our blog', 'welcome-to-our-blog', '1.jpg', 'Suspendisse et leo posuere, pulvinar augue eget, sodales nibh. Praesent mi libero, pulvinar eget magna viverra, dictum feugiat est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vel mattis erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam sit amet varius lacus. \r\nDonec nibh sem, tempor sed mi ut, finibus rutrum orci. Donec ultrices, urna a maximus blandit, mauris ipsum fringilla risus, in venenatis nisi eros in justo.', 'home2', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(3, 'Laravel 6 is released', 'Laravel-6-is-released', '2.jpg', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris.\r\n Mauris dapibus tincidunt laoreet. Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis. Aenean viverra odio id diam sagittis faucibus.\r\n Duis in porttitor quam. Cras sollicitudin ante in lobortis laoreet. Nullam pharetra nulla massa, non tempus augue egestas eget. Vestibulum vitae finibus sapien. Vestibulum eget nibh nec augue aliquet aliquet.', 'home3', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(4, 'Common Mistakes Vuejs', 'Common-Mistakes-Vuejs', '7.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam mollis dolor et hendrerit ultrices. Donec eget orci nisl. Nunc et tellus tempor, placerat lacus at, maximus leo. Maecenas id ex at quam laoreet viverra sit amet nec enim. Aenean commodo pulvinar magna, non venenatis dui pharetra eu.\r\n Integer rhoncus, risus placerat pretium suscipit, sapien dolor bibendum nisl, porta rhoncus erat sapien at sem. Suspendisse potenti. Nullam vulputate pretium dui non dictum. Proin a leo non enim semper porttitor a eget ipsum. Curabitur dapibus massa in aliquam volutpat.', '', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(5, 'Sus pend isse', 'Sus-pend-isse', '6.jpg', 'Suspendisse et leo posuere, pulvinar augue eget, sodales nibh. Praesent mi libero, pulvinar eget magna viverra, dictum feugiat est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Nam vel mattis erat. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nullam sit amet varius lacus. \r\nDonec nibh sem, tempor sed mi ut, finibus rutrum orci. Donec ultrices, urna a maximus blandit, mauris ipsum fringilla risus, in venenatis nisi eros in justo.', '', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(6, 'lacinia ullamcorper', 'lacinia-ullamcorper', '5.jpg', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris.\r\n Mauris dapibus tincidunt laoreet. Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis. Aenean viverra odio id diam sagittis faucibus.\r\n Duis in porttitor quam. Cras sollicitudin ante in lobortis laoreet. Nullam pharetra nulla massa, non tempus augue egestas eget. Vestibulum vitae finibus sapien. Vestibulum eget nibh nec augue aliquet aliquet.', '', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(7, 'est ac lacinia', 'est-ac-lacinia', '4.jpg', 'Suspendisse iaculis nunc in metus mattis consectetur. Nulla sodales, est ac lacinia ullamcorper, massa turpis scelerisque tortor, ac dapibus sem odio sit amet mauris.\r\n Mauris dapibus tincidunt laoreet. Pellentesque venenatis elit eu eros gravida finibus. Etiam nec pharetra diam. Pellentesque sed cursus ipsum, eget semper metus. Nunc sed nulla tristique, facilisis ligula sit amet, ullamcorper turpis. Aenean viverra odio id diam sagittis faucibus.\r\n Duis in porttitor quam. Cras sollicitudin ante in lobortis laoreet. Nullam pharetra nulla massa, non tempus augue egestas eget. Vestibulum vitae finibus sapien. Vestibulum eget nibh nec augue aliquet aliquet.', '', '2019-09-30 06:06:00', '2019-09-30 23:22:29', NULL),
(8, 'Donec ultrice', 'Donec-ultrice', '9.jpg', ' Donec ultrices, urna a maximus blandit, mauris ipsum fringilla risus, in venenatis nisi eros in justo. Maecenas eu lacus vel lacus laoreet hendrerit. Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.', '', '2019-10-01 16:14:34', '2019-10-01 16:16:30', NULL),
(9, ' Nunc sem risus', ' nunc-sem-risus', '8.jpg', ' Nunc sem risus, consectetur sed dui sit amet, eleifend egestas lacus. Maecenas vitae faucibus augue. Maecenas cursus, nibh vel eleifend vulputate, massa urna lobortis arcu, vitae bibendum velit lacus ut dolor.\r\nDonec ultrices, urna a maximus blandit, mauris ipsum fringilla risus, in venenatis nisi eros in justo. Maecenas eu lacus vel lacus laoreet hendrerit. Quisque ultrices orci in neque accumsan accumsan. Quisque metus ante, mattis ut nisi vitae, interdum tincidunt orci. Proin sapien turpis, pharetra sed semper in, lobortis ac tellus. ', '', '2019-10-01 16:14:34', '2019-10-01 16:16:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `posts_tags`
--

CREATE TABLE `posts_tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts_tags`
--

INSERT INTO `posts_tags` (`id`, `tag_id`, `post_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 3, 7),
(4, 4, 6),
(5, 2, 1),
(6, 2, 2),
(7, 6, 3),
(8, 1, 4),
(9, 4, 4),
(10, 2, 2),
(11, 2, 6),
(12, 1, 7),
(13, 4, 8),
(14, 3, 8),
(15, 2, 9),
(16, 2, 9),
(17, 7, 9);

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `about_section` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `newsletter` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_footer_bottom` tinyint(1) NOT NULL DEFAULT '0',
  `copyright` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_info` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `map` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `inserted_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `about_section`, `newsletter`, `show_footer_bottom`, `copyright`, `site_info`, `address`, `map`, `email`, `phone`, `inserted_at`, `updated_at`) VALUES
(1, 'about section sollicitudin molestie malesuada. Nulla quis lorem ut libero malesuada feugiat. Pellentesque in ipsum id orci porta dapibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec velit neque, auctor sit amet aliquam vel, ullamcorper sit amet ligula. Quisque velit nisi, pretium ut lacinia in, elementum id enim. Donec sollicitudin molestie malesuada.', 'Sit newsletter \\r\\nvel delectus amet officiis repudiandae est voluptatem. Tempora maxime provident nisi et fuga et enim exercitationem ipsam. Culpa consequatur occaecati.', 1, '© Copyright WebDevBlog 2019', ' Site by <a href=\"#\">Aamir</a>', 'Lorem ipsum dolor,\r\nsit amet, \r\nconsectetur, adipiscing elit.\r\n', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d106378.33112349427!2d73.00500523597411!3d33.570965899980614!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2s!4v1569917087212!5m2!1sen!2s\" width=\"100%\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\"></iframe>', 'contact@philosophywebsite.com,\r\ninfo@philosophywebsite.com', '\r\nPhone: (+0) 123 456 789 ', '2019-09-30 23:26:08', '2019-10-01 08:07:15');

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `name`, `url`, `icon`) VALUES
(1, 'facebook', '#', 'fa-facebook'),
(2, 'twitter', '#twitter', 'fa-twitter'),
(3, 'google plus', '#google plus', 'fa-google-plus'),
(4, 'linkedin', '#linkedin', 'fa-linkedin'),
(5, 'youtube', '#youtube', 'fa-youtube'),
(6, 'pinterest', '#pinterest', 'fa-pinterest'),
(7, 'instagram', '#instagram', 'fa-instagram'),
(8, 'whatsapp', '#whatsapp', 'fa-whatsapp');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`) VALUES
(1, 'Learning', 'Learning'),
(2, 'Applying', 'Applying'),
(3, 'Books', 'books'),
(4, 'obstacles', 'obstacles'),
(6, 'IDEs', 'IDEs'),
(7, 'work environment', 'work-environment');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_posts`
--
ALTER TABLE `categories_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_posts_category_id_index` (`category_id`),
  ADD KEY `categories_posts_post_id_index` (`post_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_post_id_index` (`post_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_subscriber_email_unique` (`subscriber_email`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_title_unique` (`title`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`);

--
-- Indexes for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `posts_tags_tag_id_index` (`tag_id`),
  ADD KEY `posts_tags_post_id_index` (`post_id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories_posts`
--
ALTER TABLE `categories_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts_tags`
--
ALTER TABLE `posts_tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_posts`
--
ALTER TABLE `categories_posts`
  ADD CONSTRAINT `categories_posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `categories_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`);

--
-- Constraints for table `posts_tags`
--
ALTER TABLE `posts_tags`
  ADD CONSTRAINT `posts_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`),
  ADD CONSTRAINT `posts_tags_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
