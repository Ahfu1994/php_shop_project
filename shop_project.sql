-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 29, 2022 at 09:46 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(250) COLLATE utf8_bin NOT NULL,
  `admin_email` text COLLATE utf8_bin NOT NULL,
  `admin_password` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(2, 'fu', 'fu@email.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_cost` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
(24, '599.00', 'shipped', 1, 123456789, 'TH', 'TH', '2022-11-25 10:34:05'),
(25, '799.00', 'paid', 1, 123456789, 'TH', 'TH', '2022-11-25 10:46:06'),
(26, '199.00', 'not paid', 1, 123456789, 'TH', 'TH', '2022-11-25 11:05:54'),
(27, '199.00', 'paid', 1, 123456789, 'TH', 'TH', '2022-11-27 05:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

DROP TABLE IF EXISTS `order_items`;
CREATE TABLE IF NOT EXISTS `order_items` (
  `item_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_quantity`, `user_id`, `order_date`) VALUES
(36, 24, '8', 'White Shoes', 'featured1.jpeg', '199.00', 1, 1, '2022-11-25 10:34:05'),
(37, 24, '16', 'Watch', 'watch1.jpeg', '199.00', 1, 1, '2022-11-25 10:34:05'),
(38, 24, '9', 'Green bag', 'featured2.jpeg', '199.00', 1, 1, '2022-11-25 10:34:05'),
(39, 25, '8', 'White Shoes', 'featured1.jpeg', '199.00', 2, 1, '2022-11-25 10:46:06'),
(40, 25, '16', 'Watch', 'watch1.jpeg', '199.00', 1, 1, '2022-11-25 10:46:06'),
(41, 25, '9', 'Green bag', 'featured2.jpeg', '199.00', 1, 1, '2022-11-25 10:46:06'),
(42, 26, '8', 'White Shoes', 'featured1.jpeg', '199.00', 1, 1, '2022-11-25 11:05:54'),
(43, 27, '8', 'White Shoes', 'featured1.jpeg', '199.00', 1, 1, '2022-11-27 05:26:02');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
CREATE TABLE IF NOT EXISTS `payments` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_id` varchar(250) NOT NULL,
  `payment_date` datetime NOT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `order_id`, `user_id`, `transaction_id`, `payment_date`) VALUES
(1, 26, 1, '8LX21991R8142544C', '2022-11-27 07:15:53'),
(2, 24, 1, '5N22879028176791P', '2022-11-27 07:16:54'),
(3, 25, 1, '2EP70780VM679894F', '2022-11-28 04:44:46');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_image4` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_special_offer` int(2) NOT NULL,
  `product_color` varchar(100) NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_special_offer`, `product_color`) VALUES
(8, 'White Shoes', 'bags', 'awesome white shoes', 'White Shoes1.jpeg', 'White Shoes2.jpeg', 'White Shoes3.jpeg', 'White Shoes4.jpeg', '200.99', 0, 'white'),
(9, 'Green bag', 'bags', 'awesome green bag', 'featured2.jpeg', 'featured2.jpeg', 'featured2.jpeg', 'featured2.jpeg', '199.80', 10, 'green'),
(10, 'Black bag', 'bags', 'awesome black bag', 'featured3.jpeg', 'featured3.jpeg', 'featured3.jpeg', 'featured3.jpeg', '199.80', 0, 'black'),
(11, 'Blue bag', 'bags', 'awesome blue bag', 'featured4.jpeg', 'featured4.jpeg', 'featured4.jpeg', 'featured4.jpeg', '199.80', 0, 'blue'),
(12, 'Brow cloth', 'coats', 'Winter fall', 'clothes1.jpeg', 'clothes2.jpeg', 'clothes3.jpeg', 'clothes4.jpeg', '199.80', 30, 'brow'),
(13, 'Black cloth', 'coats', 'Winter fall', 'clothes2.jpeg', 'clothes2.jpeg', 'clothes2.jpeg', 'clothes2.jpeg', '199.80', 30, 'black'),
(14, 'Blue suit', 'suit', 'The best suit', 'clothes3.jpeg', 'clothes3.jpeg', 'clothes3.jpeg', 'clothes3.jpeg', '199.80', 30, 'blue'),
(15, 'Bluesky suit', 'suit', 'The best suit', 'clothes4.jpeg', 'clothes4.jpeg', 'clothes4.jpeg', 'clothes4.jpeg', '199.80', 30, 'bluesky'),
(16, 'Watch', 'watches', 'awesome watch', 'watch1.jpeg', 'watch1.jpeg', 'watch1.jpeg', 'watch1.jpeg', '199.80', 0, 'black'),
(17, 'Watch', 'watches', 'awesome watch', 'watch2.jpeg', 'watch2.jpeg', 'watch2.jpeg', 'watch2.jpeg', '199.80', 0, 'black'),
(18, 'Watch', 'watches', 'awesome watch', 'watch3.jpeg', 'watch3.jpeg', 'watch3.jpeg', 'watch3.jpeg', '199.80', 0, 'black'),
(19, 'Watch', 'watches', 'awesome watch', 'watch4.jpeg', 'watch4.jpeg', 'watch4.jpeg', 'watch4.jpeg', '199.80', 0, 'black'),
(20, 'Sport shoes', 'shoes', 'The adventure begin!!!', 'shoes1.jpeg', 'shoes1.jpeg', 'shoes1.jpeg', 'shoes1.jpeg', '199.80', 20, 'black-blue'),
(21, 'Sport shoes', 'shoes', 'The adventure begin!!!', 'shoes2.jpeg', 'shoes2.jpeg', 'shoes2.jpeg', 'shoes2.jpeg', '199.80', 10, 'black-yellow'),
(22, 'Sport shoes', 'shoes', 'The adventure begin!!!', 'shoes3.jpeg', 'shoes3.jpeg', 'shoes3.jpeg', 'shoes3.jpeg', '199.80', 20, 'orange-blue'),
(23, 'Sport shoes', 'shoes', 'The adventure begin!!!', 'shoes2.jpeg', 'shoes4.jpeg', 'shoes4.jpeg', 'shoes4.jpeg', '199.80', 10, 'black-blue'),
(24, 'Black coat', 'coats', 'cool coat', 'featured5.jpeg', 'featured5.jpeg', 'featured5.jpeg', 'featured5.jpeg', '255.00', 20, 'black'),
(25, 'Blak coat', 'coats', 'cool coats', 'featured6.jpeg', 'featured6.jpeg', 'featured6.jpeg', 'featured6.jpeg', '299.99', 10, 'black'),
(26, 'Carm coat', 'coats', 'cool coat', 'featured7.jpeg', 'featured7.jpeg', 'featured7.jpeg', 'featured7.jpeg', '255.00', 20, 'carm'),
(27, 'Blue coat', 'coats', 'cool coats', 'featured8.jpeg', 'featured8.jpeg', 'featured8.jpeg', 'featured8.jpeg', '299.99', 10, 'blue'),
(33, 'Blue shoes', 'shoes', 'blue blue', 'Blue shoes1.jpeg', 'Blue shoes2.jpeg', 'Blue shoes3.jpeg', 'Blue shoes4.jpeg', '300.00', 10, 'blue'),
(34, 'Red shoes', 'shoes', 'new style red shoes', 'Red shoes1.jpeg', 'Red shoes2.jpeg', 'Red shoes3.jpeg', 'Red shoes4.jpeg', '350.00', 20, 'red');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `UX_Constraint` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'fu', 'fu@email.com', '25f9e794323b453885f5181f1b624d0b');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
