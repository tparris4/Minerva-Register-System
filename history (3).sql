-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 05:56 PM
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
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Stud_ID` int(11) NOT NULL,
  `Sec_ID` int(11) NOT NULL,
  `CourseDump` varchar(45) NOT NULL COMMENT 'Not sure what this is',
  `SemesterYearID` int(11) NOT NULL,
  `Midterm_Grade` int(11) NOT NULL,
  `Final_Grade` int(11) NOT NULL,
  `Course_Grade` int(55) NOT NULL,
  `Course_ID` int(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`Stud_ID`, `Sec_ID`, `CourseDump`, `SemesterYearID`, `Midterm_Grade`, `Final_Grade`, `Course_Grade`, `Course_ID`) VALUES
(33332, 1001, '', 50001, 78, 0, 0, 0),
(2222, 1001, '', 5004, 78, 0, 0, 0),
(2222, 1004, '', 5004, 78, 0, 0, 0),
(2222, 1015, '0', 50001, 78, 0, 0, 0),
(2222, 1001, '', 50003, 77, 0, 0, 0),
(2222, 1004, '', 50003, 78, 75, 0, 0),
(33332, 1001, '', 50003, 80, 70, 76, 0),
(33390, 1001, '', 50003, 90, 80, 0, 0),
(2222, 30003, '0', 50003, 0, 0, 0, 90000),
(2222, 1004, '0', 50003, 0, 0, 0, 90001),
(2222, 30003, '0', 50003, 0, 0, 0, 90000),
(33332, 1001, '', 50001, 0, 0, 0, 0),
(2222, 1009, '', 50001, 0, 0, 0, 0),
(2222, 1001, '', 5004, 0, 0, 0, 0),
(2222, 1004, '', 5004, 0, 0, 0, 0),
(2222, 1015, '0', 50001, 0, 0, 0, 0),
(2222, 1001, '', 50003, 75, 75, 0, 0),
(2222, 1004, '', 50003, 75, 75, 0, 0),
(33332, 1001, '', 50001, 0, 0, 0, 0),
(2222, 1009, '', 50001, 0, 0, 0, 0),
(2222, 1001, '', 5004, 0, 0, 0, 0),
(2222, 1004, '', 5004, 0, 0, 0, 0),
(2222, 1015, '0', 50001, 0, 0, 0, 0),
(2222, 1001, '', 50003, 75, 75, 0, 0),
(2222, 1004, '', 50003, 75, 75, 0, 0),
(33332, 1001, '', 50001, 78, 0, 0, 0),
(2222, 1009, '', 50001, 78, 0, 0, 0),
(2222, 1001, '', 5004, 78, 0, 0, 0),
(2222, 1004, '', 5004, 78, 0, 0, 0),
(2222, 1015, '0', 50001, 78, 0, 0, 0),
(2222, 1001, '', 50003, 77, 0, 0, 0),
(2222, 1004, '', 50003, 78, 75, 0, 0),
(33332, 1001, '', 50003, 80, 70, 76, 0),
(33390, 1001, '', 50003, 90, 80, 0, 0),
(2222, 30003, '0', 50003, 0, 0, 0, 90000),
(2222, 1004, '0', 50003, 0, 0, 0, 90001),
(2222, 30003, '0', 50003, 0, 0, 0, 90000),
(33390, 1001, '', 50003, 80, 0, 0, 40001),
(33331, 1001, '', 50003, 65, 0, 0, 40001),
(33334, 1001, '', 50003, 90, 0, 0, 40001),
(33335, 1001, '', 50003, 80, 0, 0, 40001),
(33338, 1001, '', 50003, 85, 0, 0, 40001),
(33339, 1001, '', 50003, 65, 0, 0, 40001),
(33354, 1001, '', 50003, 75, 0, 0, 40001),
(33341, 1001, '', 50003, 70, 0, 0, 40001),
(33342, 1001, '', 50003, 79, 0, 0, 40001),
(33344, 1001, '', 50003, 70, 0, 0, 40001),
(33345, 1001, '', 50003, 70, 0, 0, 40001),
(33347, 1001, '', 50003, 70, 0, 0, 40001),
(33349, 1001, '', 50003, 65, 0, 0, 40001),
(33350, 1001, '', 50003, 70, 0, 0, 40001),
(33351, 1001, '', 50003, 72, 0, 0, 40001),
(33352, 1001, '', 50003, 73, 0, 0, 40001),
(33355, 1001, '', 50003, 74, 0, 0, 40001),
(33356, 1001, '', 50003, 75, 0, 0, 40001),
(33358, 1001, '', 50003, 75, 0, 0, 40001);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD KEY `tr_stud_id` (`Stud_ID`),
  ADD KEY `Sec_ID` (`Sec_ID`),
  ADD KEY `SemesterYearID` (`SemesterYearID`),
  ADD KEY `Course_ID` (`Course_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`Sec_ID`) REFERENCES `section` (`S_Section_ID`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`SemesterYearID`) REFERENCES `masterschedule` (`SemesterYear_ID`),
  ADD CONSTRAINT `history_ibfk_3` FOREIGN KEY (`Course_ID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `tr_stud_id` FOREIGN KEY (`Stud_ID`) REFERENCES `student` (`Stud_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
