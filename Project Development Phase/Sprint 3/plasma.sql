-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2022 at 09:18 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `plasma`
--

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Fullname` varchar(50) NOT NULL,
  `Lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `Address` varchar(60) NOT NULL,
  `State` varchar(30) NOT NULL,
  `Postalcode` int(10) NOT NULL,
  `Date Of Birth` int(20) NOT NULL,
  `Gender` varchar(15) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Covid-19 record` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Fullname`, `Lastname`, `email`, `Address`, `State`, `Postalcode`, `Date Of Birth`, `Gender`, `Phone`, `Covid-19 record`, `password`) VALUES
('kokila', 'M', 'kokila034@gmail.com', 'Anna Nagar street,Chennai', 'Tamilnadu', 626145, 11122003, 'Female', 1234567899, 'Uninfected', 'Kok@28'),
('Muthupriya', 'V', 'muthu24@gmail.com', 'North Car street, Chittoor', 'Andhra pardesh', 626135, 9121991, 'Female', 345678987, 'Uninfected', 'Mu@190');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
