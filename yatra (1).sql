-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2019 at 11:03 AM
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
-- Database: `yatra`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b');

-- --------------------------------------------------------

--
-- Table structure for table `flight_details`
--

CREATE TABLE `flight_details` (
  `id` int(11) NOT NULL,
  `fid` varchar(30) NOT NULL,
  `routes_from` varchar(255) NOT NULL,
  `routes_to` varchar(255) NOT NULL,
  `start_time` varchar(11) NOT NULL,
  `destination_time` varchar(255) NOT NULL,
  `f_available` varchar(255) NOT NULL,
  `seats` int(11) NOT NULL,
  `f_fare` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight_details`
--

INSERT INTO `flight_details` (`id`, `fid`, `routes_from`, `routes_to`, `start_time`, `destination_time`, `f_available`, `seats`, `f_fare`) VALUES
(1, 'AIR899', 'Kolkata', 'Delhi', '03:43', '12:06', 'tuesday', 134, 5000),
(2, 'AIR879', 'Kolkata', 'Chennai', '01:03', '11:05', 'tuesday', 123, 7800),
(3, 'AIR879', 'Kolkata', 'Delhi', '03:43', '12:04', 'tuesday', 233, 1233),
(4, 'AIR893', 'Delhi', 'Chennai', '03:34', '12:03', 'tuesday', 169, 4500),
(5, 'AIR800', 'Chennai', 'Mumbai', '21:03', '05:05', 'tuesday,saturday', 123, 6000),
(6, 'AIR801', 'Mumbai', 'Cochi', '05:04', '12:23', 'wednesday,thursday,friday', 169, 8000),
(7, 'AIR859', 'Hyderabad', 'Delhi', '01:00', '3:30', 'friday', 169, 6700),
(8, 'AIR879', 'Chennai', 'Mumbai', '12:00', '06:21', 'tuesday', 169, 6000),
(9, 'AIR879', 'Mumbai', 'Bangalore', '21:02', '03:02', 'monday', 123, 4566),
(10, 'AIR893', 'Pune', 'Delhi', '12:02', '02:03', 'wednesday', 169, 8900);

-- --------------------------------------------------------

--
-- Table structure for table `routes`
--

CREATE TABLE `routes` (
  `id` int(11) NOT NULL,
  `routes_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `routes`
--

INSERT INTO `routes` (`id`, `routes_name`) VALUES
(1, 'Kolkata'),
(2, 'Delhi'),
(6, 'Chennai'),
(8, 'Mumbai'),
(9, 'Cochi'),
(11, 'Bangalore'),
(12, 'Hyderabad'),
(13, 'Mysore'),
(14, 'Pune');

-- --------------------------------------------------------

--
-- Table structure for table `seats`
--

CREATE TABLE `seats` (
  `id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `age` varchar(100) NOT NULL,
  `flight_id` varchar(255) NOT NULL,
  `seats_no` varchar(100) NOT NULL,
  `total_seats` varchar(100) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `seats`
--

INSERT INTO `seats` (`id`, `user_email`, `user_name`, `age`, `flight_id`, `seats_no`, `total_seats`, `price`) VALUES
(1, 'aliya11.hr@gmail.com', '', '0', 'AIR899', 'A1,B1,C1', '3', 15000),
(2, 'aliya11.hr@gmail.com', '', '0', 'AIR899', 'D1,D2,D3', '3', 15000),
(40, 'aliya11.hr@gmail.com', 'Hena Ara,Hena Ara', '19,24', 'AIR899', 'B3,C2,C3', '3', 0),
(41, 'aliya11.hr@gmail.com', 'Hena Ara', '22', 'AIR899', 'B12,D12,E10', '3', 0),
(42, 'aliya11.hr@gmail.com', 'Hena Ara', '22', 'AIR893', 'A5,B5', '2', 0),
(43, 'aliya11.hr@gmail.com', 'Hena Ara', '22', 'AIR893', 'I12,J12', '2', 0),
(44, 'aliya11.hr@gmail.com', 'Hena Ara', '22', 'AIR893', 'I12,J12', '2', 0),
(45, 'aliya11.hr@gmail.com', 'Hena Ara', '22', 'AIR893', 'I1,J1', '2', 0),
(46, 'aliya11.hr@gmail.com', 'Sony', '22', 'AIR893', 'B10,D10', '2', 9000),
(47, 'aliya11.hr@gmail.com', 'Azhar Hussain,Hena Ara', '19,22', 'AIR899', 'E7,F7', '2', 10000),
(48, 'aliya11.hr@gmail.com', 'Sonam', '22', 'AIR893', 'A1,A2,A3,A4', '4', 18000),
(49, 'aliya11.hr@gmail.com', 'Hena Ara,Azhar', '22,19', 'AIR879', 'A1,B1,D3,E3', '4', 31200),
(50, 'aliya11.hr@gmail.com', 'Sonam,Raja', '22,22', 'AIR879', 'C10,D9', '2', 15600),
(51, 'aliya11.hr@gmail.com', 'Sonam,Raja', '22,22', 'AIR879', 'C10,D9', '2', 15600),
(52, 'aliya11.hr@gmail.com', 'Heena Armaan', '22', 'AIR899', 'A6', '1', 5000),
(54, 'aliya11.hr@gmail.com', 'Sonam', '22', 'AIR899', 'H12', '1', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `password`) VALUES
(1, 'Hena', 'aliya11.hr@gmail.com', '8609644117', '202cb962ac59075b964b07152d234b70'),
(2, 'Raj', 'raj@gmail.com', '5656565656', '202cb962ac59075b964b07152d234b70'),
(3, 'Azhar', 'az@gmail.com', '5656343434', '827ccb0eea8a706c4c34a16891f84e7b'),
(4, 'Ahad', 'ahad@gmail.com', '8789878987', '827ccb0eea8a706c4c34a16891f84e7b'),
(5, 'Hena', 'as.hr@gmail.com', '8696543221', '827ccb0eea8a706c4c34a16891f84e7b'),
(6, 'Hena', 'aliydfa11.hr@gmail.com', '5656565665', '827ccb0eea8a706c4c34a16891f84e7b'),
(7, 'Ahan', 'ahan@gmail.com', '8765908654', '827ccb0eea8a706c4c34a16891f84e7b');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flight_details`
--
ALTER TABLE `flight_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `routes`
--
ALTER TABLE `routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seats`
--
ALTER TABLE `seats`
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
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `flight_details`
--
ALTER TABLE `flight_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `routes`
--
ALTER TABLE `routes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `seats`
--
ALTER TABLE `seats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
