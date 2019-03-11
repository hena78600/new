-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2019 at 11:50 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `businesslisting`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `arch_user`
--

CREATE TABLE `arch_user` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `arch_user`
--

INSERT INTO `arch_user` (`id`, `user_id`) VALUES
(14, 4),
(15, 5),
(16, 7),
(17, 8),
(18, 22),
(19, 18),
(21, 19),
(22, 80),
(23, 2),
(24, 97),
(25, 98),
(26, 1),
(29, 115),
(31, 101),
(32, 100),
(33, 99);

-- --------------------------------------------------------

--
-- Table structure for table `business_category`
--

CREATE TABLE `business_category` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `business_category`
--

INSERT INTO `business_category` (`id`, `cat_name`) VALUES
(6, 'AC Services'),
(8, 'Food'),
(12, 'Electronics'),
(13, 'Restaurant'),
(14, 'Electronic Equipment'),
(15, 'Automobile'),
(16, 'Book Shop'),
(17, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `bus_like`
--

CREATE TABLE `bus_like` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bus_like`
--

INSERT INTO `bus_like` (`id`, `bus_id`, `user_email`) VALUES
(13, 4, 'hena@gmail.com'),
(14, 7, 'hena@gmail.com'),
(15, 64, 'hena@gmail.com'),
(25, 6, 'hena@gmail.com'),
(34, 3, 'hena@gmail.com'),
(66, 2, 'hena@gmail.com'),
(339, 98, 'hena@gmail.com'),
(351, 97, 'hena@gmail.com'),
(357, 102, 'hena@gmail.com'),
(360, 98, 'ara@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bus_name` varchar(255) NOT NULL,
  `bus_cat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `dateofestab` date NOT NULL,
  `newsletter` varchar(255) NOT NULL,
  `howtohear` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `activation_code` varchar(255) NOT NULL,
  `email_status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `bus_name`, `bus_cat`, `email`, `mobile`, `password`, `address`, `logo`, `dateofestab`, `newsletter`, `howtohear`, `description`, `status`, `activation_code`, `email_status`) VALUES
(1, 'Hena Armaan', 'Automobile Services', 'Automobile', 'hena@gmail.com', '87097654321', '827ccb0eea8a706c4c34a16891f84e7b', 'Durgapur', 'IMG_4049.jpg', '2019-01-02', 'Yes', 'tvad', 'HIIIIIIIIIIIIIIIII', 'APPROVED', '4e7f457790a6c3f949493c773ba04567', 'verified'),
(2, 'Raja', 'Restaurant', 'Restaurant', 'ara@gmail.com', '9800789656', 'a39d81ea1a818b184165f517ddc2e036', 'Aut quam et eum mini', '2.jpg', '2005-06-22', 'No', 'newspaper', 'Reprehenderit non e', 'APPROVED', '4e7f457790a6c8f989493c773ba04567', 'verified'),
(96, 'Sony', 'Book Shop', 'Book Shop', 'wykuviboq@mailinator.net', '6906988957', 'a39d81ea1a818b184165f517ddc2e036', 'Eum culpa aut repell', '3.jpg', '1972-04-15', 'No', 'newspaper', 'Aut itaque cum odio ', 'APPROVED', '4e7f457790a6c8f989493c773ba05230', 'verified'),
(97, 'mykewiti', 'Harding Villarreal', 'Others', 'ryxifapy@mailinator.net', '9609655958', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Recusandae Illum t', '3.jpg', '1982-11-02', 'Yes', 'wordofmouth', 'Ipsum rem veritatis', 'APPROVED', '5f3a7680f25eeded588cd2d16c9793db', 'not verified'),
(98, 'Dev', 'Barclay Paul', 'Electronics', 'wonyvunic@mailinator.com', '9609065595', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Saepe assumenda rem ', '1.jpg', '1975-12-02', 'No', 'wordofmouth', 'Voluptates beatae qu', 'APPROVED', '4b5357bbefbcf3043ce4e50a4d32fcd8', 'verified'),
(99, 'qowacogop', 'Clarke Morrison', 'Food', 'qixab@mailinator.com', '9609655977', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Ut ducimus in fugia', '4.jpg', '2004-03-05', 'No', 'news', 'Qui quisquam ut haru', 'APPROVED', '0a0192696a67dd33e3511555bb6fda9d', 'not verified'),
(100, 'qowacogop', 'Clarke Morrison', 'Food', 'qab@mailinator.com', '9609655955', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Ut ducimus in fugia', '5.jpg', '2004-03-05', 'No', 'wordofmouth', 'Qui quisquam ut haru', 'APPROVED', '06e541a74eee25f007611d35600403f2', 'verified'),
(101, 'kotetam', 'Daniel Frazier', 'Others', 'zicep@mailinator.net', '6787654567', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Enim cupidatat quam ', '10601_matas_02_tmb.jpg', '1994-05-15', 'No', 'wordofmouth', 'Non quae vitae recus', 'APPROVED', 'a6bcb1ee798c09364e4b19d180a31c01', 'verified'),
(102, 'jicupowowo', 'Kevin Tate', 'Others', 'dolehex@mailinator.com', '0909876566', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Ut laudantium est ', '10601_matas_02_tmb.jpg', '2009-10-24', 'Yes', 'wordofmouth', 'Temporibus aliqua I', 'PENDING', '9e2c4fee34051ed5ab4e985c4b9eb9f7', 'not verified'),
(103, 'nyjebumon', 'Hanae Bates', 'Book Shop', 'getagoki@mailinator.com', '6906988567', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Inventore itaque pro', 'IMG_4049.jpg', '1996-07-04', 'No', 'wordofmouth', 'Magnam dolore delect', 'PENDING', '4b21197fe88b522661e72a57dee90669', 'not verified'),
(169, 'qagoti', 'Gage Bullock', 'Automobile', 'betecy@mailinator.net', '6906984545', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Incidunt minim quis', '10601_matas_02_tmb.jpg', '1971-06-06', 'Yes', '', 'Saepe ad nisi ad ver', 'PENDING', '001ea443433e0fb24390ed95c4b0daa9', 'verified'),
(170, 'bolyvili', 'Mercedes Rollins', 'Electronic Equipment', 'vilodiryna@mailinator.net', '4566988957', '827ccb0eea8a706c4c34a16891f84e7b', 'Nesciunt delectus ', '2.jpg', '2012-02-28', 'Yes', 'newspaper', 'Praesentium sed mini', 'APPROVED', '0c7f4435b2c290c7ee25f77f60bb35bf', 'verified'),
(171, 'vuruvegixe', 'Destiny Green', 'Electronics', 'vafutibazo@mailinator.com', '4545655958', 'f3ed11bbdb94fd9ebdefbaf646ab94d3', 'Sit deserunt praesen', 'IMG_4049.jpg', '2019-10-05', 'No', '', 'Qui nostrud cupidita', 'PENDING', '53f434824f5de867751341dd3e3f4495', 'not verified');

-- --------------------------------------------------------

--
-- Table structure for table `user_fav`
--

CREATE TABLE `user_fav` (
  `id` int(11) NOT NULL,
  `bus_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_fav`
--

INSERT INTO `user_fav` (`id`, `bus_id`, `user_email`) VALUES
(21, 98, 'hena@gmail.com'),
(56, 100, 'hena@gmail.com'),
(60, 1, 'hena@gmail.com'),
(75, 98, 'ara@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `arch_user`
--
ALTER TABLE `arch_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `business_category`
--
ALTER TABLE `business_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bus_like`
--
ALTER TABLE `bus_like`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_fav`
--
ALTER TABLE `user_fav`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `arch_user`
--
ALTER TABLE `arch_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `business_category`
--
ALTER TABLE `business_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bus_like`
--
ALTER TABLE `bus_like`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=361;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;

--
-- AUTO_INCREMENT for table `user_fav`
--
ALTER TABLE `user_fav`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
