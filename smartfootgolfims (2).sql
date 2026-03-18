-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2026 at 03:19 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartfootgolfims`
--

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(100) NOT NULL,
  `category` varchar(50) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` decimal(10,2) NOT NULL,
  `cost_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `last_updated` datetime DEFAULT current_timestamp(),
  `updated_by` int(11) DEFAULT NULL,
  `is_rentable` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`item_id`, `item_name`, `category`, `quantity`, `unit_price`, `cost_price`, `last_updated`, `updated_by`, `is_rentable`) VALUES
(1, 'Nike Mercurial - US 7', 'Shoes', 8, 450.00, 300.00, '2026-01-14 14:05:20', 30001, 1),
(2, 'Nike Mercurial - US 8', 'Shoes', 17, 450.00, 300.00, '2026-01-12 00:08:51', 30001, 0),
(3, 'Nike Mercurial - US 9', 'Shoes', 10, 450.00, 300.00, '2026-01-11 12:02:53', 30001, 0),
(4, 'Adidas Predator - US 7', 'Shoes', 5, 420.00, 280.00, '2026-01-11 12:02:53', 30001, 0),
(5, 'Adidas Predator - US 8', 'Shoes', 15, 420.00, 280.00, '2026-01-11 12:02:53', 30001, 0),
(6, 'Adidas Predator - US 9', 'Shoes', 12, 420.00, 280.00, '2026-01-11 12:02:53', 30001, 0),
(7, 'Puma Future - US 7', 'Shoes', 6, 380.00, 250.00, '2026-01-11 12:02:53', 30001, 0),
(8, 'Puma Future - US 8', 'Shoes', 10, 380.00, 250.00, '2026-01-11 12:02:53', 30001, 0),
(9, 'Puma Future - US 9', 'Shoes', 7, 380.00, 250.00, '2026-01-11 12:02:53', 30001, 0),
(10, 'Rental Shoes (Size 6-10)', 'Shoes', 20, 15.00, 0.00, '2026-01-12 21:04:05', 10001, 1),
(11, 'Adidas Al Rihla Pro', 'Ball', 25, 150.00, 90.00, '2026-01-11 12:02:53', 30001, 0),
(12, 'Nike Flight Ball', 'Ball', 30, 160.00, 95.00, '2026-01-11 12:02:53', 30001, 0),
(13, 'Mitre Impel Training', 'Ball', 50, 80.00, 40.00, '2026-01-11 12:02:53', 30001, 0),
(14, 'Standard Ball (Rental)', 'Ball', 40, 10.00, 0.00, '2026-01-13 15:52:45', 10001, 1),
(15, 'Kids Size Ball', 'Ball', 15, 60.00, 30.00, '2026-01-11 12:02:53', 30001, 0),
(16, 'Footgolf Cap (Black)', 'Apparel', 30, 45.00, 15.00, '2026-01-11 12:02:53', 30001, 0),
(17, 'Footgolf Cap (White)', 'Apparel', 25, 45.00, 15.00, '2026-01-11 12:02:53', 30001, 0),
(18, 'Polo Shirt S', 'Apparel', 10, 80.00, 40.00, '2026-01-11 12:02:53', 30001, 0),
(19, 'Polo Shirt M', 'Apparel', 20, 80.00, 40.00, '2026-01-11 12:02:53', 30001, 0),
(20, 'Polo Shirt L', 'Apparel', 15, 80.00, 40.00, '2026-01-11 12:02:53', 30001, 0),
(21, 'Argyle Socks (Red)', 'Apparel', 40, 25.00, 8.00, '2026-01-11 12:02:53', 30001, 0),
(22, 'Argyle Socks (Blue)', 'Apparel', 33, 25.00, 8.00, '2026-01-12 00:05:48', 20001, 0),
(23, 'Sun Sleeve', 'Apparel', 52, 15.00, 5.00, '2026-01-11 12:02:53', 30001, 0),
(24, 'Sports Towel', 'Apparel', 60, 20.00, 7.00, '2026-01-11 12:02:53', 30001, 0),
(25, 'Raincoat', 'Apparel', 10, 50.00, 20.00, '2026-01-11 12:02:53', 30001, 0),
(26, 'Mineral Water (500ml)', 'F&B', 200, 2.00, 0.50, '2026-01-11 12:02:53', 30001, 0),
(27, 'Isotonic Drink (Can)', 'F&B', 150, 4.00, 1.80, '2026-01-11 12:02:53', 30001, 0),
(28, 'Energy Bar', 'F&B', 80, 6.00, 3.00, '2026-01-11 12:02:53', 30001, 0),
(29, 'Potato Chips', 'F&B', 60, 3.50, 1.50, '2026-01-11 12:02:53', 30001, 0),
(30, 'Chocolate Bar', 'F&B', 50, 3.00, 1.20, '2026-01-11 12:02:53', 30001, 0),
(31, 'Iced Coffee (Can)', 'F&B', 40, 5.00, 2.20, '2026-01-11 12:02:53', 30001, 0),
(32, 'Fruit Bun', 'F&B', 30, 2.50, 1.00, '2026-01-11 12:02:53', 30001, 0),
(33, 'Flag Stick', 'Course Eq', 20, 120.00, 70.00, '2026-01-11 12:02:53', 30001, 0),
(35, 'Yellow Flag', 'Course Eq', 15, 40.00, 20.00, '2026-01-11 12:02:53', 30001, 0),
(36, 'Hole Cup', 'Course Eq', 10, 90.00, 50.00, '2026-01-11 12:02:53', 30001, 0),
(37, 'Tee Marker (Red)', 'Course Eq', 30, 25.00, 10.00, '2026-01-11 12:02:53', 30001, 0),
(38, 'Tee Marker (White)', 'Course Eq', 30, 25.00, 10.00, '2026-01-11 12:02:53', 30001, 0),
(39, 'Bunker Rake', 'Course Eq', 12, 60.00, 35.00, '2026-01-11 12:02:53', 30001, 0),
(40, 'Grass Seed (Bag)', 'Maintenance', 18, 150.00, 100.00, '2026-01-11 12:02:53', 30001, 0),
(41, 'Fertilizer (Bag)', 'Maintenance', 15, 180.00, 120.00, '2026-01-11 12:02:53', 30001, 0),
(42, 'Paint Spray (White)', 'Maintenance', 40, 18.00, 10.00, '2026-01-11 12:02:53', 30001, 0),
(43, 'Lubricant Oil', 'Maintenance', 8, 35.00, 20.00, '2026-01-11 12:02:53', 30001, 0),
(44, 'Cleaning Detergent', 'Maintenance', 25, 20.00, 10.00, '2026-01-11 12:02:53', 30001, 0),
(45, 'Trash Bags (Roll)', 'Maintenance', 50, 10.00, 4.00, '2026-01-11 12:02:53', 30001, 0),
(46, 'First Aid Kit', 'Safety', 5, 120.00, 80.00, '2026-01-11 12:02:53', 30001, 0),
(47, 'Gloves (Pair)', 'Maintenance', 10, 12.00, 5.00, '2026-01-11 12:02:53', 30001, 0),
(48, 'Mower Blade', 'Maintenance', 4, 250.00, 150.00, '2026-01-12 00:04:35', 20001, 0),
(49, 'Fuel Can (5L)', 'Maintenance', 5, 35.00, 20.00, '2026-01-12 01:57:18', 30001, 0),
(50, 'Buggy Key (Spare)', 'Admin', 8, 10.00, 5.00, '2026-01-12 01:56:03', 10001, 0),
(56, 'Nike Mercurial -UK 10', 'Shoes', 12, 450.00, 0.00, '2026-01-13 16:06:54', 20001, 1),
(57, 'Puma Adizero - UK9', 'Shoes', 7, 200.00, 0.00, '2026-01-14 11:36:37', 10001, 0),
(58, 'key rental', 'maintenance ', 10, 1.00, 0.00, '2026-01-14 14:03:38', 30001, 1);

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_tasks`
--

CREATE TABLE `maintenance_tasks` (
  `task_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `scheduled_date` date NOT NULL,
  `status` varchar(50) DEFAULT 'Scheduled',
  `assigned_staff_id` int(11) DEFAULT NULL,
  `completion_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_tasks`
--

INSERT INTO `maintenance_tasks` (`task_id`, `description`, `scheduled_date`, `status`, `assigned_staff_id`, `completion_date`) VALUES
(1, 'Mow Green 1-9', '2025-12-05', 'Scheduled', 40001, NULL),
(2, 'Inspect Irrigation Pump', '2025-12-08', 'Completed', 40001, '2025-12-08'),
(3, 'Rake Bunkers', '2025-12-12', 'Completed', 40001, '2025-12-12'),
(4, 'Repaint Tee Markers', '2025-12-15', 'Completed', 40001, '2025-12-15'),
(5, 'Repair Fence Hole 4', '2025-12-20', 'Completed', 40001, '2025-12-21'),
(6, 'Service Buggies', '2025-12-22', 'Completed', 40001, '2025-12-22'),
(7, 'Clean Clubhouse', '2025-12-28', 'Completed', 40001, '2025-12-28'),
(8, 'Fertilize Fairways', '2025-12-30', 'Completed', 40001, '2025-12-30'),
(9, 'Mow Green 10-18', '2026-01-02', 'Completed', 40001, '2026-01-02'),
(10, 'Inspect Electrical Box', '2026-01-05', 'Completed', 40001, '2026-01-05'),
(11, 'Deep Clean Greens', '2026-01-10', 'In Progress', 40001, NULL),
(12, 'Replace Flagsticks', '2026-01-12', 'Completed', 40001, '2026-01-13'),
(13, 'Order New Fertilizer', '2026-01-14', 'Scheduled', 40001, NULL),
(14, 'Check Sprinkler Heads', '2026-01-15', 'Scheduled', 40001, NULL),
(15, 'Buggy Battery Check', '2026-01-18', 'Scheduled', 40001, NULL),
(17, 'event for birthday', '2026-01-31', 'Scheduled', 19611, NULL),
(18, 'berak', '1945-02-02', 'Completed', 19611, '2026-01-12'),
(20, 'Test', '2026-01-20', 'Scheduled', NULL, NULL),
(21, 'Lnagkawi company trip', '2026-01-21', 'Scheduled', NULL, NULL),
(22, 'Langkawi Trip ', '2026-01-21', 'Cancelled', NULL, NULL),
(23, 'ajdhkja', '2025-12-25', 'Scheduled', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sale_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `sale_date` datetime DEFAULT current_timestamp(),
  `total_amount` decimal(10,2) NOT NULL,
  `type` varchar(20) DEFAULT 'SALE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sale_id`, `staff_id`, `sale_date`, `total_amount`, `type`) VALUES
(1, 20001, '2025-12-01 10:00:00', 450.00, 'SALE'),
(2, 20001, '2025-12-02 11:30:00', 30.00, 'RENTAL'),
(3, 20001, '2025-12-03 14:00:00', 16.00, 'SALE'),
(4, 20001, '2025-12-04 09:15:00', 160.00, 'SALE'),
(5, 20001, '2025-12-05 16:20:00', 45.00, 'SALE'),
(6, 20001, '2025-12-06 12:45:00', 380.00, 'SALE'),
(7, 20001, '2025-12-07 10:00:00', 40.00, 'RENTAL'),
(8, 20001, '2025-12-08 11:10:00', 12.00, 'SALE'),
(9, 20001, '2025-12-09 13:30:00', 420.00, 'SALE'),
(10, 20001, '2025-12-10 15:45:00', 60.00, 'SALE'),
(11, 20001, '2025-12-11 09:20:00', 20.00, 'RENTAL'),
(12, 20001, '2025-12-12 11:00:00', 450.00, 'SALE'),
(13, 20001, '2025-12-13 14:15:00', 150.00, 'SALE'),
(14, 20001, '2025-12-14 16:30:00', 45.00, 'RENTAL'),
(15, 20001, '2025-12-15 10:45:00', 80.00, 'SALE'),
(16, 20001, '2025-12-16 12:00:00', 6.00, 'SALE'),
(17, 20001, '2025-12-17 13:20:00', 50.00, 'SALE'),
(18, 20001, '2025-12-18 09:30:00', 380.00, 'SALE'),
(19, 20001, '2025-12-19 15:10:00', 30.00, 'SALE'),
(20, 20001, '2025-12-20 11:50:00', 60.00, 'RENTAL'),
(21, 20001, '2025-12-21 14:40:00', 450.00, 'SALE'),
(22, 20001, '2025-12-22 10:00:00', 160.00, 'SALE'),
(23, 20001, '2025-12-23 13:15:00', 24.00, 'SALE'),
(24, 20001, '2025-12-24 11:00:00', 900.00, 'SALE'),
(25, 20001, '2025-12-25 15:00:00', 30.00, 'RENTAL'),
(26, 20001, '2025-12-26 12:30:00', 420.00, 'SALE'),
(27, 20001, '2025-12-27 10:20:00', 45.00, 'SALE'),
(28, 20001, '2025-12-28 14:10:00', 160.00, 'SALE'),
(29, 20001, '2025-12-29 09:50:00', 20.00, 'SALE'),
(30, 20001, '2025-12-30 11:25:00', 150.00, 'SALE'),
(31, 20001, '2025-12-31 16:00:00', 60.00, 'RENTAL'),
(32, 20001, '2026-01-01 10:00:00', 450.00, 'SALE'),
(33, 20001, '2026-01-02 12:15:00', 25.00, 'SALE'),
(34, 20001, '2026-01-03 13:40:00', 380.00, 'SALE'),
(35, 20001, '2026-01-04 11:05:00', 30.00, 'RENTAL'),
(36, 20001, '2026-01-05 15:30:00', 45.00, 'SALE'),
(37, 20001, '2026-01-06 09:10:00', 150.00, 'SALE'),
(38, 20001, '2026-01-07 10:55:00', 420.00, 'SALE'),
(39, 20001, '2026-01-08 14:25:00', 12.00, 'SALE'),
(40, 20001, '2026-01-09 11:40:00', 45.00, 'RENTAL'),
(41, 20001, '2026-01-10 16:15:00', 80.00, 'SALE'),
(42, 20001, '2026-01-11 09:30:00', 160.00, 'SALE'),
(43, 20001, '2026-01-12 00:04:35', 265.00, 'SALE'),
(44, 20001, '2026-01-12 00:05:48', 53.00, 'SALE'),
(45, 10001, '2026-01-12 21:04:05', 63.60, 'RENTAL'),
(46, 10001, '2026-01-13 06:16:50', 477.00, 'SALE'),
(47, 10001, '2026-01-13 15:51:54', 954.00, 'SALE'),
(48, 10001, '2026-01-13 15:52:45', 53.00, 'RENTAL'),
(49, 20001, '2026-01-13 16:06:54', 477.00, 'SALE'),
(50, 10001, '2026-01-14 11:28:03', 212.00, 'SALE'),
(51, 10001, '2026-01-14 11:36:37', 424.00, 'SALE'),
(52, 10001, '2026-01-14 13:45:34', 477.00, 'RENTAL');

-- --------------------------------------------------------

--
-- Table structure for table `sales_items`
--

CREATE TABLE `sales_items` (
  `id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `quantity_sold` int(11) NOT NULL,
  `price_each` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sales_items`
--

INSERT INTO `sales_items` (`id`, `sale_id`, `item_id`, `quantity_sold`, `price_each`) VALUES
(1, 1, 1, 1, 450.00),
(2, 2, 10, 2, 15.00),
(3, 3, 27, 4, 4.00),
(4, 4, 12, 1, 160.00),
(5, 5, 16, 1, 45.00),
(6, 6, 7, 1, 380.00),
(7, 7, 14, 4, 10.00),
(8, 8, 29, 3, 4.00),
(9, 9, 4, 1, 420.00),
(10, 10, 24, 3, 20.00),
(11, 11, 14, 2, 10.00),
(12, 12, 2, 1, 450.00),
(13, 13, 11, 1, 150.00),
(14, 14, 10, 3, 15.00),
(15, 15, 18, 1, 80.00),
(16, 16, 26, 3, 2.00),
(17, 17, 21, 2, 25.00),
(18, 18, 8, 1, 380.00),
(19, 19, 23, 2, 15.00),
(20, 20, 10, 4, 15.00),
(21, 21, 3, 1, 450.00),
(22, 22, 12, 1, 160.00),
(23, 23, 28, 4, 6.00),
(24, 24, 2, 2, 450.00),
(25, 25, 14, 3, 10.00),
(26, 26, 5, 1, 420.00),
(27, 27, 17, 1, 45.00),
(28, 28, 19, 2, 80.00),
(29, 29, 26, 10, 2.00),
(30, 30, 40, 1, 150.00),
(31, 31, 10, 4, 15.00),
(32, 32, 1, 1, 450.00),
(33, 33, 22, 1, 25.00),
(34, 34, 9, 1, 380.00),
(35, 35, 14, 3, 10.00),
(36, 36, 16, 1, 45.00),
(37, 37, 11, 1, 150.00),
(38, 38, 6, 1, 420.00),
(39, 39, 30, 4, 3.00),
(40, 40, 10, 3, 15.00),
(41, 41, 20, 1, 80.00),
(42, 42, 12, 1, 160.00),
(43, 43, 48, 1, 250.00),
(44, 44, 22, 2, 25.00),
(45, 45, 10, 4, 15.00),
(46, 46, 1, 1, 450.00),
(47, 47, 56, 2, 450.00),
(48, 48, 14, 5, 10.00),
(49, 49, 56, 1, 450.00),
(50, 50, 57, 1, 200.00),
(51, 51, 57, 2, 200.00),
(52, 52, 1, 1, 450.00);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `role` varchar(50) NOT NULL,
  `is_first_login` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`, `full_name`, `role`, `is_first_login`) VALUES
(10001, 'manager', 'hazwan1', 'Hazwan Adnan', 'Manager', 0),
(19611, '19611', 'staff123', 'irfan', 'MaintenanceStaff', 1),
(20001, 'counter', 'makanan', 'Siti Sarah', 'CounterStaff', 0),
(23156, '23156', 'staff123', 'hazwan', 'MaintenanceStaff', 1),
(26914, '26914', 'staff123', 'HAZWAN HAZIM', 'MaintenanceStaff', 1),
(30001, 'inventory', 'qwerty', 'Ah Chong', 'InventoryStaff', 0),
(38098, '38098', 'staff123', 'kamal', 'InventoryStaff', 1),
(40001, 'maint', '1', 'David Teo', 'MaintenanceStaff', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`item_id`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `maintenance_tasks`
--
ALTER TABLE `maintenance_tasks`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `assigned_staff_id` (`assigned_staff_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sale_id`),
  ADD KEY `staff_id` (`staff_id`);

--
-- Indexes for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sale_id` (`sale_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `maintenance_tasks`
--
ALTER TABLE `maintenance_tasks`
  MODIFY `task_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sale_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sales_items`
--
ALTER TABLE `sales_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`updated_by`) REFERENCES `users` (`user_id`) ON DELETE SET NULL;

--
-- Constraints for table `maintenance_tasks`
--
ALTER TABLE `maintenance_tasks`
  ADD CONSTRAINT `maintenance_tasks_ibfk_1` FOREIGN KEY (`assigned_staff_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD CONSTRAINT `sales_items_ibfk_1` FOREIGN KEY (`sale_id`) REFERENCES `sales` (`sale_id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_items_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `inventory` (`item_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
