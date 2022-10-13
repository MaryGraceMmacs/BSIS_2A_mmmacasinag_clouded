-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2022 at 12:45 PM
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
('1', 'Fried Chicken Wings', 'BBQ, Lemon Pepper', '400', 'Hot Snacks'),
('MS002', 'Monzzarella', 'With Dipping Sauce', '350', 'Hot Snacks'),
('CF003', 'Chicken Finger', 'With Dipping Sauce', '500', 'Hot Snacks'),
('ER004', 'Egg Rolls', 'With Dipping Sauce', '550', 'Hot Snacks'),
('MB005', 'Meatballs', 'BBQ, Sweet & Sour', '300', 'Hot Snacks'),
('N006', 'Nachos', 'Chips, Hot Cheese Sauce & Salsa', '600', 'Hot Snacks'),
('', '', 'Additional Dipping Sauce Available', '20', 'Hot Snacks'),
('HD007', 'Hotdogs', 'Served with your choice of: Potato Salad, Fruit Salad along with chips', '250', 'Quick Meals'),
('HB008 ', 'Hamburgers', 'Served with your choice of: Pasta Salad, Potato Salad along with chips', '300', 'Quick Meals'),
('BL009', 'Box Lunch', 'Option of Ham, Roast Beef , Tuna served with your choice of: Potato Sa', '400', 'Quick Meals'),
('', '', 'Add on Assorted Cookies', '30', 'Quick Meals'),
('D0010', 'Donuts', 'Choco, Strawberry, Mocha, Blueberry, Coffee Roll, Jelly Filled', '500', 'Sweets'),
('AC0011', 'Assorted Cookies', 'Mango cashew, Blueberry Walnut, Choco Chip Almond, Cranberry Pecan, Go', '400', 'Sweets'),
('B0012', 'Brownies', 'Red Velvet, Coffee Crunch, Black & White', '500', 'Sweets'),
('RCT0013', 'Rice Crispy Treats', 'S\'mores, Double Chocolatey Chunk, Rainbow', '500', 'Sweets'),
('FW001', 'Fried Chicken Wings', 'BBQ, Lemon Pepper', '400', 'Hot Snacks');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
