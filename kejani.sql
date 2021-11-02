-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2021 at 04:22 AM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kejani`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Maxwell Maragia', 'maxmaragia@gmail.com', NULL, '$2a$12$DWMV/Q.7DzzkVR5.3Ep2EuTznJ4V0PpFCnbDgiISxFXqA8GpYS.TO', '0707338839', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `media`, `status`, `created_at`, `updated_at`) VALUES
(1, 'public/files/banners/TLG2HM9o0OEaz6jkptpFslj9otKKxgUcW1HgVLp9.jpg', 1, '2021-10-24 03:29:15', '2021-10-29 11:36:32'),
(2, 'public/files/banners/yqByXwfAErsYdMQep7QlHhWhr337zHOUFOdSKo6f.jpg', 1, '2021-10-24 03:30:18', '2021-10-29 11:38:22'),
(3, 'public/files/banners/HWLJ6vpoOSglkya1K62NHKxE8pWHq4UeutKdYIii.jpg', 1, '2021-11-01 04:47:15', '2021-11-01 04:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Kilimani', 'kilimani', '2021-10-31 02:25:48', '2021-10-31 02:25:48'),
(2, 'Best locations', 'best-locations', '2021-10-31 02:25:54', '2021-10-31 02:25:54'),
(3, 'Beginner guide', 'beginner-guide', '2021-10-31 02:26:02', '2021-10-31 02:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `category_posts`
--

CREATE TABLE `category_posts` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_posts`
--

INSERT INTO `category_posts` (`post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(1, 3, NULL, NULL),
(2, 3, NULL, NULL),
(3, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enquiries`
--

CREATE TABLE `enquiries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Wifi', '2021-10-22 05:01:13', '2021-10-22 05:01:13'),
(2, 'Swimming pool', '2021-10-30 05:32:54', '2021-10-30 05:32:54'),
(3, 'Servant quarters', '2021-10-30 05:33:03', '2021-10-30 05:33:03'),
(4, 'Flower garden', '2021-10-30 05:33:08', '2021-10-30 05:33:08'),
(5, 'Dog shed', '2021-10-30 05:33:11', '2021-10-30 05:33:11'),
(6, 'Hammock', '2021-10-30 05:33:15', '2021-10-30 05:33:15'),
(7, 'Pavement', '2021-10-30 05:33:20', '2021-10-30 05:33:20'),
(8, '4 cars garage', '2021-10-30 05:33:25', '2021-10-30 05:33:25');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Lavington', 'lavington', '2021-10-30 02:26:36', '2021-10-30 02:28:53'),
(2, 'Kileleshwa', 'kileleshwa', '2021-10-30 02:26:42', '2021-10-30 02:26:42'),
(3, 'Langata', 'langata', '2021-10-30 02:26:51', '2021-10-30 02:26:51'),
(4, 'Karen', 'karen', '2021-10-30 02:26:57', '2021-10-30 02:26:57'),
(5, 'Dagoretti', 'dagoretti', '2021-10-30 02:27:04', '2021-10-30 02:27:04'),
(6, 'Kilimani', 'kilimani', '2021-10-30 06:12:33', '2021-10-30 06:12:33');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_04_12_135821_create_posts_table', 1),
(5, '2020_04_12_140319_create_tags_table', 1),
(6, '2020_04_12_140426_create_categories_table', 1),
(7, '2020_04_12_140501_create_category_posts_table', 1),
(8, '2020_04_12_140619_create_post_tags_table', 1),
(9, '2020_04_12_140709_create_admins_table', 1),
(10, '2020_04_26_095600_create_seos_table', 1),
(11, '2020_04_26_100513_create_services_table', 1),
(12, '2020_04_26_100951_create_team_members_table', 1),
(13, '2020_04_26_101100_create_testimonials_table', 1),
(14, '2020_04_26_101206_create_banners_table', 1),
(15, '2020_05_08_201703_settings', 1),
(16, '2020_09_15_105517_create_properties_table', 1),
(17, '2020_09_15_110331_create_features_table', 1),
(18, '2020_09_25_080944_create_enquiries_table', 1),
(19, '2020_09_25_082802_create_types_table', 1),
(20, '2020_09_25_082920_create_property_types_table', 1),
(21, '2020_09_25_083055_create_property_features_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('maxmaragia@gmail.com', '$2y$10$ANJCdQ2IwuEUwoJ7RT26z.Feqpmo9yRgHxKTOVM/TmXvJWX79QXp.', '2021-10-29 12:09:51');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `featured` tinyint(1) DEFAULT 0,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `likes` int(11) DEFAULT 0,
  `dislikes` int(11) DEFAULT 0,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `keywords`, `status`, `featured`, `posted_by`, `image`, `feature_image`, `likes`, `dislikes`, `meta_author`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'How to choose what to buy', 'Choosing what to buy can be a stress for many people. Lets advise you...', 'how-to-choose-what-to-buy', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>\r\n\r\n<blockquote><q>Deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitae volutatem accusantium doloremue laudantium, totam rem aeriam.</q></blockquote>\r\n\r\n<p>Sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrudism exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis.</p>\r\n\r\n<p>Sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo.</p>', 'How to choose what to buy Choosing what to buy can be a stress for many people. Lets advise you... Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.\r\n\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.\r\n\r\nDeserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitae volutatem accusantium doloremue laudantium, totam rem aeriam.\r\n\r\nSed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrudism exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis.\r\n\r\nSunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo.', 1, 1, 1, 'public/files/blog_images/HZ1N10fxTcygviALECHJd39aEj78yMkrqIcYxYPK.jpg', 'public/files/blog_images/tIsiHhqWYhXPQj1lIEWFgo6zKlyp8zrv97luRbdC.jpg', 0, 0, NULL, NULL, NULL, NULL, '2021-10-31 02:28:14', '2021-10-31 02:28:14'),
(2, 'Kileleshwa shopping centres', 'Stuck where to shop? read this guide to see the list of best shopping malls...', 'kileleshwa-shopping-centres', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>\r\n\r\n<blockquote><q>Deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitae volutatem accusantium doloremue laudantium, totam rem aeriam.</q></blockquote>\r\n\r\n<p>Sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrudism exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis.</p>\r\n\r\n<p>Sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo.</p>', 'Kileleshwa shopping centres Stuck where to shop? read this guide to see the list of best shopping malls... Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.\r\n\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.\r\n\r\nDeserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitae volutatem accusantium doloremue laudantium, totam rem aeriam.\r\n\r\nSed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrudism exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis.\r\n\r\nSunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo.', 1, NULL, 1, 'public/files/blog_images/WNXvkBLjucrgZ3VTQxhjnZMRJ2XhGffzlU2zcrzN.jpg', NULL, 0, 0, NULL, NULL, NULL, NULL, '2021-10-31 02:38:42', '2021-10-31 02:38:42'),
(3, 'How to not get swindled', 'Property buying is a risky affair, Read to find tips on not getting conned...', 'how-to-not-get-swindled', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>\r\n\r\n<blockquote><q>Deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitae volutatem accusantium doloremue laudantium, totam rem aeriam.</q></blockquote>\r\n\r\n<p>Sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrudism exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis.</p>\r\n\r\n<p>Sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo.</p>', 'How to not get swindled Property buying is a risky affair, Read to find tips on not getting conned... Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.\r\n\r\nExcepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.\r\n\r\nDeserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitae volutatem accusantium doloremue laudantium, totam rem aeriam.\r\n\r\nSed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrudism exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis.\r\n\r\nSunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo.', 1, NULL, 1, 'public/files/blog_images/Id4Tf1zYw5mqDWaZgNamKpjKufxVOofHSEhVoXZF.jpg', NULL, 0, 0, NULL, NULL, NULL, NULL, '2021-10-31 02:41:00', '2021-10-31 02:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` bigint(20) UNSIGNED NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bedroom` int(11) DEFAULT 0,
  `bathroom` int(11) DEFAULT 0,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) DEFAULT 0,
  `status` tinyint(1) DEFAULT 0,
  `new_development` tinyint(1) DEFAULT 0,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `completion_date` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `location`, `price`, `size`, `bedroom`, `bathroom`, `image`, `featured`, `status`, `new_development`, `description`, `completion_date`, `meta_title`, `meta_description`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(2, 6, '9,500,000', '100 metres squared', 2, 3, 'public/properties/2/MuMarEisdfC2Q2XSJsjGKCgQCUiL5VfKPPfDVSYK.jpg', 1, 1, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>', NULL, NULL, NULL, NULL, '2021-10-30 06:15:04', '2021-10-30 07:57:53'),
(3, 2, '9,000,000', '200 metres squared', 1, 2, 'public/properties/3/nzxnKukDJAvSl5mXpWbQvwPniTRbNOFSWSnaXkVV.jpg', 1, 1, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>', NULL, 'KILELESHWA ONE BEDROOM 9M', 'KILELESHWA ONE BEDROOM 9M', 'KILELESHWA ONE BEDROOM 9M', '2021-10-30 06:18:52', '2021-11-01 05:32:58'),
(4, 2, '11,000,000', '200 metres squared', 2, 3, 'public/properties/4/2MzhcrdngmW2mGDkost6PrqcrfXEjzGRHe4kOZxW.jpg', 1, 1, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>', NULL, NULL, NULL, NULL, '2021-10-30 06:20:20', '2021-10-30 07:58:13'),
(5, 2, '23,000,000', '220 metres squared', 3, 5, 'public/properties/5/EYYUJOpH7HWTS8XpyoeqNn5NHXnVKFnDPF3iUpXh.jpg', 1, 1, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>', NULL, NULL, NULL, NULL, '2021-10-30 06:21:39', '2021-10-30 07:58:24'),
(6, 6, '23,500,000', '200 metres squared', 3, 4, 'public/properties/6/6X01xjT5Qb7CpUZuQLXl20neDuFdXOhGGETErmhE.jpg', 1, 1, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>', NULL, NULL, NULL, NULL, '2021-10-30 06:23:21', '2021-10-30 07:58:34'),
(7, 1, '12,000,000', '100 metres squared', 3, 5, 'public/properties/7/VE13oo3DhWiqcJWYoZSaeCuSgWQCwNpibfAqhobC.jpg', 1, 1, NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempoer incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nrud exercitation ullamco laboris nisi ute aliquip ex ea commodo consequat duis auete irure dolor in reprehenderit in voluptate velit.</p>\r\n\r\n<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id estae laborume Sed ut perspiciatis unde omnis iste natus error sitame voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta suntanes explicoe nemo enim ipsam voluptatem officia deserunt mollit anim.</p>', NULL, NULL, NULL, NULL, '2021-10-30 06:27:07', '2021-10-30 09:22:50');

-- --------------------------------------------------------

--
-- Table structure for table `property_features`
--

CREATE TABLE `property_features` (
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `feature_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `property_features`
--

INSERT INTO `property_features` (`property_id`, `feature_id`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, NULL),
(2, 4, NULL, NULL),
(2, 5, NULL, NULL),
(2, 6, NULL, NULL),
(3, 4, NULL, NULL),
(3, 6, NULL, NULL),
(4, 4, NULL, NULL),
(4, 5, NULL, NULL),
(4, 6, NULL, NULL),
(5, 2, NULL, NULL),
(5, 3, NULL, NULL),
(6, 3, NULL, NULL),
(6, 5, NULL, NULL),
(6, 6, NULL, NULL),
(7, 1, NULL, NULL),
(7, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `property_types`
--

CREATE TABLE `property_types` (
  `property_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revisit_after` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seos`
--

INSERT INTO `seos` (`id`, `page`, `page_title`, `author`, `title`, `description`, `css`, `keywords`, `language`, `revisit_after`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'REALTY BORIS', 'REALTY BORIS', 'REALTY BORIS', 'REALTY BORIS', NULL, 'REALTY BORIS', 'English', '5 days', '2021-10-18 13:05:11', '2021-10-18 13:05:11'),
(2, 'About', 'REALTY BORIS', 'REALTY BORIS', 'REALTY BORIS', 'REALTY BORIS', NULL, 'REALTY BORIS', 'English', '5 days', '2021-10-23 04:57:03', '2021-10-23 04:57:03'),
(3, 'Blog', 'REALTY BORIS - Blog', 'REALTY BORIS', 'REALTY BORIS - Blog', 'REALTY BORIS - Blog', NULL, 'REALTY BORIS - Blog', 'English', '5 days', '2021-11-01 11:12:41', '2021-11-01 11:12:41'),
(4, 'Properties', 'Our Properties - Realty Boris', 'Realty Boris', 'Our Properties - Realty Boris', 'Our Properties - Realty Boris', NULL, 'Our Properties - Realty Boris', 'English', '5 days', '2021-11-01 12:31:43', '2021-11-01 12:31:43');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `media` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT 0,
  `meta_author` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'logo_light', 'public/files/settings/hEolmVGwRNYXmMfz4Fyhi7zvG7dv3GcZAWQGsXSQ.png', NULL, '2021-11-01 05:04:10'),
(2, 'logo_dark', 'public/files/settings/LuNvRVvc5Tw1Rf2OZ4sdVseXiQf1NMEykUsfIx3s.png', NULL, '2021-10-29 14:14:28'),
(3, 'favicon', 'public/files/settings/67Dukxp711VmZGXjgVQ7LCdC9wf0g9PkNvQGMpQQ.png', NULL, '2021-10-18 13:12:29'),
(4, 'email', 'margiewambui11@gmail.com', NULL, '2021-10-18 13:12:29'),
(5, 'mobile', '0707338839', NULL, '2021-10-18 13:12:29'),
(6, 'whatsapp', '254798582401', NULL, '2021-10-18 13:12:29'),
(7, 'facebook', 'https://www.facebook.com/smartbottle', NULL, '2021-10-18 13:12:29'),
(8, 'instagram', 'https://www.facebook.com/smartbottle', NULL, '2021-10-23 15:07:44'),
(9, 'youtube', 'https://www.youtube.com/watch?v=CTFtOOh47oo', NULL, '2021-11-01 12:25:47'),
(12, 'address', '2nd Floor, Brick Court, Woodvale', NULL, '2021-10-23 15:10:50'),
(13, 'map', 'https://a.com', NULL, '2021-10-23 15:10:50'),
(14, 'twitter', 'https://www.facebook.com/smartbottle', NULL, '2021-11-01 12:25:48');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'advice', 'advice', '2021-11-01 12:13:50', '2021-11-01 12:13:50'),
(2, 'Newbies', 'newbies', '2021-11-01 12:13:55', '2021-11-01 12:13:55'),
(3, 'Nairobi', 'nairobi', '2021-11-01 12:13:58', '2021-11-01 12:13:58'),
(4, 'Buying', 'buying', '2021-11-01 12:14:03', '2021-11-01 12:14:03'),
(5, 'Property', 'property', '2021-11-01 12:14:06', '2021-11-01 12:14:06'),
(6, 'Brokerage', 'brokerage', '2021-11-01 12:14:09', '2021-11-01 12:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '#',
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `role`, `avatar`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Maxwell Maragia', 'Software Engineer', 'public/files/testimonials/qqYcr62XlwJn8Wsm9MYVB0CXWKuChej53zpOMbXd.jpg', '“As a real estate broker, attorney and licensed contractor, Boris Realty provides unparalleled representation in every real estate transaction. Jason has represented us on multiple purchases”', 1, '2021-10-30 14:38:54', '2021-10-31 02:21:39'),
(2, 'John Doe', 'Audit Manager', 'public/files/testimonials/0rRGCLLqHRcYKABCZ7g2BLLMFvSagOBQyVPQEOyE.png', '“I thoroughly appreciate all of the time you are spending in quarterbacking this effort to get to closing. Your efforts are invaluable and you have been the perfect consigliere in this process. ”', 1, '2021-10-31 02:21:10', '2021-10-31 02:21:10'),
(3, 'Margaret Wambui', 'CEO Noctchems', 'public/files/testimonials/9dt8OcVEHvvhWhLtbToB4kMpR4KNkz749juCGlUl.jpg', '“Boriswas an extremely effective agent and counselor. He firmly yet fairly represented my interests in all aspects of the negotiation, and was tireless in his efforts to ensure my satisfaction”', 1, '2021-10-31 02:24:20', '2021-10-31 02:24:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Realty Boris', 'maxmaragia@gmail.com', '$2a$12$DWMV/Q.7DzzkVR5.3Ep2EuTznJ4V0PpFCnbDgiISxFXqA8GpYS.TO', 1, NULL, NULL, '2021-11-01 04:50:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD KEY `category_posts_post_id_index` (`post_id`),
  ADD KEY `category_posts_category_id_index` (`category_id`);

--
-- Indexes for table `enquiries`
--
ALTER TABLE `enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `features_name_unique` (`name`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `types_name_unique` (`name`);

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location` (`location`);

--
-- Indexes for table `property_features`
--
ALTER TABLE `property_features`
  ADD KEY `property_features_property_id_index` (`property_id`),
  ADD KEY `property_features_feature_id_index` (`feature_id`);

--
-- Indexes for table `property_types`
--
ALTER TABLE `property_types`
  ADD KEY `property_types_property_id_index` (`property_id`),
  ADD KEY `property_types_type_id_index` (`type_id`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `enquiries`
--
ALTER TABLE `enquiries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_posts`
--
ALTER TABLE `category_posts`
  ADD CONSTRAINT `category_posts_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `properties`
--
ALTER TABLE `properties`
  ADD CONSTRAINT `properties_ibfk_1` FOREIGN KEY (`location`) REFERENCES `locations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `property_features`
--
ALTER TABLE `property_features`
  ADD CONSTRAINT `property_features_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `property_types`
--
ALTER TABLE `property_types`
  ADD CONSTRAINT `property_types_property_id_foreign` FOREIGN KEY (`property_id`) REFERENCES `properties` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
