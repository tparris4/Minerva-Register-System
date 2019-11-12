-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 08:53 PM
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
(33383, 'Undergrad', 'Good'),
(33389, 'Undergraduate', 'Good'),
(33390, 'Undergraduate', 'Good'),
(33391, 'Undergraduate', 'Good'),
(33392, 'Undergraduate', 'Unsatisfactory'),
(33393, 'Undergraduate', 'Good'),
(33394, 'Graduate', 'Good'),
(33395, 'Undergraduate', 'Good'),
(33396, 'Undergraduate', 'Good'),
(33397, 'Undergraduate', 'Good'),
(33398, 'Graduate', 'Good'),
(33399, 'Undergraduate', 'Unsatisfactory'),
(33400, 'Undergraduate', 'Good'),
(33401, 'Undergraduate', 'Good'),
(33402, 'Undergraduate', 'Good'),
(33403, 'Undergraduate', 'Good'),
(33404, 'Undergraduate', 'Unsatisfactory'),
(33405, 'Graduate', 'Good'),
(33406, 'Undergraduate', 'Good'),
(33407, 'Undergraduate', 'Good'),
(33408, 'Undergraduate', 'Unsatisfactory'),
(33409, 'Undergraduate', 'Good'),
(33410, 'Undergraduate', 'Good'),
(33411, 'Graduate', 'Good'),
(33412, 'Graduate', 'Good'),
(33413, 'Undergraduate', 'Good'),
(33414, 'Undergraduate', 'Unsatisfactory'),
(33415, 'Undergraduate', 'Good'),
(33416, 'Undergraduate', 'Good'),
(33417, 'Undergraduate', 'Unsatisfactory'),
(33418, 'Graduate', 'Unsatisfactory'),
(33419, 'Graduate', 'Good'),
(33420, 'Graduate', 'Good'),
(33421, 'Undergraduate', 'Good'),
(33422, 'Undergraduate', 'Unsatisfactory'),
(33423, 'Undergraduate', 'Good'),
(33424, 'Graduate', 'Good'),
(33425, 'Graduate', 'Good'),
(33426, 'Undergraduate', 'Good'),
(33427, 'Undergraduate', 'Unsatisfactory'),
(33428, 'Undergraduate', 'Good'),
(33429, 'Undergraduate', 'Good'),
(33430, 'Undergraduate', 'Good'),
(33431, 'Undergraduate', 'Good'),
(33432, 'Undergraduate', 'Unsatisfactory'),
(33433, 'Undergraduate', 'Good'),
(33434, 'Undergraduate', 'Good'),
(33435, 'Undergraduate', 'Good'),
(33436, 'Undergraduate', 'Unsatisfactory'),
(33437, 'Undergraduate', 'Good'),
(33438, 'Undergrad', 'Unsatisfactory'),
(33439, 'Undergraduate', 'Good'),
(33440, 'Undergraduate', 'Good'),
(33441, 'Undergraduate', 'Good'),
(33442, 'Undergraduate', 'Undergraduate'),
(33443, 'Undergraduate', 'Good'),
(33444, 'Graduate', 'Good'),
(33445, 'Graduate', 'Good'),
(33446, 'Undergraduate', 'Good'),
(33447, 'Graduate', 'Good'),
(33448, 'Graduate', 'Unsatisfactory'),
(33449, 'Undergraduate', 'Good'),
(33450, 'Undergraduate', 'Good'),
(33451, 'Graduate', 'Unsatisfactory'),
(33452, 'Undergraduate', '33452'),
(33453, 'Undergraduate', 'Good'),
(33454, 'Undergraduate', 'Good'),
(33455, 'Graduate', 'Good'),
(33456, 'Undergraduate', 'Good'),
(33457, 'Undergraduate', 'Good'),
(33458, 'Undergraduate', 'Good'),
(33459, 'Graduate', 'Good'),
(33460, 'Undergraduate', 'Good'),
(33461, 'Graduate', 'Unsatisfactory'),
(33462, 'Undergraduate', 'Good'),
(33463, 'Undergraduate', 'Unsatisfactory'),
(33464, 'Undergraduate', 'Good'),
(33465, 'Undergraduate', 'Good'),
(33466, 'Undergraduate', 'Good'),
(33467, 'Undergraduate', 'Good'),
(33468, 'Undergraduate', 'Good'),
(33469, 'Graduate', 'Good'),
(33470, 'Graduate', 'Good'),
(33471, 'Undergraduate', 'Good'),
(33472, 'Undergraduate', 'Good'),
(33473, 'Graduate', 'Good'),
(33474, 'Undergraduate', 'Good'),
(33475, 'Undergraduate', 'Unsatisfactory'),
(33476, 'Graduate', 'Good'),
(33477, 'Undergraduate', 'Good'),
(33478, 'Undergraduate', 'Good'),
(33479, 'Graduate', 'Good'),
(33480, 'Graduate', 'Good'),
(33481, 'Undergraduate', 'Good'),
(33482, 'Graduate', 'Good'),
(33483, 'Graduate', 'Unsatisfactory'),
(33484, 'Undergraduate', 'Good'),
(33485, 'Undergraduate', 'Good'),
(33486, 'Undergraduate', 'Good'),
(33487, 'Graduate', 'Good'),
(33488, 'Undergraduate', 'Good'),
(33489, 'Undergraduate', 'Good'),
(33490, 'Undergraduate', 'Good'),
(33491, 'Graduate', 'Unsatisfactory'),
(33492, 'Graduate', 'Good'),
(33493, 'Graduate', 'Good'),
(33494, 'Undergraduate', 'Good'),
(33495, 'Undergraduate', 'Good'),
(33496, 'Undergraduate', 'Good'),
(33497, 'Graduate', 'Good'),
(33498, 'Undergraduate', 'Good'),
(33499, 'Undergraduate', 'Good'),
(33500, 'Undergraduate', 'Good'),
(33501, 'Undergraduate', 'Good'),
(33502, 'Undergraduate', 'Good'),
(33503, 'Undergraduate', 'Good'),
(33504, 'Undergraduate', 'Good'),
(33505, 'Undergraduate', 'Good'),
(33506, 'Graduate', 'Good'),
(33507, 'Graduate', 'Good'),
(33508, 'Undergraduate', 'Unsatisfactory'),
(33509, 'Undergraduate', 'Unsatisfactory'),
(33510, 'Graduate', 'Good'),
(33511, 'Undergraduate', 'Unsatisfactory'),
(33512, 'Graduate', 'Unsatisfactory'),
(33513, 'Undergraduate', 'Good'),
(33514, 'Undergraduate', 'Good'),
(33515, 'Undergraduate', 'Good'),
(33516, 'Undergraduate', 'Good'),
(33517, 'Undergraduate', 'Unsatisfactory'),
(33518, 'Graduate', 'Good'),
(33519, 'Graduate', 'Good'),
(33520, 'Graduate', 'Unsatisfactory'),
(33521, 'Graduate', 'Good'),
(33522, 'Graduate', 'Unsatisfactory'),
(33523, 'Graduate', 'Good'),
(33524, 'Graduate', 'Good'),
(33525, 'Graduate', 'Unsatisfactory'),
(33526, 'Graduate', 'Good'),
(33527, 'Undergraduate', 'Good'),
(33528, 'Undergraduate', 'Good'),
(33529, 'Undergraduate', 'Good'),
(33530, 'Undergraduate', 'Good'),
(33531, 'Undergraduate', 'Unsatisfactory'),
(33532, 'Undergraduate', 'Unsatisfactory'),
(33533, 'Undergraduate', 'Unsatisfactory'),
(33534, 'Undergraduate', 'Unsatisfactory'),
(33535, 'Undergraduate', 'Unsatisfactory'),
(33536, 'Undergraduate', 'Unsatisfactory'),
(33537, 'Undergraduate', 'Good'),
(33538, 'Undergraduate', 'Good'),
(33539, 'Undergraduate', 'Good'),
(33540, 'Undergraduate', 'Good'),
(33541, 'Undergraduate', 'Good'),
(33542, 'Graduate', 'Unsatisfactory'),
(33543, 'Graduate', 'Unsatisfactory'),
(33544, 'Graduate', 'Unsatisfactory'),
(33545, 'Graduate', 'Unsatisfactory'),
(33546, 'Graduate', 'Unsatisfactory'),
(33547, 'Undergraduate', 'Good'),
(33548, 'Undergraduate', 'Good'),
(33549, 'Undergraduate', 'Good'),
(33550, 'Undergraduate', 'Good'),
(33551, 'Graduate', 'Good');

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
