-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2019 at 10:21 PM
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
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `User_ID` int(11) NOT NULL,
  `First_Name` varchar(45) NOT NULL,
  `Last_Name` varchar(45) NOT NULL,
  `Phone_Number` varchar(45) NOT NULL,
  `Home_Address` varchar(150) NOT NULL,
  `Password` varchar(45) NOT NULL,
  `Email_Address` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`User_ID`, `First_Name`, `Last_Name`, `Phone_Number`, `Home_Address`, `Password`, `Email_Address`) VALUES
(123, 'test', 'test', 'test', 'test', '*23AE809DDACAF96AF0FD78ED04B6A265E05AA257', 'test'),
(1111, 'john', 'doe', '111-111-1111', '111 test ave', '1111', 'jdoe@mvs.edu'),
(1234, 'test', 'test', 'test', 'test', 'test', 'test'),
(2222, 'John', 'Dane', '111-222-2222', '123 testing ave', '2222', 'jdane@msc.edu'),
(11111, 'John', 'Patti', '260-927-8992', '695 Pearcy Avenue, Arlington, Virginia, 22202', 'JPattiAdmin', 'JPatti@msc.edu'),
(22223, 'Diane', 'Hamme', '207-257-8638', '3258 Chipmunk Lane, New York, New York, 10007', 'DHamme', 'brandt1988@msc.com'),
(22224, 'Nicolas', 'Kline', '714-579-1696', '1709 Cimmaron Road, Bedford, Massachusetts, 01730', 'NKline', 'ckline@msc.com'),
(22225, 'Edgar', 'Lewis', '605-521-8448', '3062 Ryan Road, Phoenix, Arizona, 85016', 'ELewis', 'ELewis@msc.edu'),
(22226, 'Carol', 'Lynn', '218-226-1693', '4853 Little Acres Lane, Oaktown, Indiana, 47561', 'CLynn', 'CLynn@msc.edu'),
(22227, 'Agnes', 'Ford', '903-735-5139', '255 Hall Place, Dayton, Ohio, 45402', 'AFord', 'AFord@msc.edu'),
(22228, 'Ruby', 'Hwang', '914-945-4255', '1338 Ward Road, Myrtle Point, Oregon, 97458', 'RHwang', 'RHwang@msc.edu'),
(22229, 'Kevin', 'Capobianco', '724-379-4530', '4688 Stuart Street,  Longview, Texas, 75604', 'KCapobianco', 'KCapobianco@msc.edu'),
(22230, 'Fanny', 'Stevens', '323-516-7720', '544 Evergreen Lane,  El Paso, Texas, 79922', 'FStevens', 'FStevens@msc.edu'),
(22231, 'Jayme', 'Daigre', '801-350-2451', '1892 Walton Street, Providence Forge, Virginia, 23140', 'JDaigre', 'JDaigre@msc.edu'),
(22232, 'Patri', 'Johnson', '615-330-6684', '4599 Frum Street, Richvale, California, 95974', 'PJohnson', 'PJohnson@msc.edu'),
(22233, 'Alan', 'Obrien', '405-957-8102', '4670 Benson Park Drive, Kenner, Louisiana, 70065', 'AObrien', 'AObrien@msc.edu'),
(22234, 'Rebecca', 'Hartman', '305-519-6719', '3782 Poplar Lane, Brook Park, Ohio, 44142', 'RHartman', 'RHartman@msc.edu'),
(22235, 'Christine', 'Largent', '203-392-7055', '3645 Cheshire Road, Yukon, Oklahoma, 73099', 'CLargent', 'CLargent@msc.edu'),
(22236, 'Velma', 'Moseley', '951-492-5613', '2629 Denver Avenue, Los Angeles, California, 90017', 'VMoseley', 'VMoseley@msc.edu'),
(22237, 'Maureen', 'Ford', '202-219-2645', '827 Northwest Blvd, Bluefield, West Virginia, 24701', 'MFord', 'MFord@msc.edu'),
(22238, 'Elizabeth', 'Parks', '774-229-8871', '2541 Kennedy Avenue, Phoenix, Arizona, 85034', 'EParks', 'EParks@msc.edu'),
(22239, 'Charlie', 'Stroupe', '828-678-6376', '394 Goosetown Drive, Bronx, New York, 10452', 'CStroupe', 'CStroupe@msc.edu'),
(33331, 'Carylon ', 'Forsyth', '850-891-6934', '3474 American Drive, Bloomfield Township, Michigan, 48302', 'CForsyth', 'CForsyth@msc.edu'),
(33332, 'Irene', 'Getz', '936-563-9932', '1021 Mulberry Street, Bloomfield Township, Michigan, 48302', 'IGetz', 'IGetz@msc.edu'),
(33333, 'Daniel', 'Raposo', '216-444-7879', '3547 Peaceful Lane, Vernon, Texas, 76384', 'DRaposo', 'DRaposo@msc.edu'),
(33334, 'Jonathan', 'Beauchamp', '714-987-9615', '720 Angie Drive, Willards, Maryland, 21874', 'JBeauchamp', 'JBeauchamp@msc.edu'),
(33335, 'David ', 'Sawyer', '626-219-0884', '2549 Rainbow Road, Thousand Oaks, California, 91362', 'DSawyer', 'DSawyer@msc.edu'),
(33336, 'Estelle', 'Raybon', '301-526-2384', '3742 Doe Meadow Drive, Washington, Washington DC, 20024', 'ERaybon', 'ERaybon@msc.edu'),
(33337, 'Patrick', 'Ross', '936-417-8808', '4678 Woodrow Way, Arlington Heights, Illinois, 60005', 'PRoss', 'PRoss@msc.edu'),
(33338, 'Cynthia', 'Marino', '859-627-5952', '2915 Mayo Street, Milwaukie, Oregon, 97222', 'CMarino', 'CMarino@msc.edu'),
(33339, 'Debbie', 'Garmon', '989-269-4681', '497 Hart Ridge Road, Gary, Indiana, 46402', 'DGarmon', 'DGarmon@msc.edu'),
(33340, 'Joseph ', 'Foster', '540-203-2717', '2796 Maxwell Road, Lafayette, Louisiana, 70503', 'JFoster', 'JFoster@msc.edu'),
(33341, 'Chris', 'Besaw', '801-675-3282', '754 Tori Lane, Houston, Texas, 77028', 'CBesaw', 'CBesaw@msd.edu'),
(33342, 'Edward', 'Donohoe', '651-257-2261', '4910 Haul Roadm, Lindstrom, Minnesota, 55045', 'EDonohoe', 'EDonohoe@msc.edu'),
(33343, 'Dorothy', 'Trigg', '814-885-8343', '3888 Custer Street, Kersey, Pennsylvania, 15846', 'DTrigg', 'DTrigg@msc.edu'),
(33344, 'Carlos', 'Guzzman', '605-396-0693', '4762 Andy Street, Columbia, South Dakota, 5733', 'CGuzzman', 'CGuzzman@msc.edu'),
(33345, 'Fredrick', 'Siegel', '410-835-1170', '993 Woodhill Avenue, Willards, Maryland, 21874', 'FSiegel', 'FSiegel@msc.edu'),
(33346, 'Patricia', 'Levy', '928-707-5776', ' 4474 Martha Street, Phoenix, Arizona, 85034', 'PLevy', 'PLevy@msc.edu'),
(33347, 'Michelle', 'Boatwright', '315-290-1547', '3736 Oak Street, Syracuse, New York, 13202', 'MBoatwright', 'MBoatwright@msc.edu'),
(33348, 'Emma', 'Jones', '214-615-5294', '222 Romines Mill Road,  Dallas, Texas, 75247', 'EJones', 'EJones@msc.edu'),
(33349, 'Sara', 'Rivera', ' 704-327-1858', '1497 Red Dog Road, Charlotte, North Carolina, 28273', 'SRivera', 'SRivera@msc.edu'),
(33350, 'Helen', 'Barksdale', '602-376-0581', '2342 Burnside Court,  Phoenix, Arizona, 85034', 'HBarksdale', 'HBarksdale@msc.edu'),
(33351, 'Billie', 'Young', '619-702-9198', '3969 Grim Avenue, San Diego, California, 92101', 'BYoung', 'BYoung@msc.edu'),
(33352, 'Eric', 'Salter', '224-603-9365', '2002 Victoria Street, Chicago, Illinois, 60606', 'ESalter', 'ESalter@msc.edu'),
(33353, 'James', 'Robinson', '720-350-8288', '997 Davis Lane, Centennial, Colorado, 80112', 'JRobinson', 'JRobinson@msc.edu'),
(33354, 'Angelia', 'Gamboa', '702-259-1352', '2016 Hiney Road, Las Vegas, Nevada(NV), 89107', 'AGamboa', 'AGamboa@msc.edu'),
(33355, 'Roy', 'Jackson', '773-615-1273', '2079 Virginia Street, Lombard, Illinois, 60148', 'RJackson', 'RJackson@msc.edu'),
(33356, 'Kenny', 'Thomas', '815-506-8072', '3261 Braxton Street, Chicago, Illinois, 60606', 'KThomas', 'KThomas@msc.edu'),
(33357, 'Lamot', 'Barker', '850-236-8518', '993 Virgil Street, Panama City, Florida, 32401', 'LBarker', 'LBarker@msc.edu'),
(33358, 'Sharon', 'Krum', '802-843-5218', '1987 Hardman Road, Grafton, Vermont, 05146', 'SKrum', 'SKrum@msc.edu'),
(33359, 'James', 'Castilleja', '570-298-0131', '3516 Stoney Lonesome Road, Noxen, Pennsylvania, 18636', 'JCastilleja@msc.edu', 'JCastilleja'),
(33360, 'Joseph', 'Carson', '309-999-7679', '2943 Jail Drive, Peoria, Illinois, 61602', 'JCarson', 'JCarson@msc.edu'),
(33361, 'Lena', 'Kirk', '785-269-3388', '26 Nicholas Street, Salina, Kansas, 67401', 'LKirk', 'LKirk@msc.edu'),
(33362, 'Mattie', 'Muldrow', '774-487-5030', '4057 Kennedy Court, West Roxbury, Massachusetts, 02132', 'MMuldrow', 'MMuldrow@msc.edu'),
(33363, 'Barbara', 'Ball', '602-865-5939', '3365 Crowfield Road, Phoenix, Arizona, 85017', 'BBall', 'BBall@msc.edu'),
(33364, 'Kevin', 'Chasse', '305-683-5492', '3649 Golden Street, Miami, Florida, 33169', 'KChasse', 'KChasse@msc.edu'),
(33365, 'Meredith', 'Rodriguez', '561-455-0761', '4252 Wyatt Street, Delray Beach, Florida, 33484', 'MRodriguez', 'MRodriguez@msc.edu'),
(33366, 'Derrick', 'Garcia', '786-255-0275', '2829 Ridenour Street, Miami, Florida, 33179', 'DGarcia', 'DGarcia@msc.edu'),
(33367, 'Chester', 'Smalley', '818-670-1636', '3987 Glendale Avenue, Los Angeles, California, 90017', 'CSmalley', 'CSmalley@msc.edu'),
(33368, 'Douglas ', 'Stephenson', '631-854-9504', '3107 Grove Street, Brentwood, New York(NY), 11717', 'DStephenson', 'DStephenson@msc.edu'),
(33369, 'Bryan', 'Haws', '808-690-0678', '265 Indiana Avenue, Barbers Point, Hawaii, 96862', 'BHaws', 'BHaws@msc.edu'),
(33370, 'Thomas', 'Lewis', '312-513-2812', '1414 West Drive, Chicago, Illinois, 60605', 'TLewis', 'TLewis@msc.edu'),
(33371, 'William ', 'East', ' 516-353-4983', '1272 Gnatty Creek Road, Huntington, New York, 11743', 'WEast', 'WEast@msc.edu'),
(33372, 'Angela ', 'Cruse', '616-802-2732', '4601 West Street, Grand Rapids, Michigan, 49503', 'ACruse', 'ACruse@msc.edu'),
(33373, 'Thomas', 'Hernadez', '541-569-4441', '1487 Haymond Rocks Road, Lostine, Oregon, 97885', 'THernadez', 'THernadez@msc.edu'),
(33374, 'Todd', 'Littlefield', '781-621-4114', '2568 Single Street,South Boston, Massachusetts, 02127', 'TLittlefield', 'TLittlefield@msc.edu'),
(33375, 'Pauline', 'Johnson', '803-276-6684', '1759 Wexford Way, Newberry, South Carolina, 29108', 'PJohnson', 'PJohnson@msc.edu'),
(33376, 'Jordan', 'Wills', '559-281-7271', '1113 Edgewood Avenue, Fresno, California, 93721', 'JWills', 'JWills@msc.edu'),
(33377, 'Dirk', 'Cox', '646-594-9332', '4707 Cantebury Drive, Westbury, New York, 11590', 'DCox', 'DCox@msc.edu'),
(33378, 'Alton', 'Salazar', '435-827-8639', '2860 Lang Avenue, Almo, Utah, 83312', 'ASalazar', 'ASalazar@msc.edu'),
(33379, 'Yolanda', 'Lopez', '508-713-4559', '2958 Randolph Street, Boston, Massachusetts, 02199', 'YLopez', 'YLopez@msc.edu'),
(33380, 'Carl', 'Vickery', '417-505-2248', '2695 Twin House Lane, Branson, Missouri, 65616', 'CVickery', 'CVickery@msc.edu'),
(33381, 'Jorge', 'Thomas', '208-440-4717', '2837 Young Road, Boise, Idaho, 83702', 'JThomas', 'JThomas@msc.edu'),
(33382, 'James', 'Hilbert', '614-835-7072', '3020 Collins Avenue, Canal Winchester, Ohio, 43110', 'JHilbert', 'JHilbert@msc.edu'),
(33383, 'Lois', 'Ferguson', '601-788-2975', '4814 School House Road, Richton, Mississippi, 39476', 'LFerguson', 'LFerguson@msc.edu'),
(33384, 'Tonya', 'Rochester', '307-362-3923', '304 Arbor Court, Rock Springs, Wyoming, 82901', 'Trochester', 'Trochester@msc.edu'),
(33385, 'Beatrice', 'Thomas', '636-667-7063', '1078 Court Street,Maryland Heights, Missouri ,6043 ', 'Bthomas', 'Bthomas@msc.edu'),
(33386, 'Ruth', 'OldField', '269-355-5327', '381 Shingleton Rd,Grand Rapids,Michigan,49503 ', 'Roldfied', 'Roldfield@msc.edu'),
(33387, 'Brandy', 'Rahn', '210-369-6416', '1188 Weekley Street,San Antonio, Texas,78205', 'Brahn', 'Brahn@msc.edu'),
(33388, 'Ester', 'Dryden', '503-569-5437', '1928 Godfrey Street,Tigard ,Oregon ,97223 ', 'Edryden', 'Edryden@msc.edu'),
(33389, 'Elisabeth', 'Hall', '732-802-0216', '4279 Pinnickinnick Street,Carteret ,New Jersey ,07008 ', 'EHall', 'Ehall@msc.edu'),
(33390, 'Yvette', 'Passarelli', '917-378-8571', '4315 Bicetown Road, New York ,New York ,10013 ', 'YPassarelli', 'YPassarelli@msc.edu'),
(33391, 'Ralph', 'Long', '215-937-4466', '4313 Hiddenview Drive,Philadelphia ,Pennsylvania ,19153 ', 'Ylong', 'Ylong@msc.edu'),
(33392, 'John', 'Larson', '712-856-4221', '2067 Clousson road, Des Moise ,Iowa ,50309 ', 'Jlarson', 'Jlarson@msc.edu'),
(33393, 'Jason', 'Bourne', '718-528-3434', '324 Elmont Road, Nassau County, New York ,11003 ', 'Jbourne', 'Jbourne@msc.edu'),
(33394, 'Ruben', 'Anderson', '218-528-4024', '4482 Terra Cotta Street, Badger ,Minnesota ,56714 ', 'Randerson', 'Randerson@msc.edu'),
(33395, 'James', 'Clinkscales', '816-453-9793', '1793 Tree Frong Lane, Kansas City ,Missouri ,64119 ', 'Jclinkscales', 'Jclinkscales@msc.edu'),
(33396, 'Crystal', 'Swinton', '772-464-0211', '1282 Travis Street, Fort Pierce ,Florida ,34950 ', 'Cswinton', 'Cswinton@msc.edu'),
(33397, 'Catherine', 'Lee', '360-346-9410', '2400 Terra Street, Elma , Washington ,98541 ', 'Clee', 'Clee@msc.edu'),
(33398, 'Bertha', 'Bolduc', '816-227-2667', '244 Nutter Street,Edgerton , Missouri ,64444 ', 'Bbolduc', 'Bbolduc@msc.edu'),
(33399, 'George', 'Wagner', '715-510-5062', '1431 Lynn Avenue,Stevens Point , Wisconsin ,54481 ', 'Gwagner', 'Gwagner@msc.edu'),
(33400, 'Gary', 'Hugh', '574-634-8550', '4926 Sand Fork Road, South Bend , Indiana , 46601 ', 'Ghugh', 'Ghugh@msc.edu'),
(33401, 'Jonathan', 'Durant', '720-881-1232', '2521 Leo Street, Denver ,Colorado ,80202 ', 'Jdurant', 'Jdurant@msc.edu'),
(33402, 'Harold', 'Edson', '403-765-6870', '3567 tibbs Avenue,Wibaux ,Montana ,59353 ', 'Hedson', 'Hedson@msc.edu'),
(33403,'Russel', 'Costello', '361-227-6090', '497 boone Street,Corpus Christi , Texas ,78476 ', 'Rcostello', 'Rcostello@msc.edu'),
(33404, 'Kevin', 'Goetz', '540-213-5848', '4920 Maxwell Farm Road,Stauton ,Virginia ,24401 ', 'Kgoetz', 'Kgoetz@msc.edu'),
(33405, 'George', 'Robinson', '740-518-8885', '2045 Irving Road,Worthington ,Ohio ,43085 ', 'Grobinson', 'Grobinson@msc.edu'),
(33406, 'Hilda', 'Pratt', '810-953-7881', '1445 Tuna Street,Grand Blanc ,Michigan ,48439 ', 'Hpratt', 'Hpratt@msc.edu'),
(33407, 'Elizabeth', 'Little', '325-879-0813', '1742 Anthony Avenue, Big Valley , Texas ,76801 ', 'Elittle', 'Elittle@msc.edu'),
(33408, 'Kevin', 'Meyers', '620-895-7659', '463 Preston Street, Cullison ,Kansas ,67034 ', 'Kmeyers', 'Kmeyers@msc.edu'),
(33409, 'John', 'Doyon', '419-852-0811', '3944 Upland Avenue,Celina ,Ohio ,45822 ', 'Jdoyon', 'Jdoyon@msc.edu'),
(33410, 'Helene', 'Lewis', '510-696-8450', '1168 Clifford Street,San Leandro ,California ,94578 ', 'Hlewis', 'Hlewis@msc.edu'),
(33411, 'Beverly', 'Patterson', '323-330-6334', '4623 Norman Street,Los Angeles , California ,90014 ', 'Bpatterson', 'Bpatterson@msc.edu'),
(33412, 'Johnathan', 'Griffin', '319-895-4575', '4346 Progress Way, Mount Vernon ,Iowa ,52314 ', 'Jgriffin', 'Jgriffin@msc.edu'),
(33413, 'Michael', 'Faulkner', '319-236-8816', '1344 Tecumsah Lane,Waterloo ,Iowa ,50703 ', 'Mfaulkner', 'Mfaulkner@msc.edu'),
(33414, 'Cheryl', 'Burke', '206-914-1195', '1523 Raccoon Run,Seattle ,Washington ,98133 ', 'Cburke', 'Cburke@msc.edu'),
(33415, 'Julia', 'Forman', '815-427-7724', '3906 Lowland Drive, St Anne ,Illinois ,60964 ', 'Jforman', 'Jforman@msc.edu'),
(33416, 'Sarah', 'Rowan', '718-289-7957', '3348 Alfred Drive, Rego Park Queens, New York ,11734 ', 'Srowan', 'Srowan@msc.edu'),
(33417, 'Rudolph', ' Broughton', '626-940-7506', '4981 Providence Lane,Pomona ,California , 91766', 'Rbroughton', 'Rbroughton@msc.edu'),
(33418, 'Omega', 'Huber', '971-409-9364', '2294 Hope Street, Portland ,Oregon ,97230 ', 'Ohuber', 'Ohuber@msc.edu'),
(33419, 'Jessie', 'Sims', '801-868-8031', '3212 Kemper Lane,Orem ,Utah ,84058 ', 'Jsims', 'Jsims@msc.edu'),
(33420, 'Jill', 'Avant', '218-782-3561', '786 Eagle Lane, Greenbush ,Minnesota ,56726 ', 'Javant', 'Javant@msc.edu'),
(33421, 'Jeffrey', 'Banks', '251-404-2882', '1814 George Avenue,Mobile ,Alabama ,36693 ', 'Jbanks', 'Jbanks@msc.edu'),

(44441, 'Patricia ', 'Brown', '860-309-9554', '2516 Hart Street, Austin, Texas, 78723', 'PBrown', 'PBrown@msc.edu'),
(44442, 'Eveett', 'Freddy','432-567-8990','2321 Camber Street, Farmingdale, New York, 11234', 'Efreddy','aidan1998@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`User_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
