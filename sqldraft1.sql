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
-- Table `Register_System`.`Building`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Building` (
  `Build_ID` INT NOT NULL,
  `B_Name` VARCHAR(45) NOT NULL,
  `Room_ID` INT NOT NULL,
  `Facu_ID` INT NOT NULL,
  `B_Address` VARCHAR(45) NOT NULL,
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
-- Table `Register_System`.`Room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Room` (
  `Room_ID` INT NOT NULL,
  `R_Num` INT NOT NULL,
  `Build_ID` VARCHAR(45) NOT NULL,
  `R_Capacity` INT NOT NULL,
  PRIMARY KEY (`Room_ID`, `Build_ID`),
  CONSTRAINT `Build_ID`
    FOREIGN KEY (`Room_ID`)
    REFERENCES `Register_System`.`Building` (`Build_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Faculty`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Faculty` (
  `Facu_ID` INT NOT NULL COMMENT 'Faculty ID',
  `F_Type` VARCHAR(45) NOT NULL,
  `F_Username` VARCHAR(45) NOT NULL,
  `F_Password` VARCHAR(45) NOT NULL,
  `F_Email` VARCHAR(45) NOT NULL,
  `Stud_ID` INT NOT NULL COMMENT 'Foreign Key',
  `Room_ID` INT NOT NULL COMMENT 'Foreign Key',
  `F_First` VARCHAR(45) NOT NULL,
  `F_Last` VARCHAR(45) NOT NULL,
  `F_Email` VARCHAR(45) NOT NULL,
  `F_HomeAdd` VARCHAR(45) NOT NULL,
  `F_PhoneNum` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Facu_ID`, `Room_ID`, `Stud_ID`, `F_Username`, `F_Password`, `F_Email`, `F_First`, `F_Last`, `F_Email`, `F_HomeAdd`, `F_PhoneNum`),
  INDEX `First Name_idx` (`F_First` ASC) VISIBLE,
  INDEX `Last Name_idx` (`F_Last` ASC) VISIBLE,
  INDEX `Email Address_idx` (`F_Email` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`F_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`F_HomeAdd` ASC) VISIBLE,
  INDEX `Username_idx` (`F_Username` ASC) VISIBLE,
  INDEX `Password_idx` (`F_Password` ASC) VISIBLE,
  CONSTRAINT `User_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Room_ID`
    FOREIGN KEY ()
    REFERENCES `Register_System`.`Room` ()
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
  CONSTRAINT `Email Address`
    FOREIGN KEY (`F_Email`)
    REFERENCES `Register_System`.`User` (`Email_Address`)
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
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`School Catalog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`School Catalog` (
  `SCata_ID` INT NOT NULL,
  `CCata_Type` VARCHAR(45) NOT NULL,
  `Admin_ID` INT NOT NULL,
  PRIMARY KEY (`SCata_ID`, `Admin_ID`),
  INDEX `Admin_ID_idx` (`Admin_ID` ASC) VISIBLE,
  CONSTRAINT `Admin_ID`
    FOREIGN KEY (`Admin_ID`)
    REFERENCES `Register_System`.`Admin` (`Admin_ID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Department` (
  `Department_ID` INT NOT NULL,
  `D_Name` VARCHAR(45) NOT NULL,
  `Course_ID` INT NOT NULL,
  PRIMARY KEY (`Department_ID`, `Course_ID`),
  INDEX `Course_ID_idx` (`Course_ID` ASC) VISIBLE,
  CONSTRAINT `Course_ID`
    FOREIGN KEY (`Course_ID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Section` (
  `Section_ID` INT NOT NULL,
  `Section_CRN` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Section_ID`, `Section_CRN`),
  CONSTRAINT `Course ID`
    FOREIGN KEY (`Section_ID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Course` (
  `Course_ID` INT NOT NULL,
  `C_Name` VARCHAR(45) NOT NULL,
  `C_Description` VARCHAR(45) NOT NULL,
  `Facu_ID` INT NOT NULL,
  `CCata_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  `C_Letter` ENUM('P', 'F', 'W') NOT NULL,
  `C_CreditAmt` INT NOT NULL,
  `S_CRN` INT NOT NULL,
  PRIMARY KEY (`Course_ID`, `Facu_ID`, `CCata_ID`, `Stud_ID`, `C_Letter`, `S_CRN`),
  INDEX `Stud_ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Facu_ID_idx` (`Facu_ID` ASC) VISIBLE,
  INDEX `CCata_ID_idx` (`CCata_ID` ASC) VISIBLE,
  INDEX `Section ID_idx` (`S_CRN` ASC) VISIBLE,
  CONSTRAINT `Stud_ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Facu_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `CCata_ID`
    FOREIGN KEY (`CCata_ID`)
    REFERENCES `Register_System`.`School Catalog` (`SCata_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Department_ID`
    FOREIGN KEY (`Course_ID`)
    REFERENCES `Register_System`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Section ID`
    FOREIGN KEY (`S_CRN`)
    REFERENCES `Register_System`.`Section` (`Section_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Grades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Grades` (
  `Grades_ID` INT NOT NULL,
  `Grades_Date` VARCHAR(45) NOT NULL,
  `Grades_Subject` VARCHAR(45) NOT NULL,
  `Grade_CRN` INT NOT NULL,
  `Course_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  `Facu_ID` INT NOT NULL,
  PRIMARY KEY (`Grades_ID`, `Course_ID`, `Stud_ID`, `Facu_ID`),
  INDEX `Course_ID_idx` (`Course_ID` ASC) VISIBLE,
  INDEX `Stud_ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Facu_ID_idx` (`Facu_ID` ASC) VISIBLE,
  CONSTRAINT `Course_ID`
    FOREIGN KEY (`Course_ID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Stud_ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Facu_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Enrollment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Enrollment` (
  `Enrollment_ID` INT NOT NULL,
  `E_Grades` VARCHAR(45) NOT NULL,
  `E_Attendance` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Enrollment_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Student` (
  `Stud_ID` INT NOT NULL,
  `S_Type` VARCHAR(45) NOT NULL,
  `S_Username` VARCHAR(45) NOT NULL,
  `S_Email` VARCHAR(45) NOT NULL,
  `S_HStatus` VARCHAR(45) NOT NULL,
  `S_Major` VARCHAR(45) NOT NULL,
  `S_GPA` DOUBLE NOT NULL,
  `S_Schedule` VARCHAR(45) NOT NULL,
  `Facu_ID` INT NOT NULL COMMENT 'Foreign Key for Faculty Table',
  `Grades_ID` INT NOT NULL COMMENT 'Foreign Key for Grades Table',
  `Class_ID` INT NOT NULL COMMENT 'Foreign Key for Class',
  `Room_ID` INT NOT NULL COMMENT 'Foreign Key for Room',
  `Resea_ID` INT NOT NULL,
  `C_Letter` ENUM('P', 'F', 'W') NOT NULL,
  `S_First` VARCHAR(45) NOT NULL,
  `S_Last` VARCHAR(45) NOT NULL,
  `S_PhoneNum` VARCHAR(45) NOT NULL,
  `S_HomeAdd` VARCHAR(45) NOT NULL,
  `S_Password` VARCHAR(45) NOT NULL,
  `S_Enroll` INT NOT NULL,
  PRIMARY KEY (`Stud_ID`, `Grades_ID`, `Facu_ID`, `Class_ID`, `Room_ID`, `Resea_ID`, `S_HomeAdd`, `S_PhoneNum`, `S_Last`, `S_First`, `S_Email`, `S_Username`, `S_GPA`, `S_Password`, `S_Enroll`),
  INDEX `Grades_ID_idx` (`Grades_ID` ASC) VISIBLE,
  INDEX `First Name_idx` (`S_First` ASC) VISIBLE,
  INDEX `Last Name_idx` (`S_Last` ASC) VISIBLE,
  INDEX `Email Address_idx` (`S_Email` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`S_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`S_HomeAdd` ASC) VISIBLE,
  INDEX `Username_idx` (`S_Username` ASC) VISIBLE,
  INDEX `Enrollment ID_idx` (`S_Enroll` ASC) VISIBLE,
  CONSTRAINT `Stud_ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `Grades_ID`
    FOREIGN KEY (`Grades_ID`)
    REFERENCES `Register_System`.`Grades` (`Grades_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
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
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Researcher Log`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Researcher Log` (
  `RLog_ID` INT NOT NULL,
  `Resea_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  PRIMARY KEY (`RLog_ID`, `Resea_ID`, `Stud_ID`),
  INDEX `Resea_ID_idx` (`Resea_ID` ASC) VISIBLE,
  INDEX `Stud_ID_idx` (`Stud_ID` ASC) VISIBLE,
  CONSTRAINT `Resea_ID`
    FOREIGN KEY (`Resea_ID`)
    REFERENCES `Register_System`.`Researcher` (`Resea_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `Stud_ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Researcher`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Researcher` (
  `Resea_ID` INT NOT NULL,
  `R_Type` VARCHAR(45) NOT NULL,
  `R_Username` VARCHAR(45) NOT NULL,
  `R_Password` VARCHAR(45) NOT NULL,
  `R_Email` VARCHAR(45) NOT NULL,
  `RLog_ID` INT NOT NULL,
  `R_First` VARCHAR(45) NOT NULL,
  `R_Last` VARCHAR(45) NOT NULL,
  `R_PhoneNum` VARCHAR(45) NOT NULL,
  `R_HomeAdd` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Resea_ID`, `RLog_ID`, `R_First`, `R_Last`, `R_PhoneNum`, `R_HomeAdd`, `R_Password`, `R_Username`, `R_Email`),
  INDEX `RLog_ID_idx` (`RLog_ID` ASC) VISIBLE,
  INDEX `Username_idx` (`R_Username` ASC) VISIBLE,
  INDEX `Password_idx` (`R_Password` ASC) VISIBLE,
  INDEX `First Name_idx` (`R_First` ASC) VISIBLE,
  INDEX `Last Name_idx` (`R_Last` ASC) VISIBLE,
  INDEX `Email Address_idx` (`R_Email` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`R_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`R_HomeAdd` ASC) VISIBLE,
  CONSTRAINT `RLog_ID`
    FOREIGN KEY (`RLog_ID`)
    REFERENCES `Register_System`.`Researcher Log` (`RLog_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `Researcher_ID`
    FOREIGN KEY (`Resea_ID`)
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
  INDEX `Phone_Number_idx` (`Phone_Number` ASC) VISIBLE,
  INDEX `First_Name_idx` (`First_Name` ASC) VISIBLE,
  CONSTRAINT `User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Admin` (`Admin_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `Phone_Number`
    FOREIGN KEY (`Phone_Number`)
    REFERENCES `Register_System`.`Admin` (`A_PhoneNum`)
    ON DELETE NO ACTION
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
    REFERENCES `Register_System`.`Researcher` (`Resea_ID`)
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
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Admin` (
  `Admin_ID` INT NOT NULL,
  `Title` VARCHAR(12) NOT NULL,
  `Type` VARCHAR(12) NOT NULL,
  `A_Username` VARCHAR(20) NOT NULL,
  `A_Password` VARCHAR(20) NOT NULL,
  `A_Email` VARCHAR(30) NOT NULL,
  `A_FirstName` VARCHAR(45) NOT NULL,
  `A_LastName` VARCHAR(45) NOT NULL,
  `A_PhoneNum` VARCHAR(45) NOT NULL,
  `A_EmailAdd` VARCHAR(45) NOT NULL,
  `A_HomeAdd` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Admin_ID`, `A_FirstName`, `A_LastName`, `A_Email`, `A_Password`, `A_Username`, `A_PhoneNum`, `A_EmailAdd`, `A_HomeAdd`),
  INDEX `Username_idx` (`A_Username` ASC) VISIBLE,
  INDEX `Password_idx` (`A_Password` ASC) VISIBLE,
  INDEX `Email Address_idx` (`A_EmailAdd` ASC) VISIBLE,
  INDEX `First Name_idx` (`A_FirstName` ASC) VISIBLE,
  INDEX `Last Name_idx` (`A_LastName` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`A_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`A_HomeAdd` ASC) VISIBLE,
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
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Major Requirements`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Major Requirements` (
  `MajorReq_ID` INT NOT NULL,
  `Major_ID` INT NOT NULL,
  PRIMARY KEY (`MajorReq_ID`, `Major_ID`),
  INDEX `Major_ID_idx` (`Major_ID` ASC) VISIBLE,
  CONSTRAINT `Major_ID`
    FOREIGN KEY (`Major_ID`)
    REFERENCES `Register_System`.`Major` (`Major_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Major`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Major` (
  `Major_ID` INT NOT NULL,
  `M_Name` VARCHAR(45) NOT NULL,
  `MajorReq_ID` INT NOT NULL,
  PRIMARY KEY (`Major_ID`, `MajorReq_ID`),
  CONSTRAINT `MajorReq ID`
    FOREIGN KEY (`Major_ID` , `MajorReq_ID`)
    REFERENCES `Register_System`.`Major Requirements` (`MajorReq_ID` , `MajorReq_ID`)
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
  PRIMARY KEY (`Period_ID`, `Day_ID`, `Time_ID`, `Year_ID`, `Semester_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Day`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Day` (
  `Period_ID` INT NOT NULL,
  `Day_ID` INT NOT NULL,
  `Days` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Period_ID`, `Day_ID`),
  CONSTRAINT `Period_ID`
    FOREIGN KEY (`Period_ID`)
    REFERENCES `Register_System`.`Period` (`Period_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Day_ID`
    FOREIGN KEY (`Period_ID` , `Day_ID`)
    REFERENCES `Register_System`.`Period` (`Period_ID` , `Day_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Time`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Time` (
  `Time_ID` INT NOT NULL,
  `Period_ID` INT NOT NULL,
  `Times` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Time_ID`, `Period_ID`),
  INDEX `Period_ID_idx` (`Period_ID` ASC) VISIBLE,
  CONSTRAINT `Time_ID`
    FOREIGN KEY (`Time_ID` , `Period_ID`)
    REFERENCES `Register_System`.`Period` (`Time_ID` , `Period_ID`)
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
  `Year_ID` INT NOT NULL,
  `Period_ID` INT NOT NULL,
  `Years` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Year_ID`, `Period_ID`),
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
  `Semester_ID` INT NOT NULL,
  `Period_ID` INT NOT NULL,
  `Semesters` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Semester_ID`, `Period_ID`),
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
-- Table `Register_System`.`Transcript`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Transcript` (
  `Transcript_ID` INT NOT NULL,
  `CourseDump` VARCHAR(45) NOT NULL COMMENT 'Not sure what this is',
  `GPA` DOUBLE NOT NULL,
  PRIMARY KEY (`Transcript_ID`, `GPA`),
  INDEX `GPA_idx` (`GPA` ASC) VISIBLE,
  CONSTRAINT `GPA`
    FOREIGN KEY (`GPA`)
    REFERENCES `Register_System`.`Student` (`S_GPA`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE USER 'user1';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
