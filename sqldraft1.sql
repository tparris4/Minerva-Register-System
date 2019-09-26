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
  `B_RoomNum` INT NOT NULL,
  `B_Status` ENUM('O', 'C') NOT NULL,
  `Room_ID` INT NOT NULL,
  `Facu_ID` INT NOT NULL,
  PRIMARY KEY (`Build_ID`, `Room_ID`, `Facu_ID`),
  INDEX `Room_ID_idx` (`Room_ID` ASC) VISIBLE,
  CONSTRAINT `Room_ID`
    FOREIGN KEY (`Room_ID`)
    REFERENCES `Register_System`.`Room` (`Room_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Room`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Room` (
  `Room_ID` INT NOT NULL,
  `R_Type` VARCHAR(45) NOT NULL,
  `R_Num` INT NOT NULL,
  `Build_ID` VARCHAR(45) NOT NULL,
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
  CONSTRAINT `User_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Room_ID`
    FOREIGN KEY ()
    REFERENCES `Register_System`.`Room` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Class Catalog`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Class Catalog` (
  `CCata_ID` INT NOT NULL,
  `CCata_Type` VARCHAR(45) NOT NULL,
  `Admin_ID` INT NOT NULL,
  PRIMARY KEY (`CCata_ID`, `Admin_ID`),
  INDEX `Admin_ID_idx` (`Admin_ID` ASC) VISIBLE,
  CONSTRAINT `Admin_ID`
    FOREIGN KEY (`Admin_ID`)
    REFERENCES `Register_System`.`Admin` (`Admin_ID`)
    ON DELETE CASCADE
    ON UPDATE RESTRICT)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Course`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Course` (
  `Course_ID` INT NOT NULL,
  `C_Num` INT NOT NULL,
  `C_Subject` VARCHAR(45) NOT NULL,
  `C_Roster` VARCHAR(45) NOT NULL COMMENT 'File',
  `C_Prereq` VARCHAR(45) NOT NULL COMMENT 'File',
  `Facu_ID` INT NOT NULL,
  `CCata_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  `C_Letter` ENUM('P', 'F', 'W') NOT NULL,
  PRIMARY KEY (`Course_ID`, `Facu_ID`, `CCata_ID`, `Stud_ID`, `C_Letter`),
  INDEX `Stud_ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Facu_ID_idx` (`Facu_ID` ASC) VISIBLE,
  INDEX `CCata_ID_idx` (`CCata_ID` ASC) VISIBLE,
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
    REFERENCES `Register_System`.`Class Catalog` (`CCata_ID`)
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
-- Table `Register_System`.`Class`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Class` (
  `Class_ID` INT NOT NULL,
  `Cl_Type` VARCHAR(45) NOT NULL,
  `Cl_Name` VARCHAR(45) NOT NULL,
  `Cl_Semester` VARCHAR(45) NOT NULL,
  `Cl_Year` INT NOT NULL,
  `Course_ID` INT NOT NULL,
  `Stud_ID` INT NOT NULL,
  PRIMARY KEY (`Class_ID`, `Stud_ID`, `Course_ID`),
  INDEX `Stud_ID_idx` (`Stud_ID` ASC) VISIBLE,
  INDEX `Course_ID_idx` (`Course_ID` ASC) VISIBLE,
  CONSTRAINT `Stud_ID`
    FOREIGN KEY (`Stud_ID`)
    REFERENCES `Register_System`.`Student` (`Stud_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Course_ID`
    FOREIGN KEY (`Course_ID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
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
  CONSTRAINT `RLog_ID`
    FOREIGN KEY (`RLog_ID`)
    REFERENCES `Register_System`.`Researcher Log` (`RLog_ID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT)
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
  `S_Phone` VARCHAR(45) NOT NULL,
  `S_PhoneNum` VARCHAR(45) NOT NULL,
  `S_HomeAdd` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Stud_ID`, `Grades_ID`, `Facu_ID`, `Class_ID`, `Room_ID`, `Resea_ID`, `S_HomeAdd`, `S_PhoneNum`, `S_Phone`, `S_Last`, `S_First`, `S_Email`, `S_Username`),
  INDEX `RLog_ID_idx` (`Resea_ID` ASC) VISIBLE,
  INDEX `C_Letter_idx` (`C_Letter` ASC) VISIBLE,
  INDEX `Room_ID_idx` (`Room_ID` ASC) VISIBLE,
  INDEX `Class_ID_idx` (`Class_ID` ASC) VISIBLE,
  INDEX `Grades_ID_idx` (`Grades_ID` ASC) VISIBLE,
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
  CONSTRAINT `Class_ID`
    FOREIGN KEY (`Class_ID`)
    REFERENCES `Register_System`.`Class` (`Class_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Room_ID`
    FOREIGN KEY (`Room_ID`)
    REFERENCES `Register_System`.`Room` (`Room_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `RLog_ID`
    FOREIGN KEY (`Resea_ID`)
    REFERENCES `Register_System`.`Researcher Log` (`RLog_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `C_Letter`
    FOREIGN KEY (`C_Letter`)
    REFERENCES `Register_System`.`Course` (`C_Letter`)
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
    REFERENCES `Register_System`.`Admin` (`First_Name`)
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
  `Username` VARCHAR(20) NOT NULL,
  `Password` VARCHAR(20) NOT NULL,
  `Email` VARCHAR(30) NOT NULL,
  `First_Name` VARCHAR(45) NOT NULL,
  `Last_Name` VARCHAR(45) NOT NULL,
  `A_PhoneNum` VARCHAR(45) NOT NULL,
  `A_EmailAdd` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`Admin_ID`, `First_Name`, `Last_Name`, `Email`, `Password`, `Username`, `A_PhoneNum`, `A_EmailAdd`),
  CONSTRAINT `Username`
    FOREIGN KEY ()
    REFERENCES `Register_System`.`User` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Admin_ID`
    FOREIGN KEY (`Admin_ID`)
    REFERENCES `Register_System`.`User` (`User_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Register_System`.`Roster`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Register_System`.`Roster` (
  `Roster_ID` INT NOT NULL,
  `Rost_Status` ENUM('F', 'C') NOT NULL COMMENT 'Full \nClosed',
  `Course_ID` INT NOT NULL,
  `Facu_ID` INT NOT NULL,
  PRIMARY KEY (`Roster_ID`, `Course_ID`, `Facu_ID`),
  INDEX `Course_ID_idx` (`Course_ID` ASC) VISIBLE,
  INDEX `Facu_ID_idx` (`Facu_ID` ASC) VISIBLE,
  CONSTRAINT `Course_ID`
    FOREIGN KEY (`Course_ID`)
    REFERENCES `Register_System`.`Course` (`Course_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Facu_ID`
    FOREIGN KEY (`Facu_ID`)
    REFERENCES `Register_System`.`Faculty` (`Facu_ID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE USER 'user1';


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
