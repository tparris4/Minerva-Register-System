-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 08:55 PM
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
  `Professor_ChairID` int(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `D_Name`, `D_Email`, `D_Location`, `D_Phone`, `D_Secretary`, `Professor_ChairID`) VALUES
(0, 'Test', 'Test', 'Test', 'Test', 'Test', 0),
(124, 'Math', 'MathDep@msc.edu', '100 Math Building', '214-669-7480', 'Thnah Pierce', 0),
(125, 'Biology', 'BiologyDept@msc.edu', '100 Science Building', '570-418-4913', 'Jayne Clarce', 0),
(126, 'Business', 'BusinessDept@msc.edu', '100 Business Building', '856-890-7925', 'Gerald Hicks', 0),
(127, 'Medical ', 'MedicalDept@msc.edu', '100 Medical Building', '325-447-1824', 'Robin Hardner', 0),
(128, 'Art', 'ArtDepartment@msc.edu', '400 Art Building', '270-835-1345', 'Edwin Villasenor', 0),
(129, 'Computer Science', 'CompSciDepartment@msc.edu', 'Computer Science Building', '478-338-3375', 'Brent Bolin', 0),
(130, 'English', 'EnglishDept@msc.edu', '100 English Building ', '240-578-5312', 'Joyce Reyes', 0),
(131, 'Humanities', 'HumanitiesDept@msc.edu', '100 Humanities Building', '727-204-9661', 'Denny Senes', 0),
(132, 'Music', 'MusicDept@msc.edu', '100 Music Building', '562-318--4908', 'Paula Cravens', 0);

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
(20000, 'test', 'test', 'test', 'test', 'test', 'test'),
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
(22248, 'Lyla', 'Santana', '313-539-4616', '3917 Woodbridge Lane, Detroit, Michigan(MI), 48219', 'LSantana', 'LSantana@msc.edu'),
(22249, 'Kristi', 'Fryer', '904-436-4814', '1837 Arrowood Drive, Jacksonville, Florida(FL), 32216', 'KFryer', 'KFryer@msc.edu'),
(22250, 'Kim', 'Hall', '801-717-7164', '1712 Hickory Street, Salt Lake City, Utah(UT), 84101', 'KHall', 'KHall@msc.edu'),
(22251, 'Scott', 'Spear', '508-347-9100', '4821 C Street, Sturbridge, Massachusetts(MA), 01566', 'SSpear', 'SSpear@msc.edu'),
(22252, 'Denise', 'Johnson', '979-228-2081', '3637 Fannie Street, Bryan, Texas(TX), 77803', 'DJohnson', 'DJohnson@msc.edu'),
(22253, 'Larry', 'Mann', '757-240-0802', '1164 Kildeer Drive, Newport News, Virginia(VA), 23601', 'LMann', 'LMann@msc.edu'),
(22254, 'Kurt', 'Williams', '260-441-0463', '104 Cessna Drive, Fort Wayne, Indiana(IN), 46816', 'KWilliams', 'KWilliams@msc.edu'),
(22255, 'Michael', 'Palmer', '763-243-6728', '1336 Willison Street, Minneapolis, Minnesota(MN), 55401', 'MPalmer', 'MPalmer@msc.edu'),
(22256, 'Amanda', 'Hender', '617-966-2875', '1696 Rainy Day Drive, Cambridge, Massachusetts(MA), 02141', 'AHender', 'AHender@msc.edu'),
(22257, 'Diana', 'Taylor', '517-626-9180', '3531 Haven Lane, Grand Ledge, Michigan(MI), 48837', 'DTaylor', 'DTaylor@msc.edu'),
(22258, 'Sadie', 'Cardone', '309-567-0478', '1575 Trainer Avenue, Sterling, Illinois(IL), 61081', 'SCardone', 'SCardone@msc.edu'),
(22259, 'Nicholas', 'Singleton', '270-773-1330', '1208 Coffman Alley, Cave City, Kentucky(KY), 42127', 'NSingleton', 'NSingleton@msc.edu'),
(22260, 'Thomas', 'Mendez', '202-616-2993', '1298 Goldcliff Circle, Washington, Washington DC(DC), 20005', 'TMendez', 'TMendez@msc.edu'),
(22261, 'Hailey', 'Alcala', '801-917-0358', '4879 Kemper Lane, Salt Lake City, Utah(UT), 84101', 'HAlcala', 'HAlcala@msc.edu'),
(22262, 'Roberto', 'Marshall', '559-207-3271', '1068 Center Street, Fresno, California(CA), 93721', 'RMarshall', 'RMarshall@msc.edu'),
(22263, 'Kim', 'Miller', '661-264-0256', '4165 Williams Avenue, Lake Los Angeles, California(CA), 93550', 'KMiller', 'KMiller@msc.edu'),
(22264, 'Brian', 'Smead', '240-379-9022', '4510 Pine Tree Lane, Frederick, Maryland(MD), 21701', 'BSmead', 'BSmead@msc.edu'),
(22265, 'Edward', 'Perkins', '313-658-2111', '4556 Tully Street, Livonia ,Michigan ,48150 ', 'Eperkins', 'Eperkins@msc.edu'),
(22266, 'Robert', 'Chase', '805-565-5471', '3371 Leisure Lane,Montecito , California, 93108', 'Rchase', 'Rchase@msc.edu'),
(22267, 'Ernest', 'Rogers', '203-817-7480', '1690 Raoul Wallenberg Place,New London ,Connecticut ,06320 ', 'Erogers', 'Erogers@msc.edu'),
(22268, 'Sue', 'Gardner', '205-649-9852', '4852 Strother Street,Birmingham ,Alabama ,35203 ', 'Sgardner', 'sgardner@msc.edu'),
(22269, 'Rosetta', 'Holt', '509-307-9951', '3200 Goodwin Avenue,Yakima ,Washington ,98901 ', 'Rholt', 'Rholt@msc.edu'),
(22270, 'Willa', 'Carlson', '305-876-1523', '4047 Arbutus Drive,Miami Springs ,Florida , 33166', 'Wcarlson', 'Wcarlson@msc.edu'),
(22271, 'Joe', 'Bell', '720-886-0768', '1117 Leo Street,Aurora ,Colorado ,80015 ', 'Jbell', 'Jbell@msc.edu'),
(22272, 'Savanna', 'Blassingame', '262-674-4215', '4085 Fairfield Road, West Allis, Wisconsin ,53227 ', 'Sblassingame', 'Sblassingame@msc.edu'),
(22273, 'Emilio', 'McClary', '502-287-3907', '997 Radford Street,Louisville ,Kentucky ,40229 ', 'Emcclary', 'Emcclary@msc.edu'),
(22274, 'Paul', 'Morrison', '941-289-6227', '2970 Lunetta Street,Fort Myers ,Florida ,33901 ', 'Pmorrison', 'Pmorrison@msc.edu'),
(22275, 'Leo', 'Whitford', '901-583-2565', '897 Burton Avenue, Memphins ,Tennessee , 38110', 'Lwhitford', 'Lwhitford@msc.edu'),
(22276, 'Robert', 'Powell', '801-336-3743', '1299 Walton Street, Salt Lake City ,Utah ,84104 ', 'Rpowell', 'Rpowell@msc.edu'),
(22277, 'Nancy', 'Simmons', '706-646-2147', '4122 Hart Country Lane,Thomaston ,Georgia ,30286 ', 'Nsimmons', 'Nsimmons@msc.edu'),
(22278, 'Phillip', 'Hulett', '608-879-1434', '263 Dark Hollow Road,Orfordville ,Wisconsin , 53576', 'Phullett', 'Phullett@msc.edu'),
(22279, 'Adam', 'Pinson', '954-257-6126', '3197 Sycamore Fork Road,Ft Lauderdale , Florida ,33311 ', 'Apinson', 'Apinson@msc.edu'),
(22280, 'Danielle', 'Gurley', '765-677-1742', '4763 Winifred Way,Marion , Indiana ,46953 ', 'Dgurley', 'Dgurley@msc.edu'),
(22281, 'Anita', 'Sellers', '912-810-0505', '2307 Yorkie Lane,Jesup ,Georgia , 31546', 'Asellers', 'Asellers@msc.edu'),
(22282, 'Donna', 'Daugherty', '314-999-4020', '4203 Gandy Street,Saint Louis , Missouri ,63146 ', 'Ddaugherty', 'Ddaugherty@msc.edu'),
(22283, 'Marilyn', 'Beltran', '903-790-9237', '263 Hall Place,Pine Acres , Texas , 75644', 'Mbeltran', 'Mbeltran@msc.edu'),
(22284, 'Mark', 'Ferrante', '870-348-7124', '4006 Fittro Street, Kingsland ,Arkansas ,71652 ', 'Mferrante', 'Mferrante@msc.edu'),
(22285, 'Keith', 'Kelly', '208-255-1795', '3304 Modoc Alley,Sandpoint ,Idaho ,83864 ', 'Kkelly', 'Kkelly@msc.edu'),
(22286, 'Pablo', 'Tubbs', '469-235-9955', '3135 Whitetail Lane,Dallas ,Texas ,75234 ', 'Ptubbs', 'Ptubbs@msc.edu'),
(22287, 'Pamela', 'Provencal', '407-321-0163', '1854 Barnes Street,Sanford , Florida , 32771', 'Pprovencal', 'Pprovencal@msc.edu'),
(22288, 'Roy', 'Johnson', '618-244-0786', '3568 Ross Street,Mount Vernon ,Illinois , 62864', 'Rjohnson', 'Rjohnson@msc.edu'),
(22289, 'Michael', 'Rowden', '479-277-0240', '144 Green Hill Road,Bentonville , Arkansas ,72712 ', 'Mrowden', 'Mrowden@msc.edu'),
(22290, 'Carlton', 'Brown', '253-235-4503', '4115 Fort Street, Seattle ,Washington ,98109 ', 'Cbrown', 'Cbrown@msc.edu'),
(22291, 'Kimberly', 'Garrow', '240-619-2037', '4956 Chatham Way,Reston ,Maryland ,22091 ', 'Kgarrow', 'Kgarrow@msc.edu'),
(22292, 'Catina', 'James', '712-662-1625', '1440 Brooke Street,Houston ,Texas ,77025 ', 'Cjames', 'Cjames@msc.edu'),
(22293, 'Peter', 'Graddy', '832-730-5466', '3820 Werninger Street,Houston ,Texas ,77002 ', 'Pgraddy', 'Pgraddy@msc.edu'),
(22294, 'Ronald', 'Lueck', '308-563-8253', '429 Kyle Street,Heartwell ,Nebraska ,68945 ', 'Rlueck', 'Rlueck@msc.edu'),
(22295, 'Michael', 'Kingston', '714-458-8483', '1967 Liberty Avenue,Burbank ,California ,91505 ', 'Mkingston', 'Mkingston@msc.edu'),
(22296, 'Richard', 'Morgan', '218-273-7236', '1515 Ashmor Drive,Kettle River , Minnesota ,55757 ', 'Rmorgan', 'Rmorgan@msc.edu'),
(22297, 'Ryan', 'Edge', '503-236-9310', '1272 Gateway Road,Portland ,Oregon , 97214', 'Redge', 'Redge@msc.edu'),
(22298, 'Mona', 'Lawrence', '270-846-2136', '457 Crosswind Drive Bowling Green ,Kentucky , 42101', 'Mlawrence', 'Mlawrence@msc.edu'),
(22299, 'Jesus', 'Lindsey', '805-676-3370', '3693 Creekside Lane,Ventura ,California ,93003 ', 'Jlindsey', 'Jlindsey@msc.edu'),
(22300, 'Manual', 'Sager', '847-996-5398', '4919 Oak Avenue,Vernon Hills , Illinois ,60061 ', 'Msager', 'Msager@msc.edu'),
(22301, 'Mary', 'Duffy', '430-255-3493', '73 Scenicview Drive,Farmers Branch ,Texas ,75244 ', 'Mduffy', 'Mduffy@msc.edu'),
(22302, 'Frank', 'Dills', '318-680-6532', '3577 Emerson Road,Shreveport ,Louisiana ,71101 ', 'Fdills', 'Fdills@msc.edu'),
(22303, 'Betty', 'Elliott', '801-995-0763', '4649 Walton Street,Provo ,Utah ,84606 ', 'Belliott', 'Belliott@msc.edu'),
(22304, 'Travis', 'Patton', '515-474-8287', '1845 Hazelwood Avenue,Ogden ,Iowa ,50212 ', 'Tpatton', 'Tpatton@msc.edu'),
(22305, 'Elisa', 'Huffman', '917-646-5815', '3604 Hanover Street,New York ,New York ,10016 ', 'Ehuffman', 'Ehuffman@msc.edu'),
(22306, 'Roy', 'Fairchild', '310-554-8765', '1598 Armbrester Driver,Los Angeles ,California , ', 'Rfairchild', 'Rfairchild@msc.edu'),
(22307, 'Susan', 'Ratcliff', '830-620-2286', '2853 Crestview Terrace, New Braunfels ,Texas ,78130 ', 'Sratcliff', 'Sratcliff@msc.edu'),
(22308, 'Alberta', 'Mitchell', '440-570-0611', '2155 Bingamon Road,Cleveland ,Ohio ,44114 ', 'Amitchell', 'Amitchell@msc.edu'),
(22309, 'Donald', 'Garcia', '662-642-1033', '3231 Rafe Lane,Jackson ,Mississippi ,39211 ', 'Dgarcia', 'Dgarcia@msc.edu'),
(22310, 'Caroline', 'Tolley', '615-476-1302', '4178 Wilkinson Street,Nashville ,Tennessee ,37209 ', 'Ctolley', 'Ctolley@msc.edu'),
(22311, 'Richard', 'Summerville', '740-203-8850', '1945 Bombardier Way,Columbus ,Ohio ,43212 ', 'Rsummerville', 'Rsummerville@msc.edu'),
(22312, 'James', 'McElloy', '515-549-2965', '3707 Nutters Barn Lane,Moorland ,Iowa ,50566 ', 'Jmcelloy', 'Jmcelloy@msc.edu'),
(22313, 'Lissette', 'Chambers', '860-208-6202', '174 Counts Lane,New Haven ,Connecticut , 06511', 'Lchambers', 'Lchambers'),
(22314, 'Julie', 'Berkley', '806-374-7117', '4222 Hilltop Drive,Amarillo ,Texas ,7910 ', 'Jberkley', 'Jberkley@msc.edu'),
(22315, 'Tad', 'Smith', '714-757-4030', '4873 Alpaca Way,Irvine ,California ,92614 ', 'Tsmith', 'Tsmith@msc.edu'),
(22316, 'Nora', 'Tracy', '956-494-3077', '128 Hemlock Lane,Harlingen ,Texas ,78550 ', 'Ntracy', 'Ntracy@msc.edu'),
(22317, 'Kris', 'George', '515-391-9691', '784 Hazelwood Avenue,Jefferson ,Iowa , 50129', 'Kgeorge', 'Kgeorge@msc.edu'),
(22318, 'Mitzi', 'Hale', '208-781-5989', '1350 Seltice Way,Horseshoe Bend , Idaho , 83629', 'Mhale', 'Mhale@msc.edu'),
(22319, 'Edwin', 'Colon', '405-616-3013', '753 Hott Street,Oklahoma City ,Oklahoma , 73109', 'Ecolon', 'Ecolon@msc.edu'),
(22320, 'Nikita', 'Johnson', '662-359-8652', '3639 Browton Road,Meridian ,Mississippi ,39301 ', 'Njohnson', 'Njohnson@msc.edu'),
(22321, 'Bradley', 'Ramos', '510-889-5960', '1492 Station Street,Hayward ,California ,95411 ', 'Bramos', 'Bramos@msc.edu'),
(22322, 'John', 'Jacob', '718-472-1880', '2867 Chruch Street, Queens ,New York , 11101', 'Jjacob', 'Jjacob@msc.edu'),
(22323, 'Stephanie', 'Erti', '612-709-1244', '3470 Jewell Road,Minneapolis ,Missesota ,55404 ', 'Serti', 'Serti@msc.edu'),
(22324, 'Christopher', 'Parrott', '703-998-4408', '231 Broadcast Drive,Arlington ,Virginia , 22206', 'Cparrott', 'Cparrott@msc.edu'),
(22325, 'Tina', 'Chambers', '405-691-2675', '969 Hott Street,Oklahoma City ,Oklahoma , ', 'Tchambers', 'Tchambers@msc.edu'),
(30000, 'test', 'test', 'test', 'test', 'test', 'test'),
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
(33419, 'Beatrice', 'Thomas', '636-667-7063', '1078 Court Street,Maryland Heights, Missouri ,6043 ', 'Bthomas', 'Bthomas@msc.edu'),
(33420, 'Ruth', 'OldField', '269-355-5327', '381 Shingleton Rd,Grand Rapids,Michigan,49503 ', 'Roldfied', 'Roldfield@msc.edu'),
(33421, 'Brandy', 'Rahn', '210-369-6416', '1188 Weekley Street,San Antonio, Texas,78205', 'Brahn', 'Brahn@msc.edu'),
(33422, 'Ester', 'Dryden', '503-569-5437', '1928 Godfrey Street,Tigard ,Oregon ,97223 ', 'Edryden', 'Edryden@msc.edu'),
(33423, 'Elisabeth', 'Hall', '732-802-0216', '4279 Pinnickinnick Street,Carteret ,New Jersey ,07008 ', 'EHall', 'Ehall@msc.edu'),
(33424, 'Yvette', 'Passarelli', '917-378-8571', '4315 Bicetown Road, New York ,New York ,10013 ', 'YPassarelli', 'YPassarelli@msc.edu'),
(33425, 'Ralph', 'Long', '215-937-4466', '4313 Hiddenview Drive,Philadelphia ,Pennsylvania ,19153 ', 'Ylong', 'Ylong@msc.edu'),
(33426, 'John', 'Larson', '712-856-4221', '2067 Clousson road, Des Moise ,Iowa ,50309 ', 'Jlarson', 'Jlarson@msc.edu'),
(33427, 'Jason', 'Bourne', '718-528-3434', '324 Elmont Road, Nassau County, New York ,11003 ', 'Jbourne', 'Jbourne@msc.edu'),
(33428, 'Ruben', 'Anderson', '218-528-4024', '4482 Terra Cotta Street, Badger ,Minnesota ,56714 ', 'Randerson', 'Randerson@msc.edu'),
(33429, 'James', 'Clinkscales', '816-453-9793', '1793 Tree Frong Lane, Kansas City ,Missouri ,64119 ', 'Jclinkscales', 'Jclinkscales@msc.edu'),
(33430, 'Crystal', 'Swinton', '772-464-0211', '1282 Travis Street, Fort Pierce ,Florida ,34950 ', 'Cswinton', 'Cswinton@msc.edu'),
(33431, 'Catherine', 'Lee', '360-346-9410', '2400 Terra Street, Elma , Washington ,98541 ', 'Clee', 'Clee@msc.edu'),
(33432, 'Bertha', 'Bolduc', '816-227-2667', '244 Nutter Street,Edgerton , Missouri ,64444 ', 'Bbolduc', 'Bbolduc@msc.edu'),
(33433, 'George', 'Wagner', '715-510-5062', '1431 Lynn Avenue,Stevens Point , Wisconsin ,54481 ', 'Gwagner', 'Gwagner@msc.edu'),
(33434, 'Gary', 'Hugh', '574-634-8550', '4926 Sand Fork Road, South Bend , Indiana , 46601 ', 'Ghugh', 'Ghugh@msc.edu'),
(33435, 'Jonathan', 'Durant', '720-881-1232', '2521 Leo Street, Denver ,Colorado ,80202 ', 'Jdurant', 'Jdurant@msc.edu'),
(33436, 'Harold', 'Edson', '403-765-6870', '3567 tibbs Avenue,Wibaux ,Montana ,59353 ', 'Hedson', 'Hedson@msc.edu'),
(33437, 'Russel', 'Costello', '361-227-6090', '497 boone Street,Corpus Christi , Texas ,78476 ', 'Rcostello', 'Rcostello@msc.edu'),
(33438, 'Kevin', 'Goetz', '540-213-5848', '4920 Maxwell Farm Road,Stauton ,Virginia ,24401 ', 'Kgoetz', 'Kgoetz@msc.edu'),
(33439, 'George', 'Robinson', '740-518-8885', '2045 Irving Road,Worthington ,Ohio ,43085 ', 'Grobinson', 'Grobinson@msc.edu'),
(33440, 'Hilda', 'Pratt', '810-953-7881', '1445 Tuna Street,Grand Blanc ,Michigan ,48439 ', 'Hpratt', 'Hpratt@msc.edu'),
(33441, 'Elizabeth', 'Little', '325-879-0813', '1742 Anthony Avenue, Big Valley , Texas ,76801 ', 'Elittle', 'Elittle@msc.edu'),
(33442, 'Kevin', 'Meyers', '620-895-7659', '463 Preston Street, Cullison ,Kansas ,67034 ', 'Kmeyers', 'Kmeyers@msc.edu'),
(33443, 'John', 'Doyon', '419-852-0811', '3944 Upland Avenue,Celina ,Ohio ,45822 ', 'Jdoyon', 'Jdoyon@msc.edu'),
(33444, 'Helene', 'Lewis', '510-696-8450', '1168 Clifford Street,San Leandro ,California ,94578 ', 'Hlewis', 'Hlewis@msc.edu'),
(33445, 'Beverly', 'Patterson', '323-330-6334', '4623 Norman Street,Los Angeles , California ,90014 ', 'Bpatterson', 'Bpatterson@msc.edu'),
(33446, 'Johnathan', 'Griffin', '319-895-4575', '4346 Progress Way, Mount Vernon ,Iowa ,52314 ', 'Jgriffin', 'Jgriffin@msc.edu'),
(33447, 'Michael', 'Faulkner', '319-236-8816', '1344 Tecumsah Lane,Waterloo ,Iowa ,50703 ', 'Mfaulkner', 'Mfaulkner@msc.edu'),
(33448, 'Cheryl', 'Burke', '206-914-1195', '1523 Raccoon Run,Seattle ,Washington ,98133 ', 'Cburke', 'Cburke@msc.edu'),
(33449, 'Julia', 'Forman', '815-427-7724', '3906 Lowland Drive, St Anne ,Illinois ,60964 ', 'Jforman', 'Jforman@msc.edu'),
(33450, 'Sarah', 'Rowan', '718-289-7957', '3348 Alfred Drive, Rego Park Queens, New York ,11734 ', 'Srowan', 'Srowan@msc.edu'),
(33451, 'Rudolph', ' Broughton', '626-940-7506', '4981 Providence Lane,Pomona ,California , 91766', 'Rbroughton', 'Rbroughton@msc.edu'),
(33452, 'Omega', 'Huber', '971-409-9364', '2294 Hope Street, Portland ,Oregon ,97230 ', 'Ohuber', 'Ohuber@msc.edu'),
(33453, 'Jessie', 'Sims', '801-868-8031', '3212 Kemper Lane,Orem ,Utah ,84058 ', 'Jsims', 'Jsims@msc.edu'),
(33454, 'Jill', 'Avant', '218-782-3561', '786 Eagle Lane, Greenbush ,Minnesota ,56726 ', 'Javant', 'Javant@msc.edu'),
(33455, 'Jeffrey', 'Banks', '251-404-2882', '1814 George Avenue,Mobile ,Alabama ,36693 ', 'Jbanks', 'Jbanks@msc.edu'),
(33456, 'Juan', 'Shirley', '308-432-2788', '3759 Kyle Street, Chadron ,Nebraska ,69337 ', 'Jshirley', 'Jshirley@msc.edu'),
(33457, 'Jonathan', 'Thompson', '518-893-0903', '1593 West Virginia Avenue, Greenfield Ctr ,New York ,12833 ', 'Jthompson', 'Jthompson@msc.edu'),
(33458, 'Jerome', 'Torres', '419-966-0256', '2903 Nixon Avenue,Maumee ,Ohio ,43537 ', 'Jtorres', 'Jtorres@msc.edu'),
(33459, 'Walter', ' Rudolph', '601-854-2124', '2025 Devils Hill Road, Pelahatchie ,Mississippi ,39145 ', 'Wrudolph', 'Wrudolph@msc.edu'),
(33460, 'James', 'Strayhorn', '218-839-4987', '2900 Eagle Lane, Wadena , Minnesota ,56482 ', 'Jstrayhorn', 'Jstrayhorn@msc.edu'),
(33461, 'Jeffrey', 'Abdul', '603-659-7989', '2507 Milford Street,Newmarket ,New Hampshire ,03857 ', 'Jabdul', 'Jabdul@msc.edu'),
(33462, 'Gina', 'Jones', '772-201-3013', '3769 Elkview Drive, West Palm Beach ,Florida ,33410 ', 'Gjones', 'Gjones@msc.edu'),
(33463, 'Darnell', 'King', '410-572-3642', '4147 Cambridge Place, Salisbury ,Maryland ,21875 ', 'Dking', 'Dking@msc.edu'),
(33464, 'Rachel', 'Schechter', '770-694-0450', '1521 Pine Garden Lane,Atlanta ,Georgia ,30339 ', 'Rschechter', 'Rschechter@msc.edu'),
(33465, 'Robert', 'Marlowe', '828-775-4040', '392 Watson Lane,Asheville ,North Carolina ,28803 ', 'Rmarlowe', 'Rmarlowe@msc.edu'),
(33466, 'Glenn', 'Russo', '347-284-9012', '3887 My Drive,New York ,New York ,10013 ', 'Grussso', 'Grusso@msc.edu'),
(33467, 'Wallace', 'Hulbert', '703-256-9370', '2728 Lawman Avenue,Alexandria , Virginia ,22312 ', 'Whuldbert', 'Whulbert@msc.edu'),
(33468, 'Connie', 'Tanaka', '906-334-1995', '1933 Wood Duck Drive, Pelkie , Michigan , 49958 ', 'Ctanaka', 'Ctanaka@msc.edu'),
(33469, 'Jeremy', 'Turner', '301-680-8355', '2294 Adams Avenue, Silver Springs , Maryland , 20904 ', 'Jturner', 'Jturner@msc.edu'),
(33470, 'Paul', 'Anderson', '404-200-6221', '1730 Post Farm Road, Norcross , Georgia ,30092 ', 'Panderson', 'Panderson@msc.edu'),
(33471, 'Tracy', 'Tyler', '586-884-9980', '383 reppert Coal Road, Detroit , Michigan , 48226', 'Ttyler', 'Ttyler@msc.edu'),
(33472, 'Charlie', 'Sutton', '804-920-7562', '131 Eden Drive, Richmond ,Virginia , 23224 ', 'Csutton', 'Csutton@msc.edu'),
(33473, 'Donna', 'Davis', '650-300-8092', '4665 Ella Street, Oakland , California , 94612 ', 'Ddavis', 'Ddavis@msc.edu'),
(33474, 'Carlos', ' Horak', '203-654-1857', '674 Asylum Avenue, Greenwich , Connecticut , 06830 ', 'Chorak', 'Chorak@msc.edu'),
(33475, 'Kristy', 'Murphy', '941-345-7677', '2229 Lunetta Street, Tampa , Florida , 33624 ', 'Kmurphy', 'Kmurphy@msc.edu'),
(33476, 'Doris', 'Jones', '443-342-8416', '4009 Calvin Street, Baltimore , Maryland , 21202', 'Djones', 'Djones@msc.edu'),
(33477, 'Kelly', 'Begay', '605-375-7389', '1590 Andy Street, Buffalo , South Dakota , 57720', 'Kbegay', 'Kbegay@msc.edu'),
(33478, 'Brian', 'Hammock', '309-375-2524', '3293 Coburn Hollow Road, Wataga , Illinois , 61488 ', 'Bhammock', 'Bhammock@msc.edu'),
(33479, 'Romona', 'Santiago', '260-968-4041', '178 Pearcy Avenue, Fort Wayne , Indiana , 46805 ', 'Rsantiago', 'Rsantiago@msc.edu'),
(33480, 'George', 'Hardman', '413-786-2356', '2128 Trouser Leg Road , Agawam , Massachussetts ,01001 ', 'Ghardman', 'Ghardman@msc.edu'),
(33481, 'Samuel', 'Colman', '918-605-3206', '1554 Camel Back Road, Tulsa ,Oklahoma ,74120 ', 'Scolman', 'Scolman@msc.edu'),
(33482, 'Thelma', 'Hernandez', '304-219-8877', '2537 Tavern Place, Wheeling , West Virginia , 26003 ', 'Thernandez', 'Thernandez@msc.edu'),
(33483, 'Carl', 'Mitchell', '860-286-8377', '4669 Hart Street, Bloomfield , Connecticut ,06002 ', 'Cmitchell', 'Cmitchell@msc.edu'),
(33484, 'James', 'Witkins', '814-682-1560', '2159 Spadafore Drive, State College , Pennsylvania ,16803 ', 'Jwitkins', 'Jwitkins@msc.edu'),
(33485, 'Richard', 'Feinberg', '216-807-7899', '4606 Sunny Glen Lane, Warrensvilles Heights , Ohio , 44128', 'Rfeinberg', 'Rfeinberg@msc.edu'),
(33486, 'Consuelo', 'Hamilton', '601-583-6968', '639 Walnut Street,Hattiesburg , Mississippi , 39401', 'Chamilton', 'Chamilton@msc.edu'),
(33487, 'James', 'Donogue', '858-454-6742', '917 Pike Street, La Jolla , California , 92037 ', 'Jdonogue', 'Jdonogue@msc.edu'),
(33488, 'Alison', 'Belcher', '856-774-9572', '1881 Valley Street, Maple Shade , New Jersey , 08052', 'Abelcher', 'Abelcher@msc.edu'),
(33489, 'Larry', 'Gomez', '704-425-9800', '3302 Kooter Lane, Charlotte , North Carolina , 28202', 'Lgomez', 'Lgomez@msc.edu'),
(33490, 'Mary', 'Holder', '636-287-0480', '4271 Irving Place, Arnold , Missouri ,63010 ', 'Mholder', 'Mholder@msc.edu'),
(33491, 'Forrest', 'Collier', '478-234-9133', '2438 Oakridge Lane, Macon , Georgia ,31206 ', 'Fcollier', 'Fcollier@msc.edu'),
(33492, 'Edward', 'Negron', '502-918-8534', '4522 Karen Lane, Radcliff , Kentucky ,40180 ', 'Enegron', 'Enegron@msc.edu'),
(33493, 'Frank', 'Bravo', '304-650-7528', '37952 Hall Valley Drive, Wheeling , West Virginia , 26003', 'Fbravo', 'Fbravo@msc.edu'),
(33494, 'Helen', 'Daniels', '305-952-1690', '3055 Warner Street,Miami , Florida ,33128 ', 'Hdaniels', 'Hdaniels@msc.edu'),
(33495, 'Miranda', 'Avilla', '260-982-6887', '317 Pearcy Avenue, North Manchester , Indiana ,46962 ', 'Mavilla', 'Mavilla@msc.edu'),
(33496, 'Barry', 'Spencer', '', '4752 Holden Street, Royalton ,Illinois ,62983 ', 'Bspencer', 'Bspencer@msc.edu'),
(33497, 'Deena', 'Espinoza', '847-657-8077', '4686 Vine Street, West Chicago , Illinois ,60185 ', 'Despinoza', 'Despinoza@msc.edu'),
(33498, 'Madeline', 'Robinson', '715-270-3377', '1178 Cameron Road, Buffalo , New York ,14214 ', 'Mrobinson', 'Mrobinson@msc.edu'),
(33499, 'James', 'Park', '804-571-3931', '4338 Biddie Lane, Richmond , Virginia ,23224 ', 'Jpark', 'Jpark@msc.edu'),
(33500, 'Roger', 'Pilcher', '740-979-3367', '3474 Old House Drive, Saint Clairsville , Ohio ,43950 ', 'Rpilcher', 'Rpilcher@msc.edu'),
(33501, 'Stephen', ' Scales', '828-731-2530', '4237 Goosetown Drive, Asheville ,North Carolina ,28801 ', 'Sscales', 'Scales@msc.edu'),
(33502, 'Michael', 'Gomez', '785-627-6494', '276 Sigley Road, Palco , Kansas ,67657 ', 'Mgomez', 'Mgomez@msc.edu'),
(33503, 'Dennis', 'Chris', '567-429-6982', '3221 Carriage Lane, Toledo ,Ohio ,43615 ', 'Dchris', 'Dchris@msc.edu'),
(33504, 'Timothy', 'Wolff', '706-390-9541', '1503 Davis Street,Columbus ,Georgia , 31903', 'Twolff', 'Twolff@msc.edu'),
(33505, 'Tamara', 'Peoples', '319-457-4906', '4940 Bailey Drive, Cedar Rapids ,Iowa , 52404', 'Tpeoples', 'Tpeoples@msc.edu'),
(33506, 'Carolyn', 'Marquez', '662-236-3865', '4735 Oxford Court, Oxford ,Mississippi ,38655 ', 'Cmarquez', 'Cmarquez@msc.edu'),
(33507, 'Barbara', 'Torbet', '443-679-2801', '1746 Hewes Avenue, Baltimore , Maryland ,21201 ', 'Btorbet', 'Btorbet@msc.edu'),
(33508, 'Mary', 'Cross', '601-380-7019', '3401 Eastland Avenue,Jackson ,Mississippi ,39206 ', 'Mcross', 'Mcross@msc.edu'),
(33509, 'Ruby', 'Rowan', '619-265-6775', '4396 Holden Street, San Diego , California ,92115 ', 'Rrowan', 'Rrowan@msc.edu'),
(33510, 'Lucille', 'Ramsey', '713-842-1830', '3845 Margaret Street,Houston ,Texas ,77021 ', 'Lramsey', 'Lramsey@msc.edu'),
(33511, 'Jimmie', 'Chapman', '916-980-0380', '3207 Woodland Terrace, Sacramento ,California ,95814 ', 'Jchapman', 'Jchapman@msc.edu'),
(33512, 'James', 'Gibbs', '865-216-9711', '1358 Brown Avenue,Knoxville , Tennessee ,37917 ', 'Jgibbs', 'Jgibbs@msc.edu'),
(33513, 'Dorothy', 'Pink', '630-424-2371', '2720 Hickman Street,Lombard ,Illinois ,60148 ', 'Dpink', 'Dpink@msc.edu'),
(33514, 'Trevor', 'Durkin', '620-504-9591', '3854 Oliverio Drive,Mcpherson ,Kansas , 67460', 'Tdurkin', 'Tdurkin@msc.edu'),
(33515, 'Cecelia', 'Young', '319-892-3076', '619 Progress Way,Cedar Rapids ,Iowa ,52404 ', 'Cyoung', 'Cyoung@msc.edu'),
(33516, 'Eric', 'Chaffins', '786-390-6957', '4126 Rinehart Road, Fort Lauderdale , Florida , 33311', 'Echaffins', 'Echaffins@msc.edu'),
(33517, 'Cherri', 'Novoa', '302-732-7870', '4872 Maud Street,Dagsboro , Delaware ,19939 ', 'Cnovoa', 'Cnovoa@msc.edu'),
(33518, 'Tony', 'Rivera', '914-209-9053', '1610 Lake Forest Drive, New York ,New York ,10004 ', 'Trivera', 'Trivera@msc.edu'),
(33519, 'Maria', 'Soo', '310-493-0196', '3895 Armbrester Drive,Gardena ,California ,90247 ', 'Msoo', 'Msoo@msc.edu'),
(33520, 'Treva', 'Wolfe', '856-772-0206', '4539 Valley Street,Laurel Springs ,New Jersey , 08021', 'Twolfe', 'Twolfe@msc.edu'),
(33521, 'Bennie', 'Jones', '951-845-5900', '1354 Murphy Court,Beaumont ,California , 92223', 'Bjones', 'Bjones@msc.edu'),
(33522, 'Amanda', 'Landry', '336-712-7682', '3488 Jones Avenue,Winston Salem ,North Carolina ,27012 ', 'Alandry', 'Alandry@msc.edu'),
(33523, 'Kenneth', 'Overbey', '231-838-0372', '3939 Bee Street, Traverse City , Michigan , 49686', 'Koverbey', 'Koverbey@msc.edu'),
(33524, 'Johnnie', 'Gonzales', '630-243-3691', '2727 Walkers Ridge Way,Lemont ,Illinois ,60439 ', 'Jgonzales', 'Jgonzales@msc.edu'),
(33525, 'Beverly', 'Smith', '631-922-6835', '1033 Fieldcrest Road, Bohemia ,New York ,11716 ', 'Bsmith', 'Bsmith@msc.edu'),
(33526, 'Robert', 'Henry', '270-205-1188', '3345 Broaddus Avenue, Madinsonville ,Kentucky ,42431 ', 'Rhenry', 'Rhenry@msc.edu'),
(33527, 'Kenneth', 'Wilson', '440-838-7655', '1089 Flynn Street, Breckvilles , Ohio ,44141 ', 'Kwilson', 'Kwilson@msc.edu'),
(33528, 'Danielle', 'Chavez', '443-799-3025', '2539 Green Gate Lane,Columbia ,Maryland ,21045 ', 'Dchavez', 'Dchavez@msc.edu'),
(33529, 'Edwin', 'Morris', '828-850-7491', '1721 Watson Lane, Matthews ,North Carolina ,28105 ', 'Emorris', 'Emorris@msc.edu'),
(33530, 'Mark', 'Thompsom', '218-838-9575', '3229 Eagle Lane, Blackduck , Minnesota ,56630 ', 'Mthompson', 'Mthompson@msc.edu'),
(33531, 'Terence', 'Cornelison', '580-670-6867', '523 Simpson Square,Oklahoma City , Oklahoma ,73102 ', 'Tcorneliso', 'Tcorneliso@msc.edu'),
(33532, 'Mac', 'Rosin', '303-764-0576', '1481 Mckinley Avenue,Denver ,Colorado ,80218 ', 'Mrosin', 'Mrosin@msc.edu'),
(33533, 'Ladonna', 'Arango', '404-433-0025', '4361 Clement Street,Atlanta ,Georgia ,30303 ', 'Larango', 'Larango@msc.edu'),
(33534, 'Donald', 'Hill', '530-404-7513', '4331 Riverwood Drive, Redding ,California ,96001 ', 'Dhill', 'Dhill@msc.edu'),
(33535, 'Norma', 'Hannan', '718-622-6090', '11419 Briercliff Road,Brooklyn ,New York ,11238 ', 'Nhannan', 'Nhannan@msc.edu'),
(33536, 'David', 'Armstrong', '518-399-1314', '3413 Hardesty Street, East Glenville , New York ,12302 ', 'Darmstrong', 'Darmstrong@msc.edu'),
(33537, 'Alejandro', 'Stanford', '212-331-0544', '2885 Farnum Road, New York ,New York ,10004 ', 'Astanford', 'Astandford@msc.edu'),
(33538, 'James', 'Carrillo', '601-961-4136', '4418 Washington Avenue,Jackson , Mississippi , 39201', 'Jcarrillo', 'Jcarrillo@msc.edu'),
(33539, 'Robert', 'Bugg', '423-229-0891', '56 Nixon Avenue, Kingsport ,Tennessee ,37660 ', 'Rbugg', 'Rbugg@msc.edu'),
(33540, 'Edwin', 'Jacques', '972-761-1586', '2570 Charla Lane,Richardson ,Texas ,75081 ', 'Ejacques', 'Ejacques@msc.edu'),
(33541, 'Nelda', 'Gray', '303-553-5863', '4702 Sampson Street,Denver ,Colorado ,80221 ', 'Ngray', 'Ngray@msc.edu'),
(33542, 'Mike', 'Ross', '812-989-5527', '3128 Bernardo Street,New Albany ,Indiana ,47150 ', 'Mross', 'Mross@msc.edu'),
(33543, 'Esmeralda', 'Clay', '775-236-2396', '3852 Rockford Road,Reno ,Nevada ,89501 ', 'Eclay', 'Eclay@msc.edu'),
(33544, 'Diane', 'Buckingham', '260-715-6127', '1178 Pearcy Avenue, Fort Wayne , Idiana ,46804 ', 'Dbuckingham', 'Dbuckingham@msc.edu'),
(33545, 'Hong', 'April', '415-778-7656', '1874 Jim Rosa Lane, San Francisco ,California , 94143', 'Hapril', 'Hapril@msc.edu'),
(33546, 'Susan', 'Broom', '404-684-5298', '1938 Despard Street, East Point , Georgia ,30344 ', 'Sbroom', 'Sbroom@msc.edu'),
(33547, 'Doyle', 'Brunette', '847-377-3814', '1581 Johnston Road, Chicago ,Illinois ,60606 ', 'Dbrunette', 'Dbrunetter@msc.edu'),
(33548, 'Richard', 'Chaney', '323-857-7144', '3696 Hillhaven Drive,Los Angeles , California ,90036 ', 'Rchaney', 'Rchaney@msc.edu'),
(33549, 'Judy', 'Craig', '906-362-2001', '1013 Wood Duck Drive,Iron Mountain ,Michigan ,49801 ', 'Jcraig', 'Jcraig@msc.edu'),
(33550, 'Edward', 'Pinzon', '718-601-5311', '4628 Longview Avenue, Bronx , New York ,10463 ', 'Epinzon', 'Epinzon@msc.edu'),
(33551, 'Edward', 'Fisher', '417-555-8350', '1392 Twin House Lane,Springfield ,Missouri ,65806 ', 'Efisher', 'Efisher@msc.edu'),
(33552, 'Ken', 'Phillips', '310-887-4002', '3831 Prospect Valley Road, Beverly Hills , California ,90210 ', 'Kphillips', 'Kphillips@msc.edu'),
(33553, 'Jeffrey', 'Hayes', '847-941-0585', '3520 Oak Avenue, Chicago ,Illinois , 60605', 'Jhayes', 'Jhayes@msc.edu'),
(33554, 'Katherine', 'Moreland', '219-367-3656', '3955 Glenwood Avenue,Garfield Heights ,Ohio ,44128 ', 'Kmoreland', 'Kmoreland@msc.edu'),
(44441, 'Patricia ', 'Brown', '860-309-9554', '2516 Hart Street, Austin, Texas, 78723', 'PBrown', 'PBrown@msc.edu'),
(44442, 'Eveett', 'Freddy', '432-567-8990', '2321 Camber Street, Farmingdale, New York, 11234', 'Efreddy', 'aidan1998@gmail.com');

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
