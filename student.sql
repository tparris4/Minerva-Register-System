-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 09:45 PM
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
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Stud_ID` int(11) NOT NULL,
  `S_Type` varchar(45) NOT NULL,
  `S_AcaStand` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Stud_ID`, `S_Type`, `S_AcaStand`) VALUES
(2222, 'Undergrad', 'Good'),
(33331, 'Undergrad', 'Good'),
(33332, 'Graduate', 'Good'),
(33333, 'Graduate', 'Good'),
(33334, 'Undergraduate', 'Unsatisfactory'),
(33335, 'Undergrad', 'Good'),
(33336, 'Graduate', 'Good'),
(33337, 'Graduate', 'Good'),
(33338, 'Undergraduate', 'Unsatisfactory'),
(33339, 'Undergraduate', 'Good'),
(33340, 'Undergraduate', 'Good'),
(33341, 'Undergraduate', 'Good'),
(33342, 'Undergrad', 'Good'),
(33343, 'Undergrad', 'Good'),
(33344, 'Undergrad', 'Unsatisfactory'),
(33345, 'Undergrad', 'Good'),
(33346, 'Undergrad', 'Good'),
(33347, 'Undergrad', 'Good'),
(33348, 'Graduate', 'Good'),
(33349, 'Undergrad', 'Good'),
(33350, 'Undergrad', 'Good'),
(33351, 'Undergrad', 'Unsatisfactory'),
(33352, 'Undergrad', 'Good'),
(33353, 'Graduate', 'Unsatisfactory'),
(33354, 'Undergrad', 'Good'),
(33355, 'Undergrad', 'Good'),
(33356, 'Undergrad', 'Good'),
(33357, 'Graduate', 'Good'),
(33358, 'Undergrad', 'Good'),
(33359, 'Undergrad', 'Good'),
(33360, 'Undergrad', 'Good'),
(33361, 'Graduate', 'Good'),
(33362, 'Undergrad', 'Good'),
(33363, 'Undergrad', 'Unsatisfactory'),
(33364, 'Undergrad', 'Good'),
(33365, 'Undergrad', 'Good'),
(33366, 'Undergrad', 'Good'),
(33367, 'Undergrad', 'Good'),
(33368, 'Graduate', 'Good'),
(33369, 'Undergrad', 'Unsatisfactory'),
(33370, 'Undergrad', 'Good'),
(33371, 'Graduate', 'Unsatisfactory '),
(33372, 'Undergrad', 'Good'),
(33373, 'Undergrad', 'Unsatisfactory'),
(33374, 'Undergrad', 'Good'),
(33375, 'Graduate', 'Good'),
(33376, 'Undergrad', 'Good'),
(33377, 'Undergrad', 'Good'),
(33378, 'Undergrad', 'Good'),
(33379, 'Graduate', 'Good'),
(33380, 'Undergrad', 'Good'),
(33381, 'Undergrad', 'Unsatisfactory '),
(33382, 'Undergrad', 'Good'),
(33383, 'Undergrad', 'Good');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Stud_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Stud_ID`) REFERENCES `user` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
