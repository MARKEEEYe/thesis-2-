-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2024 at 04:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wfdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `description`, `created_at`) VALUES
(23, 'Category 1', NULL, '2024-09-09 11:51:50'),
(24, 'Category 2', NULL, '2024-09-09 12:47:58'),
(25, 'Category 3', NULL, '2024-09-09 12:49:18'),
(26, 'RAM', NULL, '2024-09-09 14:32:10'),
(27, 'MotherBoard', NULL, '2024-09-11 13:32:36'),
(28, 'CPU', NULL, '2024-09-11 13:39:18');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `first_name`, `last_name`, `email`, `phone`, `address`, `created_at`) VALUES
(1, 'werwerewr', 'werewr', 'werewr', '1231231', 'asdafas', '2024-09-15 07:15:58'),
(123, 'hakdog', 'hadukin', 'hak@gmail.com', NULL, 'Anywhere', '2024-09-13 14:51:05'),
(125, 'ijikijuh', 'ijuhuk', 'kljkl', '2263131', 'pioohy', '2024-09-15 07:46:19'),
(126, 'erwerwer', 'twerewr', '343rwer', '342', 'sdfsdsdr', '2024-09-15 09:36:40'),
(127, 'ZdZFf', '12312', 'sdasd', '123131', 'asdasda', '2024-09-15 09:39:02'),
(132, 'cfdvcx', 'vcxvxvcx', 'cxvxv', '34523', 'cvxvxvv', '2024-09-15 13:38:27'),
(159, 'hjfghjgf', 'hjghk', 'hjfj', '231321', 'ghjfhjf', '2024-09-15 14:35:27'),
(168, 'dfssdfd', 'ssdfdsf', 'sdfdsf', '34234234', 'fsdfdsfdsfds', '2024-09-15 14:40:21'),
(175, 'asdasd', 'asdasd', 'asdasd', '34124', 'asdasda', '2024-09-15 14:46:52'),
(177, 'Juakin', 'Bordado', 'Bordado', '321654987', 'st. northert west east', '2024-09-16 13:46:59'),
(181, 'dfdsf', 'dfsfds', 'sdfds', '324234234', 'wdesdfsdfds', '2024-09-16 13:52:33'),
(185, 'dfsfds', 'sdfdsf', 'ds', '324234', 'dfsdfsd', '2024-09-16 14:03:27'),
(188, 'zzxcvxz', 'zxczxc', 'sdfsdf', '332423123', 'wdesdfsdfds', '2024-09-16 14:04:23'),
(192, 'afafafaf', 'fafafaf', 'faffa', '0', 'sadasdadas', '2024-09-17 09:52:00');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_movements`
--

CREATE TABLE `inventory_movements` (
  `movement_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quantity_change` int(11) NOT NULL,
  `movement_type` enum('addition','removal','sale','return','adjustment') NOT NULL,
  `description` text DEFAULT NULL,
  `movement_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action` varchar(255) NOT NULL,
  `details` text DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `sale_id` int(11) NOT NULL,
  `log_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_id`, `user_id`, `action`, `details`, `product_id`, `sale_id`, `log_time`, `ip_address`) VALUES
(168, 28, 'User logged out', NULL, NULL, 0, '2024-09-14 14:00:47', '127.0.0.1'),
(169, 28, 'User logged in', NULL, NULL, 0, '2024-09-14 14:00:54', '127.0.0.1'),
(170, 28, 'Added new product', 'Product: DRR4 RAM FURY, Category: RAM', 162, 0, '2024-09-14 14:01:43', '127.0.0.1'),
(171, 28, 'Added new product', 'Product: DRR4 RAM FURY v2, Category: RAM', 163, 0, '2024-09-14 14:02:06', '127.0.0.1'),
(172, 28, 'Added new product', 'Product: DRR4 RAM FURY v3, Category: RAM', 164, 0, '2024-09-14 14:02:28', '127.0.0.1'),
(173, 28, 'Added new product', 'Product: Motherboard Asus , Category: MotherBoard', 165, 0, '2024-09-14 14:02:52', '127.0.0.1'),
(174, 28, 'Added new product', 'Product: Motherboard Asus v2, Category: MotherBoard', 166, 0, '2024-09-14 14:03:12', '127.0.0.1'),
(175, 28, 'Added new product', 'Product: Gaming Mother Board, Category: MotherBoard', 167, 0, '2024-09-14 14:03:43', '127.0.0.1'),
(176, 28, 'Added new product', 'Product: Intel CPU, Category: CPU', 168, 0, '2024-09-14 14:04:17', '127.0.0.1'),
(177, 28, 'Added new product', 'Product: Ryzen 7 cpu , Category: CPU', 169, 0, '2024-09-14 14:04:43', '127.0.0.1'),
(178, 28, 'Added new product', 'Product: Ryzen 5 cpu , Category: CPU', 170, 0, '2024-09-14 14:05:01', '127.0.0.1'),
(179, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 0, '2024-09-14 14:05:40', NULL),
(180, 28, 'Completed payment with method: cash', 'Process POS', NULL, 12, '2024-09-14 14:15:59', '127.0.0.1'),
(181, 28, 'User logged in', NULL, NULL, 0, '2024-09-14 16:05:00', '127.0.0.1'),
(182, 28, 'Added new product', 'Product: Asus ROG Mother Board, Category: MotherBoard', 171, 0, '2024-09-14 16:25:42', '127.0.0.1'),
(183, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 13, '2024-09-14 16:33:09', '127.0.0.1'),
(184, 28, 'User logged in', NULL, NULL, 0, '2024-09-15 04:50:01', '127.0.0.1'),
(186, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 16, '2024-09-15 07:15:58', '127.0.0.1'),
(187, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 17, '2024-09-15 07:41:09', '127.0.0.1'),
(188, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 18, '2024-09-15 07:46:19', '127.0.0.1'),
(189, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 0, '2024-09-15 09:36:40', '127.0.0.1'),
(190, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 0, '2024-09-15 09:38:28', '127.0.0.1'),
(191, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 0, '2024-09-15 09:39:02', '127.0.0.1'),
(192, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 29, '2024-09-15 13:38:27', '127.0.0.1'),
(193, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 58, '2024-09-15 14:35:27', '127.0.0.1'),
(194, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 61, '2024-09-15 14:36:08', '127.0.0.1'),
(195, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 65, '2024-09-15 14:36:29', '127.0.0.1'),
(196, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 78, '2024-09-15 14:40:21', '127.0.0.1'),
(197, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 79, '2024-09-15 14:40:30', '127.0.0.1'),
(198, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 80, '2024-09-15 14:40:33', '127.0.0.1'),
(199, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 81, '2024-09-15 14:40:37', '127.0.0.1'),
(200, 28, 'Completed payment with method: gcash', 'Process POS', NULL, 89, '2024-09-15 14:46:52', '127.0.0.1'),
(201, 28, 'User logged in', NULL, NULL, 0, '2024-09-16 13:45:02', '127.0.0.1'),
(202, 28, 'Completed payment with method: cash', 'Process POS', NULL, 91, '2024-09-16 13:46:59', '127.0.0.1'),
(203, 28, 'Completed payment with method: cash', 'Process POS', NULL, 99, '2024-09-16 13:52:33', '127.0.0.1'),
(204, 28, 'Completed payment with method: cash', 'Process POS', NULL, 103, '2024-09-16 14:03:27', '127.0.0.1'),
(205, 28, 'Completed payment with method: cash', 'Process POS', NULL, 106, '2024-09-16 14:04:23', '127.0.0.1'),
(206, 28, 'Completed payment with method: cash', 'Process POS', NULL, 109, '2024-09-16 14:15:07', '127.0.0.1'),
(207, 28, 'Completed payment with method: cash', 'Process POS', NULL, 112, '2024-09-16 14:24:03', '127.0.0.1'),
(208, 28, 'Completed payment with method: cash', 'Process POS', NULL, 117, '2024-09-17 09:52:00', '127.0.0.1'),
(209, 28, 'Completed payment with method: cash', 'Process POS', NULL, 118, '2024-09-17 09:52:57', '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `barcode` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `price_per_unit` decimal(10,2) NOT NULL,
  `price_per_pack` decimal(10,2) DEFAULT NULL,
  `stock_quantity` int(11) NOT NULL DEFAULT 0,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `category_id`, `barcode`, `name`, `description`, `price_per_unit`, `price_per_pack`, `stock_quantity`, `image_url`, `created_at`, `updated_at`) VALUES
(162, 26, '12332152341212', 'DRR4 RAM FURY', 'Goot items', 2100.00, NULL, 20, 'assets/img/ram.jpg', '2024-09-14 14:01:43', '2024-09-14 14:01:43'),
(163, 26, '412413123123', 'DRR4 RAM FURY v2', 'Goot items 2', 2500.00, NULL, 20, 'assets/img/ram2.jpg', '2024-09-14 14:02:06', '2024-09-14 14:02:06'),
(164, 26, '654614321654', 'DRR4 RAM FURY v3', 'good item 3', 2600.00, NULL, 21, 'assets/img/ram3.jpg', '2024-09-14 14:02:28', '2024-09-14 14:02:28'),
(165, 27, '32532524324', 'Motherboard Asus ', 'good item ', 2500.00, NULL, 21, 'assets/img/mboard.jpg', '2024-09-14 14:02:52', '2024-09-14 14:02:52'),
(166, 27, '4523452343242', 'Motherboard Asus v2', 'good item 2', 2540.00, NULL, 21, 'assets/img/mboard2.jpg', '2024-09-14 14:03:12', '2024-09-14 14:03:12'),
(167, 27, '352353242342', 'Gaming Mother Board', 'good item 3', 2550.00, NULL, 21, 'assets/img/mboard3.jpg', '2024-09-14 14:03:43', '2024-09-14 14:03:43'),
(168, 28, '2314123123', 'Intel CPU', 'good item ', 5000.00, NULL, 21, 'assets/img/cpu1.jpg', '2024-09-14 14:04:17', '2024-09-14 14:04:17'),
(169, 28, '12312412313', 'Ryzen 7 cpu ', 'good item 2', 6000.00, NULL, 21, 'assets/img/cpu2.jpg', '2024-09-14 14:04:43', '2024-09-14 14:04:43'),
(170, 28, '12341245123123', 'Ryzen 5 cpu ', 'good item 3', 3000.00, NULL, 21, 'assets/img/cpu3.jpg', '2024-09-14 14:05:01', '2024-09-14 14:05:01'),
(171, 27, '6972792470306', 'Asus ROG Mother Board', 'sample for barcode', 2000.00, NULL, 23, 'assets/img/favicon.png', '2024-09-14 16:25:42', '2024-09-14 16:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `reports`
--

CREATE TABLE `reports` (
  `report_id` int(11) NOT NULL,
  `report_type` enum('sales','inventory','user_activity','financial') NOT NULL,
  `generated_by` int(11) NOT NULL,
  `report_period_start` date NOT NULL,
  `report_period_end` date NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `generated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `payment_method` enum('cash','credit_card','debit_card','mobile_payment','other','gcash') NOT NULL,
  `sale_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('completed','pending','canceled','refunded') DEFAULT 'completed',
  `reference_number` int(120) DEFAULT NULL,
  `amount_received` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `user_id`, `customer_id`, `total_amount`, `payment_method`, `sale_date`, `status`, `reference_number`, `amount_received`) VALUES
(13, 28, 123, 4000.00, 'gcash', '2024-09-14 16:33:09', 'completed', 31232654, 5000.00),
(17, 28, 1, 4700.00, 'gcash', '2024-09-15 07:41:09', 'completed', 342432523, 4700.00),
(18, 28, 125, 4600.00, 'gcash', '2024-09-15 07:46:19', 'completed', 2147483647, 4600.00),
(29, 28, 132, 2100.00, 'gcash', '2024-09-15 13:38:27', 'completed', 34234234, 2100.00),
(58, 28, 159, 2100.00, 'gcash', '2024-09-15 14:35:27', 'completed', 23123123, 2100.00),
(61, 28, 159, 2100.00, 'gcash', '2024-09-15 14:36:08', 'completed', 5312, 2100.00),
(65, 28, 159, 2100.00, 'gcash', '2024-09-15 14:36:29', 'completed', 654622121, 2100.00),
(78, 28, 168, 2500.00, 'gcash', '2024-09-15 14:40:21', 'completed', 344141231, 2500.00),
(79, 28, 168, 2500.00, 'gcash', '2024-09-15 14:40:30', 'completed', 523523523, 2500.00),
(80, 28, 168, 2500.00, 'gcash', '2024-09-15 14:40:33', 'completed', 6, 2500.00),
(81, 28, 168, 2500.00, 'gcash', '2024-09-15 14:40:37', 'completed', 123123124, 2500.00),
(89, 28, 175, 2100.00, 'gcash', '2024-09-15 14:46:52', 'completed', 1231231232, 2100.00),
(99, 28, 181, 2100.00, 'cash', '2024-09-16 13:52:33', 'completed', NULL, 2100.00),
(103, 28, 185, 2500.00, 'cash', '2024-09-16 14:03:27', 'completed', NULL, 2500.00),
(109, 28, 181, 2100.00, 'cash', '2024-09-16 14:15:07', 'completed', 0, 2100.00),
(112, 28, 175, 2100.00, 'cash', '2024-09-16 14:24:03', 'completed', 815, 2100.00),
(117, 28, 192, 7500.00, 'cash', '2024-09-17 09:52:00', 'completed', NULL, 7500.00),
(118, 28, 192, 7500.00, 'cash', '2024-09-17 09:52:57', 'completed', NULL, 7500.00);

-- --------------------------------------------------------

--
-- Table structure for table `sale_items`
--

CREATE TABLE `sale_items` (
  `sale_item_id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `total_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sale_items`
--

INSERT INTO `sale_items` (`sale_item_id`, `sale_id`, `product_id`, `quantity`, `unit_price`, `total_price`) VALUES
(10, 13, 171, 2, 2000.00, 4000.00),
(13, 17, 162, 1, 2100.00, 2100.00),
(14, 17, 164, 1, 2600.00, 2600.00),
(15, 18, 162, 1, 2100.00, 2100.00),
(16, 18, 165, 1, 2500.00, 2500.00),
(24, 29, 162, 1, 2100.00, 2100.00),
(53, 58, 162, 1, 2100.00, 2100.00),
(56, 61, 162, 1, 2100.00, 2100.00),
(60, 65, 162, 1, 2100.00, 2100.00),
(73, 78, 163, 1, 2500.00, 2500.00),
(74, 79, 163, 1, 2500.00, 2500.00),
(75, 80, 163, 1, 2500.00, 2500.00),
(76, 81, 163, 1, 2500.00, 2500.00),
(84, 89, 162, 1, 2100.00, 2100.00),
(94, 99, 162, 1, 2100.00, 2100.00),
(98, 103, 165, 1, 2500.00, 2500.00),
(104, 109, 162, 1, 2100.00, 2100.00),
(107, 112, 162, 1, 2100.00, 2100.00),
(112, 117, 165, 1, 2500.00, 2500.00),
(113, 117, 171, 1, 2000.00, 2000.00),
(114, 117, 170, 1, 3000.00, 3000.00),
(115, 118, 165, 1, 2500.00, 2500.00),
(116, 118, 171, 1, 2000.00, 2000.00),
(117, 118, 170, 1, 3000.00, 3000.00);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(100) NOT NULL,
  `setting_value` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('admin','cashier','manager') NOT NULL DEFAULT 'cashier',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `role`, `created_at`, `last_login`) VALUES
(28, 'Omak', '$2y$10$V698sMun7BEhdBT9geaxYeXbWHvxjLFtO6qlIfCA5u87qPOOlZnvy', 'Marklordcabotaje15@yahoo.com', 'admin', '2024-09-05 15:52:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`),
  ADD UNIQUE KEY `category_name` (`category_name`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `customer_id` (`customer_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD PRIMARY KEY (`movement_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `barcode` (`barcode`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `reports`
--
ALTER TABLE `reports`
  ADD PRIMARY KEY (`report_id`),
  ADD KEY `generated_by` (`generated_by`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD UNIQUE KEY `reference_number` (`reference_number`),
  ADD KEY `fk_user` (`user_id`),
  ADD KEY `fk_customer` (`customer_id`);

--
-- Indexes for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD PRIMARY KEY (`sale_item_id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`setting_id`),
  ADD UNIQUE KEY `setting_name` (`setting_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=368;

--
-- AUTO_INCREMENT for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  MODIFY `movement_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=210;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `reports`
--
ALTER TABLE `reports`
  MODIFY `report_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=300;

--
-- AUTO_INCREMENT for table `sale_items`
--
ALTER TABLE `sale_items`
  MODIFY `sale_item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory_movements`
--
ALTER TABLE `inventory_movements`
  ADD CONSTRAINT `inventory_movements_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `inventory_movements_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `logs_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reports`
--
ALTER TABLE `reports`
  ADD CONSTRAINT `reports_ibfk_1` FOREIGN KEY (`generated_by`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `fk_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `fk_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sales_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sale_items`
--
ALTER TABLE `sale_items`
  ADD CONSTRAINT `sale_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sale_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
