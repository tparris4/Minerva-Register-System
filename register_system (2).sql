-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 29, 2019 at 10:04 PM
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
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` int(11) NOT NULL,
  `A_DepartID` int(11) NOT NULL,
  `OfficeNum` int(11) NOT NULL,
  `A_Title` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_ID`, `A_DepartID`, `OfficeNum`, `A_Title`) VALUES
(123, 123, 123, 'test'),
(1111, 123, 123, 'test'),
(11111, 123, 123, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Attendance_ID` int(11) NOT NULL,
  `Section_ID` int(11) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `IsPresent` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `Build_ID` int(11) NOT NULL,
  `B_Name` varchar(45) NOT NULL,
  `B_Address` varchar(45) NOT NULL,
  `Room Amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`Build_ID`, `B_Name`, `B_Address`, `Room Amount`) VALUES
(77771, 'Math Building', '307 Math Building', 25),
(77772, 'Science Building', '100 Science Building', 20),
(77773, 'Medical Building', '300 Medical Building', 20),
(77774, 'Arts Building', '400 Arts Building', 15);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` int(11) NOT NULL,
  `C_Name` varchar(300) NOT NULL,
  `C_Description` varchar(300) NOT NULL,
  `C_CreditAmt` int(11) NOT NULL,
  `S_CRN` int(11) NOT NULL,
  `CDeptID` int(11) NOT NULL,
  `C_DeptName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `C_Name`, `C_Description`, `C_CreditAmt`, `S_CRN`, `CDeptID`, `C_DeptName`) VALUES
(90000, 'Pre-Calculus', 'College Calculus', 3, 1000, 124, 'Math');

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
(128, 'Art', 'ArtDepartment@msc.edu', '400 Art Building', '270-835-1345', 'Edwin Villasenor', 'Christopher Iddings'),
(129, 'Computer Science', 'CompSciDepartment@msc.edu', 'Computer Science Building', '478-338-3375', 'Brent Bolin', 'George Pinion');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `Stud_ID` int(11) NOT NULL,
  `Section ID` int(11) NOT NULL,
  `Grades` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Facu_ID` int(11) NOT NULL COMMENT 'Faculty ID',
  `F_Rank` varchar(45) NOT NULL,
  `F_Office` varchar(45) NOT NULL,
  `F_OfficeHrs` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Facu_ID`, `F_Rank`, `F_Office`, `F_OfficeHrs`) VALUES
(22223, 'Faculty', '123 Math Building', '12:00 - 1:00'),
(22224, 'Faculty', '123 Science Building', '12:00 - 1:00'),
(22225, 'Faculty', '234 Medical Building', '1:00 - 2:00'),
(22226, 'Faculty', '235 Medical Building', '3:00 - 4:00'),
(22227, 'Faculty', '355 Science Building', '12:00 - 1:00'),
(22228, 'Faculty', '220 Science Building', '4:00 - 5:00'),
(22229, 'Faculty', '120 Science Building', '3:00 - 4:30'),
(22230, 'Faculty', '100 Medical Building', '2:00 - 3:00'),
(22231, 'Faculty', '123 Art Building ', '5:00 - 6:00'),
(22238, 'Faculty', '123 Computer Science Building', '5:00 - 6:00'),
(22239, 'Faculty', '222 Computer Science Building', '5:00 - 6:00');

-- --------------------------------------------------------

--
-- Table structure for table `gradfulltime`
--

CREATE TABLE `gradfulltime` (
  `GradFullTime_ID` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `Credits_Num` double NOT NULL,
  `CreditTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gradfulltime`
--

INSERT INTO `gradfulltime` (`GradFullTime_ID`, `Status`, `Credits_Num`, `CreditTotal`) VALUES
(33332, 1, 12, 84);

-- --------------------------------------------------------

--
-- Table structure for table `gradparttime`
--

CREATE TABLE `gradparttime` (
  `Status` varchar(45) NOT NULL,
  `Credits_Num` double NOT NULL,
  `CreditTotal` double NOT NULL,
  `GradStudPTID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gradparttime`
--

INSERT INTO `gradparttime` (`Status`, `Credits_Num`, `CreditTotal`, `GradStudPTID`) VALUES
('1', 6, 80, 33333);

-- --------------------------------------------------------

--
-- Table structure for table `graduate`
--

CREATE TABLE `graduate` (
  `GD_StudID` int(11) NOT NULL,
  `MajorName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graduate`
--

INSERT INTO `graduate` (`GD_StudID`, `MajorName`) VALUES
(33332, 'Business'),
(33333, 'Business');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Transcript_ID` int(11) NOT NULL,
  `Stud_ID` int(11) NOT NULL,
  `Section_ID` int(11) NOT NULL,
  `CourseDump` varchar(45) NOT NULL COMMENT 'Not sure what this is',
  `SemesterYearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `Holds_ID` int(11) NOT NULL,
  `Hold_Type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `holdstatus`
--

CREATE TABLE `holdstatus` (
  `HS_HoldID` int(11) NOT NULL,
  `HS_StudentID` int(11) NOT NULL,
  `HoldStatus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `Major_ID` int(11) NOT NULL,
  `M_Name` varchar(45) NOT NULL,
  `M_DepartID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`Major_ID`, `M_Name`, `M_DepartID`) VALUES
(1112, 'Calculus', 124),
(1113, 'Trigonometry', 124),
(1113, 'Science', 125),
(1114, 'Business', 126),
(1115, 'Economics', 126),
(1116, 'Accounting', 126),
(1117, 'Biochemistry', 125),
(1118, 'Medical Chemistry', 127);

-- --------------------------------------------------------

--
-- Table structure for table `majorrequirements`
--

CREATE TABLE `majorrequirements` (
  `MajorReq_ID` int(11) NOT NULL,
  `Major_ID` int(11) NOT NULL,
  `MR_CourseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `masterschedule`
--

CREATE TABLE `masterschedule` (
  `SemesterYear_ID` int(11) NOT NULL,
  `Semesters` varchar(45) NOT NULL,
  `Year` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `masterschedule`
--

INSERT INTO `masterschedule` (`SemesterYear_ID`, `Semesters`, `Year`) VALUES
(50001, 'Fall', '2018');

-- --------------------------------------------------------

--
-- Table structure for table `period`
--

CREATE TABLE `period` (
  `PeriodID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prerequisite`
--

CREATE TABLE `prerequisite` (
  `Prereq_ID` int(11) NOT NULL,
  `P_CourseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `researcher`
--

CREATE TABLE `researcher` (
  `Research_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `researcher`
--

INSERT INTO `researcher` (`Research_ID`) VALUES
(44441);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_ID` int(11) NOT NULL,
  `R_Num` int(11) NOT NULL,
  `R_Capacity` int(11) NOT NULL,
  `RBuild_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_ID`, `R_Num`, `R_Capacity`, `RBuild_ID`) VALUES
(88810, 100, 30, 77771),
(88811, 102, 25, 77771),
(88812, 104, 25, 77771),
(88813, 101, 25, 77772),
(88814, 103, 25, 77772),
(88815, 101, 25, 77773),
(88816, 103, 25, 77773);

-- --------------------------------------------------------

--
-- Table structure for table `school catalog`
--

CREATE TABLE `school catalog` (
  `SCata_ID` int(11) NOT NULL,
  `Viewable` varchar(45) NOT NULL,
  `SC_DepartID` int(11) DEFAULT NULL,
  `SC_CourseID` int(11) DEFAULT NULL,
  `Admin_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE `section` (
  `S_Section_ID` int(11) NOT NULL,
  `S_FacuID` int(11) NOT NULL,
  `S_CourseID` int(11) NOT NULL,
  `S_BuildID` int(11) NOT NULL,
  `S_SemesterYearID` int(11) NOT NULL,
  `S_TimeSlotID` int(11) NOT NULL,
  `S_RoomNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`S_Section_ID`, `S_FacuID`, `S_CourseID`, `S_BuildID`, `S_SemesterYearID`, `S_TimeSlotID`, `S_RoomNum`) VALUES
(1001, 22223, 90000, 77771, 50001, 10001, 88810);

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
(33341, 'Undergraduate', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `table1`
--

CREATE TABLE `table1` (
  `User_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `TimeSlotID` int(11) NOT NULL,
  `StartTime` varchar(45) NOT NULL,
  `EndTime` varchar(45) NOT NULL,
  `Day` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`TimeSlotID`, `StartTime`, `EndTime`, `Day`) VALUES
(10001, '12:00', '1:30', 'Monday/Wednesday');

-- --------------------------------------------------------

--
-- Table structure for table `undergradfulltime`
--

CREATE TABLE `undergradfulltime` (
  `U_UndergradFullTime_ID` int(11) NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `Credits_Num` double NOT NULL,
  `SemesterYearID` int(11) NOT NULL,
  `CreditTotal` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergradfulltime`
--

INSERT INTO `undergradfulltime` (`U_UndergradFullTime_ID`, `Status`, `Credits_Num`, `SemesterYearID`, `CreditTotal`) VALUES
(2222, 1, 12, 2019, 64),
(33331, 1, 12, 0, 80);

-- --------------------------------------------------------

--
-- Table structure for table `undergradparttime`
--

CREATE TABLE `undergradparttime` (
  `UndergradPartTime_ID` int(11) NOT NULL,
  `Credits_Num` double NOT NULL,
  `Status` tinyint(4) NOT NULL,
  `CreditTotal` double NOT NULL,
  `SemesterYearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE `undergraduate` (
  `UG_StudentID` int(11) NOT NULL,
  `Major_Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`UG_StudentID`, `Major_Name`) VALUES
(2222, 'Math'),
(33331, 'Math'),
(33334, 'Biology');

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
(22238, 'Elizabeth', 'Parks', '774-229-8871', '2541 Kennedy Avenue', 'EParks', 'EParks@msc.edu'),
(22239, 'Charlie', 'Stroupe', '828-678-6376', '394 Goosetown Drive', 'CStroupe', 'CStroupe@msc.edu'),
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
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`,`A_DepartID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Attendance_ID`,`Section_ID`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`Build_ID`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`Course_ID`),
  ADD KEY `cdept_id` (`CDeptID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Department_ID`);

--
-- Indexes for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD PRIMARY KEY (`Section ID`,`Stud_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Facu_ID`);

--
-- Indexes for table `gradfulltime`
--
ALTER TABLE `gradfulltime`
  ADD PRIMARY KEY (`GradFullTime_ID`);

--
-- Indexes for table `gradparttime`
--
ALTER TABLE `gradparttime`
  ADD PRIMARY KEY (`GradStudPTID`);

--
-- Indexes for table `graduate`
--
ALTER TABLE `graduate`
  ADD PRIMARY KEY (`GD_StudID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`Transcript_ID`,`Section_ID`,`Stud_ID`);

--
-- Indexes for table `holds`
--
ALTER TABLE `holds`
  ADD PRIMARY KEY (`Holds_ID`);

--
-- Indexes for table `holdstatus`
--
ALTER TABLE `holdstatus`
  ADD PRIMARY KEY (`HS_HoldID`,`HS_StudentID`),
  ADD KEY `hsstudhold_id` (`HS_StudentID`);

--
-- Indexes for table `major`
--
ALTER TABLE `major`
  ADD PRIMARY KEY (`Major_ID`,`M_DepartID`),
  ADD KEY `departm_id` (`M_DepartID`);

--
-- Indexes for table `majorrequirements`
--
ALTER TABLE `majorrequirements`
  ADD PRIMARY KEY (`MajorReq_ID`,`Major_ID`,`MR_CourseID`);

--
-- Indexes for table `masterschedule`
--
ALTER TABLE `masterschedule`
  ADD PRIMARY KEY (`SemesterYear_ID`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`PeriodID`);

--
-- Indexes for table `prerequisite`
--
ALTER TABLE `prerequisite`
  ADD PRIMARY KEY (`Prereq_ID`);

--
-- Indexes for table `researcher`
--
ALTER TABLE `researcher`
  ADD PRIMARY KEY (`Research_ID`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_ID`,`RBuild_ID`),
  ADD KEY `rbuild_id` (`RBuild_ID`);

--
-- Indexes for table `school catalog`
--
ALTER TABLE `school catalog`
  ADD PRIMARY KEY (`SCata_ID`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
  ADD PRIMARY KEY (`S_FacuID`,`S_CourseID`,`S_BuildID`,`S_SemesterYearID`,`S_TimeSlotID`,`S_Section_ID`),
  ADD KEY `sbuild` (`S_BuildID`),
  ADD KEY `scour` (`S_CourseID`),
  ADD KEY `stimeslot` (`S_TimeSlotID`),
  ADD KEY `ssemyear` (`S_SemesterYearID`),
  ADD KEY `sroomnum` (`S_RoomNum`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Stud_ID`);

--
-- Indexes for table `table1`
--
ALTER TABLE `table1`
  ADD PRIMARY KEY (`User_ID`),
  ADD UNIQUE KEY `userid_idx` (`User_ID`);

--
-- Indexes for table `timeslot`
--
ALTER TABLE `timeslot`
  ADD PRIMARY KEY (`TimeSlotID`);

--
-- Indexes for table `undergradfulltime`
--
ALTER TABLE `undergradfulltime`
  ADD PRIMARY KEY (`U_UndergradFullTime_ID`);

--
-- Indexes for table `undergradparttime`
--
ALTER TABLE `undergradparttime`
  ADD PRIMARY KEY (`UndergradPartTime_ID`);

--
-- Indexes for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD PRIMARY KEY (`UG_StudentID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`Admin_ID`) REFERENCES `user` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `cdept_id` FOREIGN KEY (`CDeptID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_id` FOREIGN KEY (`Facu_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `gradfulltime`
--
ALTER TABLE `gradfulltime`
  ADD CONSTRAINT `grad_id` FOREIGN KEY (`GradFullTime_ID`) REFERENCES `graduate` (`GD_StudID`);

--
-- Constraints for table `gradparttime`
--
ALTER TABLE `gradparttime`
  ADD CONSTRAINT `gradpt_id` FOREIGN KEY (`GradStudPTID`) REFERENCES `graduate` (`GD_StudID`);

--
-- Constraints for table `graduate`
--
ALTER TABLE `graduate`
  ADD CONSTRAINT `stud_id` FOREIGN KEY (`GD_StudID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `holds`
--
ALTER TABLE `holds`
  ADD CONSTRAINT `holdstatus_id` FOREIGN KEY (`Holds_ID`) REFERENCES `holdstatus` (`HS_HoldID`);

--
-- Constraints for table `holdstatus`
--
ALTER TABLE `holdstatus`
  ADD CONSTRAINT `hshold_id` FOREIGN KEY (`HS_HoldID`) REFERENCES `holds` (`Holds_ID`),
  ADD CONSTRAINT `hsstudhold_id` FOREIGN KEY (`HS_StudentID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `departm_id` FOREIGN KEY (`M_DepartID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `researcher`
--
ALTER TABLE `researcher`
  ADD CONSTRAINT `research_id` FOREIGN KEY (`Research_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `rbuild_id` FOREIGN KEY (`RBuild_ID`) REFERENCES `building` (`Build_ID`);

--
-- Constraints for table `section`
--
ALTER TABLE `section`
  ADD CONSTRAINT `sbuild` FOREIGN KEY (`S_BuildID`) REFERENCES `building` (`Build_ID`),
  ADD CONSTRAINT `scour` FOREIGN KEY (`S_CourseID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `sfacu` FOREIGN KEY (`S_FacuID`) REFERENCES `faculty` (`Facu_ID`),
  ADD CONSTRAINT `sroomnum` FOREIGN KEY (`S_RoomNum`) REFERENCES `room` (`Room_ID`),
  ADD CONSTRAINT `ssemyear` FOREIGN KEY (`S_SemesterYearID`) REFERENCES `masterschedule` (`SemesterYear_ID`),
  ADD CONSTRAINT `stimeslot` FOREIGN KEY (`S_TimeSlotID`) REFERENCES `timeslot` (`TimeSlotID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Stud_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `table1`
--
ALTER TABLE `table1`
  ADD CONSTRAINT `userid` FOREIGN KEY (`User_ID`) REFERENCES `user` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `undergradfulltime`
--
ALTER TABLE `undergradfulltime`
  ADD CONSTRAINT `undergradfulltime_ibfk_1` FOREIGN KEY (`U_UndergradFullTime_ID`) REFERENCES `undergraduate` (`UG_StudentID`);

--
-- Constraints for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD CONSTRAINT `undergraduate_ibfk_1` FOREIGN KEY (`UG_StudentID`) REFERENCES `student` (`Stud_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
