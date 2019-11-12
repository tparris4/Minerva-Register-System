-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 08:54 PM
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
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Facu_ID` int(11) NOT NULL COMMENT 'Faculty ID',
  `F_Rank` varchar(45) NOT NULL,
  `F_Office` varchar(45) NOT NULL,
  `F_OfficeHrs` varchar(45) NOT NULL,
  `F_Dept_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Facu_ID`, `F_Rank`, `F_Office`, `F_OfficeHrs`, `F_Dept_ID`) VALUES
(22223, 'Faculty', '123 Math Building', '12:00 - 1:00', 0),
(22224, 'Faculty', '123 Science Building', '12:00 - 1:00', 0),
(22225, 'Faculty', '234 Medical Building', '1:00 - 2:00', 0),
(22226, 'Faculty', '235 Medical Building', '3:00 - 4:00', 0),
(22227, 'Faculty', '355 Science Building', '12:00 - 1:00', 0),
(22228, 'Faculty', '220 Science Building', '4:00 - 5:00', 0),
(22229, 'Faculty', '120 Science Building', '3:00 - 4:30', 0),
(22230, 'Faculty', '100 Medical Building', '2:00 - 3:00', 0),
(22231, 'Faculty', '123 Art Building ', '5:00 - 6:00', 0),
(22238, 'Faculty', '123 Computer Science Building', '5:00 - 6:00', 0),
(22239, 'Faculty', '222 Computer Science Building', '5:00 - 6:00', 0),
(22240, 'Faculty', '123 Medical Building', '3:00 - 4:00', 0),
(22241, 'Advisor', '123 Medical Building', '12:00 - 1:00', 127),
(22242, 'Faculty', '123 Computer Science Building', '3:00 - 4:00', 129),
(22243, 'Advisor', '200 Business Building', '3:00 - 4:00', 126),
(22244, 'Advisor', '200 Art Building', '3:00 - 4:00', 128),
(22245, 'Advisor', '200 Computer Science Building', '3:00 - 4:00', 129),
(22246, 'Advisor', '200 Biology Building', '3:00 - 4:00', 125),
(22247, 'Advisor', '200 Math Building ', '3:00 - 4:00', 124),
(22248, 'Faculty', '123 Business Building', '12:00 - 1:00pm', 126),
(22249, 'Faculty', '200 Business Building', '2:00 - 3:00 pm M/W', 126),
(22250, 'Faculty', '222 Business Building', '2:00 - 3:00pm Tu/Th', 126),
(22251, 'Faculty', '200 Art Building', '11:00am - 12:00pm Tu/Th', 124),
(22252, 'Faculty', '200 Science Building', '3:00 - 4:00pm M/W', 125),
(22253, 'Faculty', '222 Art Building', '12:00 - 1:00pm M/W', 128),
(22254, 'Faculty', '200 Art Building', '2:00 - 3:00pm Tu/Th', 128),
(22255, 'Faculty', '222 Math Building', '12:00 - 1:00pm Tu/Th', 124),
(22256, 'Faculty', '223 Math Building', '2:00 - 3:00pm Tu/Th', 124),
(22257, 'Faculty', '300 Art Building', '2:00 - 3:00pm M/W', 128),
(22258, 'Advisor', '300 Math Building', '2:00 - 3:00pm M/W', 124),
(22259, 'Advisor', '300 Art Building', '1:00 - 2:00pm M/W', 128),
(22260, 'Advisor', '301 Medical Building', '12:00 - 1:00pm Tu/Th', 127),
(22261, 'Advisor', '301 Science Building', '2:00 - 3:00pm M/W', 125),
(22262, 'Advisor', '301 Computer Science Building', '2:00 - 3:00pm Tu/Th', 129),
(22263, 'Advisor', '301 Business Building', '1:00 - 2:00pm', 126),
(22264, 'Faculty', '233 Math Building', '12:00 - 1:00pm', 124),
(22265, 'Faculty', '121 Computer Science Building', '12:00 - 1:00pm Tuesday/Thursday', 129),
(22266, 'Faculty', '122 Computer Science Building', '2:00 - 3:00pm Tuesday/Thursday', 129),
(22267, 'Advisor', '123 Computer Science Building', '12:00 - 1:00pm Monday/Wednesday', 129),
(22268, 'Advisor', '124 Computer Science Building', '12:00 - 1:00pm Monday/Wednesday', 129),
(22269, 'Faculty', '125 Computer Science Building', '3:00 - 4:00pm Tuesday/Thursday', 129),
(22270, 'Faculty', '126 Computer Science Building', '12:00 - 1:00pm Monday/Wednesday', 129),
(22271, 'Faculty', '127 Computer Science Building', '2:00 - 3:00pm Tuesday/Thursday', 129),
(22272, 'Faculty', '121 Math Building', '12:00 - 1:00pm Tuesday/Thursday', 124),
(22273, 'Faculty', '122 Math Building', '10:00 - 11:00pm Monday/Wednesday', 124),
(22274, 'Advisor', '123 Math Building', '12:00 - 1:00pm Monday/Wednesday', 124),
(22275, 'Faculty', '125 Math Building', '11:00am - 12:00pm Monday/Wednesday', 124),
(22276, 'Advisor', '126 Math Building', '1:00 - 2:00pm Tuesday/Thursday', 124),
(22277, 'Faculty', '127 Math Building', '12:00 - 1:00pm Tuesday/Thursday', 124),
(22278, 'Faculty', '128 Math Building', '12:00 - 1:00pm Tuesday/Thursday', 124),
(22279, 'Faculty', '129 Math Building', '9:00 - 10:00am Monday/Wednesday', 124),
(22280, 'Faculty', '121 Business Building', '12:00 - 1:00pm Tuesday/Thursday', 126),
(22281, 'Advisor', '122 Business Building', '12:00 - 1:00pm Monday/Wednesday', 126),
(22282, 'Faculty', '123 Business Building', '1:00 - 2:00pm Monday/Wednesday', 126),
(22283, 'Faculty', '124 Business Building', '10:00 - 11:00am Monday/Wednesday', 126),
(22284, 'Advisor', '125 Business Building', '12:00 - 1:00pm Tuesday/Thursday', 126),
(22285, 'Advisor', '126 Business Building', '4:00 - 5:00pm Tuesday/Thursday', 126),
(22286, 'Faculty', '127 Business Building', '2:00 - 3:00pm Monday/Wednesday', 126),
(22287, 'Faculty', '128 Business Building', '10:00 - 11:00am Tuesday/Thursday', 126),
(22288, 'Faculty', '129 Business Building', '1:00 - 2:00pm Monday/Wednesday', 126),
(22289, 'Faculty', '130 Business Building', '11:00 - 12:00pm Tuesday/Thursday', 126),
(22290, 'Faculty', '131 Business Building', '12:00 - 1:00pm Monday/Wednesday', 126),
(22291, 'Advisor', '132 Business Building', '1:00 - 2:00pm Monday/Wednesday', 126),
(22292, 'Advisor', '121 Biology Building', '12:00 - 1:00pm Tuesday/Thursday', 125),
(22293, 'Faculty', '122 Biology Building', '12:00 - 1:00pm Monday/Wednesday', 125),
(22294, 'Faculty', '123 Biology Building', '2:00 - 3:00pm Tuesday/Thursday', 125),
(22295, 'Faculty', '124 Biology Building', '2:00 - 3:00pm Monday/Wednesday', 125),
(22296, 'Advisor', '125 Biology Building', '2:00 - 3:00pm Tuesday/Thursday', 125),
(22297, 'Faculty', '126 Biology Building', '11:00am - 12:00pm Tuesday/Thursday', 125),
(22298, 'Faculty', '127 Biology Building', '10:00 - 11:00am Monday/Wednesday', 125),
(22299, 'Faculty', '121 Medical Building', '12:00 - 1:00pm Tuesday/Thursday', 127),
(22300, 'Faculty', '122 Medical Building', '12:00 - 1:00pm Monday/Wednesday', 127),
(22301, 'Faculty', '123 Medical Building', '2:00 - 3:00pm Monday/Wednesday', 127),
(22302, 'Faculty', '124 Medical Building', '2:00 - 3:00pm Tuesday/Thursday', 127),
(22303, 'Faculty', '125 Medical Building', '11:00am - 12:00pm Monday/Wednesday', 127),
(22304, 'Faculty', '126 Medical Building', '10:00 - 11:00am Tuesday/Thursday', 127),
(22305, 'Faculty', '127 Medical Building', '12:00 - 1:00pm Tuesday/Thursday', 127),
(22306, 'Faculty', '128 Medical Building', '2:00 - 3:00pm Monday/Wednesday', 127),
(22307, 'Faculty', '129 Medical Building', '2:00 - 3:00pm Monday/Wednesday', 127),
(22308, 'Faculty', '130 Medical Building', '3:00 - 4:00pm Monday/Wednesday', 127),
(22309, 'Faculty', '122 Art Building', '12:00 - 1:00pm Monday/Wednesday', 128),
(22310, 'Faculty', '123 Art Building', '12:00 - 1:00pm Tuesday/Thursday', 128),
(22311, 'Faculty', '124 Art Building', '1:00 - 2:00pm Tuesday/Thursday', 128),
(22312, 'Faculty', '125 Art Building', '2:00 - 3:00pm Monday/Wednesday', 128),
(22313, 'Faculty', '126 Art Building', '10:00 - 11:00am Monday/Wednesday', 128),
(22314, 'Faculty', '127 Art Building', '12:00 - 1:00pm Tuesday/Thursday', 128),
(22315, 'Faculty', '128 Art Building', '9:00 - 10:00am Tuesday/Thursday', 128),
(22316, 'Faculty', '129 Art Building', '11:00am - 12:00pm Monday/Wednesday', 128),
(22317, 'Faculty', '122 Humanities Building', '12:00 - 1:00pm Monday/Wednesday', 130),
(22318, 'Advisor', '123 Humanities Building', '12:00 - 1:00pm Tuesday/Thursday', 130),
(22319, 'Faculty', '124 Humanities Building', '10:00 - 11:00am Monday/Wednesday', 130),
(22320, 'Faculty', '125 Humanities Building', '11:00a - 12:00pm Tuesday/Thursday', 130),
(22321, 'Faculty', '126 Humanities Building', '12:00 - 1:00pm Tuesday/Thursday', 132),
(22322, 'Faculty', '126 Humanities Building', '2:00 - 3:00pm Tuesday/Thursday', 132),
(22323, 'Advisor', '127 Humanities Building', '1:00 - 2:00pm Monday/Wednesday', 132),
(22324, 'Faculty', '128 Humanities Building', '12:00 - 1:00pm Monday/Wednesday', 131),
(22325, 'Advisor', '129 Humanities Building', '2:00 - 3:00pm Monday/Wednesday', 131);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Facu_ID`),
  ADD KEY `F_Dept_ID` (`F_Dept_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`F_Dept_ID`) REFERENCES `department` (`Department_ID`),
  ADD CONSTRAINT `faculty_id` FOREIGN KEY (`Facu_ID`) REFERENCES `user` (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
