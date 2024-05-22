-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 05:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smartline`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_kitchen`
--

CREATE TABLE `book_kitchen` (
  `sr_no` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_kitchen`
--

INSERT INTO `book_kitchen` (`sr_no`, `name`, `phone`, `date`, `time`, `email`) VALUES
(1, 'omkar', 12456879, '2024-04-19', '10:00:00', 'm@gmail.com'),
(2, 'parth', 123456789, '2024-06-05', '01:00:00', 'parth@gmail.com'),
(3, 'bhagyshree', 123456789, '2024-04-21', '03:00:00', 'bhagyshree@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `email_offer`
--

CREATE TABLE `email_offer` (
  `id` int(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `email_offer`
--

INSERT INTO `email_offer` (`id`, `email`) VALUES
(1, 'om@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` int(10) NOT NULL,
  `email` varchar(20) NOT NULL,
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `phone`, `email`, `message`) VALUES
(1, 'omkar kulkarni', 2147483647, 'omkar@gmail.com', 'improve yourself'),
(2, 'manoj kulkarni', 2147483647, 'manoj@gmail.com', 'try better');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '12345');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_kitchen`
--
ALTER TABLE `book_kitchen`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `email_offer`
--
ALTER TABLE `email_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_kitchen`
--
ALTER TABLE `book_kitchen`
  MODIFY `sr_no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email_offer`
--
ALTER TABLE `email_offer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
