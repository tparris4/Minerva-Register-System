-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 06:21 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Department_ID` int(11) NOT NULL,
  `D_Name` varchar(45) NOT NULL,
  `D_Email` varchar(45) NOT NULL,
  `D_Location` varchar(45) NOT NULL,
  `D_Phone` varchar(45) NOT NULL,
  `D_Secretary` varchar(45) NOT NULL,
  `Professor_ChairID` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `D_Name`, `D_Email`, `D_Location`, `D_Phone`, `D_Secretary`, `Professor_ChairID`) VALUES
(0, 'Test', 'Test', 'Test', 'Test', 'Test', 0),
(124, 'Math', 'MathDep@msc.edu', '100 Math Building', '214-669-7480', 'Thnah Pierce', 0),
(125, 'Biology', 'BiologyDept@msc.edu', '100 Science Building', '570-418-4913', 'Jayne Clarce', 0),
(126, 'Business', 'BusinessDept@msc.edu', '100 Business Building', '856-890-7925', 'Gerald Hicks', 0),
(127, 'Medical ', 'MedicalDept@msc.edu', '100 Medical Building', '325-447-1824', 'Robin Hardner', 0),
(128, 'Art', 'ArtDepartment@msc.edu', '400 Art Building', '270-835-1345', 'Edwin Villasenor', 0),
(129, 'Computer Science', 'CompSciDepartment@msc.edu', 'Computer Science Building', '478-338-3375', 'Brent Bolin', 0),
(130, 'English', 'EnglishDept@msc.edu', '100 English Building ', '240-578-5312', 'Joyce Reyes', 0),
(131, 'Humanities', 'HumanitiesDept@msc.edu', '100 Humanities Building', '727-204-9661', 'Denny Senes', 0),
(132, 'Music', 'MusicDept@msc.edu', '100 Music Building', '562-318--4908', 'Paula Cravens', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
