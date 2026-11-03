-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2026 at 12:33 PM
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
-- Database: `activity1clothing_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(11) NOT NULL,
  `updated_by` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  `status` enum('pending','approved') NOT NULL DEFAULT 'pending',
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `status`, `role`, `created_at`) VALUES
(1, 'admin', 'admin12345', 'approved', 'admin', '2026-11-02 13:46:04'),
(2, 'ashley', 'ashley12', 'approved', 'user', '2026-11-02 15:36:54'),
(3, 'ashley', 'ashley12', 'pending', 'user', '2026-11-02 15:45:49'),
(4, 'admin', 'admin123', 'pending', 'user', '2026-11-02 15:46:14'),
(5, 'admin', 'admin123', 'pending', 'user', '2026-11-02 15:53:10'),
(6, 'ashley', 'ashley123', 'pending', 'user', '2026-11-02 15:53:25'),
(7, 'ashley', 'ashley1213', 'pending', 'user', '2026-11-03 08:01:42'),
(8, 'ashley', 'ashley1213', 'pending', 'user', '2026-11-03 08:03:05'),
(9, 'ashley', 'ashley1213', 'pending', 'user', '2026-11-03 08:14:52'),
(10, 'ashley', 'ashleykimmei', 'pending', 'user', '2026-11-03 09:09:17'),
(11, 'erica', '123', 'pending', 'user', '2026-11-03 09:27:14'),
(12, 'erica', '123', 'pending', 'user', '2026-11-03 09:29:53'),
(13, 'erica', '123', 'pending', 'user', '2026-11-03 09:30:09'),
(14, 'erica', '123', 'pending', 'user', '2026-11-03 09:30:26'),
(15, 'miah', '1234', 'pending', 'user', '2026-11-03 09:49:04'),
(16, 'hailey', 'hailey123', 'pending', 'user', '2026-11-03 10:52:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
