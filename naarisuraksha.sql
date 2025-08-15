-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2025 at 07:22 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `naarisuraksha`
--

-- --------------------------------------------------------

--
-- Table structure for table `alerts`
--

CREATE TABLE `alerts` (
  `aid` int(10) NOT NULL,
  `uid` int(10) NOT NULL,
  `location` varchar(100) NOT NULL,
  `alertType` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alerts`
--

INSERT INTO `alerts` (`aid`, `uid`, `location`, `alertType`, `description`, `date`, `status`) VALUES
(1, 1, 'Shirpur,Bus Stand', 'Harrasment', 'A man was following me persistently near the bus stand.', '2025-07-14', 'Reject'),
(2, 1, 'Patanjali Nagar,Shirpur', 'Domestic Violence', 'Neighbor heard loud noises and cries from nearby house.', '2025-07-12', 'Approve'),
(3, 2, 'Gujrati Complex Shirpur', 'Chori', 'Yaha par chori hui hai chor highway ki taraf bhage hai', '20-7-2025', 'Approve'),
(4, 3, 'Varzadi Road,Shirpur', 'Domestic Violence', 'Some Peoples are disturbing Society by making Violence', '20-7-2025', 'Reject'),
(5, 4, 'Rcpit', 'Khoon', 'khoon', '21-2-2025', 'Approve'),
(6, 1, 'Maharaja Complex shirpur', 'Thieves ', 'Thieves ', '22-07-2025', 'Approve'),
(7, 1, 'Nayara Petrol Pump', 'Thieves ', 'Thieves ', '22-07-2025', 'Approve'),
(8, 1, 'Shirpur', 'Harrasment', 'A man was hareasing me', '20-07-2025', 'Approve'),
(9, 4, 'Nimzari Naka', 'Chori', 'Yaha Par badi chori hui hai', '25-02-25', 'Pending'),
(10, 1, 'Karwand Naka', 'harrasment', 'harassment', '16-07-2025', 'Reject'),
(11, 1, 'nimzari naka', 'chori', 'chor bhag gaye', '25-07-25', 'Approve');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `pid` int(10) NOT NULL,
  `pname` varchar(100) NOT NULL,
  `pstation` varchar(100) NOT NULL,
  `pcontact` varchar(10) NOT NULL,
  `pemail` varchar(100) NOT NULL,
  `ppassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`pid`, `pname`, `pstation`, `pcontact`, `pemail`, `ppassword`) VALUES
(1, 'Inspector Kavita Patil', '1- Shirpur City Police Station', '9823641870', 'kavita.patil@maharashtrapolice.in', 'Kavita@9876');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(10) NOT NULL,
  `uname` varchar(100) NOT NULL,
  `ucontact` varchar(100) NOT NULL,
  `uaddress` varchar(200) NOT NULL,
  `uemail` varchar(100) NOT NULL,
  `upassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `uname`, `ucontact`, `uaddress`, `uemail`, `upassword`) VALUES
(1, 'Aarohi Sharma', '9999888877', 'Plot No. 12, Gokul Nagar,Shirpur', 'aarohi@77', '12345'),
(2, 'Kavya Patil', '9999999999', 'Flat No. B-203, Sai Residency,Shirpur', 'Kavya@P1234', '5678'),
(3, 'Prajakta Kumari', '7607677077', '23-C Chandra Sector,Water Treatment,Shirpur', 'Praju@0909', 'pqrs'),
(4, 'Gautami Pawar', '9256895623', '10-B Mayur Colony Shirpur', 'gautami@0987', 'mnbv');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alerts`
--
ALTER TABLE `alerts`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alerts`
--
ALTER TABLE `alerts`
  MODIFY `aid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `pid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
