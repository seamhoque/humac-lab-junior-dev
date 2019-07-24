-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2019 at 05:15 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `problem_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `color_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'red', 10, NULL, NULL),
(2, 'black', 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `crafts`
--

CREATE TABLE `crafts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `craft_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crafts`
--

INSERT INTO `crafts` (`id`, `craft_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'embroidery', 100, NULL, NULL),
(2, 'block printed', 150, NULL, NULL);

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
(1, '2019_07_24_083920_create_products_table', 1),
(2, '2019_07_24_090206_create_colors_table', 2),
(3, '2019_07_24_100546_create_sizes_table', 3),
(4, '2019_07_24_100623_create_crafts_table', 3),
(5, '2019_07_24_100701_create_types_table', 3),
(6, '2019_07_24_131217_create_variant__products_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `base_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `base_price`, `created_at`, `updated_at`) VALUES
(1, 'Shirt', 500, NULL, NULL),
(2, 'Screw Driver', 200, NULL, NULL),
(3, 'Rod', 600, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sizes`
--

CREATE TABLE `sizes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `size_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sizes`
--

INSERT INTO `sizes` (`id`, `size_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'small', 100, NULL, NULL),
(2, 'medium', 150, NULL, NULL),
(4, 'large', 200, NULL, NULL),
(5, 'extra large', 250, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type_name`, `price`, `created_at`, `updated_at`) VALUES
(1, 'bend', 100, NULL, NULL),
(2, 'straight', 150, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `variant__products`
--

CREATE TABLE `variant__products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `v_product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_product_craft` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_product_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `v_product_proce` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variant__products`
--

INSERT INTO `variant__products` (`id`, `v_product_name`, `v_product_color`, `v_product_size`, `v_product_craft`, `v_product_type`, `v_product_proce`, `created_at`, `updated_at`) VALUES
(1, 'Rod', '', 'small', '', '', '800', '2019-07-24 07:56:25', '2019-07-24 07:56:25'),
(2, 'Shirt', 'red', 'small', '', '', '710', '2019-07-24 07:56:32', '2019-07-24 07:56:32'),
(3, 'Shirt', 'red', 'small', '', '', '710', '2019-07-24 07:57:35', '2019-07-24 07:57:35'),
(4, 'Screw Driver', '', 'medium', '', '', '350', '2019-07-24 07:57:52', '2019-07-24 07:57:52'),
(5, 'Rod', '', 'small', '', '', '850', '2019-07-24 07:58:14', '2019-07-24 07:58:14'),
(6, 'Shirt', 'red', 'small', 'embroidery', '', '710', '2019-07-24 08:13:11', '2019-07-24 08:13:11'),
(7, 'Shirt', 'red', 'small', 'embroidery', '', '710', '2019-07-24 08:14:35', '2019-07-24 08:14:35'),
(8, 'Shirt', 'red', 'small', 'embroidery', '', '710', '2019-07-24 08:15:10', '2019-07-24 08:15:10'),
(9, 'Shirt', 'red', 'small', 'embroidery', '', '710', '2019-07-24 08:15:13', '2019-07-24 08:15:13'),
(10, 'Shirt', 'red', 'small', 'embroidery', '', '710', '2019-07-24 08:17:21', '2019-07-24 08:17:21'),
(11, 'Shirt', 'red', 'small', 'embroidery', '', '710', '2019-07-24 08:20:14', '2019-07-24 08:20:14'),
(12, 'Shirt', 'red', 'small', 'embroidery', '', '710', '2019-07-24 08:30:46', '2019-07-24 08:30:46'),
(13, 'Rod', '', 'extra large', '', 'straight', '1000', '2019-07-24 09:08:12', '2019-07-24 09:08:12'),
(14, 'Rod', '', 'small', '', 'bend', '800', '2019-07-24 09:09:27', '2019-07-24 09:09:27'),
(15, 'Shirt', 'red', 'small', 'embroidery', '', '710', '2019-07-24 09:10:07', '2019-07-24 09:10:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crafts`
--
ALTER TABLE `crafts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variant__products`
--
ALTER TABLE `variant__products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crafts`
--
ALTER TABLE `crafts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `variant__products`
--
ALTER TABLE `variant__products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
