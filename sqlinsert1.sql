USE regsystem;
SHOW DATABASES;

#Users
INSERT INTO User VALUES ('001', 'Bob', 'John', 'BobJ234@gmail.com', '(305)886-2675', '345 Washington Avenue', 'JohnBob222');
INSERT INTO Admin VALUES ('001', '500'); 
INSERT INTO User VALUES ('101', 'Bob', 'John', 'JohnB234@gmail.com', '(541)505-7964', '123 Delaware Avenue', 'BobJohn111');
INSERT INTO Student VALUES('101', '1000', 'No Holds', 'Undergraduate', 'Good');
INSERT INTO User Values ('201', 'Jessie', 'Dell', 'JDell1@gmail.com', '(323)574-0117', '111 Florida Road', 'DellJ890');
INSERT INTO Faculty Values ('201', 'Professor', '500', 'Tuesday/Thursday 2:30-3:30');
INSERT INTO User VALUES ('301', 'James', 'Windows', 'JWindows123@gmail.com', '(665)454-1916)', '222 Maine Avenue', 'WindowsJ12');
INSERT INTO Researcher VALUES ('301');

#Department
INSERT INTO Department VALUES ('500', 'Math', 'MathDep@minerva.edu', 'Math Building', '(225)830-9563', 'Anna Rose', 'Bruce Wayne');

#Major
INSERT INTO Major VALUES ('1111', 'Math', '500');

#Major Requirements
INSERT INTO MajorRequirements VALUES ('1111');

#School Catalog

#Course
INSERT INTO Course VALUES ('401', '1111', 'Precalculus', 'Entry Calculus', '3.0', 'Math', ' ');

#Prerequisite
INSERT INTO Prerequisite VALUES ('601');

#Section
INSERT INTO Section VALUES ('701', '201', '401', '01', '100', '100', '12:00-1:00');

#Building
INSERT INTO Building VALUES ('100', 'North Building', '333 Minerva');

#Room
INSERT INTO Room VALUES ('100', '101', '30', '100');

#Period
INSERT INTO Period VALUES ('001', '12:00', '1:00');

#Time
INSERT INTO Time VALUES ('001', ' ');

#Year
INSERT INTO Year VALUES ('001', '2018');

#Semester 
INSERT INTO Semester VALUES ('001', 'Fall');

#Day
INSERT INTO Day VALUES ('001', 'Tuesday/Thursday');

#Enrollment
INSERT INTO Enrollment VALUES ('1000', '101', '701', ' ', '000');

#Transcript
INSERT INTO Transcript VALUES ('800', '101', '701', ' ');

#Attendance
INSERT INTO Attendance VALUES ('000', '1000', ' ');

#Holds
INSERT INTO Holds VALUES ('900', 'None');

#HoldStatus
INSERT INTO HoldStatus VALUES ('900', '101');

#Undergraduate
INSERT INTO Undergraduate VALUES ('101', ' ', '2000');

#Graduate

#Undergraduate Full TIme
INSERT INTO UndergradFullTime VALUES ('12.0', 'Met', '2000');

#Graduate Full Time

#Undergraduate Part Time

#Graduate Part Time


-- -----------------------------------------------------
-- Data for table `Register_System`.`User`
-- -----------------------------------------------------
START TRANSACTION;
USE `Register_System`;
INSERT INTO `Register_System`.`User` (`User_ID`, `Email_Address`, `Password`, `First_Name`, `Last_Name`, `Phone_Number`, `Home_Address`) VALUES (10001, 'JDoe123@musc.com', 'DoeJ123', 'John', 'Doe', '(305)886-2675', '345 Washington Avenue');
INSERT INTO `Register_System`.`User` (`User_ID`, `Email_Address`, `Password`, `First_Name`, `Last_Name`, `Phone_Number`, `Home_Address`) VALUES (20001, 'JohnB234@musc.com', 'BobJohn111', 'Bob', 'John', '(541)505-7964', '123 Delaware Avenue');
INSERT INTO `Register_System`.`User` (`User_ID`, `Email_Address`, `Password`, `First_Name`, `Last_Name`, `Phone_Number`, `Home_Address`) VALUES (30001, 'JDell1@musc.com', 'DellJ890', 'Jessie', 'Dell', '(323)574-0117', '111 Florida Road');
INSERT INTO `Register_System`.`User` (`User_ID`, `Email_Address`, `Password`, `First_Name`, `Last_Name`, `Phone_Number`, `Home_Address`) VALUES (40001, 'JWind123@musc.com', 'WindJ12', 'James', 'Wind', '(665)454-1916', '222 Maine Avenue');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Register_System`.`Admin`
-- -----------------------------------------------------
START TRANSACTION;
USE `Register_System`;
INSERT INTO `Register_System`.`Admin` (`Admin_ID`, `A_EmailAdd`, `A_Password`, `A_First`, `A_LastName`, `A_PhoneNum`, `A_HomeAdd`, `A_DepartID`, `OfficeNum`, `A_Title`) VALUES (10001, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Register_System`.`Student`
-- -----------------------------------------------------
START TRANSACTION;
USE `Register_System`;
INSERT INTO `Register_System`.`Student` (`Stud_ID`, `S_First`, `S_Last`, `S_Email`, `S_PhoneNum`, `S_HomeAdd`, `S_Password`, `S_Type`, `S_AcaStand`) VALUES (20001, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, 'Undergraduate', 'Good');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Register_System`.`Researcher`
-- -----------------------------------------------------
START TRANSACTION;
USE `Register_System`;
INSERT INTO `Register_System`.`Researcher` (`Research_ID`, `R_First`, `R_Last`, `R_Email`, `R_PhoneNum`, `R_HomeAdd`, `R_Password`) VALUES (40001, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT, DEFAULT);

COMMIT;
