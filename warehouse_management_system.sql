-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2021 at 02:25 PM
-- Server version: 5.6.37
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `warehouse_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(100) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `qty_ordered` int(11) NOT NULL,
  `date_ordered` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `customer_name`, `product_name`, `qty_ordered`, `date_ordered`) VALUES
(1, 'Jason Derulo', 'Milo', 2, '2021-03-31 19:49:53'),
(2, 'Justin Gutlin', 'Nido', 50, '2021-03-31 19:53:52'),
(3, 'John Cena', 'Pepsodent', 10, '2021-03-31 19:56:32'),
(4, 'Brawn Stroman', 'Ideal Milk', 30, '2021-03-31 19:58:20'),
(6, 'Mensah Brown', 'Tasty Tom', 30, '2021-03-31 21:58:27'),
(7, 'Wade Barret', 'Close Up', 10, '2021-04-01 00:32:54'),
(8, 'Asante', 'Nido', 6, '2021-04-02 09:47:57'),
(9, 'Akosua', 'Pepsodent', 10, '2021-04-02 09:49:09'),
(10, 'Henry Mills', 'Pepsodent', 5, '2021-04-02 12:59:08');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE IF NOT EXISTS `Products` (
  `ID` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `name` varchar(125) NOT NULL,
  `stock` int(100) NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`ID`, `date_added`, `name`, `stock`, `price`) VALUES
(1, '2021-03-31 22:22:43', 'Cowbell', 500, 3.5),
(2, '2021-03-31 22:37:27', 'Milo', 200, 6),
(3, '2021-03-31 23:54:46', 'Ideal Milk', 400, 9),
(4, '2021-04-01 00:11:03', 'Richoco', 500, 3.4),
(5, '2021-04-01 00:11:43', 'This Way', 40, 1.4),
(6, '2021-04-01 00:12:15', 'Pepsodent', 500, 3.1),
(7, '2021-04-01 00:12:39', 'Close Up', 100, 2.3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `ID` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `username`, `password`, `role`, `name`, `date_added`) VALUES
(1, 'minoq', '21232f297a57a5a743894a0e4a801fc3', 'Admin', 'Michael Quarcoo', '2017-12-20 04:18:06'),
(2, 'jaybarnes', '21232f297a57a5a743894a0e4a801fc3', 'IT Head', 'John Barnes', '2019-01-14 06:10:28'),
(3, 'mines', '21232f297a57a5a743894a0e4a801fc3', 'DBS Admin', 'Anthoinette Ocran', '2019-10-16 04:09:17'),
(4, 'noir', '21232f297a57a5a743894a0e4a801fc3', 'Operations Manager', 'Olive Noire', '2019-10-15 06:21:14'),
(5, 'white', '21232f297a57a5a743894a0e4a801fc3', 'Accountant', 'Elikem White', '2020-04-13 06:24:16'),
(6, 'anobli', '21232f297a57a5a743894a0e4a801fc3', 'Managing Director', 'Kwesi Anobli', '2019-08-14 06:21:13'),
(8, 'lauren', '21232f297a57a5a743894a0e4a801fc3', 'Warehouse Manager', 'Agnes Laurencia', '2021-03-31 14:04:07'),
(9, 'franca', '21232f297a57a5a743894a0e4a801fc3', 'Executive Secretary', 'Francisca Koomson', '2021-03-31 17:46:48'),
(12, 'crown', '21232f297a57a5a743894a0e4a801fc3', 'Head of Security', 'Thomas Crown', '2021-03-31 18:30:11'),
(13, 'calve', '21232f297a57a5a743894a0e4a801fc3', 'Director', 'Julius Calavero', '2021-04-01 00:20:38'),
(14, 'kobby', '21232f297a57a5a743894a0e4a801fc3', 'General Supervisor', 'Kwabena Brobbey', '2021-04-02 14:02:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `Products`
--
ALTER TABLE `Products`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `Products`
--
ALTER TABLE `Products`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
