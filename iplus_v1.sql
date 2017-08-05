-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2017 at 10:38 PM
-- Server version: 10.1.24-MariaDB
-- PHP Version: 7.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iplus_v1`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(50) NOT NULL,
  `q_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `q_type`) VALUES
(1, 'question 1', 'organizaion'),
(2, 'question', 'organization'),
(3, 'question', 'industry'),
(4, 'question', 'society'),
(5, 'question', 'income');

-- --------------------------------------------------------

--
-- Table structure for table `survey`
--

CREATE TABLE `survey` (
  `q_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `q_value` varchar(100) NOT NULL,
  `q_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `survey`
--

INSERT INTO `survey` (`q_id`, `u_id`, `q_value`, `q_type`) VALUES
(1, 1, '3', 'organization'),
(2, 1, '2', 'industry'),
(3, 1, '1', 'society'),
(1, 2, '3', 'organization'),
(2, 2, '2', 'industry'),
(3, 2, '1', 'society'),
(5, 1, '3', 'income'),
(5, 2, '3', 'income');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `u_name` varchar(30) NOT NULL,
  `u_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `u_name`, `u_password`) VALUES
(1, 'mohammed123', 'pass1234'),
(2, 'aliyu123', 'pass1234');

-- --------------------------------------------------------

--
-- Table structure for table `variables`
--

CREATE TABLE `variables` (
  `username` varchar(30) NOT NULL,
  `var1` int(11) NOT NULL,
  `var2` int(11) NOT NULL,
  `var3` int(11) NOT NULL,
  `var4` int(11) NOT NULL,
  `var5` int(11) NOT NULL,
  `var6` int(11) NOT NULL,
  `var7` int(11) NOT NULL,
  `var8` int(11) NOT NULL,
  `var9` int(11) NOT NULL,
  `var10` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `variables`
--

INSERT INTO `variables` (`username`, `var1`, `var2`, `var3`, `var4`, `var5`, `var6`, `var7`, `var8`, `var9`, `var10`) VALUES
('mohammed', 50, 89, 98, 79, 99, 100, 70, 50, 14, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
