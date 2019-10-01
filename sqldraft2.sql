-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Register_System
-- -----------------------------------------------------
-- Used for the register system
-- 
-- Schema begins with Admin and ends with Class Catalog

-- -----------------------------------------------------
-- Schema Register_System
--
-- Used for the register system
-- 
-- Schema begins with Admin and ends with Class Catalog
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Register_System` ;
USE `Register_System` ;

-- -----------------------------------------------------
-- Table `Register_System`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Course` (
  `Course_ID` INT NOT NULL,
  `C_Name` VARCHAR(45) NOT NULL,
  `C_Description` VARCHAR(45) NOT NULL,
  `C_CreditAmt` INT NOT NULL,
  `Facu_ID` INT NOT NULL,
  `CCata_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  `S_CRN` INT NOT NULL,
  PRIMARY KEY (`Course_ID`, `Facu_ID`, `CCata_ID`, `Stud_ID`, `S_CRN`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Department` (
  `Department_ID` INT NOT NULL,
  `D_Name` VARCHAR(45) NOT NULL,
  `D_Email` VARCHAR(45) NOT NULL,
  `D_Address` VARCHAR(45) NOT NULL,
  `D_Chair` VARCHAR(45) NOT NULL,
  `Course_ID` INT NOT NULL,
  `D_AdminID` INT NOT NULL,
  PRIMARY KEY (`Department_ID`, `Course_ID`, `D_AdminID`),
  INDEX `Course_ID_idx` (`Course_ID` ASC) VISIBLE,
  CONSTRAINT `Course_ID`
    FOREIGN KEY (`Course_ID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Faculty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Faculty` (
  `Facu_ID` INT NOT NULL COMMENT 'Faculty ID',
  `F_First` VARCHAR(45) NOT NULL,
  `F_Last` VARCHAR(45) NOT NULL,
  `F_EmailAdd` VARCHAR(45) NOT NULL,
  `F_PhoneNum` VARCHAR(45) NOT NULL,
  `F_HomeAdd` VARCHAR(45) NOT NULL,
  `F_Username` VARCHAR(45) NOT NULL,
  `F_Password` VARCHAR(45) NOT NULL,
  `F_Position` VARCHAR(45) NOT NULL,
  `F_DepartID` INT NOT NULL,
  `F_AdminID` INT NOT NULL,
  PRIMARY KEY (`Facu_ID`, `F_First`, `F_Last`, `F_EmailAdd`, `F_PhoneNum`, `F_HomeAdd`, `F_Username`, `F_Password`, `F_DepartID`, `F_AdminID`),
  INDEX `First Name_idx` (`F_First` ASC) VISIBLE,
  INDEX `Last Name_idx` (`F_Last` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`F_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`F_HomeAdd` ASC) VISIBLE,
  INDEX `Username_idx` (`F_Username` ASC) VISIBLE,
  INDEX `Password_idx` (`F_Password` ASC) VISIBLE,
  INDEX `Department ID_idx` (`F_DepartID` ASC) VISIBLE,
  INDEX `Admin ID_idx` (`F_AdminID` ASC) VISIBLE,
  CONSTRAINT `User_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `First Name`
    FOREIGN KEY (`F_First`)
    REFERENCES `Register_System`.`User` (`First_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Last Name`
    FOREIGN KEY (`F_Last`)
    REFERENCES `Register_System`.`User` (`Last_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone Number`
    FOREIGN KEY (`F_PhoneNum`)
    REFERENCES `Register_System`.`User` (`Phone_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Home Address`
    FOREIGN KEY (`F_HomeAdd`)
    REFERENCES `Register_System`.`User` (`Home_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Username`
    FOREIGN KEY (`F_Username`)
    REFERENCES `Register_System`.`User` (`Username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Password`
    FOREIGN KEY (`F_Password`)
    REFERENCES `Register_System`.`User` (`Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Department ID`
    FOREIGN KEY (`F_DepartID`)
    REFERENCES `Register_System`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Admin ID`
    FOREIGN KEY (`F_AdminID`)
    REFERENCES `Register_System`.`Admin` (`Admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Room` (
  `Room_ID` INT NOT NULL,
  `R_Num` INT NOT NULL,
  `R_Capacity` INT NOT NULL,
  `Build_ID` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Room_ID`, `Build_ID`),
  CONSTRAINT `Build_ID`
    FOREIGN KEY (`Room_ID`)
    REFERENCES `Register_System`.`Building` (`Build_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Building`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Building` (
  `Build_ID` INT NOT NULL,
  `B_Name` VARCHAR(45) NOT NULL,
  `B_Address` VARCHAR(45) NOT NULL,
  `Room_ID` INT NOT NULL,
  `Facu_ID` INT NOT NULL,
  PRIMARY KEY (`Build_ID`, `Room_ID`, `Facu_ID`),
  INDEX `Room_ID_idx` (`Room_ID` ASC) VISIBLE,
  INDEX `Facu_ID_idx` (`Facu_ID` ASC) VISIBLE,
  CONSTRAINT `Room_ID`
    FOREIGN KEY (`Room_ID`)
    REFERENCES `Register_System`.`Room` (`Room_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Facu_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Day`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Day` (
  `Period_ID` INT NOT NULL,
  `Day_ID` INT NOT NULL,
  `Days` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Period_ID`, `Day_ID`),
  INDEX `Day_ID_idx` (`Day_ID` ASC) VISIBLE,
  CONSTRAINT `Period_ID`
    FOREIGN KEY (`Period_ID`)
    REFERENCES `Register_System`.`Period` (`Period_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Day_ID`
    FOREIGN KEY (`Day_ID`)
    REFERENCES `Register_System`.`Period` (`Day_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Time`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Time` (
  `Period_ID` INT NOT NULL,
  `Time_ID` INT NOT NULL,
  `Times` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Period_ID`, `Time_ID`),
  INDEX `Period_ID_idx` (`Period_ID` ASC) VISIBLE,
  INDEX `Time_ID_idx` (`Time_ID` ASC) VISIBLE,
  CONSTRAINT `Time_ID`
    FOREIGN KEY (`Time_ID`)
    REFERENCES `Register_System`.`Period` (`Time_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Period_ID`
    FOREIGN KEY (`Period_ID`)
    REFERENCES `Register_System`.`Period` (`Period_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Year`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Year` (
  `Period_ID` INT NOT NULL,
  `Year_ID` INT NOT NULL,
  `Years` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Period_ID`, `Year_ID`),
  INDEX `Period_ID_idx` (`Period_ID` ASC) VISIBLE,
  CONSTRAINT `Year_ID`
    FOREIGN KEY (`Year_ID`)
    REFERENCES `Register_System`.`Period` (`Year_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Period_ID`
    FOREIGN KEY (`Period_ID`)
    REFERENCES `Register_System`.`Period` (`Period_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Semester`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Semester` (
  `Period_ID` INT NOT NULL,
  `Semester_ID` INT NOT NULL,
  `Semesters` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Period_ID`, `Semester_ID`),
  INDEX `Period_ID_idx` (`Period_ID` ASC) VISIBLE,
  CONSTRAINT `Semester_ID`
    FOREIGN KEY (`Semester_ID`)
    REFERENCES `Register_System`.`Semester` (`Semester_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Period_ID`
    FOREIGN KEY (`Period_ID`)
    REFERENCES `Register_System`.`Period` (`Period_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Period`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Period` (
  `Period_ID` INT NOT NULL,
  `Day_ID` INT NOT NULL,
  `Time_ID` INT NOT NULL,
  `Year_ID` INT NOT NULL,
  `Semester_ID` INT NOT NULL,
  PRIMARY KEY (`Period_ID`, `Day_ID`, `Time_ID`, `Year_ID`, `Semester_ID`),
  INDEX `Day ID_idx` (`Day_ID` ASC) VISIBLE,
  INDEX `Time ID_idx` (`Time_ID` ASC) VISIBLE,
  INDEX `Year ID_idx` (`Year_ID` ASC) VISIBLE,
  INDEX `Semester ID_idx` (`Semester_ID` ASC) VISIBLE,
  CONSTRAINT `Day ID`
    FOREIGN KEY (`Day_ID`)
    REFERENCES `Register_System`.`Day` (`Day_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Time ID`
    FOREIGN KEY (`Time_ID`)
    REFERENCES `Register_System`.`Time` (`Time_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Year ID`
    FOREIGN KEY (`Year_ID`)
    REFERENCES `Register_System`.`Year` (`Year_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Semester ID`
    FOREIGN KEY (`Semester_ID`)
    REFERENCES `Register_System`.`Semester` (`Semester_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Section` (
  `Section_ID` INT NOT NULL,
  `S_FacuID` INT NOT NULL,
  `S_CourseID` INT NOT NULL,
  `S_BuildID` INT NOT NULL,
  `S_PeriodID` INT NOT NULL,
  PRIMARY KEY (`Section_ID`, `S_FacuID`, `S_CourseID`, `S_BuildID`, `S_PeriodID`),
  INDEX `Faculty ID_idx` (`S_FacuID` ASC) VISIBLE,
  INDEX `Course ID_idx` (`S_CourseID` ASC) VISIBLE,
  INDEX `Building ID_idx` (`S_BuildID` ASC) VISIBLE,
  INDEX `Period ID_idx` (`S_PeriodID` ASC) VISIBLE,
  CONSTRAINT `Faculty ID`
    FOREIGN KEY (`S_FacuID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Course ID`
    FOREIGN KEY (`S_CourseID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Building ID`
    FOREIGN KEY (`S_BuildID`)
    REFERENCES `Register_System`.`Building` (`Build_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Period ID`
    FOREIGN KEY (`S_PeriodID`)
    REFERENCES `Register_System`.`Period` (`Period_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Attendance`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Attendance` (
  `Attendance_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  `Section_ID` INT NOT NULL,
  PRIMARY KEY (`Attendance_ID`, `Stud_ID`, `Section_ID`),
  INDEX `Student ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Section ID_idx` (`Section_ID` ASC) VISIBLE,
  CONSTRAINT `Student ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Section ID`
    FOREIGN KEY (`Section_ID`)
    REFERENCES `Register_System`.`Section` (`Section_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Enrollment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Enrollment` (
  `Enrollment_ID` INT NOT NULL,
  `E_Grades` VARCHAR(45) NOT NULL,
  `Stud_ID` INT NOT NULL,
  `Section ID` INT NOT NULL,
  `Attendance ID` INT NOT NULL,
  PRIMARY KEY (`Enrollment_ID`, `Stud_ID`, `Section ID`, `Attendance ID`),
  INDEX `Student ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Section ID_idx` (`Section ID` ASC) VISIBLE,
  INDEX `Attendance ID_idx` (`Attendance ID` ASC) VISIBLE,
  CONSTRAINT `Student ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Section ID`
    FOREIGN KEY (`Section ID`)
    REFERENCES `Register_System`.`Section` (`Section_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Attendance ID`
    FOREIGN KEY (`Attendance ID`)
    REFERENCES `Register_System`.`Attendance` (`Attendance_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Student` (
  `Stud_ID` INT NOT NULL,
  `S_First` VARCHAR(45) NOT NULL,
  `S_Last` VARCHAR(45) NOT NULL,
  `S_Email` VARCHAR(45) NOT NULL,
  `S_PhoneNum` VARCHAR(45) NOT NULL,
  `S_HomeAdd` VARCHAR(45) NOT NULL,
  `S_Username` VARCHAR(45) NOT NULL,
  `S_Password` VARCHAR(45) NOT NULL,
  `S_Enroll` INT NOT NULL,
  `Facu_ID` INT NOT NULL COMMENT 'Foreign Key for Faculty Table',
  `S_HStatus` VARCHAR(45) NOT NULL,
  `S_Status` VARCHAR(45) NOT NULL,
  `S_AcaStand` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Stud_ID`, `S_First`, `S_Last`, `S_Email`, `S_PhoneNum`, `S_HomeAdd`, `S_Username`, `S_Password`, `S_Enroll`, `Facu_ID`),
  INDEX `First Name_idx` (`S_First` ASC) VISIBLE,
  INDEX `Last Name_idx` (`S_Last` ASC) VISIBLE,
  INDEX `Email Address_idx` (`S_Email` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`S_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`S_HomeAdd` ASC) VISIBLE,
  INDEX `Username_idx` (`S_Username` ASC) VISIBLE,
  INDEX `Enrollment ID_idx` (`S_Enroll` ASC) VISIBLE,
  INDEX `Faculty ID_idx` (`Facu_ID` ASC) VISIBLE,
  CONSTRAINT `Stud_ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `First Name`
    FOREIGN KEY (`S_First`)
    REFERENCES `Register_System`.`User` (`First_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Last Name`
    FOREIGN KEY (`S_Last`)
    REFERENCES `Register_System`.`User` (`Last_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Email Address`
    FOREIGN KEY (`S_Email`)
    REFERENCES `Register_System`.`User` (`Email_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone Number`
    FOREIGN KEY (`S_PhoneNum`)
    REFERENCES `Register_System`.`User` (`Phone_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Home Address`
    FOREIGN KEY (`S_HomeAdd`)
    REFERENCES `Register_System`.`User` (`Home_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Username`
    FOREIGN KEY (`S_Username`)
    REFERENCES `Register_System`.`User` (`Username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Password`
    FOREIGN KEY ()
    REFERENCES `Register_System`.`User` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Enrollment ID`
    FOREIGN KEY (`S_Enroll`)
    REFERENCES `Register_System`.`Enrollment` (`Enrollment_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Faculty ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Researcher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Researcher` (
  `Research_ID` INT NOT NULL,
  `R_First` VARCHAR(45) NOT NULL,
  `R_Last` VARCHAR(45) NOT NULL,
  `R_Email` VARCHAR(45) NOT NULL,
  `R_PhoneNum` VARCHAR(45) NOT NULL,
  `R_HomeAdd` VARCHAR(45) NOT NULL,
  `R_Username` VARCHAR(45) NOT NULL,
  `R_Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Research_ID`, `R_First`, `R_Last`, `R_Email`, `R_PhoneNum`, `R_HomeAdd`, `R_Username`, `R_Password`),
  INDEX `Username_idx` (`R_Username` ASC) VISIBLE,
  INDEX `Password_idx` (`R_Password` ASC) VISIBLE,
  INDEX `First Name_idx` (`R_First` ASC) VISIBLE,
  INDEX `Last Name_idx` (`R_Last` ASC) VISIBLE,
  INDEX `Email Address_idx` (`R_Email` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`R_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`R_HomeAdd` ASC) VISIBLE,
  CONSTRAINT `Researcher_ID`
    FOREIGN KEY (`Research_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Username`
    FOREIGN KEY (`R_Username`)
    REFERENCES `Register_System`.`User` (`Username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Password`
    FOREIGN KEY (`R_Password`)
    REFERENCES `Register_System`.`User` (`Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `First Name`
    FOREIGN KEY (`R_First`)
    REFERENCES `Register_System`.`User` (`First_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Last Name`
    FOREIGN KEY (`R_Last`)
    REFERENCES `Register_System`.`User` (`Last_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Email Address`
    FOREIGN KEY (`R_Email`)
    REFERENCES `Register_System`.`User` (`Email_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone Number`
    FOREIGN KEY (`R_PhoneNum`)
    REFERENCES `Register_System`.`User` (`Phone_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Home Address`
    FOREIGN KEY (`R_HomeAdd`)
    REFERENCES `Register_System`.`User` (`Home_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`User` (
  `User_ID` INT NOT NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `Email_Address` VARCHAR(45) NOT NULL,
  `Phone_Number` VARCHAR(45) NOT NULL,
  `Home_Address` VARCHAR(45) NOT NULL,
  `Username` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`User_ID`, `Last_Name`, `Email_Address`, `Phone_Number`, `Home_Address`, `First_Name`, `Username`, `Password`),
  INDEX `First_Name_idx` (`First_Name` ASC) VISIBLE,
  INDEX `Last_Name_idx` (`Last_Name` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`Phone_Number` ASC) VISIBLE,
  INDEX `Home Address_idx` (`Home_Address` ASC) VISIBLE,
  INDEX `Username_idx` (`Username` ASC) VISIBLE,
  INDEX `Password_idx` (`Password` ASC) VISIBLE,
  CONSTRAINT `User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Admin` (`Admin_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `First_Name`
    FOREIGN KEY (`First_Name`)
    REFERENCES `Register_System`.`Admin` (`A_FirstName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `First_Name`
    FOREIGN KEY (`First_Name`)
    REFERENCES `Register_System`.`Student` (`S_First`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `First_Name`
    FOREIGN KEY (`First_Name`)
    REFERENCES `Register_System`.`Faculty` (`F_First`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `First_Name`
    FOREIGN KEY (`First_Name`)
    REFERENCES `Register_System`.`Researcher` (`R_First`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Researcher` (`Research_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `Last_Name`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Student` (`S_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Last_Name`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Admin` (`A_LastName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Last_Name`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Researcher` (`R_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Last_Name`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Faculty` (`F_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Email Address`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Student` (`S_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Email Address`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Admin` (`A_LastName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Email Address`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Researcher` (`R_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Email Address`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Faculty` (`F_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone Number`
    FOREIGN KEY (`Phone_Number`)
    REFERENCES `Register_System`.`Admin` (`A_PhoneNum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone Number`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Student` (`S_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone Number`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Faculty` (`F_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone Number`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Researcher` (`R_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Home Address`
    FOREIGN KEY (`Home_Address`)
    REFERENCES `Register_System`.`Admin` (`A_HomeAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Home Address`
    FOREIGN KEY (`Home_Address`)
    REFERENCES `Register_System`.`Student` (`S_HomeAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Home Address`
    FOREIGN KEY (`Home_Address`)
    REFERENCES `Register_System`.`Faculty` (`F_HomeAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Home Address`
    FOREIGN KEY (`Home_Address`)
    REFERENCES `Register_System`.`Researcher` (`R_HomeAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Username`
    FOREIGN KEY (`Username`)
    REFERENCES `Register_System`.`Admin` (`A_Username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Username`
    FOREIGN KEY (`Username`)
    REFERENCES `Register_System`.`Student` (`S_Username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Username`
    FOREIGN KEY (`Username`)
    REFERENCES `Register_System`.`Faculty` (`F_Username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Username`
    FOREIGN KEY (`Username`)
    REFERENCES `Register_System`.`Researcher` (`R_Username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Password`
    FOREIGN KEY (`Password`)
    REFERENCES `Register_System`.`Admin` (`A_Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Password`
    FOREIGN KEY (`Password`)
    REFERENCES `Register_System`.`Student` (`S_Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Password`
    FOREIGN KEY (`Password`)
    REFERENCES `Register_System`.`Faculty` (`F_Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Password`
    FOREIGN KEY (`Password`)
    REFERENCES `Register_System`.`Researcher` (`R_Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Admin` (
  `Admin_ID` INT NOT NULL,
  `A_FirstName` VARCHAR(45) NOT NULL,
  `A_LastName` VARCHAR(45) NOT NULL,
  `A_EmailAdd` VARCHAR(45) NOT NULL,
  `A_PhoneNum` VARCHAR(45) NOT NULL,
  `A_HomeAdd` VARCHAR(45) NOT NULL,
  `A_Username` VARCHAR(20) NOT NULL,
  `A_Password` VARCHAR(20) NOT NULL,
  `Title` VARCHAR(12) NOT NULL,
  `Type` VARCHAR(12) NOT NULL,
  `A_DepartID` INT NOT NULL,
  PRIMARY KEY (`Admin_ID`, `A_FirstName`, `A_LastName`, `A_EmailAdd`, `A_PhoneNum`, `A_HomeAdd`, `A_Username`, `A_Password`, `A_DepartID`),
  INDEX `Username_idx` (`A_Username` ASC) VISIBLE,
  INDEX `Password_idx` (`A_Password` ASC) VISIBLE,
  INDEX `Email Address_idx` (`A_EmailAdd` ASC) VISIBLE,
  INDEX `First Name_idx` (`A_FirstName` ASC) VISIBLE,
  INDEX `Last Name_idx` (`A_LastName` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`A_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`A_HomeAdd` ASC) VISIBLE,
  INDEX `Department ID_idx` (`A_DepartID` ASC) VISIBLE,
  CONSTRAINT `Username`
    FOREIGN KEY (`A_Username`)
    REFERENCES `Register_System`.`User` (`Username`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Admin_ID`
    FOREIGN KEY (`Admin_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Password`
    FOREIGN KEY (`A_Password`)
    REFERENCES `Register_System`.`User` (`Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Email Address`
    FOREIGN KEY (`A_EmailAdd`)
    REFERENCES `Register_System`.`User` (`Email_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `First Name`
    FOREIGN KEY (`A_FirstName`)
    REFERENCES `Register_System`.`User` (`First_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Last Name`
    FOREIGN KEY (`A_LastName`)
    REFERENCES `Register_System`.`User` (`Last_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone Number`
    FOREIGN KEY (`A_PhoneNum`)
    REFERENCES `Register_System`.`User` (`Phone_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Home Address`
    FOREIGN KEY (`A_HomeAdd`)
    REFERENCES `Register_System`.`User` (`Home_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Department ID`
    FOREIGN KEY (`A_DepartID`)
    REFERENCES `Register_System`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`School Catalog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`School Catalog` (
  `SCata_ID` INT NOT NULL,
  `Viewable` VARCHAR(45) NOT NULL,
  `SC_DepartID` INT NOT NULL,
  `SC_CourseID` INT NOT NULL,
  `Admin_ID` INT NOT NULL,
  PRIMARY KEY (`SCata_ID`, `SC_DepartID`, `SC_CourseID`, `Admin_ID`),
  INDEX `Admin_ID_idx` (`Admin_ID` ASC) VISIBLE,
  INDEX `Department ID_idx` (`SC_DepartID` ASC) VISIBLE,
  INDEX `Course ID_idx` (`SC_CourseID` ASC) VISIBLE,
  CONSTRAINT `Admin_ID`
    FOREIGN KEY (`Admin_ID`)
    REFERENCES `Register_System`.`Admin` (`Admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Department ID`
    FOREIGN KEY (`SC_DepartID`)
    REFERENCES `Register_System`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Course ID`
    FOREIGN KEY (`SC_CourseID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Major`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Major` (
  `Major_ID` INT NOT NULL,
  `M_Name` VARCHAR(45) NOT NULL,
  `M_DepartID` INT NOT NULL,
  PRIMARY KEY (`Major_ID`, `M_DepartID`),
  INDEX `Department ID_idx` (`M_DepartID` ASC) VISIBLE,
  CONSTRAINT `Department ID`
    FOREIGN KEY (`M_DepartID`)
    REFERENCES `Register_System`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Major Requirements`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Major Requirements` (
  `MajorReq_ID` INT NOT NULL,
  `Major_ID` INT NOT NULL,
  `MR_CourseID` INT NOT NULL,
  PRIMARY KEY (`MajorReq_ID`, `Major_ID`, `MR_CourseID`),
  INDEX `Major_ID_idx` (`Major_ID` ASC) VISIBLE,
  INDEX `Course ID_idx` (`MR_CourseID` ASC) VISIBLE,
  CONSTRAINT `Major_ID`
    FOREIGN KEY (`Major_ID`)
    REFERENCES `Register_System`.`Major` (`Major_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Course ID`
    FOREIGN KEY (`MR_CourseID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Transcript`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Transcript` (
  `Transcript_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  `Section_ID` INT NOT NULL,
  `CourseDump` VARCHAR(45) NOT NULL COMMENT 'Not sure what this is',
  `GPA` DOUBLE NOT NULL,
  PRIMARY KEY (`Transcript_ID`, `Stud_ID`, `Section_ID`, `GPA`),
  INDEX `Student ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Section ID_idx` (`Section_ID` ASC) VISIBLE,
  CONSTRAINT `Student ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Section ID`
    FOREIGN KEY (`Section_ID`)
    REFERENCES `Register_System`.`Section` (`Section_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Prerequisite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Prerequisite` (
  `Prereq_ID` INT NOT NULL,
  PRIMARY KEY (`Prereq_ID`))
ENGINE = InnoDB;

CREATE USER 'user1';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
