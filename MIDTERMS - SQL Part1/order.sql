-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 12:46 PM
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
-- Database: `menu`
--

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ID` int(10) NOT NULL,
  `Item_id` varchar(150) NOT NULL,
  `Price` varchar(255) NOT NULL,
  `Qty` decimal(10,2) NOT NULL,
  `Total` varchar(255) NOT NULL,
  `Order_date` int(10) NOT NULL,
  `Status` varchar(10) NOT NULL,
  `Customer_name` varchar(10) NOT NULL,
  `Customer_contact` text NOT NULL,
  `Customer_email` text NOT NULL,
  `Customer_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`ID`, `Item_id`, `Price`, `Qty`, `Total`, `Order_date`, `Status`, `Customer_name`, `Customer_contact`, `Customer_email`, `Customer_address`) VALUES
(1, 'FW001\r\nHB008\r\nB0012', '400.00\r\n300.00\r\n500.00', '3.00', '1,200.00', 9292022, 'Delivered', 'Kathy', '0912-365-819', 'ramirezkathy15.kz@gmail.com', 'P-7 Kilicao, Daraga, Albay'),
(2, 'MS002\r\nHD007', '350.00\r\n250.00', '2.00', '600.00', 9302022, 'Delivered', 'Denise', '0931-689-0819', 'denisenardo@gmail.com', '294 Pag-asa St. Daraga'),
(3, 'BL009', '400.00', '1.00', '400.00', 10012022, 'Delivered', 'Kent Clint', '0949-089-3452', 'kcolevera2@gmail.com', 'Camalig, Albay'),
(4, 'AC0011\r\nHD007\r\nHB008\r\nD0010', '400.00\r\n250.00\r\n300.00\r\n500.00', '4.00', '1,450.00', 10132022, 'Delivered', 'Sean', '0987-123-5643', 'rodriguez.sean@gmail.com', 'Libon, Albay'),
(5, 'D0010\r\nAC0011\r\nB0012\r\nRCT0013', '500.00\r\n400.00\r\n500.00\r\n500.00', '4.00', '1,900.00', 10132022, 'Cancelled', 'Daniela', '0986-879-9944', 'mantesco.daniela@gmail.com', 'Brgy.5 Lerma St. Sagpon Albay, Legazpi City');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
