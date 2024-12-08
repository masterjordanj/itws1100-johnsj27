-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 07, 2024 at 04:45 AM
-- Server version: 10.11.8-MariaDB-0ubuntu0.24.04.1
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mySite`
--

-- --------------------------------------------------------

--
-- Table structure for table `myFooter`
--

CREATE TABLE `myFooter` (
  `unique_id` smallint(6) NOT NULL,
  `email` varchar(320) NOT NULL,
  `linkedin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myLabs`
--

CREATE TABLE `myLabs` (
  `unique_id` smallint(6) NOT NULL,
  `labno` smallint(6) NOT NULL,
  `title` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myLabs`
--

INSERT INTO `myLabs` (`unique_id`, `labno`, `title`, `link`, `description`) VALUES
(1, 1, 'Azure', 'labs/lab01/', 'lab'),
(2, 2, 'Resume', 'labs/lab02/', 'lab'),
(3, 3, 'Website', 'labs/lab03/', 'lab'),
(4, 4, 'RSS/ATOM', 'labs/lab04/', 'lab'),
(5, 5, 'Forms', 'labs/lab05/', 'lab'),
(6, 6, 'jQuery', 'labs/lab06/', 'lab'),
(7, 7, 'Group', 'labs/lab07/', 'lab'),
(8, 8, 'JS/JSON/AJAX', 'labs/lab08/', 'lab'),
(9, 9, 'Databases and SQL', 'labs/lab09/', 'lab'),
(10, 10, 'Production Servers', 'labs/lab10/', 'lab');

-- --------------------------------------------------------

--
-- Table structure for table `myProjects`
--

CREATE TABLE `myProjects` (
  `unique_id` smallint(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `link` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `myProjects`
--

INSERT INTO `myProjects` (`unique_id`, `name`, `link`, `description`) VALUES
(1, 'WRPI', '../grp', 'Group project');

-- --------------------------------------------------------

--
-- Table structure for table `mySiteUsers`
--

CREATE TABLE `mySiteUsers` (
  `unique_id` smallint(6) NOT NULL,
  `name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mySiteUsers`
--

INSERT INTO `mySiteUsers` (`unique_id`, `name`, `username`, `password`, `admin`) VALUES
(1, 'Jordan Johnson', 'johnsj27', 'CruzJJ1!', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `myFooter`
--
ALTER TABLE `myFooter`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `myLabs`
--
ALTER TABLE `myLabs`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `myProjects`
--
ALTER TABLE `myProjects`
  ADD PRIMARY KEY (`unique_id`);

--
-- Indexes for table `mySiteUsers`
--
ALTER TABLE `mySiteUsers`
  ADD PRIMARY KEY (`unique_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `myFooter`
--
ALTER TABLE `myFooter`
  MODIFY `unique_id` smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myLabs`
--
ALTER TABLE `myLabs`
  MODIFY `unique_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `myProjects`
--
ALTER TABLE `myProjects`
  MODIFY `unique_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mySiteUsers`
--
ALTER TABLE `mySiteUsers`
  MODIFY `unique_id` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
