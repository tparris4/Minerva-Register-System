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
-- Table `Register_System`.`Student`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Student` (
  `Stud_ID` INT NOT NULL,
  `S_First` VARCHAR(45) NOT NULL,
  `S_Last` VARCHAR(45) NOT NULL,
  `S_Email` VARCHAR(45) NOT NULL,
  `S_PhoneNum` VARCHAR(45) NOT NULL,
  `S_HomeAdd` VARCHAR(45) NOT NULL,
  `S_Password` VARCHAR(45) NOT NULL,
  `S_Type` VARCHAR(45) NOT NULL,
  `S_AcaStand` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Stud_ID`),
  INDEX `Last Name_idx` (`S_Last` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`S_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`S_HomeAdd` ASC) VISIBLE,
  INDEX `First Name_idx` (`S_First` ASC) VISIBLE,
  INDEX `Email Address_idx` (`S_Email` ASC) VISIBLE,
  UNIQUE INDEX `S_First_UNIQUE` (`S_First` ASC) VISIBLE,
  UNIQUE INDEX `S_Last_UNIQUE` (`S_Last` ASC) VISIBLE,
  UNIQUE INDEX `S_Email_UNIQUE` (`S_Email` ASC) VISIBLE,
  UNIQUE INDEX `S_PhoneNum_UNIQUE` (`S_PhoneNum` ASC) VISIBLE,
  UNIQUE INDEX `S_HomeAdd_UNIQUE` (`S_HomeAdd` ASC) VISIBLE,
  UNIQUE INDEX `S_Password_UNIQUE` (`S_Password` ASC) VISIBLE,
  CONSTRAINT `Student_ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT `St_FirstName`
    FOREIGN KEY (`S_First`)
    REFERENCES `Register_System`.`User` (`First_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `St_LastName`
    FOREIGN KEY (`S_Last`)
    REFERENCES `Register_System`.`User` (`Last_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `St_PhoneNumber`
    FOREIGN KEY (`S_PhoneNum`)
    REFERENCES `Register_System`.`User` (`Phone_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `St_Home Address`
    FOREIGN KEY (`S_HomeAdd`)
    REFERENCES `Register_System`.`User` (`Home_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `St_Password`
    FOREIGN KEY (`S_Password`)
    REFERENCES `Register_System`.`User` (`Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `St_EmailAdd`
    FOREIGN KEY (`S_Email`)
    REFERENCES `Register_System`.`User` (`Email_Address`)
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
  `F_PhoneNum` VARCHAR(45) NOT NULL,
  `F_HomeAdd` VARCHAR(45) NOT NULL,
  `F_EmailAdd` VARCHAR(45) NOT NULL,
  `F_Password` VARCHAR(45) NOT NULL,
  `F_Rank` VARCHAR(45) NOT NULL,
  `F_Office` VARCHAR(45) NOT NULL,
  `F_OfficeHrs` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Facu_ID`),
  INDEX `Last Name_idx` (`F_Last` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`F_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`F_HomeAdd` ASC) VISIBLE,
  INDEX `Password_idx` (`F_Password` ASC) VISIBLE,
  INDEX `First Name_idx` (`F_First` ASC) VISIBLE,
  INDEX `Email Address_idx` (`F_EmailAdd` ASC) VISIBLE,
  UNIQUE INDEX `F_HomeAdd_UNIQUE` (`F_HomeAdd` ASC) VISIBLE,
  UNIQUE INDEX `F_Password_UNIQUE` (`F_Password` ASC) VISIBLE,
  UNIQUE INDEX `F_First_UNIQUE` (`F_First` ASC) VISIBLE,
  UNIQUE INDEX `F_Last_UNIQUE` (`F_Last` ASC) VISIBLE,
  UNIQUE INDEX `F_PhoneNum_UNIQUE` (`F_PhoneNum` ASC) VISIBLE,
  UNIQUE INDEX `F_EmailAdd_UNIQUE` (`F_EmailAdd` ASC) VISIBLE,
  CONSTRAINT `Fa_User_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Fa_First Name`
    FOREIGN KEY (`F_First`)
    REFERENCES `Register_System`.`User` (`First_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Fa_LastName`
    FOREIGN KEY (`F_Last`)
    REFERENCES `Register_System`.`User` (`Last_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Fa_PhoneNumber`
    FOREIGN KEY (`F_PhoneNum`)
    REFERENCES `Register_System`.`User` (`Phone_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Fa_Home Address`
    FOREIGN KEY (`F_HomeAdd`)
    REFERENCES `Register_System`.`User` (`Home_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Fa_Password`
    FOREIGN KEY (`F_Password`)
    REFERENCES `Register_System`.`User` (`Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Fa_EmailAdd`
    FOREIGN KEY (`F_EmailAdd`)
    REFERENCES `Register_System`.`User` (`Email_Address`)
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
  `R_Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Research_ID`),
  INDEX `Password_idx` (`R_Password` ASC) VISIBLE,
  INDEX `First Name_idx` (`R_First` ASC) VISIBLE,
  INDEX `Last Name_idx` (`R_Last` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`R_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`R_HomeAdd` ASC) VISIBLE,
  INDEX `Email Address_idx` (`R_Email` ASC) VISIBLE,
  UNIQUE INDEX `R_Email_UNIQUE` (`R_Email` ASC) VISIBLE,
  UNIQUE INDEX `R_PhoneNum_UNIQUE` (`R_PhoneNum` ASC) VISIBLE,
  UNIQUE INDEX `R_HomeAdd_UNIQUE` (`R_HomeAdd` ASC) VISIBLE,
  UNIQUE INDEX `R_Password_UNIQUE` (`R_Password` ASC) VISIBLE,
  UNIQUE INDEX `R_First_UNIQUE` (`R_First` ASC) VISIBLE,
  UNIQUE INDEX `R_Last_UNIQUE` (`R_Last` ASC) VISIBLE,
  CONSTRAINT `Researcher_ID`
    FOREIGN KEY (`Research_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Re_Password`
    FOREIGN KEY (`R_Password`)
    REFERENCES `Register_System`.`User` (`Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Re_FirstName`
    FOREIGN KEY (`R_First`)
    REFERENCES `Register_System`.`User` (`First_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Re_LastName`
    FOREIGN KEY (`R_Last`)
    REFERENCES `Register_System`.`User` (`Last_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Re_PhoneNumber`
    FOREIGN KEY (`R_PhoneNum`)
    REFERENCES `Register_System`.`User` (`Phone_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Re_Home Address`
    FOREIGN KEY (`R_HomeAdd`)
    REFERENCES `Register_System`.`User` (`Home_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Re_EmailAdd`
    FOREIGN KEY (`R_Email`)
    REFERENCES `Register_System`.`User` (`Email_Address`)
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
  `Phone_Number` VARCHAR(45) NOT NULL,
  `Home_Address` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `Email_Address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`User_ID`, `Password`, `Home_Address`, `Phone_Number`, `Last_Name`, `First_Name`, `Email_Address`),
  INDEX `First_Name_idx` (`First_Name` ASC) INVISIBLE,
  INDEX `Last_Name_idx` (`Last_Name` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`Phone_Number` ASC) VISIBLE,
  INDEX `Home Address_idx` (`Home_Address` ASC) VISIBLE,
  INDEX `Password_idx` (`Password` ASC) VISIBLE,
  INDEX `Email Address_idx` (`Email_Address` ASC) VISIBLE,
  CONSTRAINT `A_User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Admin` (`Admin_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `A_First_Name`
    FOREIGN KEY (`First_Name`)
    REFERENCES `Register_System`.`Admin` (`A_First`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `S_First_Name`
    FOREIGN KEY (`First_Name`)
    REFERENCES `Register_System`.`Student` (`S_First`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `F_First_Name`
    FOREIGN KEY (`First_Name`)
    REFERENCES `Register_System`.`Faculty` (`F_First`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_First_Name`
    FOREIGN KEY (`First_Name`)
    REFERENCES `Register_System`.`Researcher` (`R_First`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Researcher` (`Research_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `S_User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `F_User_ID`
    FOREIGN KEY (`User_ID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION,
  CONSTRAINT `S_Last_Name`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Student` (`S_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `A_Last_Name`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Admin` (`A_LastName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_Last_Name`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Researcher` (`R_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `F_Last_Name`
    FOREIGN KEY (`Last_Name`)
    REFERENCES `Register_System`.`Faculty` (`F_Last`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `A_Phone Number`
    FOREIGN KEY (`Phone_Number`)
    REFERENCES `Register_System`.`Admin` (`A_PhoneNum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `S_Phone Number`
    FOREIGN KEY (`Phone_Number`)
    REFERENCES `Register_System`.`Student` (`S_PhoneNum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `F_Phone Number`
    FOREIGN KEY (`Phone_Number`)
    REFERENCES `Register_System`.`Faculty` (`F_PhoneNum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_Phone Number`
    FOREIGN KEY (`Phone_Number`)
    REFERENCES `Register_System`.`Researcher` (`R_PhoneNum`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `A_Home Address`
    FOREIGN KEY (`Home_Address`)
    REFERENCES `Register_System`.`Admin` (`A_HomeAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `S_Home Address`
    FOREIGN KEY (`Home_Address`)
    REFERENCES `Register_System`.`Student` (`S_HomeAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `F_Home Address`
    FOREIGN KEY (`Home_Address`)
    REFERENCES `Register_System`.`Faculty` (`F_HomeAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_Home Address`
    FOREIGN KEY (`Home_Address`)
    REFERENCES `Register_System`.`Researcher` (`R_HomeAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `A_Password`
    FOREIGN KEY (`Password`)
    REFERENCES `Register_System`.`Admin` (`A_Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `S_Password`
    FOREIGN KEY (`Password`)
    REFERENCES `Register_System`.`Student` (`S_Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `F_Password`
    FOREIGN KEY (`Password`)
    REFERENCES `Register_System`.`Faculty` (`F_Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_Password`
    FOREIGN KEY (`Password`)
    REFERENCES `Register_System`.`Researcher` (`R_Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `A_EmailAdd`
    FOREIGN KEY (`Email_Address`)
    REFERENCES `Register_System`.`Admin` (`A_EmailAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `S_EmailAdd`
    FOREIGN KEY (`Email_Address`)
    REFERENCES `Register_System`.`Student` (`S_Email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `F_EmailAdd`
    FOREIGN KEY (`Email_Address`)
    REFERENCES `Register_System`.`Faculty` (`F_EmailAdd`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `R_EmailAdd`
    FOREIGN KEY (`Email_Address`)
    REFERENCES `Register_System`.`Researcher` (`R_Email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Department` (
  `Department_ID` INT NOT NULL,
  `D_Name` VARCHAR(45) NOT NULL,
  `D_Email` VARCHAR(45) NOT NULL,
  `D_Chair` VARCHAR(45) NOT NULL,
  `D_Location` VARCHAR(45) NOT NULL,
  `D_Phone` VARCHAR(45) NOT NULL,
  `D_Secretary` VARCHAR(45) NOT NULL,
  `D_Chair` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Department_ID`),
  UNIQUE INDEX `D_Name_UNIQUE` (`D_Name` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Admin`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Admin` (
  `Admin_ID` INT NOT NULL,
  `A_First` VARCHAR(45) NOT NULL,
  `A_LastName` VARCHAR(45) NOT NULL,
  `A_EmailAdd` VARCHAR(45) NOT NULL,
  `A_PhoneNum` VARCHAR(45) NOT NULL,
  `A_HomeAdd` VARCHAR(45) NOT NULL,
  `A_Password` VARCHAR(20) NOT NULL,
  `A_DepartID` INT NOT NULL,
  `OfficeNum` INT NOT NULL,
  `A_Title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Admin_ID`, `A_DepartID`),
  INDEX `Password_idx` (`A_Password` ASC) VISIBLE,
  INDEX `First Name_idx` (`A_First` ASC) VISIBLE,
  INDEX `Last Name_idx` (`A_LastName` ASC) VISIBLE,
  INDEX `Phone Number_idx` (`A_PhoneNum` ASC) VISIBLE,
  INDEX `Home Address_idx` (`A_HomeAdd` ASC) INVISIBLE,
  INDEX `Department ID_idx` (`A_DepartID` ASC) VISIBLE,
  UNIQUE INDEX `A_FirstName_UNIQUE` (`A_First` ASC) VISIBLE,
  UNIQUE INDEX `A_LastName_UNIQUE` (`A_LastName` ASC) VISIBLE,
  UNIQUE INDEX `A_EmailAdd_UNIQUE` (`A_EmailAdd` ASC) VISIBLE,
  UNIQUE INDEX `A_PhoneNum_UNIQUE` (`A_PhoneNum` ASC) VISIBLE,
  UNIQUE INDEX `A_HomeAdd_UNIQUE` (`A_HomeAdd` ASC) VISIBLE,
  UNIQUE INDEX `A_Password_UNIQUE` (`A_Password` ASC) VISIBLE,
  INDEX `Email Address_idx` (`A_EmailAdd` ASC) INVISIBLE,
  CONSTRAINT `Admin_ID`
    FOREIGN KEY (`Admin_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Ad_Password`
    FOREIGN KEY (`A_Password`)
    REFERENCES `Register_System`.`User` (`Password`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Ad_First Name`
    FOREIGN KEY (`A_First`)
    REFERENCES `Register_System`.`User` (`First_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Ad_Last Name`
    FOREIGN KEY (`A_LastName`)
    REFERENCES `Register_System`.`User` (`Last_Name`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Ad_Phone Number`
    FOREIGN KEY (`A_PhoneNum`)
    REFERENCES `Register_System`.`User` (`Phone_Number`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Ad_Home Address`
    FOREIGN KEY (`A_HomeAdd`)
    REFERENCES `Register_System`.`User` (`Home_Address`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Ad_Department ID`
    FOREIGN KEY (`A_DepartID`)
    REFERENCES `Register_System`.`Department` (`Department_ID`)
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
  UNIQUE INDEX `R_Num_UNIQUE` (`R_Num` ASC) VISIBLE,
  CONSTRAINT `R_Build_ID`
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
  `Room Amount` INT NOT NULL,
  PRIMARY KEY (`Build_ID`, `Room_ID`, `Facu_ID`),
  INDEX `Room_ID_idx` (`Room_ID` ASC) VISIBLE,
  INDEX `Facu_ID_idx` (`Facu_ID` ASC) VISIBLE,
  CONSTRAINT `B_Room_ID`
    FOREIGN KEY (`Room_ID`)
    REFERENCES `Register_System`.`Room` (`Room_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `B_Facu_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
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
  `C_CreditAmt` INT NOT NULL,
  `S_CRN` INT NOT NULL,
  `C_DeptID` INT NOT NULL,
  `C_DeptName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Course_ID`),
  UNIQUE INDEX `C_DeptName_UNIQUE` (`C_DeptID` ASC) VISIBLE,
  CONSTRAINT `C_DepartName`
    FOREIGN KEY (`C_DeptID`)
    REFERENCES `Register_System`.`Department` (`D_Name`)
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
  CONSTRAINT `SC_Admin_ID`
    FOREIGN KEY (`Admin_ID`)
    REFERENCES `Register_System`.`Admin` (`Admin_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `SC_Department ID`
    FOREIGN KEY (`SC_DepartID`)
    REFERENCES `Register_System`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `SC_Course ID`
    FOREIGN KEY (`SC_CourseID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`MasterSchedule`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`MasterSchedule` (
  `SemesterYear_ID` INT NOT NULL,
  `Semesters` VARCHAR(45) NOT NULL,
  `Year` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`SemesterYear_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Section`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Section` (
  `S_Section_ID` INT NOT NULL,
  `S_FacuID` INT NOT NULL,
  `S_CourseID` INT NOT NULL,
  `S_BuildID` INT NOT NULL,
  `S_SemesterYearID` INT NOT NULL,
  `S_TimeSlotID` INT NOT NULL,
  `S_RoomNum` INT NOT NULL,
  INDEX `Faculty ID_idx` (`S_FacuID` ASC) VISIBLE,
  INDEX `Course ID_idx` (`S_CourseID` ASC) VISIBLE,
  INDEX `Building ID_idx` (`S_BuildID` ASC) VISIBLE,
  INDEX `Se_SemesterYearID_idx` (`S_SemesterYearID` ASC) VISIBLE,
  INDEX `Se_Room Number_idx` (`S_RoomNum` ASC) VISIBLE,
  CONSTRAINT `Se_Faculty ID`
    FOREIGN KEY (`S_FacuID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Se_Course ID`
    FOREIGN KEY (`S_CourseID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Se_Building ID`
    FOREIGN KEY (`S_BuildID`)
    REFERENCES `Register_System`.`Building` (`Build_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Se_Room Number`
    FOREIGN KEY (`S_RoomNum`)
    REFERENCES `Register_System`.`Room` (`Room_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Se_SemesterYearID`
    FOREIGN KEY (`S_SemesterYearID`)
    REFERENCES `Register_System`.`MasterSchedule` (`SemesterYear_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Enrollment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Enrollment` (
  `Stud_ID` INT NOT NULL,
  `Section ID` INT NOT NULL,
  INDEX `En_Section ID_idx` (`Section ID` ASC) VISIBLE,
  INDEX `En_Student ID_idx` (`Stud_ID` ASC) VISIBLE,
  CONSTRAINT `En_Student ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `En_Section ID`
    FOREIGN KEY (`Section ID`)
    REFERENCES `Register_System`.`Section` (`S_Section_ID`)
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
  CONSTRAINT `M_Department ID`
    FOREIGN KEY (`M_DepartID`)
    REFERENCES `Register_System`.`Department` (`Department_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`MajorRequirements`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`MajorRequirements` (
  `MajorReq_ID` INT NOT NULL,
  `Major_ID` INT NOT NULL,
  `MR_CourseID` INT NOT NULL,
  PRIMARY KEY (`MajorReq_ID`, `Major_ID`, `MR_CourseID`),
  INDEX `Major_ID_idx` (`Major_ID` ASC) VISIBLE,
  INDEX `Course ID_idx` (`MR_CourseID` ASC) VISIBLE,
  CONSTRAINT `MR_Major_ID`
    FOREIGN KEY (`Major_ID`)
    REFERENCES `Register_System`.`Major` (`Major_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `MR_Course ID`
    FOREIGN KEY (`MR_CourseID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`TimeSlot`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`TimeSlot` (
  `TimeSlotID` INT NOT NULL,
  `StartTime` VARCHAR(45) NOT NULL,
  `EndTime` VARCHAR(45) NOT NULL,
  `Day` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`TimeSlotID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`History`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`History` (
  `Transcript_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  `Section_ID` INT NOT NULL,
  `CourseDump` VARCHAR(45) NOT NULL COMMENT 'Not sure what this is',
  `SemesterYearID` INT NOT NULL,
  PRIMARY KEY (`Transcript_ID`, `Stud_ID`, `Section_ID`),
  INDEX `Student ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Section ID_idx` (`Section_ID` ASC) VISIBLE,
  INDEX `Tr_SemesterYearID_idx` (`SemesterYearID` ASC) VISIBLE,
  CONSTRAINT `Tr_Student ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Tr_Section ID`
    FOREIGN KEY (`Section_ID`)
    REFERENCES `Register_System`.`Section` (`S_Section_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Tr_SemesterYearID`
    FOREIGN KEY (`SemesterYearID`)
    REFERENCES `Register_System`.`MasterSchedule` (`SemesterYear_ID`)
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
  `Date` VARCHAR(45) NOT NULL,
  `IsPresent` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Attendance_ID`, `Stud_ID`, `Section_ID`),
  INDEX `Student ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Section ID_idx` (`Section_ID` ASC) VISIBLE,
  CONSTRAINT `At_Student ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `At_Section ID`
    FOREIGN KEY (`Section_ID`)
    REFERENCES `Register_System`.`Section` (`S_Section_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Prerequisite`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Prerequisite` (
  `Prereq_ID` INT NOT NULL,
  `P_CourseID` INT NOT NULL,
  INDEX `P_CourseID_idx` (`P_CourseID` ASC) VISIBLE,
  CONSTRAINT `P_CourseID`
    FOREIGN KEY (`P_CourseID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Holds`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Holds` (
  `Holds_ID` INT NOT NULL,
  `Hold_Type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Holds_ID`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`HoldStatus`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`HoldStatus` (
  `HS_HoldID` INT NOT NULL,
  `HS_StudentID` INT NOT NULL,
  `HoldStatus` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`HS_HoldID`, `HS_StudentID`),
  INDEX `HoldStat_StudID_idx` (`HS_StudentID` ASC) VISIBLE,
  CONSTRAINT `HoldStat_HoldID`
    FOREIGN KEY (`HS_HoldID`)
    REFERENCES `Register_System`.`Holds` (`Holds_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `HoldStat_StudID`
    FOREIGN KEY (`HS_StudentID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Undergraduate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Undergraduate` (
  `UG_StudentID` INT NOT NULL,
  `Major_Name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`UG_StudentID`),
  CONSTRAINT `UG Student ID`
    FOREIGN KEY (`UG_StudentID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Graduate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Graduate` (
  `GD_StudID` INT NOT NULL,
  `MajorName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`GD_StudID`),
  CONSTRAINT `GradStudID`
    FOREIGN KEY (`GD_StudID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`UndergradFullTime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`UndergradFullTime` (
  `U_UndergradFullTime_ID` INT NOT NULL,
  `Status` TINYINT NOT NULL,
  `Credits_Num` DOUBLE NOT NULL,
  `SemesterYearID` INT NOT NULL,
  `CreditTotal` DOUBLE NOT NULL,
  PRIMARY KEY (`U_UndergradFullTime_ID`),
  CONSTRAINT `UGFT_SYID`
    FOREIGN KEY (`U_UndergradFullTime_ID`)
    REFERENCES `Register_System`.`Undergraduate` (`UG_StudentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`UndergradPartTime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`UndergradPartTime` (
  `UndergradPartTime_ID` INT NOT NULL,
  `Credits_Num` DOUBLE NOT NULL,
  `Status` TINYINT NOT NULL,
  `CreditTotal` DOUBLE NOT NULL,
  `SemesterYearID` INT NOT NULL,
  PRIMARY KEY (`UndergradPartTime_ID`),
  INDEX `UGPT_SYID_idx` (`SemesterYearID` ASC) VISIBLE,
  CONSTRAINT `UGPT_ID`
    FOREIGN KEY (`UndergradPartTime_ID`)
    REFERENCES `Register_System`.`Undergraduate` (`UG_StudentID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `UGPT_SYID`
    FOREIGN KEY (`SemesterYearID`)
    REFERENCES `Register_System`.`MasterSchedule` (`SemesterYear_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`GradFullTime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`GradFullTime` (
  `GradFullTime_ID` INT NOT NULL,
  `Status` TINYINT NOT NULL,
  `Credits_Num` DOUBLE NOT NULL,
  `CreditTotal` DOUBLE NOT NULL,
  PRIMARY KEY (`GradFullTime_ID`),
  CONSTRAINT `GradFID`
    FOREIGN KEY (`GradFullTime_ID`)
    REFERENCES `Register_System`.`Graduate` (`GD_StudID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`GradPartTime`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`GradPartTime` (
  `Status` VARCHAR(45) NOT NULL,
  `Credits_Num` DOUBLE NOT NULL,
  `CreditTotal` DOUBLE NOT NULL,
  `GradStudPTID` INT NOT NULL,
  INDEX `GradStudPTID_idx` (`GradStudPTID` ASC) VISIBLE,
  PRIMARY KEY (`GradStudPTID`),
  CONSTRAINT `GradStudPTID`
    FOREIGN KEY (`GradStudPTID`)
    REFERENCES `Register_System`.`Graduate` (`GD_StudID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE USER 'user1';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
