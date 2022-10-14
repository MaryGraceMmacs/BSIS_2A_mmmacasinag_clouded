-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2022 at 06:56 AM
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

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` varchar(50) NOT NULL,
  `Item Name` varchar(50) NOT NULL,
  `Description` varchar(70) NOT NULL,
  `Price` decimal(50,0) NOT NULL,
  `Food Categories` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `Item Name`, `Description`, `Price`, `Food Categories`) VALUES
('FCW001', 'Fried Chicken Wings', 'BBQ, Lemon Pepper', '400', 'Hot Snacks'),
('MS002', 'Monzzarella', 'With Dipping Sauce', '350', 'Hot Snacks'),
('CF003', 'Chicken Finger', 'With Dipping Sauce', '500', 'Hot Snacks'),
('ER004', 'Egg Rolls', 'With Dipping Sauce', '550', 'Hot Snacks'),
('MB005', 'Meatballs', 'BBQ, Sweet & Sour', '300', 'Hot Snacks'),
('N006', 'Nachos', 'Chips, Hot Cheese Sauce & Salsa', '600', 'Hot Snacks'),
('', '', 'Additional Dipping Sauce Available', '20', 'Hot Snacks'),
('HB008 ', 'Hotdogs', 'Served with your choice of: Potato Salad, Fruit Salad along with chips', '250', 'Quick Meals'),
('HD007', 'Hamburgers', 'Served with your choice of: Pasta Salad, Potato Salad along with chips', '300', 'Quick Meals'),
('BL009', 'Box Lunch', 'Option of Ham, Roast Beef , Tuna served with your choice of: Potato Sa', '400', 'Quick Meals'),
('', '', 'Add on Assorted Cookies', '30', 'Quick Meals'),
('D0010', 'Donuts', 'Choco, Straberry, Mocha, Blueberry, Coffee Roll, Jelly Filled', '500', 'Sweets'),
('AC0011', 'Assorted Cookies', 'Mango cashew, Blueberry Walnut, Choco Chip Almond, Cranberry Pecan, Go', '400', 'Sweets'),
('B0012', 'Brownies', 'Red velvet, Coffee Crunch, Black & White', '500', 'Sweets'),
('RCT0013', 'Rice Crispy Treats', 'S`Mores, Double Chocolatey Chunk, Rainbow', '500', 'Sweets');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `ID` int(10) NOT NULL,
  `Item_id` varchar(150) NOT NULL,
  `Price` varchar(225) NOT NULL,
  `Qty` decimal(10,2) NOT NULL,
  `Total` varchar(255) NOT NULL,
  `Order_date` date NOT NULL,
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
(1, 'FCW001\r\nHB008\r\nB0012\r\n', '400.00\r\n300.00\r\n500.00', '3.00', '1,200.00', '2022-09-29', 'Delivered', 'Kathy', '0912-365-4819', 'ramirezkathy15.kz@gmail.com', 'P-7 Kilicao, Daraga, Albay'),
(2, 'MS002\r\nHD007', '350.00\r\n250.00', '2.00', '600.00', '2022-09-30', 'Delivered', 'Denise', '0931-689-0819', 'denisenardo@gmail.com', '294 Pag-asa St. Daraga'),
(3, 'BL009', '400.00', '1.00', '400.00', '2022-10-01', 'Delivered', 'Kent Clint', '0949-089-3452', 'kcolevera1@gmail.com', 'Camalig, Albay'),
(4, 'AC0011\r\nHD007\r\nHB008\r\nD0010', '400.00\r\n250.00\r\n300.00\r\n500.00', '4.00', '1,450.00', '2022-10-13', 'Delivered', 'Sean', '0987-123-5643', 'rodriguez.sean@gmail.com', 'Libon, Albay'),
(5, 'D0010\r\nAC0011\r\nB0012\r\nRCT0013', '500.00\r\n400.00\r\n500.00\r\n500.00', '4.00', '1,900.00', '2022-10-13', 'Cancelled', 'Daniela', '0986-879-9944', 'mantesco.daniela@gmail.com', 'Brgy.5 Lerma St. Sagpon Albay, Legazpi City');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `Firstname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `Street` varchar(50) NOT NULL,
  `City` varchar(50) NOT NULL,
  `Zip` varchar(5) NOT NULL,
  `Phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `Firstname`, `Lastname`, `Street`, `City`, `Zip`, `Phone`) VALUES
(1, 'Kathy', 'Ramirez', 'Kilicao', 'Daraga', '4501', '0912-365-48'),
(2, 'Denise', 'Madelar', 'Pag-asa', 'Daraga', '4501', '0931-689-08'),
(3, 'Kent Clint', 'Arevalo', 'Libon', 'Camalig', '4502', '0949-089-34'),
(4, 'Sean', 'Rodriguez', 'Apud', 'Libon', '4507', '0987-123-56'),
(5, 'Daniela', 'Mantes', 'Lerma', 'Legazpi', '4500', '0986-879-99');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
