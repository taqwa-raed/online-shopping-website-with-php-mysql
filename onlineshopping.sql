-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2020 at 10:49 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlineshopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `name`) VALUES
(1, 'admin@gmail.com', 'admin', 'taqwa');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `product_Id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cart_NO` int(11) NOT NULL,
  `total_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`product_Id`, `quantity`, `cart_NO`, `total_price`) VALUES
(1, 2, 1, 100),
(5, 2, 15, 47.5),
(7, 3, 16, 56.25),
(1, 1, 17, 50),
(4, 3, 18, 211.5),
(1, 1, 19, 50),
(6, 2, 20, 86.754),
(1, 2, 21, 100),
(1, 4, 22, 200),
(6, 1, 23, 43.377);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `imagePath` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `description`, `imagePath`) VALUES
(1, 'Beauty', 'Makeup, Hair Care, Bath & Shower. See also Health & Personal Care.', 'beautyCategory.jpg'),
(2, 'Books', 'Books, Calendars, Magazines, Journals, Other Publications', 'booksCategory.jpg'),
(3, 'Cell Phones', 'Phones', 'phonesCategory.jpg'),
(4, 'Health & Personal Care', 'First Aid, Nutrition. See also Beauty.', 'healthCategory.jpg'),
(5, 'Home & Garden', 'Kitchen, Furniture, Decor, Craft, Storage, Garden, Snow Removal..', 'homeCategory.jpg'),
(6, 'Sports', 'Exercise & Fitness, Team Sports, Boating & Fishing', 'sportCategory.jpg'),
(7, 'Clothing & Accessories', 'Outerwear, Athletic Wear, Innerwear, Belts, Wallets, watches...', 'clothingCategory.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `price` double NOT NULL,
  `categoryId` int(11) NOT NULL,
  `discount` double NOT NULL,
  `imagePath` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `type`, `price`, `categoryId`, `discount`, `imagePath`) VALUES
(1, 'Classic Trench Coat', 'normal', 50, 7, 0, 'product-04.jpg'),
(2, 'Converse All Star Hi Plimsolls', 'discount', 35, 6, 5, 'product-09.jpg'),
(4, 'Vintage Inspired Classic', 'normal', 70.5, 7, 0, 'product-06.jpg'),
(5, 'Only Check Trouser', 'discount', 25, 7, 5, 'product-03.jpg'),
(6, 'Pretty Little Thing', 'discount', 45.66, 7, 5, 'product-14.jpg'),
(7, 'Pieces Metallic Printed', 'normal', 18.75, 7, 0, 'product-08.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_NO`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_ibfk_1` (`categoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_NO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`categoryId`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
