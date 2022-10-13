-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 12:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food categories`
--

-- --------------------------------------------------------

--
-- Table structure for table `food categories`
--

CREATE TABLE `food categories` (
  `Hot Snacks` varchar(100) NOT NULL,
  `Quick Meals` varchar(100) NOT NULL,
  `Sweets` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food categories`
--

INSERT INTO `food categories` (`Hot Snacks`, `Quick Meals`, `Sweets`) VALUES
('Fried Chicken Wings\r\nMonzzarella\r\nChicken Finger\r\nEgg Rolls\r\nMeatballs\r\nNachos\r\n', 'Hotdogs	\r\nHamburgers	\r\nBox Lunch	\r\n', 'Donuts	\r\nAssorted Cookies	\r\nBrownies	\r\nRice Crispy Treats	\r\n');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
