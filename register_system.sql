-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2019 at 03:36 PM
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
  `D_Chair` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `D_Name`, `D_Email`, `D_Location`, `D_Phone`, `D_Secretary`, `D_Chair`) VALUES
(124, 'Math', 'MathDep@msc.edu', '100 Math Building', '214-669-7480', 'Thnah Pierce', 'Anthony Hutchenson'),
(125, 'Science', 'ScienceDept@msc.edu', '100 Science Building', '570-418-4913', 'Jayne Clarce', 'David Greenwood'),
(126, 'Business', 'BusinessDept@msc.edu', '100 Business Building', '856-890-7925', 'Gerald Hicks', 'Judy Hardy'),
(127, 'Medical ', 'MedicalDept@msc.edu', '100 Medical Building', '325-447-1824', 'Robin Hardner', 'Mary Runnels'),
(128, 'Art', 'ArtDepartment@msc.edu', '400 Art Building', '270-835-1345', 'Edwin Villasenor', 'Christopher Iddings');

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Phone_Number` varchar(45) NOT NULL,
  `Home_Address` varchar(45) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Email_Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `First_Name`, `Last_Name`, `Phone_Number`, `Home_Address`, `Password`, `Email_Address`) VALUES
(123, 'test', 'test', 'test', 'test', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'test'),
(1111, 'john', 'doe', '111-111-1111', '111 test ave', '1111', 'jdoe@mvs.edu'),
(2222, 'John', 'Dane', '111-222-2222', '123 testing ave', '2222', 'jdane@msc.edu'),
(11111, 'John', 'Patti', '260-927-8992', '695 Pearcy Avenue', 'JPattiAdmin', 'JPatti@msc.edu'),
(22223, 'Diane', 'Hamme', '207-257-8638', '3258 Chipmunk Lane', 'DHamme', 'brandt1988@msc.com'),
(22224, 'Nicolas', 'Kline', '714-579-1696', '1709 Cimmaron Road', 'NKline', 'ckline@msc.com'),
(22225, 'Edgar', 'Lewis', '605-521-8448', '3062 Ryan Road', 'ELewis', 'ELewis@msc.edu'),
(22226, 'Carol', 'Lynn', '218-226-1693', '4853 Little Acres Lane', 'CLynn', 'CLynn@msc.edu'),
(22227, 'Agnes', 'Ford', '903-735-5139', '255 Hall Place', 'AFord', 'AFord@msc.edu'),
(22228, 'Ruby', 'Hwang', '914-945-4255', '1338 Ward Road', 'RHwang', 'RHwang@msc.edu'),
(22229, 'Kevin', 'Capobianco', '724-379-4530', '4688 Stuart Street', 'KCapobianco', 'KCapobianco@msc.edu'),
(22230, 'Fanny', 'Stevens', '323-516-7720', '544 Evergreen Lane', 'FStevens', 'FStevens@msc.edu'),
(22231, 'Jayme', 'Daigre', '801-350-2451', '1892 Walton Street', 'JDaigre', 'JDaigre@msc.edu'),
(22232, 'Patri', 'Johnson', '615-330-6684', '4599 Frum Street', 'PJohnson', 'PJohnson@msc.edu'),
(22233, 'Alan', 'Obrien', '405-957-8102', '4670 Benson Park Drive', 'AObrien', 'AObrien@msc.edu'),
(22234, 'Rebecca', 'Hartman', '305-519-6719', '3782 Poplar Lane', 'RHartman', 'RHartman@msc.edu'),
(22235, 'Christine', 'Largent', '203-392-7055', '3645 Cheshire Road', 'CLargent', 'CLargent@msc.edu'),
(22236, 'Velma', 'Moseley', '951-492-5613', '2629 Denver Avenue', 'VMoseley', 'VMoseley@msc.edu'),
(22237, 'Maureen', 'Ford', '202-219-2645', '827 Northwest Blvd', 'MFord', 'MFord@msc.edu'),
(33331, 'Carylon ', 'Forsyth', '850-891-6934', '3474 American Drive', 'CForsyth', 'CForsyth@msc.edu'),
(33332, 'Irene', 'Getz', '936-563-9932', '1021 Mulberry Street', 'IGetz', 'IGetz@msc.edu'),
(33333, 'Daniel', 'Raposo', '216-444-7879', '3547 Peaceful Lane', 'DRaposo', 'DRaposo@msc.edu'),
(33334, 'Jonathan', 'Beauchamp', '714-987-9615', '720 Angie Drive', 'JBeauchamp', 'JBeauchamp@msc.edu'),
(33335, 'David ', 'Sawyer', '626-219-0884', '2549 Rainbow Road', 'DSawyer', 'DSawyer@msc.edu'),
(33336, 'Estelle', 'Raybon', '301-526-2384', '3742 Doe Meadow Drive', 'ERaybon', 'ERaybon@msc.edu'),
(33337, 'Patrick', 'Ross', '936-417-8808', '4678 Woodrow Way', 'PRoss', 'PRoss@msc.edu'),
(33338, 'Cynthia', 'Marino', '859-627-5952', '2915 Mayo Street', 'CMarino', 'CMarino@msc.edu'),
(33339, 'Debbie', 'Garmon', '989-269-4681', '497 Hart Ridge Road', 'DGarmon', 'DGarmon@msc.edu'),
(33340, 'Joseph ', 'Foster', '540-203-2717', '2796 Maxwell Road', 'JFoster', 'JFoster@msc.edu'),
(33341, 'Chris', 'Besaw', '801-675-3282', '754 Tori Lane', 'CBesaw', 'CBesaw@msd.edu'),
(44441, 'Patricia ', 'Brown', '860-309-9554', '2516 Hart Street', 'PBrown', 'PBrown@msc.edu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `userid_idx` (`User_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table1`
--
ALTER TABLE `table1`
  ADD CONSTRAINT `userid` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
