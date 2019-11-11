-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2019 at 08:07 AM
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
(22240, 'Stacie', 'Alexander', '718-568-6979', '513 Longview Avenue, New York, New York(NY), 10004', 'SAlexander', 'SAlexcander@msc.edu'),
(22241, 'Ken', 'Bengal', '330-795-1083', '867 Rivendell Drive, Akron, Ohio(OH), 44308', 'KBengal', 'KBengal@msc.edu'),
(22242, 'James', 'Sweat', '610-257-7686', '731 Tree Top Lane, Philadelphia, Pennsylvania(PA), 19108', 'JSweat', 'JSweat@msc.edu'),
(22243, 'Beverly', 'Biller', '717-235-4379', '4487 Hidden Valley Road, Glen Rock, Pennsylvania(PA), 17327', 'BBiller', 'BBiller@msc.edu'),
(22244, 'Reginald', 'Kelly', '330-699-1100', '2016 Wildwood Street, Uniontown, Ohio(OH), 44685', 'RKelly', 'RKelly@msc.edu'),
(22245, 'Wayne', 'Shumaker', '614-497-1829', ' 2382 Quilly Lane, Lockbourne, Ohio(OH), 43137', 'WShumaker', 'WShumaker@msc.edu'),
(22246, 'Ammie', 'Young', '703-280-2882', '4261 Lawman Avenue, Falls Church, Virginia(VA), 22042', 'AYoung', 'AYoung@msc.edu'),
(22247, 'Marie', 'Stjohn', '843-343-6094', '3734 Kessla Way,  Daniel Island, South Carolina(SC), 29492', 'MStjohn', 'MStjohn@msc.edu'),
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
(33384, 'Lois', 'Carlie', '601-788-2975', '4814 School House Road, Richton, Mississippi(MS), 39476', 'LCarlie', 'LCarlie@msc.edu'),
(33385, 'Gena', 'Darlie', '908-407-6557', '633 Stonepot Road, Piscataway, New Jersey(NJ), 08854 ', 'GDarlie', 'GDarlie@msc.edu'),
(33386, 'Krista', 'Heredia', '337-247-4037', '1593 Sherwood Circle, Lafayette, Louisiana(LA), 70506', 'KHeredia', 'KHeredia@msc.edu'),
(33387, 'Marilyn', 'Toothaker', '636-296-2940', '3208 Irving Place, Arnold, Missouri(MO), 63010', 'MToothaker', 'MToothaker@msc.edu'),
(33388, 'Keith', 'Westfall', '401-734-2071', '1126 Bond Street, Warwick, Rhode Island(RI), 02887', 'KWestfall', 'KWestfall@msc.edu'),
(33389, 'Derek', 'Wooley', '218-212-1945', '4970 Little Acres Lane, Duluth, Minnesota(MN), 55825', 'DWooley', 'DWooler@msc.edu'),
(33390, 'Harrison', 'Williams', '269-212-2702', '1661 Garrett Street, Grand Rapids, Michigan(MI), 49503', 'HWilliams@msc.edu', 'HWilliams'),
(33391, 'Mark', 'Dawes', '402-383-6967', '2089 Poling Farm Road, Hamburg, Nebraska(NE), 51640', 'MDawes', 'MDawes@msc.edu'),
(33392, 'Gilberto', 'Frazier', '419-729-5604', '4664 Hill Street, Toledo, Ohio(OH), 43611', 'GFrazier', 'GFrazier@msc.edu'),
(33393, 'Frances', 'Wyatt', '856-599-2591', '4418 Prospect Street, Camden, New Jersey(NJ), 08102', 'FWyatt', 'FWyatt@msc.edu'),
(33394, 'Nathan', 'Colosimo', '423-451-9242', '2681 Corbin Branch Road, Soddy Daisy, Tennessee(TN), 37403', 'NColosimo', 'NColosimo@msc.edu'),
(33395, 'Robert', 'Bert', ' 213-371-8820', '4104 Brannon Street, Los Angeles, California(CA), 90017', 'RBert', 'RBert@msc.edu'),
(33396, 'Delores', 'Northern', '651-356-4658', '2984 Bryan Avenue, Minneapolis, Minnesota(MN), 55406', 'DNorthern', 'DNorthern@msc.edu'),
(33397, 'Ralph', 'Reid', ' 740-527-2035', '298 Irving Road, Westerville, Ohio(OH), 43081', 'RReid', 'RReid@msc.edu'),
(33398, 'Margaret', 'Mungia', '425-790-7662', '672 Stockert Hollow Road, Tukwila, Washington(WA), 98168', 'MMungia', 'MMungia@msc.edu'),
(33399, 'Kristina', 'Stilia', ' 229-403-0250', '2921 Junkins Avenue, Albany, Georgia(GA), 31707', 'KStilia', 'KStilia@msc.edu'),
(33400, 'Jaime', 'King', '262-293-3554', '1288 Oakridge Farm Lane,  Milwaukee, Wisconsin(WI), 53212', 'JKing', 'JKing@msc.edu'),
(33401, 'John', 'Jackson', '415-662-1914', '4072 Boring Lane, Nicasio, California(CA), 94946', 'JJackson', 'JJackson@msc.edu'),
(33402, 'Deene', 'Maki', '662-457-6848', '4081 Mcwhorter Road,  Greenwood, Mississippi(MS), 38930', 'DMaki', 'DMaki@msc.edu'),
(33403, 'Shenita', 'Kinard', ' 740-441-9028', ' 2034 Robinson Lane, Gallipolis, Ohio(OH), 45631', 'SKinard', 'SKinard@msc.edu'),
(33404, 'Wilma', 'Cordray', '415-629-6343', '4744 Boring Lane, Oakland, California(CA), 94612', 'WCordray', 'WCordray@msc.edu'),
(33405, 'Ronald', 'Norton', '562-982-8752', ' 3829 Pin Oak Drive, Long Beach, California(CA), 90808', 'RNorton', 'RNorton@msc.edu'),
(33406, 'Stephanie', 'Kiser', ' 785-580-1088', '1670 Sigley Road, Topeka, Kansas(KS), 66608', 'SKiser', 'SKiser@msc.edu'),
(33407, 'John', 'Dis', '208-467-8252', ' 3864 Young Road, Nampa, Idaho(ID), 83651', 'JDis', 'JDis@msc.edu'),
(33408, 'Lynette', 'Cross', ' 907-678-5264', '1881 Timbercrest Road, Coldfoot Camp, Alaska(AK), 99701', 'LCross', 'LCross@msc.edu'),
(33409, 'Jimmy', 'Crigler', '440-395-9424', ' 4897 Vineyard Drive, Mayfield Heights, Ohio(OH), 44124', 'JCrigler', 'JCrigler@msc.edu'),
(33410, 'Karen', 'Schafer', '252-289-4412', ' 2562 Yorkshire Circle, Greenville, North Carolina(NC), 27834', 'KSchafer', 'KScafer'),
(33411, 'Sherry', 'Hillard', '651-636-4950', '536 B Street, New Brighton, Minnesota(MN), 55112', 'SHillard', 'SHillard@msc.edu'),
(33412, 'Marie', 'Fredrick', '641-316-0397', '332 Southern Avenue, Des Moines, Iowa(IA), 50309', 'MFredrick', 'MFredrick'),
(33413, 'Dennis', 'Gorman', '207-477-7110', '3150 Victoria Court, Milton Mills, Maine(ME), 03852', 'DGorman', 'DGorman@msc.edu'),
(33414, 'Stephen', 'Jackson', '703-909-4488', '2684 Forest Drive, Herndon, Virginia(VA), 22090', 'SJackson', 'SJackson'),
(33415, 'Rosalia', 'Ball', '216-647-8208', '3384 Parker Drive, Cleveland, Ohio(OH), 44114', 'RBall', 'RBall@msc.edu'),
(33416, 'Vicki', 'Soto', '740-912-0857', '4001 Old House Drive, Worthington, Ohio(OH), 43085', 'VSoto', 'VSoto@msc.edu'),
(33417, 'Nicholas', 'Thompson', '913-221-0718', '1115 Better Street, Kansas City, Kansas(KS), 66215', 'NThompson', 'NThompson@msc.edu'),
(33418, 'George', 'Ross', '916-284-7486', '71 Pearl Street, Sacramento, California(CA), 95826', 'GRoss', 'GRoss@msc.edu'),
(44441, 'Patricia ', 'Brown', '860-309-9554', '2516 Hart Street, Austin, Texas, 78723', 'PBrown', 'PBrown@msc.edu'),
(44442, 'Eveett', 'Freddy', '432-567-8990', '2321 Camber Street, Farmingdale, New York, 11234', 'Efreddy', 'aidan1998@gmail.com');

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
