-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2019 at 10:13 PM
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
(1111, 123, 123, 'test'),
(11111, 123, 123, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `advisor`
--

CREATE TABLE `advisor` (
  `A_Facu_ID` int(11) NOT NULL,
  `A_Stud_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `advisor`
--

INSERT INTO `advisor` (`A_Facu_ID`, `A_Stud_ID`) VALUES
(22241, 33345),
(22243, 33350),
(22244, 33344),
(22245, 33352),
(22246, 33346),
(22247, 33347),
(22258, 33349),
(22259, 33351),
(22260, 33353),
(22261, 33371),
(22262, 33352),
(22263, 33360),
(22244, 33355),
(22244, 33343),
(22244, 33339),
(22244, 33354),
(22241, 33336),
(22241, 33506),
(22241, 33507),
(22241, 33510),
(22241, 33512),
(22241, 33518),
(22241, 33519),
(22241, 33520),
(22260, 33398),
(22260, 33424),
(22260, 33543),
(22260, 33544),
(22260, 33546),
(22260, 33551),
(22243, 33415),
(22243, 33416),
(22243, 33427),
(22243, 33496),
(22243, 33498),
(22243, 33499),
(22243, 33500),
(22243, 33501),
(22243, 33502),
(22243, 33503),
(22243, 33504),
(22243, 33505),
(22243, 33508),
(22243, 33509),
(22245, 33395),
(22245, 33406),
(22245, 33429),
(22245, 33443),
(22245, 33511),
(22245, 33513),
(22245, 33514),
(22245, 33515),
(22245, 33516),
(22245, 33517),
(22245, 33528),
(22245, 33530),
(22245, 33531),
(22245, 33527),
(22245, 33529),
(22245, 33532),
(22245, 33533),
(22249, 33399),
(22249, 33400),
(22249, 33414),
(22249, 33434),
(22249, 33452),
(22249, 33535),
(22249, 33536),
(22249, 33537),
(22249, 33538),
(22260, 33424),
(22260, 33543),
(22260, 33544),
(22260, 33398),
(22260, 33545),
(22260, 33546),
(22260, 33551),
(22262, 33394),
(22262, 33411),
(22262, 33445),
(22262, 33459),
(22262, 33461),
(22262, 33469),
(22262, 33470),
(22262, 33473),
(22262, 33476),
(22262, 33479),
(22262, 33480),
(22274, 33390),
(22274, 33404),
(22274, 33422),
(22274, 33436),
(22274, 33539),
(22274, 33540),
(22274, 33541),
(22274, 33547),
(22274, 33393),
(22274, 33407),
(22274, 33408),
(22274, 33423),
(22274, 33428),
(22274, 33449),
(22281, 33403),
(22281, 33431),
(22281, 33432),
(22284, 33420),
(22284, 33447),
(22284, 33482),
(22284, 33483),
(22284, 33487),
(22284, 33491),
(22284, 33492),
(22284, 33493),
(22284, 33497),
(22260, 33444),
(22260, 33506),
(22260, 33507),
(22260, 33510),
(22260, 33512),
(22260, 33518),
(22260, 33519),
(22260, 33520),
(22259, 33419),
(22276, 33411),
(22276, 33451),
(22276, 33461),
(22276, 33491),
(22276, 33521),
(22276, 33551),
(22259, 33402),
(22259, 33435),
(22259, 33450),
(22258, 33417),
(22258, 33441),
(22258, 33475),
(22258, 33478),
(22258, 33484),
(22258, 33486),
(22258, 33489),
(22258, 33490),
(22258, 33494),
(22262, 33396),
(22262, 33410),
(22262, 33426),
(22262, 33433),
(22262, 33440),
(22268, 33451),
(22268, 33455),
(22281, 33392),
(22281, 33409),
(22281, 33413),
(22281, 33439),
(22281, 33518),
(22281, 33549),
(22281, 33550),
(22281, 33448),
(22267, 33412),
(22267, 33418),
(22267, 33521),
(22267, 33522),
(22267, 33523),
(22267, 33524),
(22267, 33525),
(22267, 33526),
(22267, 33542),
(22263, 33442),
(22263, 33446),
(22259, 33391),
(22259, 33421),
(22259, 33430),
(22259, 33437),
(22259, 33453),
(22259, 33454),
(22259, 33456),
(22259, 33457),
(22259, 33458),
(22259, 33460),
(22259, 33462),
(22259, 33465),
(22259, 33466),
(22259, 33467),
(22259, 33468),
(22259, 33471),
(22259, 33472),
(22259, 33474),
(22259, 33419),
(22223, 2222),
(22226, 2222);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Att_Sec_ID` int(11) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `IsPresent` varchar(45) NOT NULL,
  `A_StudId` int(150) NOT NULL,
  `Facu_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Att_Sec_ID`, `Date`, `IsPresent`, `A_StudId`, `Facu_ID`) VALUES
(1001, '09/21/2018', 'Yes', 2222, 0),
(1001, '09/18/2019', 'Y', 2222, 22223);

-- --------------------------------------------------------

--
-- Table structure for table `building`
--

CREATE TABLE `building` (
  `Build_ID` int(11) NOT NULL,
  `B_Name` varchar(45) NOT NULL,
  `B_Address` varchar(45) NOT NULL,
  `Room Amount` int(11) NOT NULL,
  `B_Dept_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `building`
--

INSERT INTO `building` (`Build_ID`, `B_Name`, `B_Address`, `Room Amount`, `B_Dept_ID`) VALUES
(77771, 'Math Building', '307 Math Building', 25, 124),
(77772, 'Science Building', '100 Science Building', 20, 125),
(77773, 'Medical Building', '300 Medical Building', 20, 127),
(77774, 'Arts Building', '400 Arts Building', 15, 128),
(77775, 'Business Building', '300 Business Building', 25, 126),
(77776, 'Computer Science Building', '200 Comp Sci Building', 25, 129),
(77777, 'English Building', '100 English Building', 25, 130),
(77778, 'Music Building', '100 Music Building', 30, 132),
(77779, 'Humanities Building', '100 Humanities Building', 25, 131);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `Course_ID` int(11) NOT NULL,
  `C_Name` varchar(300) NOT NULL,
  `C_Description` varchar(800) NOT NULL,
  `C_Code` varchar(45) NOT NULL,
  `C_CreditAmt` double NOT NULL,
  `CDeptID` int(11) NOT NULL,
  `C_DeptName` varchar(60) NOT NULL,
  `CourseLevel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`Course_ID`, `C_Name`, `C_Description`, `C_Code`, `C_CreditAmt`, `CDeptID`, `C_DeptName`, `CourseLevel`) VALUES
(0, '', '', '', 0, 0, '', 0),
(40000, 'Blood, Hematopoiesis & Lymphatics', 'This course introduces students to the physiology, embryogenesis and diseases of the blood. Specific emphasis is on disease states and how these reveal basic system characteristics useful in diagnosis and treatment.', 'MED 101', 3, 127, 'Medical', 1),
(40001, 'Clinical Medicine I', 'This course teaches the basic clinical skills of interviewing, physical exam and diagnostic clinical thinking under the supervision of trained SPs and physicians.', 'MED 102', 3, 127, 'Medical', 1),
(40002, 'Design & Analysis of Clinical Research', 'This course will prepare the student to understand principles of biostatistics and epidemiology. Topics will include research design; statistical and epidemiologic measures of disease burden, distribution, and association; and methods of statistical inference and hypothesis testing.', 'MED 103', 3, 127, 'Medical', 1),
(40003, 'Foundations of Medicine\r\n', 'This course presents foundational concepts of human genetics, molecular biology, protein structure and function, cell biology, carcinogenesis, pharmacokinetics, pharmacodynamics, drug metabolism, cell physiology, autonomic nervous system, cellular electrophysiology, inflammation, wound healing, fluid balance, hemodynamics, clinical laboratory methods, and drugs affecting the neuromuscular and autonomic nervous systems.', 'MED 104', 3, 127, 'Medical', 1),
(40004, 'Gastrointestinal & Hepatobiliary', 'This course highlights and integrates the fundamental concepts in embryology, histology, gross anatomy, physiology, pathology, pathophysiology and pharmacology of the gastrointestinal tract', 'MED 201', 3, 127, 'Medical', 1),
(40005, 'Human Structure', 'This course includes the macroscopic study of regions, systems and organs of the human body. Students will use this course as a basis for understanding the depths of human biology required in a modern practice of clinical medicine.', 'MED 202', 3, 127, 'Medical', 1),
(40006, 'Immunology, Microbiology & Integument', 'This course will present the normal development, structure, function, and diseases of the immune system. In addition, basic principles of microbiology and antimicrobial therapy will be covered as well as infectious diseases of the integument, including distinguishing characteristics of the infectious agent, epidemiology, clinical manifestations, pathogenesis, and treatment and prevention.', 'MED 203', 3, 127, 'Medical', 1),
(40007, 'Lifestyle Medicine and Health Promotion', 'This course provides first-year medical students within the community medicine track with the foundational knowledge of lifestyle medicine, including its applications for advancing personal, patient and population health.', 'MED 301', 3, 127, 'Medical ', 1),
(40008, 'Patients, Physicians, and Society', 'This course is a broad course covering healthcare economics, behavioral factors in medicine and disease, normal human development, cultural factors in the practice of medicine and substance abuse.', 'MED 302', 3, 127, 'Medical', 1),
(40009, 'Patients, Physicians, and Society', 'This course is a broad course covering healthcare economics, behavioral factors in medicine and disease, normal human development, cultural factors in the practice of medicine and substance abuse.', 'MED 303', 3, 127, 'Medical', 1),
(40010, 'Cardiovascular, Respiratory & Renal Systems', 'This course presents the normal physiological mechanisms of the cardiovascular, respiratory, and renal systems. The course will then present the most common pathological conditions and clinical presentations involving these systems, with an emphasis on how the pathology affects the normal systems. Finally, treatments for the pathological conditions will be presented.', 'MED 401', 3, 127, 'Medical', 2),
(40011, 'Clinical Medicine', 'This course teaches the basic clinical skills of interviewing, physical exam and diagnostic clinical thinking under the supervision of trained SPs and physicians.', 'MED 402', 3, 127, 'Medical', 2),
(40012, 'Neurosciences', 'This course introduces students to diverse aspects of the nervous system clinically relevant to neurologic and psychiatric conditions. Focus is on brain structure, function, pathways, and major pathologic conditions.', 'MED 403', 3, 127, 'Medical', 2),
(40013, 'Patients, Physicians, and Society', 'The foundations of this course are that ethics contributes to high quality patient care and professional behavior; that knowledge of ethics enables medical trainees to become better physicians; and that ethics can be taught, learned, and evaluated along with the general corpus of medical knowledge.', 'MED 404', 3, 127, 'Medical', 2),
(50000, 'Introduction to Biology', 'An introduction to cellular structure and function, to biological molecules, bioenergetics, to the genetics of both prokaryotic and eukaryotic organisms, and to the elements of molecular biology.', 'BIO 101', 3, 125, 'Biology', 1),
(50001, 'Evolutionary Biology', 'The first principles of evolutionary theory, classification, ecology, and behavior; a phylogenetic synopsis of the major groups of organisms from viruses to primates.', 'BIO 102', 3, 125, 'Biology', 1),
(50002, 'Introductory Biology Lab', 'Students gain hands-on experience and learn the theoretical basis of lab techniques common to a variety of biological disciplines such as biochemistry, molecular biology, cell biology, and bioinformatics.', 'BIO 102A', 2, 125, 'Biology', 1),
(50003, 'Human Genetics in Modern Society', 'Explores the makeup and structure of human genetical lines.', 'BIO 103', 3, 125, 'Biology', 1),
(50004, 'Human Neuorology', 'Introduction to basic human neuroscience leading to a discussion of brain diseases classified under the rubric Dementia.', 'BIO 104', 3, 125, 'Biology', 1),
(50005, 'Quantitative Biology Project Lab', 'Course covers two important aspects: (1) interdisciplinary and research-based education and (2) teaching fundamental experimental and computational skills in quantitative studies of living systems. ', 'BIO 105', 3, 125, 'Biology', 1),
(50006, 'Genomics Research Initiative Lab I', 'Students will isolate bacterial viruses or other organisms from the environment and characterize them by methods including electron microscopy and nucleic acid analysis.', 'BIO 201', 3, 125, 'Biology', 1),
(50007, 'Undergraduate Workshops', 'The workshops will be restricted to lower-division undergraduates. The course will introduce students to the methods of scientific research and to a variety of research topics in the biological/biomedical sciences.', 'BIO 202', 3, 125, 'Biology ', 1),
(50008, 'Structural Biochemistry', 'The structure and function of biomolecules. Includes protein conformation, dynamics, and function; enzymatic catalysis, enzyme kinetics, and allosteric regulation; lipids and membranes; sugars and polysaccharides; and nucleic acids.', 'BCH 301', 3, 125, 'Biochemistry', 2),
(50009, 'Metabolic Biochemistry', 'Energy-producing pathways–glycolysis, the TCA cycle, oxidative phosphorylation, photosynthesis, and fatty acid oxidation; and biosynthetic pathways–gluconeogenesis, glycogen synthesis, and fatty acid biosynthesis.', 'BCH 302', 3, 125, 'Biochemistry', 2),
(50010, 'Biochemical Techniques', 'Introductory laboratory course in current principles and techniques applicable to research problems in biochemistry and molecular biology. ', 'BCH 301A', 2, 125, 'Biochemistry', 2),
(50011, 'Nutrition', 'Elaborates the relationship between diet and human metabolism, physiology, health, and disease. ', 'BCH 303', 3, 125, 'Biochemistry', 2),
(50012, 'Chemistry of Biological Interactions', 'Nearly all interactions between organisms, including host-pathogen interactions and mate attraction, have a chemical basis. Plants and microorganisms are the dominant life forms on earth and remain a major source of pharmaceutical leads. Students in this course will utilize biochemical methods to extract, fractionate, and analyze plant and microbial compounds of medicinal and ecological significance including antibiotics, growth regulators, toxins, and signaling molecules.', 'BCH 304', 3, 125, 'Biochemistry', 2),
(50013, 'Advanced Topics in Modern Biology: Biochemistry', 'Students are expected to actively participate in course discussions, read, and analyze primary literature.', 'BCH 305', 3, 125, 'Biochemistry', 2),
(50014, 'Molecular Biology', '>Molecular basis of biological processes, emphasizing gene action in context of entire genome. Chromosomes and DNA metabolism: chromatin, DNA replication, repair, mutation, recombination, transposition.', 'BGE 401', 3, 125, 'Biogenetics', 2),
(50015, 'Molecular Biology Laboratory', 'Techniques in microbial physiology, microbial genomics, microbial evolution, and microbial ecology will be used to explore the role of microbes in industry, health, and the environment.', 'BGE 401A', 3, 125, 'Biogenetics', 2),
(50016, 'Molecular Basis of Human Disease', 'An examination of the molecular basis of human diseases.', 'BGE 402', 3, 125, 'Biogenetics', 2),
(50017, 'Virology', 'An introduction to eukaryotic virology, with emphasis on animal virus systems', 'BGE 403', 3, 125, 'Biogenetics', 2),
(50018, 'Pharmacology', 'Basics of pharmacology such as drug absorption, distribution, metabolism, and elimination.', 'BGE 404', 3, 125, 'Biogenetics', 2),
(50019, 'Microbial Genetics', 'Course will consider the organization and function of prokaryotic genomes including content, DNA supercoiling, histone-like proteins, chromosomal dynamics (short-term and long-term), extrachromosomal elements, bacterial sex, transduction, transformation, mobile elements (transposon), epigenetic change, adaptive and directed mutation', 'BGE 405', 3, 125, 'Biogenetics', 2),
(50020, 'Medical Microbiology', 'Encompasses the increasingly important areas of viral, bacterial, and parasitic diseases and understanding the complex interaction between humans and infectious agents.', 'BGE 405', 3, 125, 'Biogenetics', 2),
(50021, 'Quantitative Principles in Biology', 'Course considers problems in biology that were solved using quantitative biology approaches. Problems will range from the molecular to the population level.', 'BGE 406', 3, 125, 'Biogenetics', 2),
(50022, 'Bioinformatics Laboratory', 'Bioinformatics is the analysis of big data in the biosciences. This course provides a hands-on introduction to the computer-based analysis of biomolecular and genomic data.', 'BGE 406A', 2, 125, 'Biogenetics', 2),
(50023, 'Structural Biology of Viruses', 'An introduction to virus structures, how they are determined, and how they facilitate the various stages of the viral life cycle from host recognition and entry to replication, assembly, release, and transmission to uninfected host cells.', 'BGE 407', 3, 125, 'Biogenetics', 2),
(60000, 'Drawing Fundamentals', 'This course investigates concepts and practices of drawing from observation, memory and imagination, while building individual skills and awareness of composition, expression and visual communication.', 'ART 101', 3, 128, 'Art', 1),
(60001, 'Self and Representation', 'This course investigates concepts and design principles of two-dimensional processes of painting and printmaking. Conceptually, the assignments are driven by an exploration of art through personal narratives, issues of identity, and as a vehicle for spiritual and psychological transformation. ', 'ART 102', 3, 128, 'Art', 1),
(60002, 'Visual Theory and Aesthetics', 'Introduces and explores visual, aesthetic, and critical theory, and the social and cultural dynamics that inform and influence contemporary art making.', 'ART 103', 3, 128, 'Art', 1),
(60003, 'Introduction to Graphic Design', '>A critical approach to graphic design is indispensable in the social worlds it mediates. This course develops the designer capacity for graphic thought through semantic and syntactic explorations of visual form. Through a variety of studio exercises and assignments, students develop their own design processes to discover the ways in which graphic design engages in visual knowledge production.', 'ART 201', 3, 128, 'Art', 1),
(60004, 'Introduction to Media and Letterpress', 'In intaglio printmaking the image is incised into the plate and the incised line holds the ink to be printed on paper. It is the opposite of relief printmaking. Collagraph is similar to intaglio but uses inexpensive materials to build the plate to be printed.', 'ART 202', 3, 128, 'Art', 1),
(60005, 'Introduction to Print Media', 'In intaglio printmaking the image is incised into the plate and the incised line holds the ink to be printed on paper. It is the opposite of relief printmaking. Collagraph is similar to intaglio but uses inexpensive materials to build the plate to be printed.', 'ART 203', 3, 128, 'Art', 1),
(60006, 'Drawing Concepts', 'First semester of a two-semester sequence of drawing courses focusing on the language, materials and concepts of drawing as foundation for all the visual arts. Emphasizes the development of perceptual, analytical, and structural drawing skills while simultaneously working with idea development.', 'ART 204', 3, 128, 'Art', 1),
(60007, 'Introduction to Photography', 'This studio course examines the historical, conceptual, and practical developments of the art of photography as embodied in the use of digital image-making technologies under natural and ambient lighting. ', 'ART 205', 3, 128, 'Art', 1),
(60008, 'Basic Painting', '>Covers basic methods and materials in oil painting; including traditional and current approaches to form, color, and pictorial organization. Varied course structure includes direct interpretation of subject matter, as well as conceptually based visual problems.', 'ART 206', 3, 128, 'Art', 1),
(60009, 'Pictorial Structure', 'Addresses the formal and conceptual aspects of 2D artwork. Art from the past and present is viewed, discussed, and utilized as a starting point for student-driven assignments.', 'ART 301', 3, 128, 'Art', 1),
(60010, 'Typographic Form', 'This course introduces the basic terminology, concepts and practices of communicating with typography. It engages the construction of typography from the scale of the letterform to the word, the line, the paragraph and the page/screen.', 'ART 302', 3, 128, 'Art', 1),
(60011, 'Introduction to Print Media', 'Prized for its subtle effects and evocative surfaces, lithography is particularly well suited for artists who like to draw or use photographic/digital montage strategies to construct images.', 'ART 303', 3, 128, 'Art', 1),
(60012, 'Introduction to Sculpture', 'Paradigms of space, from map to model, shift radically from epoch to epoch. Reflecting these shifts, sculpture since Minimalism, has increasingly redefined its notion of \'form\' and \'objectness\' to include the surrounding perceptual space, temporal practices, and the socio-political constituents of space.', 'ART 304', 3, 128, 'Art', 1),
(60013, 'Introduction to Digital Art', ' Surveys, in a hands-on fashion, the rich and unique resources the computer offers the artist/designer. Includes computer basics, letter manipulation, drawing and painting metaphors, image processing, 3-D modeling, sound/image synthesis, interactive scripting, and animation.', 'ART 401', 3, 128, 'Art ', 2),
(60014, 'Individual Paintings Explorations', 'Encourages individual creative research through a consistent exploration of themes, concepts, processes and media towards a cohesive body of work. This course also investigates a variety of possible ways for installation and exhibition.', 'ART 402', 3, 128, 'Art', 2),
(60015, 'Graphic Systems', 'This course introduces students to a structural approach and systemic principles in the construction and application of graphic form. Students learn to create graphic systems by exploring among other things, graphic identity systems, icon/symbolic -systems and graphic navigation systems.', 'ART 403', 3, 128, 'Art', 2),
(60016, 'Web Design', 'This course focuses on aspects of professional front-end web design technologies and processes, including hand-coding HTML5/CSS3, simple JavaScript, WordPress, responsive design for mobile devices, integration with social media channels, information architecture, and user experience design.', 'ART 404', 3, 128, 'Art', 2),
(60017, 'Typographic Systems', 'Building on the concepts and skills developed in Typographic Form, this course introduces students to a systematic approach to the use of typography in graphic design towards building a capacity to work with complex sets of information. The assignments in this course develop and exercise the student¿s sense of structural logic, style and syntactics.', 'ART 405', 3, 128, 'Art', 2),
(60018, 'Computer Motion Imaging', 'Explores with computer graphics, the expressive and informative impact of real time and frame/cell animation: pixilation; metamorphosis; interaction of synthesized actors with backgrounds; the dynamics of sound/image synthesis; and time-space structures\' application to computer animation.', 'ART 406', 3, 128, 'Art', 2),
(70000, 'Concepts in Computer Science', 'Fundamental concepts in program design, data structures, algorithms, analysis and a survey of topics in CS. Not open to Computer Science majors.', 'CS 100', 3, 129, 'Computer Science', 1),
(70001, 'Computer Science I', 'Problem solving techniques, order analysis and notation, abstract data types, and recursion.', 'CS 101', 3, 129, 'Computer Science', 1),
(70002, 'Programming I', 'This introductory course teaches the fundamental concepts of programming languages by use of the popular Java language. The topics cover fundamental principles of programming, including data types, program control and decisions, loops, string manipulations, procedures, arrays, software testing, and debugging.', 'CS 102', 3, 129, 'Computer Science', 1),
(70003, 'Programming 2', 'This course builds on the Introduction to Programming 1 course and teaches a more highly developed Java programming language with features beyond the basic concepts covered in the first programming course, preparing students for professional software development builds on this work in several directions. A large part of the course will be devoted to more advanced building blocks such as recursion, linked data structures, and Java’s Collection Framework.', 'CS 102', 3, 129, 'Computer Science', 1),
(70004, 'Databases', 'This course introduces the fundamental concepts necessary for designing, using and implementing database systems.', 'CS 201', 3, 129, 'Computer Science', 1),
(70005, 'Computer Communications and Networks', 'This course will introduce the basic concepts of communication networks, including the OSI model and different types of communication protocols, including the Internet Protocol (TCP/IP protocol). The course will also cover the key concepts and structures of the Internet.', 'CS 202', 3, 129, 'Computer Science', 1),
(70006, 'Operating Systems', 'This course provides an applied introduction to commercial operating systems. It is intended for intermediate students who have basic programming skills. Key concepts of computer systems and operating systems are introduced, as well as the communications and linkages associated with computer systems. Operating systems that are introduced include Microsoft Windows and UNIX/Linux.', 'CS 203', 3, 129, 'Computer Science', 1),
(70007, 'Software Engineering', 'This course focuses on the engineering process requirements, including identification of stakeholders, requirements elicitation techniques such as interviews and prototyping, analysis fundamentals, requirements specification, and validation.', 'CS 204', 3, 129, 'Computer Science', 1),
(70008, 'Data Structures', 'This course introduces the fundamental concepts of data structures and the algorithms that proceed from them. Although this course has a greater focus on theory than application the assignments, examples, and cases introduced throughout the course help to bring the gap between theoretical concepts and real world problem solving. We will be using a software tool that will enhance our understanding of the operation and function of the data structures and algorithms explored throughout the course by visually animating examples of data structures and algorithms so that we can understand their operation.', 'CS 205', 3, 129, 'Computer Science', 1),
(70009, 'Web Programming', 'This course introduces students to fundamental concepts and issues surrounding software development for programs that operate on the web and the internet such as static and dynamic content, dynamically served content, web development processes, and security.', 'CS 206', 3, 129, 'Computer Science', 1),
(70010, 'Introduction to Discrete Structures', 'This is a rigorous introduction to some topics in mathematics that underlie areas in computer science and computer engineering, including graphs and trees, spanning trees, and matchings; the pigeonhole principle, induction and recursion, generating functions, and discrete probability proofs (time permitting). The course integrates learning mathematical theories with applications to concrete problems from other disciplines using discrete modeling techniques. Student groups will be formed to investigate a concept or an application related to discrete mathematics, and each group will report its findings to the class in a final presentation.', 'CS 207', 3, 129, 'Computer Science', 1),
(70011, 'Advanced Networking and Data Security', 'This course explores the basic components and design principles of advanced broadband networks (wireline and wireless) and how they enable essential services such as mobility, and secure data storage, processing and transmission.', 'CS 301', 3, 129, 'Computer Science', 2),
(70012, '>Mobile Applications', 'The course explores concepts and issues surrounding information system applications to real-time operating systems and wireless networking systems.', 'CS 302', 3, 129, 'Computer Science', 2),
(70013, 'Web Design ', 'This course focuses on aspects of professional front-end web design technologies and processes, including hand-coding HTML5/CSS3, simple JavaScript, WordPress, responsive design for mobile devices, integration with social media channels, information architecture, and user experience design. ', 'CS 303', 3, 129, 'Computer Science', 2),
(70014, 'Artificial Intelligence', 'This course will cover current concepts and techniques in artificial intelligence, including “reasoning”, problem solving, and search optimization. ', 'CS 304', 3, 129, 'Computer Science', 2),
(70015, 'Data Mining', 'This course presents an introduction to current concepts in machine learning, knowledge discovery, and data mining. Approaches to the analysis of learning algorithm performance will also be discussed and applied.', 'CS 305', 3, 129, 'Computer Science', 2),
(80000, 'Introduction to Business Management', 'This course is an introduction to the field of business management. Topics include developing mission, vision and values, organizational culture, leadership, decision-making, organizational behavior, motivation, and human resource management.', 'BUS 101', 3, 126, 'Business', 1),
(80001, 'Basic Accounting', 'This course serves as an introduction to the basic theory, principles and techniques of contemporary financial accounting. Topics include the accounting cycle and the preparation of financial statements.', 'BUS 102', 3, 126, 'Business', 1),
(80002, 'MicroEconomics', 'This course introduces the economic analysis of the interactions between households, businesses and government with regard to allocation of goods, services and resources. In this course, we will learn about basic elements of consumer and firm behavior, different market structures and their effects on welfare, and the direct and indirect role of the government in determining economic outcomes.', 'BUS 103', 3, 126, 'Business', 1),
(80003, 'Macroeconomics', 'This course provides a solid overview of the field of macroeconomics with the intent to develop a general understanding and appreciation of the factors and methods used to manage macroeconomic policy and the impact of these policies on the global economy. This course will help you to understand how a nation’s economy works and how macroeconomic policy impacts a nation’s economy.', 'BUS 103', 3, 126, 'Business', 1),
(80004, 'Business Communications', 'The purpose of this course is to build an understanding of effective uses of English in a business environment and to develop strong core business communication skills. This course will introduce and enhance the varying modes of English communication in the business environment and will also focus on when to use these varying modes, depending on the situation.', 'BUS 201', 3, 126, 'Business', 1),
(80005, 'Principles of Marketing', 'This course provides an introduction to the field of marketing where students develop a general understanding and appreciation of the factors and methods involved in marketing a variety of goods and services. Topics include consumer needs, segmentation, target marketing, positioning, pricing, distributing, and promoting goods and services.', 'BUS 202', 3, 126, 'Business', 1),
(80006, 'Principles of Finance', 'This course provides a broad understanding of basic principles in the area of finance. The course introduces techniques for effective financial decision-making and helping managers to maximize shareholders’ wealth.', 'BUS 203', 3, 126, 'Business', 1),
(80007, 'Financial Accounting', 'This course continues the study of accounting begun by the students during their Basic Accounting course. This course emphasizes accounting for liabilities, accounting for equity, and corporate forms of ownership. Topics include responsibility accounting, budgets, cost control, and standard costing procedures and analysis of variances. ', 'BUS 301', 3, 126, 'Business', 1),
(80008, 'Entrepreneurship', 'This course provides an introduction to entrepreneurship and the dynamics of starting/owning a business. This course is designed to assist students with the knowledge and skills entrepreneurs need to start and/or manage a small business. It will help you understand the steps involved in the process of the creation/development of business ideas and turning those ideas into a successful business model.', 'BUS 302', 3, 126, 'Business', 1),
(80009, 'Managerial Accounting', 'This course is a continuation of Financial Accounting with focus shifted to the internal needs of managers. The course offers students an understanding of managerial accounting techniques used in today’s modern business world.', 'BUS 303', 3, 126, 'Business', 1),
(80010, 'Business Law and Ethics', 'This course introduces the student to law and ethics as they apply in a business environment. The intent of this course is to develop in the student a general understanding of basic legal principles and how they affect the conduct of business on a practical level. While common law legal systems and that of the United States in particular are used to demonstrate the interaction of law and business, the principles introduced here assist in developing a general approach to business law and ethics. Topics include an introduction to law in general, litigation and alternatives to litigation, criminal law, torts and contracts, property law, employment law and business ethics.', 'BUS 304', 3, 126, 'Business', 1),
(80011, 'Business and Society', 'This course explores the inter-relationships between business and society, including the tensions between various stakeholders and the growing pressures to approach business with corporate responsibility and sustainability as primary underlying influences. With rapidly changing technology and globalization, we must strategize our business decisions with far greater insight and conscientiousness than ever before. This course takes a look at business and society relationships from various global perspectives, including developing countries and societies, and different cultural norms and beliefs.', 'BUS 305', 3, 126, 'Business', 1),
(80012, 'Entrepreneurship 2', 'This course continues where Entrepreneurship ended and addresses entrepreneurship in international markets. The key success factors in creating a new internationally oriented business venture will be examined from the perspective of the entrepreneur.', 'BUS 401', 3, 126, 'Business', 2),
(80013, 'Organizational Behavior', 'This course focuses on the examination of research and theory of factors that influence the way members of an organization behave. Topics include the behavior of employees, work groups and supervisors, effective organizational communication, handling of change in the organization, and the goals and structure of an organization.', 'BUS 402', 3, 126, 'Business', 2),
(80014, 'Business Policy and Strategy', 'This course addresses the formulation, implementation, monitoring and control of business strategies and supporting organizational policies. Students learn to evaluate the comprehensive business enterprise through an integrated view of the various functional disciplines. This course attempts to develop the conceptual and abstract skills required by leaders of businesses in a competitive environment in order to understand business issues and challenges from the perspective of all functional managers.', 'BUS 403', 3, 126, 'Business', 2),
(80015, 'Principles of Finance 2', 'This course expands on concepts from Principles of Finance 1 to provide greater depth of core issues including valuation, cost of capital, capital budgeting, estimating cash flows, capital structure, dividends, forecasting, and working capital management. Case studies and information resources will be utilized to explain how financial theory is applied in real-life situations.', 'BUS 404', 3, 126, 'Business', 2),
(80016, 'Leadership', 'In this course, students will explore organizational leadership theories as well as examine how to strategically lead self and others while fostering a culture of performance. Students will use tools that leverage organizational and individual development. Through an integration of a variety of these tools, strategies, and theories, the students will develop knowledge, skills and attitudes (KSA) necessary in contemporary leadership development.', 'BUS 405', 3, 126, 'Business', 2),
(80017, 'Strategic Management', 'This course explores the relationships between organizations and their environments from a corporate policy perspective. Topics to be discussed include organizational structure and development, competition analysis, long and short-range planning, creating mission and vision statements, implementing goals, performance indicators and evaluation.', 'BUS 406', 3, 126, 'Business', 2),
(90000, 'Pre-Calculus', 'College Calculus', 'MAT 100', 3, 124, 'Math', 0),
(90001, 'Calculus 1', 'Continuity, limits, and the derivative for algebraic, trigonometric, logarithmic, exponential, and inverse functions. Applications to physics, chemistry, and engineering.', 'MAT 101', 3, 124, 'Math', 0),
(90002, 'Linear Algebra', 'Basic concepts of linear algebra. Matrices, determinants, systems of linear equations, vector spaces, linear transformations, and eigenvalues.', 'MAT 102', 3, 124, 'Math', 0),
(90003, 'Introduction to Statistics', 'Basics of probability, random variables, binomial and normal distributions, central limit theorem, hypothesis testing, and simple linear regression.', 'MAT 103', 3, 124, 'Math', 0),
(90004, 'Calculus 2', 'The definite integral, techniques of integration, and applications to physics, chemistry, and engineering. Sequences, series, and power series', 'MAT 201', 3, 124, 'Math', 0),
(90005, 'Multivariable Calculus', 'Techniques of calculus in two and three dimensions. Vectors, partial derivatives, multiple integrals, line integrals.', 'MAT 202', 3, 124, 'Math', 0),
(90006, 'Linear Methods', 'Linear equations and inequalities, matrices, linear programming with applications to business, probability and discrete random variables.', 'MAT 203', 3, 124, 'Math', 0),
(90007, 'Calculus 3', 'Advanced Calculus', 'MAT 301', 3, 124, 'Math', 0),
(90008, 'Fundamentals of Mathematics', 'Students will learn how to read, understand, devise and communicate proofs of mathematical statements. A number of proof techniques (contrapositive, contradiction, and especially induction) will be emphasized. Topics to be discussed include set theory (Cantor\'s notion of size for sets and gradations', 'MAT 302', 3, 124, 'Math', 0),
(90009, 'Writing in Mathematics', 'Essentially all serious mathematics is written using some variant of the LaTeX software, and developing proficiency with this tool is an important part of the course. We will cover a variety of types of writing related to mathematics, such as: critique of seminar presentations and written articles; ', 'MAT 303', 3, 124, 'Math', 0),
(90010, 'Introduction to Abstract Algebra', '>Introduction to groups, rings, fields, vector spaces, and related concepts. Emphasis on development of careful mathematical reasoning.', 'MAT 304', 3, 124, 'Math', 0),
(90011, 'Complex Variables', 'An introduction to functions of a complex variable. Topics include: Complex numbers, functions of a complex variable and their derivatives (Cauchy-Riemann equations). Harmonic functions. Contour integration and Cauchy\'s integral formula. Liouville\'s theorem, Maximum modulus theorem, and the Fundamental Theorem of Algebra.', 'MAT 305', 3, 124, 'Math', 0),
(90012, 'Number Theory', 'This course is a proof-based introduction to elementary number theory. We will quickly review basic properties of the integers including modular arithmetic and linear Diophantine equations covered in Math 300 or CS250. We will proceed to study primitive roots, quadratic reciprocity, Gaussian integers, and some non-linear Diophantine equations. Several important applications to cryptography will be discussed.', 'MAT 306', 3, 124, 'Math', 0),
(90013, 'Advanced Multivariate Calculus', 'Calculus of several variables, Jacobians, implicit functions, inverse functions; multiple integrals, line and surface integrals, divergence theorem, Stokes\' theorem.', 'MAT 401', 3, 124, 'Math', 0),
(90014, 'Introduction to Discrete Structures', 'This is a rigorous introduction to some topics in mathematics that underlie areas in computer science and computer engineering, including graphs and trees, spanning trees, and matchings; the pigeonhole principle, induction and recursion, generating functions, and discrete probability proofs (time permitting). The course integrates learning mathematical theories with applications to concrete problems from other disciplines using discrete modeling techniques. Student groups will be formed to inves', 'MAT 402', 3, 124, 'Math', 0),
(90015, 'Introduction to Modern Analysis', 'This is the first part of the introduction to analysis sequence (523 and 524). This course deals with basic concepts of analysis of functions mostly on the real line, and we will try to make many of the concepts one learns in calculus rigorous. Covered topics will include series, and sequences, continuity, differentiability, and integration.', 'MAT 403', 3, 124, 'Math', 0),
(90016, 'Linear Algebra for Applied Mathematics', 'Basic concepts (over real or complex numbers): vector spaces, basis, dimension, linear transformations and matrices, change of basis, similarity. Study of a single linear operator: minimal and characteristic polynomial, eigenvalues, invariant subspaces, triangular form, Cayley-Hamilton theorem. Inner product spaces and special types of linear operators (over real or complex fields): orthogonal, unitary, self-adjoint, hermitian. Diagonalization of symmetric matrices, applications.', 'MAT 404', 3, 124, 'Math', 0),
(100000, 'Composition 1', 'Expository writing with emphasis on effective communication and critical thinking. Emphasizing the writing process writing topics are based on selected readings and on student experiences\r\n', 'ENG 101', 3, 130, 'English', 1),
(100001, 'Fundamentals of Oral Communication', 'Communication theory and its application to preparing and delivering public speeches.', 'ENG 103', 3, 130, 'English', 1),
(100002, 'Fundamentals of Technical Presentations', 'Communication theory and its application to preparing and delivering technical information in public speaking situations.\r\n', 'ENG 103', 3, 130, 'English', 1),
(100003, 'Introduction to Humanities', 'The range of ideas, research methods and approaches to scholarship, critical reflection, and creative work in the humanities. \r\n', 'HUM 101', 3, 131, 'Humanities', 1),
(100004, 'Western Civilization', 'A survey of western civilization from ancient to 1648', 'HUM 102', 3, 131, 'Humanities', 1),
(100005, 'Humanistic Tradition', 'An interdisciplinary, multicultural study of the arts and sciences contributed by diverse human traditions to world civilization. Focus is on ancient civilizations and the cultural heritage stemming from them.', 'HUM 103', 3, 131, 'Humanities', 1),
(100006, 'U.S. History: 1492-1877', 'Survey of U.S. History from 1492-187', 'HUM 104', 3, 131, 'Humanities ', 1),
(100007, 'World Civilization', 'A topical approach to the study of the rise and decline of world civilizations from the first attempts to the great civilizations of medieval times.\r\n   ', 'HUM 105', 3, 131, 'Humanities', 1),
(100008, 'General Anthropology', 'An introductory survey of the four major subfields of anthropology: Social Anthropology, Physical Anthropology, Linguistics, and Archaeology.', 'HUM 106', 3, 131, 'Humanities', 1),
(100009, 'General Psychology', 'A survey of the basic principles, theories, and methods of contemporary psychology, including the study of human diversity.', 'HUM 107', 3, 131, 'Humanities', 1),
(100010, 'Introduction to Sociology', 'Scientific study of sociological concepts, theories, processes, and methods used in understanding contemporary human behavior in group interaction.', 'HUM 108', 3, 131, 'Humanities', 1),
(100011, 'Enjoyment of Music', 'Designed to develop an understanding of musical principles and techniques for listening to music. ', 'MUS 101', 3, 132, 'Music', 1),
(100012, 'Theatre Survey', 'Overview of the art and craft of the theatre.', 'MUS 102', 3, 132, 'Music ', 1),
(100013, 'Survey of Rock Music', 'Rise of rock music to prominence, and its impact on audience reception.', 'MUS 103', 3, 132, 'Music', 1),
(100014, 'American Popular Music, 1840s-present', 'Musical and cultural development of popular music in the United States from the 1840s to the present. ', 'MUS 104', 3, 132, 'Music', 1),
(100016, 'Evolution of Jazz', 'Survey of jazz literature and performance.', 'MUS 105', 3, 132, 'Music ', 1),
(100017, 'Music of the World', 'Music in cross-cultural context. Relation of music to religion and society.\r\n ', 'MUS 106', 3, 132, 'Music', 1),
(100018, 'World Literature', 'Poetry, prose, and drama selected from ancient Hebrew, Greek, and Oriental literature and from that of Renaissance Europe.', 'HUM 109', 3, 131, 'Humanities', 1),
(100019, 'World Literature II', 'Readings from Moliere, Voltaire, Goethe, Pushkin, Balzac, Tolstoy, Ibsen, Mann, Kafka, Camus, and others.', 'HUM 110', 3, 131, 'Humanities', 1),
(100100, 'College Writing', 'Instruction and practice for writing in college. This course does not satisfy the requirements for the English major or minor.', 'ENG 102', 3, 130, 'English', 1),
(100101, 'U.S Literature', 'This course focuses on traditionally underrepresented or marginalized American literatures. Readings may cover a wide range of genres, such as novels, poetry, creative nonfiction, plays, and graphic narratives, in order to explore various identities and differences within a national context. The course will also provide an introduction to the methods of literary study, including close reading and literary analysis, both oral and written. Authors and texts assigned will vary by section and instructor. ', 'ENG 104 ', 3, 130, 'English', 1),
(100102, 'African America Literature', 'An introduction to the study of an African American literary tradition. The focus or themes of the course, as well as authors and texts, will vary by semester and instructor, but all sections will emphasize the traditions major genres,slave narratives & slam poetry, & its major movements,the Harlem Renaissance & Afrofuturism. The course will also provide instruction, the methods of literary analysis, including reading closely & writing text-based argument. web page for the content of individual sections.', 'ENG 104', 3, 130, 'English', 1),
(100103, 'Shakespeare', 'This course will offer an introduction to Shakespeares work through a survey of his major plays include all genres (history, comedy, tragedy, & romance) plus selected sonnets. Texts & emphasis will vary.', 'ENG 105', 3, 130, 'English', 2),
(100104, 'Literatures Studies', 'A writing-intensive course, traditional & non-traditional literatures, each section of which will have a different focus, topic, & approach; recent offerings have examined the short story, major women writers, new international writing, & the literary Gothic.', 'ENG 105', 3, 130, 'English', 2),
(100105, 'Poetry', 'An introduction to the study of poetry. Topics and methods vary, but all sections emphasize techniques of close reading, critical inquiry, and engaged communication fundamental to the discipline of literary studies. Consult the detailed course description in the English department or in its web page for the content of individual courses and sections.', 'ENG 106', 3, 130, 'English', 2),
(100106, 'Drama', 'An introduction to the study of drama. Topics and methods vary, but all sections emphasize intensive close reading in combination with examining the cultural and historical contexts in which plays are written and performed. Consult the detailed course description in the English department or on its web page for the content of individual courses and sections.', 'ENG 107', 3, 130, 'English', 2),
(100107, 'Novel', 'This introduction to the study of the novel pays special attention to the genres history & to the cultural & political significance of individual texts. Authors & texts will vary according to instructor, but all sections will consider the development of the novel across time, include a range of author identities and styles, and provide instruction in intensive close reading and literary analysis. Consult the detailed course description in the English department or on its web page for the content of individual courses and sections.', 'ENG 108', 3, 130, 'English', 2),
(100108, 'Creative Writing', 'This workshop-based course develop skills for writing poetry, short fiction, & creative nonfiction through a close study of the techniques involve these forms, analysis of model literary works, & frequent writing exercises that will be workshopped.', 'ENG 109', 3, 130, 'English', 2),
(100109, 'Literary Publishing ', 'This course approaches the dynamic field of publishing, from acquisitions of literary titles to their entrance into the marketplace, from the writers hands to the editors desk to the readers library. With explorations into the history of the book, new technologies, and the vibrant literary scene in the Twin Cities and beyond, this course illuminates the complex realities of how literature meets our culture.', 'ENG 110', 3, 130, 'English', 2),
(100110, 'Film Studies', 'This course will focus different topics from year to year. Possible topics include Great Directors, Russian Film, French Film, Film and Ideology, Literature and Film, and Images of Black Women in Hollywood Films. Please consult the specific course description in the English department.', 'ENG 111', 3, 130, 'English', 2),
(100111, 'British Literature', 'A study of British literature from the restoration of the British monarchy in 1660 to the revolutionary turn of the nineteenth century, emphasizing relationships between literary language and socio-political change. Readings will include prose fiction, drama, poetry, periodical essays, and philosophy from the period, as well as recent works of literary theory and criticism. Topics may include developments in poetics; the rise of the novel; the politics of satire; free-market economics; gender and sexuality; misogyny; sensibility; and libertinism.', 'ENG 112', 3, 130, 'English', 2),
(101001, 'Brass Techniques', 'Preprofessional training in performing and teaching methodologies for trumpet, horn, trombone, baritone, and tuba. Laboratory teaching exposure to Buffalo Public School music students.', 'MUS 107', 3, 132, 'Music', 2),
(101002, 'Percussion Techniques', 'Preprofessional training in performing and teaching methodologies for percussion instruments. Laboratory teaching exposure to Buffalo Public School music students.', 'MUS 108', 3, 132, 'Music', 2),
(101003, 'String Techniques', 'Preprofessional training in performing and teaching methodologies for violin, viola, violoncello, and contrabass.', 'MUS 109', 3, 132, 'Music', 2),
(101004, 'WoodWind Techniques', 'Preprofessional training in performing and teaching methodologies for flute, clarinet, oboe, bassoon, and saxophone. Laboratory teaching exposure to Buffalo Public School music students.', 'MUS 110', 3, 132, 'Music', 2),
(101005, 'Vocal Pedagogy', 'Develops knowledge and techniques for the teaching of voice, including posture, breathing, diction, repertoire selection at all levels, as well as the pedagogical processes for teaching secondary vocal students. Repeatable.', 'MUS 111', 3, 132, 'Music', 2),
(101006, 'Piano 1', 'This is the first in a sequence of four group piano courses designed for those music students who need to improve their piano skills. The first two semesters focus on developing general musicianship skills, such as sight reading from the grand staff, melody harmonization, technique, improvisation, ensemble performance, practicing, and use of basic theory skills at the keyboard.', 'MUS 112', 3, 132, 'Music', 2),
(101007, 'Piano 2', 'Continuation of the skills acquired in Piano 1.', 'MUS 113', 3, 132, 'Music', 2),
(101008, 'Applied Music', 'Individual lessons for voice or instrument. Required for music majors. Private lesson fee possible. Concert attendance required.', 'MUS 114', 3, 132, 'Music', 2),
(101009, 'Aural Perception', 'Laboratory course for those with basic music-reading skills. Reinforces theoretical music concepts in the form of sight singing, rhythmic, melodic dictation, and basic musicianship.', 'MUS 115', 3, 132, 'Music', 2),
(110001, 'Storytelling in America Culture', 'Storytelling among different ethnic groups within the United States: Origin myths, multicultural histories, family lore, heroic epics, trickster tales, traumatic experiences, slave narratives, immigrant testimonies, war memorials, celebrity biographies, urban legends, animated fairy-tales, science fiction films, game worlds, and emergent narrative forms', 'HUM 111', 3, 131, 'Humanities', 2),
(110002, 'Popular Culture', 'Meaning and impact of American popular culture in the twentieth century: The cultural evolution of consumerism, amusement, leisure, media, and entertainment industries', 'HUM 112', 3, 131, 'Humanities', 2),
(110003, 'Art and Communication', 'Analysis of history and aesthetics of film from its inception in the late 19th century to the present: Language of film, factual films vs. fictional films, and effect of films on contemporary society', 'HUM 113', 3, 131, 'Humanities', 2),
(110004, 'Human Values & Ethics', 'Analysis of concepts of good and right in our society and of criteria of conduct: Various religious, philosophic, scientific, and aesthetic aspects of moral behavior integrated with reason and emotion of the individual.', 'HUM 114', 3, 131, 'Humanities', 2),
(110005, 'Women & Cinema', 'Analysis of women in cinema and of feminist and queer film criticism: Feminist film theory, criticism, and history; women as readers of film; women’s independent film; women’s often conflicted relationship with film representations; and the role of sexuality and gender in film viewing and representation.', 'HUM 115', 3, 131, 'Humanities', 2),
(500024, 'Computational Molecular Biology', 'This advanced course covers the application of machine learning and modeling techniques to biological systems. Topics include gene structure, recognition of DNA and protein sequence patterns, classification, and protein structure prediction.', 'BGE 408', 3, 125, 'Biogenetics', 2);

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
-- Table structure for table `enrollment1`
--

CREATE TABLE `enrollment1` (
  `Stud_ID` int(11) NOT NULL,
  `E_Sec_ID` int(11) NOT NULL,
  `Assignment` text NOT NULL,
  `Grade` int(11) NOT NULL,
  `E_SemesterYearID` int(11) NOT NULL,
  `Facu_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment1`
--

INSERT INTO `enrollment1` (`Stud_ID`, `E_Sec_ID`, `Assignment`, `Grade`, `E_SemesterYearID`, `Facu_ID`) VALUES
(2222, 1009, '0', 0, 5004, 0),
(2222, 1009, 'Quiz', 75, 50001, 0),
(2222, 1009, 'Quiz', 75, 50001, 22223),
(2222, 1001, 'Test', 75, 50001, 22223);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Facu_ID` int(11) NOT NULL COMMENT 'Faculty ID',
  `F_Rank` varchar(45) NOT NULL,
  `F_Office` varchar(45) NOT NULL,
  `F_OfficeHrs` varchar(45) NOT NULL,
  `F_Dept_ID` int(11) NOT NULL,
  `F_Room_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Facu_ID`, `F_Rank`, `F_Office`, `F_OfficeHrs`, `F_Dept_ID`, `F_Room_ID`) VALUES
(0, '', '', '', 0, 0),
(22223, 'Faculty', '123 Math Building', '12:00 - 1:00', 124, 0),
(22224, 'Faculty', '123 Science Building', '12:00 - 1:00', 125, 0),
(22225, 'Faculty', '234 Medical Building', '1:00 - 2:00', 127, 0),
(22226, 'Faculty', '235 Medical Building', '3:00 - 4:00', 127, 0),
(22227, 'Faculty', '355 Science Building', '12:00 - 1:00', 125, 0),
(22228, 'Faculty', '220 Science Building', '4:00 - 5:00', 125, 0),
(22229, 'Faculty', '120 Science Building', '3:00 - 4:30', 125, 0),
(22230, 'Faculty', '100 Medical Building', '2:00 - 3:00', 127, 0),
(22231, 'Faculty', '123 Art Building ', '5:00 - 6:00', 128, 0),
(22238, 'Faculty', '123 Computer Science Building', '5:00 - 6:00', 129, 0),
(22239, 'Faculty', '222 Computer Science Building', '5:00 - 6:00', 129, 0),
(22240, 'Faculty', '123 Medical Building', '3:00 - 4:00', 127, 0),
(22241, 'Advisor', '123 Medical Building', '12:00 - 1:00', 127, 0),
(22242, 'Faculty', '123 Computer Science Building', '3:00 - 4:00', 129, 0),
(22243, 'Advisor', '200 Business Building', '3:00 - 4:00', 126, 0),
(22244, 'Advisor', '200 Art Building', '3:00 - 4:00', 128, 0),
(22245, 'Advisor', '200 Computer Science Building', '3:00 - 4:00', 129, 0),
(22246, 'Advisor', '200 Biology Building', '3:00 - 4:00', 125, 0),
(22247, 'Advisor', '200 Math Building ', '3:00 - 4:00', 124, 0),
(22248, 'Faculty', '123 Business Building', '12:00 - 1:00pm', 126, 0),
(22249, 'Faculty', '200 Business Building', '2:00 - 3:00 pm M/W', 126, 0),
(22250, 'Faculty', '222 Business Building', '2:00 - 3:00pm Tu/Th', 126, 0),
(22251, 'Faculty', '200 Art Building', '11:00am - 12:00pm Tu/Th', 124, 0),
(22252, 'Faculty', '200 Science Building', '3:00 - 4:00pm M/W', 125, 0),
(22253, 'Faculty', '222 Art Building', '12:00 - 1:00pm M/W', 128, 0),
(22254, 'Faculty', '200 Art Building', '2:00 - 3:00pm Tu/Th', 128, 0),
(22255, 'Faculty', '222 Math Building', '12:00 - 1:00pm Tu/Th', 124, 0),
(22256, 'Faculty', '223 Math Building', '2:00 - 3:00pm Tu/Th', 124, 0),
(22257, 'Faculty', '300 Art Building', '2:00 - 3:00pm M/W', 128, 0),
(22258, 'Advisor', '300 Math Building', '2:00 - 3:00pm M/W', 124, 0),
(22259, 'Advisor', '300 Art Building', '1:00 - 2:00pm M/W', 128, 0),
(22260, 'Advisor', '301 Medical Building', '12:00 - 1:00pm Tu/Th', 127, 0),
(22261, 'Advisor', '301 Science Building', '2:00 - 3:00pm M/W', 125, 0),
(22262, 'Advisor', '301 Computer Science Building', '2:00 - 3:00pm Tu/Th', 129, 0),
(22263, 'Advisor', '301 Business Building', '1:00 - 2:00pm', 126, 0),
(22264, 'Faculty', '233 Math Building', '12:00 - 1:00pm', 124, 0),
(22265, 'Faculty', '121 Computer Science Building', '12:00 - 1:00pm Tuesday/Thursday', 129, 0),
(22266, 'Faculty', '122 Computer Science Building', '2:00 - 3:00pm Tuesday/Thursday', 129, 0),
(22267, 'Advisor', '123 Computer Science Building', '12:00 - 1:00pm Monday/Wednesday', 129, 0),
(22268, 'Advisor', '124 Computer Science Building', '12:00 - 1:00pm Monday/Wednesday', 129, 0),
(22269, 'Faculty', '125 Computer Science Building', '3:00 - 4:00pm Tuesday/Thursday', 129, 0),
(22270, 'Faculty', '126 Computer Science Building', '12:00 - 1:00pm Monday/Wednesday', 129, 0),
(22271, 'Faculty', '127 Computer Science Building', '2:00 - 3:00pm Tuesday/Thursday', 129, 0),
(22272, 'Faculty', '121 Math Building', '12:00 - 1:00pm Tuesday/Thursday', 124, 0),
(22273, 'Faculty', '122 Math Building', '10:00 - 11:00pm Monday/Wednesday', 124, 0),
(22274, 'Advisor', '123 Math Building', '12:00 - 1:00pm Monday/Wednesday', 124, 0),
(22275, 'Faculty', '125 Math Building', '11:00am - 12:00pm Monday/Wednesday', 124, 0),
(22276, 'Advisor', '126 Math Building', '1:00 - 2:00pm Tuesday/Thursday', 124, 0),
(22277, 'Faculty', '127 Math Building', '12:00 - 1:00pm Tuesday/Thursday', 124, 0),
(22278, 'Faculty', '128 Math Building', '12:00 - 1:00pm Tuesday/Thursday', 124, 0),
(22279, 'Faculty', '129 Math Building', '9:00 - 10:00am Monday/Wednesday', 124, 0),
(22280, 'Faculty', '121 Business Building', '12:00 - 1:00pm Tuesday/Thursday', 126, 0),
(22281, 'Advisor', '122 Business Building', '12:00 - 1:00pm Monday/Wednesday', 126, 0),
(22282, 'Faculty', '123 Business Building', '1:00 - 2:00pm Monday/Wednesday', 126, 0),
(22283, 'Faculty', '124 Business Building', '10:00 - 11:00am Monday/Wednesday', 126, 0),
(22284, 'Advisor', '125 Business Building', '12:00 - 1:00pm Tuesday/Thursday', 126, 0),
(22285, 'Advisor', '126 Business Building', '4:00 - 5:00pm Tuesday/Thursday', 126, 0),
(22286, 'Faculty', '127 Business Building', '2:00 - 3:00pm Monday/Wednesday', 126, 0),
(22287, 'Faculty', '128 Business Building', '10:00 - 11:00am Tuesday/Thursday', 126, 0),
(22288, 'Faculty', '129 Business Building', '1:00 - 2:00pm Monday/Wednesday', 126, 0),
(22289, 'Faculty', '130 Business Building', '11:00 - 12:00pm Tuesday/Thursday', 126, 0),
(22290, 'Faculty', '131 Business Building', '12:00 - 1:00pm Monday/Wednesday', 126, 0),
(22291, 'Advisor', '132 Business Building', '1:00 - 2:00pm Monday/Wednesday', 126, 0),
(22292, 'Advisor', '121 Biology Building', '12:00 - 1:00pm Tuesday/Thursday', 125, 0),
(22293, 'Faculty', '122 Biology Building', '12:00 - 1:00pm Monday/Wednesday', 125, 0),
(22294, 'Faculty', '123 Biology Building', '2:00 - 3:00pm Tuesday/Thursday', 125, 0),
(22295, 'Faculty', '124 Biology Building', '2:00 - 3:00pm Monday/Wednesday', 125, 0),
(22296, 'Advisor', '125 Biology Building', '2:00 - 3:00pm Tuesday/Thursday', 125, 0),
(22297, 'Faculty', '126 Biology Building', '11:00am - 12:00pm Tuesday/Thursday', 125, 0),
(22298, 'Faculty', '127 Biology Building', '10:00 - 11:00am Monday/Wednesday', 125, 0),
(22299, 'Faculty', '121 Medical Building', '12:00 - 1:00pm Tuesday/Thursday', 127, 0),
(22300, 'Faculty', '122 Medical Building', '12:00 - 1:00pm Monday/Wednesday', 127, 0),
(22301, 'Faculty', '123 Medical Building', '2:00 - 3:00pm Monday/Wednesday', 127, 0),
(22302, 'Faculty', '124 Medical Building', '2:00 - 3:00pm Tuesday/Thursday', 127, 0),
(22303, 'Faculty', '125 Medical Building', '11:00am - 12:00pm Monday/Wednesday', 127, 0),
(22304, 'Faculty', '126 Medical Building', '10:00 - 11:00am Tuesday/Thursday', 127, 0),
(22305, 'Faculty', '127 Medical Building', '12:00 - 1:00pm Tuesday/Thursday', 127, 0),
(22306, 'Faculty', '128 Medical Building', '2:00 - 3:00pm Monday/Wednesday', 127, 0),
(22307, 'Faculty', '129 Medical Building', '2:00 - 3:00pm Monday/Wednesday', 127, 0),
(22308, 'Faculty', '130 Medical Building', '3:00 - 4:00pm Monday/Wednesday', 127, 0),
(22309, 'Faculty', '122 Art Building', '12:00 - 1:00pm Monday/Wednesday', 128, 0),
(22310, 'Faculty', '123 Art Building', '12:00 - 1:00pm Tuesday/Thursday', 128, 0),
(22311, 'Faculty', '124 Art Building', '1:00 - 2:00pm Tuesday/Thursday', 128, 0),
(22312, 'Faculty', '125 Art Building', '2:00 - 3:00pm Monday/Wednesday', 128, 0),
(22313, 'Faculty', '126 Art Building', '10:00 - 11:00am Monday/Wednesday', 128, 0),
(22314, 'Faculty', '127 Art Building', '12:00 - 1:00pm Tuesday/Thursday', 128, 0),
(22315, 'Faculty', '128 Art Building', '9:00 - 10:00am Tuesday/Thursday', 128, 0),
(22316, 'Faculty', '129 Art Building', '11:00am - 12:00pm Monday/Wednesday', 128, 0),
(22317, 'Faculty', '122 Humanities Building', '12:00 - 1:00pm Monday/Wednesday', 130, 0),
(22318, 'Advisor', '123 Humanities Building', '12:00 - 1:00pm Tuesday/Thursday', 130, 0),
(22319, 'Faculty', '124 Humanities Building', '10:00 - 11:00am Monday/Wednesday', 130, 0),
(22320, 'Faculty', '125 Humanities Building', '11:00a - 12:00pm Tuesday/Thursday', 130, 0),
(22321, 'Faculty', '126 Humanities Building', '12:00 - 1:00pm Tuesday/Thursday', 132, 0),
(22322, 'Faculty', '126 Humanities Building', '2:00 - 3:00pm Tuesday/Thursday', 132, 0),
(22323, 'Advisor', '127 Humanities Building', '1:00 - 2:00pm Monday/Wednesday', 132, 0),
(22324, 'Faculty', '128 Humanities Building', '12:00 - 1:00pm Monday/Wednesday', 131, 0),
(22325, 'Advisor', '129 Humanities Building', '2:00 - 3:00pm Monday/Wednesday', 131, 0);

-- --------------------------------------------------------

--
-- Table structure for table `facuschedule`
--

CREATE TABLE `facuschedule` (
  `Facu_id` int(11) NOT NULL,
  `Facu_sec_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `facuschedule`
--

INSERT INTO `facuschedule` (`Facu_id`, `Facu_sec_id`) VALUES
(22223, 1001);

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
  `MajorID` int(11) NOT NULL,
  `MinorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graduate`
--

INSERT INTO `graduate` (`GD_StudID`, `MajorID`, `MinorID`) VALUES
(33332, 1118, 0),
(33333, 1115, 108),
(33336, 1124, 0),
(33337, 1124, 105),
(33348, 1116, 107),
(33353, 1112, 0),
(33357, 1122, 0),
(33361, 1122, 0),
(33368, 1121, 108),
(33371, 1121, 103),
(33379, 1119, 0),
(33394, 1124, 102),
(33398, 1121, 106),
(33405, 1120, 107),
(33411, 1124, 101),
(33412, 1122, 0),
(33418, 1122, 104),
(33419, 1119, 0),
(33420, 1125, 101),
(33424, 1121, 106),
(33425, 1126, 0),
(33444, 1118, 108),
(33445, 1124, 101),
(33447, 1125, 0),
(33448, 1115, 0),
(33451, 1123, 106),
(33455, 1123, 0),
(33459, 1124, 0),
(33461, 1124, 101),
(33469, 1124, 102),
(33470, 1124, 0),
(33473, 1124, 103),
(33476, 1124, 0),
(33479, 1124, 104),
(33480, 1124, 0),
(33482, 1125, 0),
(33483, 1125, 105),
(33487, 1125, 106),
(33491, 1125, 0),
(33492, 1125, 107),
(33493, 1125, 0),
(33497, 1125, 108),
(33506, 1118, 102),
(33507, 1118, 104),
(33510, 1118, 0),
(33512, 1118, 106),
(33518, 1118, 0),
(33519, 1118, 0),
(33520, 1118, 108),
(33521, 1122, 103),
(33522, 1122, 105),
(33523, 1122, 106),
(33524, 1122, 107),
(33525, 1122, 0),
(33526, 1122, 0),
(33542, 1122, 0),
(33543, 1121, 0),
(33544, 1121, 0),
(33545, 1121, 103),
(33546, 1121, 0),
(33551, 1121, 104);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Stud_ID` int(11) NOT NULL,
  `Sec_ID` int(11) NOT NULL,
  `CourseDump` varchar(45) NOT NULL COMMENT 'Not sure what this is',
  `SemesterYearID` int(11) NOT NULL,
  `Cour_ID` int(11) NOT NULL,
  `Midterm_Grade` int(11) NOT NULL,
  `Final_Grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`Stud_ID`, `Sec_ID`, `CourseDump`, `SemesterYearID`, `Cour_ID`, `Midterm_Grade`, `Final_Grade`) VALUES
(33332, 1001, '', 50001, 0, 0, 0),
(2222, 1009, '', 50001, 0, 0, 0),
(2222, 1001, '', 5004, 0, 0, 0),
(2222, 1004, '', 5004, 0, 0, 0),
(2222, 1015, '0', 50001, 50000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `holds`
--

CREATE TABLE `holds` (
  `Holds_ID` int(11) NOT NULL,
  `Hold_Type` varchar(45) NOT NULL,
  `Hold_Description` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `holds`
--

INSERT INTO `holds` (`Holds_ID`, `Hold_Type`, `Hold_Description`) VALUES
(200, 'Financial', 'Financial Hold on account. Please see Bursar'),
(201, 'Medical ', ''),
(202, 'Form Incomplete ', '');

-- --------------------------------------------------------

--
-- Table structure for table `holdstatus`
--

CREATE TABLE `holdstatus` (
  `HS_HoldID` int(11) NOT NULL,
  `HS_StudentID` int(11) NOT NULL,
  `HoldStatus` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `holdstatus`
--

INSERT INTO `holdstatus` (`HS_HoldID`, `HS_StudentID`, `HoldStatus`) VALUES
(200, 2222, 'Unsatisfied'),
(200, 33371, 'Unsatisfied'),
(202, 33347, 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `labroom`
--

CREATE TABLE `labroom` (
  `La_Room_ID` int(11) NOT NULL,
  `RoomCapacity` int(11) NOT NULL,
  `RoomTypeLab` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `labroom`
--

INSERT INTO `labroom` (`La_Room_ID`, `RoomCapacity`, `RoomTypeLab`) VALUES
(88815, 25, 'Lecture Room'),
(88832, 25, 'Biology Lab'),
(88836, 25, 'Lab Room'),
(88847, 30, 'Small Lecture'),
(88861, 25, 'Computer Lab');

-- --------------------------------------------------------

--
-- Table structure for table `lectureroom`
--

CREATE TABLE `lectureroom` (
  `Le_Room_ID` int(11) NOT NULL,
  `RoomCapacity` int(11) NOT NULL,
  `RoomTypeLec` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lectureroom`
--

INSERT INTO `lectureroom` (`Le_Room_ID`, `RoomCapacity`, `RoomTypeLec`) VALUES
(88810, 25, 'Large Lecture'),
(88841, 25, 'Lecture'),
(88857, 30, 'Electronic Lecture');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `Major_ID` int(11) NOT NULL,
  `M_Name` varchar(45) NOT NULL COMMENT 'Medical Majors, Comp Eng, Busi Lead, Math Theo is Graduate only',
  `M_DepartID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`Major_ID`, `M_Name`, `M_DepartID`) VALUES
(0, 'test', 0),
(1112, 'Calculus', 124),
(1113, 'Trigonometry', 124),
(1114, 'Business', 126),
(1115, 'Economics', 126),
(1116, 'Accounting', 126),
(1117, 'Biochemistry', 125),
(1118, 'Medical Chemistry', 127),
(1119, 'Graphic Design', 128),
(1120, 'Digital Art', 128),
(1121, 'Human Systems', 127),
(1122, 'Computer Science B.S.', 129),
(1123, 'Computer Science B.A.', 129),
(1124, 'Computer Engineering ', 129),
(1125, 'Business Leadership', 126),
(1126, 'Mathematical Theory', 124),
(1127, 'Biogenetics', 125);

-- --------------------------------------------------------

--
-- Table structure for table `majorrequirements`
--

CREATE TABLE `majorrequirements` (
  `Major_ID` int(11) NOT NULL,
  `MR_CourseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `majorrequirements`
--

INSERT INTO `majorrequirements` (`Major_ID`, `MR_CourseID`) VALUES
(1112, 90001),
(1112, 90004),
(1113, 90000),
(1113, 90001),
(1113, 90009);

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
(5004, 'Spring', '2020'),
(50001, 'Fall', '2018'),
(50002, 'Spring', '2019'),
(50003, 'Fall', '2019');

-- --------------------------------------------------------

--
-- Table structure for table `minor`
--

CREATE TABLE `minor` (
  `Minor_ID` int(11) NOT NULL,
  `Department_ID` int(11) NOT NULL,
  `MinorName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `minor`
--

INSERT INTO `minor` (`Minor_ID`, `Department_ID`, `MinorName`) VALUES
(0, 0, 'None'),
(101, 124, 'Math'),
(102, 125, 'Biology'),
(103, 126, 'Business'),
(104, 128, 'Art'),
(105, 129, 'Computer Science'),
(106, 130, 'English'),
(107, 131, 'Humanities'),
(108, 132, 'Music');

-- --------------------------------------------------------

--
-- Table structure for table `officeroom`
--

CREATE TABLE `officeroom` (
  `Of_Room_ID` int(11) NOT NULL,
  `RoomCapacity` int(11) NOT NULL,
  `Room Type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prerequisites1`
--

CREATE TABLE `prerequisites1` (
  `Prerequ_ID` int(11) NOT NULL,
  `P_CourseID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prerequisites1`
--

INSERT INTO `prerequisites1` (`Prerequ_ID`, `P_CourseID`) VALUES
(90000, 90001),
(90000, 90002),
(90002, 90003),
(90001, 90004),
(90004, 90005),
(90002, 90006),
(90004, 90007),
(90005, 90007),
(90007, 90008),
(90007, 90009),
(90008, 90010),
(90008, 90011),
(90003, 90012),
(90008, 90013),
(90003, 90014),
(90011, 90015),
(90012, 90015),
(90013, 90016),
(90014, 90016),
(80000, 80002),
(80000, 80003),
(80000, 80004),
(80000, 80005),
(80002, 80006),
(80003, 80006),
(80006, 80007),
(80004, 80008),
(80006, 80009),
(80007, 80010),
(80006, 80011),
(80008, 80012),
(80009, 80013),
(80009, 80014),
(80006, 80014),
(80006, 80015),
(80009, 80015),
(80006, 80016),
(80009, 80016),
(80014, 80017),
(80015, 80017),
(90000, 70001),
(90001, 70001),
(70001, 70002),
(70002, 70003),
(70002, 70004),
(70003, 70005),
(70003, 70006),
(70003, 70007),
(70003, 70008),
(70003, 70009),
(70003, 70010),
(90003, 70010),
(70007, 70011),
(70008, 70011),
(70007, 70012),
(70008, 70012),
(70008, 70013),
(70007, 70013),
(70007, 70014),
(70008, 70014),
(70007, 70015),
(70008, 70015),
(90001, 50000),
(90001, 50001),
(90001, 50002),
(50000, 50003),
(50000, 50004),
(50003, 50005),
(50003, 50006),
(50004, 50007),
(50004, 50008),
(50004, 50009),
(50004, 50010),
(50008, 50011),
(50007, 50011),
(50008, 50012),
(50008, 50013),
(50004, 50014),
(50004, 50015),
(50004, 50016),
(50014, 50017),
(50014, 50018),
(50014, 50019),
(50016, 50020),
(50016, 50021),
(50016, 50022),
(50019, 50023),
(60000, 60003),
(60000, 60004),
(60000, 60005),
(60000, 60006),
(60001, 60006),
(60002, 60006),
(60003, 60009),
(60004, 60009),
(60003, 60010),
(60004, 60010),
(60003, 60011),
(60004, 60011),
(60010, 60013),
(60003, 60014),
(60007, 60014),
(60009, 60015),
(60010, 60015),
(70007, 60016),
(60009, 60016),
(60010, 60016),
(60013, 60016),
(60009, 60017),
(60010, 60017),
(60009, 60018),
(60010, 60018);

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
(44441),
(44442);

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
(88816, 103, 25, 77773),
(88817, 105, 25, 77771),
(88818, 106, 25, 77771),
(88819, 201, 25, 77771),
(88820, 202, 25, 77771),
(88821, 203, 25, 77771),
(88822, 204, 25, 77771),
(88823, 205, 25, 77771),
(88824, 206, 25, 77771),
(88825, 102, 30, 77772),
(88826, 104, 30, 77772),
(88827, 105, 30, 77772),
(88828, 201, 25, 77772),
(88829, 202, 25, 77772),
(88830, 203, 25, 77772),
(88831, 204, 30, 77772),
(88832, 205, 30, 77772),
(88833, 102, 25, 77773),
(88834, 104, 30, 77773),
(88835, 105, 25, 77773),
(88836, 106, 30, 77773),
(88837, 201, 25, 77773),
(88838, 202, 25, 77773),
(88839, 203, 25, 77773),
(88840, 204, 25, 77773),
(88841, 101, 25, 77774),
(88842, 102, 25, 77774),
(88843, 103, 25, 77774),
(88844, 104, 25, 77774),
(88845, 105, 25, 77774),
(88846, 201, 30, 77774),
(88847, 202, 25, 77774),
(88848, 203, 30, 77774),
(88849, 204, 25, 77774),
(88850, 205, 30, 77774),
(88851, 101, 25, 77775),
(88852, 102, 25, 77775),
(88853, 103, 25, 77775),
(88854, 104, 25, 77775),
(88855, 105, 25, 77775),
(88856, 201, 25, 77775),
(88857, 202, 25, 77775),
(88858, 203, 25, 77775),
(88859, 204, 25, 77775),
(88860, 205, 30, 77775),
(88861, 101, 25, 77776),
(88862, 102, 25, 77776),
(88863, 103, 30, 77776),
(88864, 104, 30, 77776),
(88865, 105, 25, 77776),
(88866, 201, 25, 77776),
(88867, 202, 30, 77776),
(88868, 203, 30, 77776),
(88869, 204, 25, 77776),
(88870, 107, 25, 77771),
(88870, 205, 30, 77776),
(88871, 108, 25, 77771),
(88872, 109, 25, 77771),
(88873, 110, 25, 77771),
(88874, 111, 25, 77771),
(88875, 112, 25, 77771),
(88876, 113, 25, 77771),
(88877, 114, 25, 77771),
(88878, 115, 25, 77771),
(88879, 116, 25, 77771),
(88880, 117, 25, 77771),
(88881, 118, 25, 77771),
(88882, 119, 25, 77771),
(88883, 120, 25, 77771),
(88884, 121, 25, 77771),
(88885, 122, 25, 77771),
(88886, 123, 25, 77771),
(88887, 124, 25, 77771),
(88888, 125, 25, 77771),
(88889, 106, 25, 77772),
(88890, 107, 25, 77772),
(88891, 108, 25, 77772),
(88892, 109, 25, 77772),
(88893, 110, 25, 77772),
(88894, 111, 25, 77772),
(88895, 112, 25, 77772),
(88896, 113, 25, 77772),
(88897, 114, 25, 77772),
(88898, 115, 25, 77772),
(88899, 116, 25, 77772),
(88900, 117, 25, 77772),
(88901, 118, 25, 77772),
(88902, 119, 25, 77772),
(88903, 120, 25, 77772),
(88904, 121, 25, 77772),
(88905, 122, 25, 77772),
(88906, 123, 25, 77772),
(88907, 124, 25, 77772),
(88908, 107, 25, 77773),
(88909, 108, 25, 77773),
(88910, 109, 25, 77773),
(88911, 110, 25, 77773),
(88912, 111, 25, 77773),
(88913, 112, 25, 77773),
(88914, 113, 25, 77773),
(88915, 114, 25, 77773),
(88916, 115, 25, 77773),
(88917, 116, 25, 77773),
(88918, 117, 25, 77773),
(88919, 118, 25, 77773),
(88920, 119, 25, 77773),
(88921, 120, 25, 77773),
(88922, 121, 25, 77773),
(88923, 122, 25, 77773),
(88924, 123, 25, 77773),
(88925, 107, 25, 77774),
(88926, 108, 25, 77774),
(88927, 109, 25, 77774),
(88928, 110, 25, 77774),
(88929, 111, 25, 77774),
(88930, 112, 25, 77774),
(88931, 113, 25, 77774),
(88932, 114, 25, 77774),
(88933, 115, 25, 77774),
(88934, 116, 25, 77774),
(88935, 117, 25, 77774),
(88936, 118, 25, 77774),
(88937, 119, 25, 77774),
(88938, 120, 25, 77774),
(88939, 121, 25, 77774),
(88940, 122, 25, 77774),
(88941, 107, 25, 77775),
(88942, 108, 25, 77775),
(88943, 109, 25, 77775),
(88944, 110, 25, 77775),
(88945, 111, 25, 77775),
(88946, 112, 25, 77775),
(88947, 113, 25, 77775),
(88948, 114, 25, 77775),
(88949, 115, 25, 77775),
(88950, 116, 25, 77775),
(88951, 117, 25, 77775),
(88952, 118, 25, 77775),
(88953, 119, 25, 77775),
(88954, 120, 25, 77775),
(88955, 121, 25, 77775),
(88956, 122, 25, 77775),
(88957, 123, 25, 77775),
(88958, 124, 25, 77775);

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
  `S_RoomNum` int(11) NOT NULL,
  `S_Num` int(11) NOT NULL,
  `Capacity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`S_Section_ID`, `S_FacuID`, `S_CourseID`, `S_BuildID`, `S_SemesterYearID`, `S_TimeSlotID`, `S_RoomNum`, `S_Num`, `Capacity`) VALUES
(1001, 22223, 40001, 77773, 5004, 10001, 88810, 1, 0),
(1002, 22223, 90000, 77771, 50001, 10001, 88810, 1, 0),
(1004, 22223, 90001, 77771, 50003, 100003, 88810, 1, 0),
(1005, 22223, 90002, 77771, 50003, 100003, 88811, 1, 0),
(1006, 22224, 90003, 77771, 50003, 100005, 88811, 2, 0),
(1007, 22255, 90003, 77771, 50001, 100010, 88811, 1, 0),
(1008, 22255, 90003, 77771, 50001, 100013, 88812, 2, 0),
(1009, 22223, 90004, 77771, 50001, 100006, 88810, 1, 0),
(1010, 22223, 90004, 77771, 50001, 100008, 88810, 2, 0),
(1011, 22256, 90005, 77771, 50001, 100011, 88812, 1, 0),
(1012, 22256, 90005, 77771, 50001, 100009, 88812, 2, 0),
(1013, 22255, 90006, 77771, 50001, 100009, 88817, 1, 0),
(1014, 22223, 90007, 77771, 50001, 100010, 88817, 1, 0),
(1015, 22224, 50000, 77772, 50001, 100002, 88829, 1, 0),
(1016, 22224, 50000, 77772, 50001, 100005, 88829, 2, 0),
(1017, 22224, 50001, 77772, 50001, 100003, 88832, 1, 0),
(1018, 22227, 50001, 77772, 50001, 100002, 88832, 2, 0),
(1019, 22227, 50002, 77772, 50001, 100009, 88832, 1, 0),
(1020, 22224, 50002, 77772, 50001, 100009, 88829, 2, 0),
(1021, 22227, 50003, 77772, 50001, 100003, 88831, 1, 0),
(1022, 22228, 50003, 77772, 50001, 100007, 88831, 2, 0),
(1023, 22228, 50004, 77772, 50001, 100008, 88831, 1, 0),
(1024, 22228, 50005, 77772, 50001, 100015, 88831, 1, 0),
(1025, 22228, 50006, 77772, 50001, 100010, 88830, 1, 0),
(1026, 22229, 50007, 77772, 50001, 100002, 88831, 1, 0),
(1027, 22225, 40000, 77773, 50001, 100002, 88836, 1, 0),
(1028, 22225, 50000, 77773, 50001, 100009, 88836, 2, 0),
(1029, 22225, 40001, 77773, 50001, 100003, 88836, 1, 0),
(1030, 22225, 40001, 77773, 50001, 100003, 88836, 2, 0),
(1031, 22225, 40002, 77773, 50001, 100005, 88839, 1, 0),
(1032, 22225, 40002, 77773, 50001, 100012, 88839, 2, 0),
(1033, 22226, 40003, 77773, 50001, 100002, 88839, 1, 0),
(1034, 22226, 40003, 77773, 50001, 100009, 88839, 2, 0),
(1035, 22226, 40004, 77773, 50001, 100003, 88838, 1, 0),
(1036, 22226, 40004, 77773, 50001, 100010, 88838, 2, 0),
(1037, 22226, 40005, 77773, 50001, 100004, 88838, 1, 0),
(1038, 22226, 40005, 77773, 50001, 100011, 88838, 2, 0),
(1039, 22230, 40006, 77773, 50001, 100004, 88837, 1, 0),
(1040, 22231, 60000, 77774, 50001, 100003, 88847, 1, 0),
(1041, 22231, 60000, 77774, 50001, 100010, 88847, 2, 0),
(1042, 22231, 60001, 77774, 50001, 100003, 88847, 1, 0),
(1043, 22231, 60001, 77774, 50001, 100003, 88847, 2, 0),
(1044, 22231, 60002, 77774, 50001, 100004, 88850, 1, 0),
(1045, 22231, 60002, 77774, 50001, 100011, 88850, 2, 0),
(1046, 22251, 60003, 77774, 50001, 100002, 88849, 1, 0),
(1047, 22251, 60003, 77774, 50001, 100009, 88850, 2, 0),
(1048, 22253, 60004, 77774, 50001, 100002, 88849, 1, 0),
(1049, 22253, 60004, 77774, 50001, 100009, 88849, 2, 0),
(1050, 22251, 60005, 77774, 50001, 100003, 88849, 1, 0),
(1051, 22251, 60005, 77774, 50001, 100010, 88849, 2, 0),
(1052, 22251, 60006, 77774, 50001, 100005, 88849, 1, 0),
(1053, 22251, 60006, 77774, 50001, 100005, 88849, 2, 0),
(1054, 22253, 60007, 77774, 50001, 100002, 88845, 1, 0),
(1055, 22253, 60007, 77774, 50001, 100009, 88845, 2, 0),
(1056, 22253, 60008, 77774, 50001, 100003, 88848, 1, 0),
(1057, 22253, 60008, 77774, 50001, 100010, 88848, 2, 0),
(1058, 22253, 60009, 77774, 50001, 100005, 88846, 1, 0),
(1059, 22253, 60009, 77774, 50001, 100012, 88846, 2, 0),
(1060, 22238, 70001, 77776, 50001, 100003, 88861, 1, 0),
(1061, 22238, 70001, 77776, 50001, 100010, 88861, 2, 0),
(1062, 22238, 70002, 77776, 50001, 100004, 88861, 1, 0),
(1063, 22238, 70002, 77776, 50001, 100011, 88861, 1, 0),
(1064, 22238, 70003, 77776, 50001, 100006, 88862, 2, 0),
(1065, 22238, 70003, 77776, 50001, 100013, 88862, 2, 0),
(1066, 22239, 70004, 77776, 50001, 100003, 88864, 1, 0),
(1067, 22239, 70004, 77776, 50001, 100010, 88864, 2, 0),
(1068, 22239, 70005, 77776, 50001, 100005, 88864, 1, 0),
(1069, 22239, 70005, 77776, 50001, 100012, 88864, 2, 0),
(1071, 22242, 70007, 77776, 50001, 100002, 88865, 1, 0),
(1072, 22242, 70007, 77776, 50001, 100009, 88865, 2, 0),
(1073, 22242, 70008, 77776, 50001, 100003, 88865, 1, 0),
(1074, 22242, 70008, 77776, 50001, 100010, 88865, 2, 0),
(1075, 22242, 70009, 77776, 50001, 100004, 88865, 1, 0),
(1076, 22242, 70009, 77776, 50001, 100006, 88866, 1, 0),
(1077, 22248, 80000, 77775, 50001, 100002, 88857, 1, 0),
(1078, 22248, 80000, 77775, 50001, 100009, 88857, 2, 0),
(1079, 22248, 80001, 77775, 50001, 100003, 88857, 1, 0),
(1080, 22248, 80001, 77775, 50001, 100010, 88857, 2, 0),
(1081, 22248, 80002, 77775, 50001, 100005, 88857, 1, 0),
(1082, 22248, 80002, 77775, 50001, 100012, 88857, 2, 0),
(1083, 22249, 80003, 77775, 50001, 100002, 88860, 1, 0),
(1084, 22249, 80003, 77775, 50001, 100009, 88860, 2, 0),
(1085, 22249, 80004, 77775, 50001, 100003, 88860, 1, 0),
(1086, 22249, 80004, 77775, 50001, 100010, 88860, 2, 0),
(1087, 22249, 80005, 77775, 50001, 100004, 88860, 1, 0),
(1088, 22249, 80005, 77775, 50001, 100011, 88860, 2, 0),
(1089, 22250, 80006, 77775, 50001, 100002, 88859, 1, 0),
(1090, 22250, 80006, 77775, 50001, 100009, 88859, 2, 0),
(1091, 22250, 80007, 77775, 50001, 100003, 88859, 1, 0),
(1092, 22250, 80007, 77775, 50001, 100010, 88859, 2, 0),
(1093, 22250, 80008, 77775, 50001, 100004, 88859, 1, 0),
(1094, 22250, 80008, 77775, 50001, 100011, 88859, 2, 0),
(2001, 22223, 40001, 77773, 50002, 10001, 88810, 1, 0),
(2002, 22223, 90000, 77771, 50002, 10001, 88810, 1, 0),
(2004, 22223, 90001, 77771, 50002, 100003, 88810, 1, 0),
(2005, 22223, 90002, 77771, 50002, 100003, 88811, 1, 0),
(2006, 22224, 90003, 77771, 50002, 100005, 88811, 2, 0),
(2007, 22255, 90003, 77771, 50002, 100010, 88811, 1, 0),
(2008, 22255, 90003, 77771, 50002, 100013, 88812, 2, 0),
(2009, 22223, 90004, 77771, 50002, 100006, 88810, 1, 0),
(2010, 22223, 90004, 77771, 50002, 100008, 88810, 2, 0),
(2011, 22256, 90005, 77771, 50002, 100011, 88812, 1, 0),
(2012, 22256, 90005, 77771, 50002, 100009, 88812, 2, 0),
(2013, 22255, 90006, 77771, 50002, 100009, 88817, 1, 0),
(2014, 22223, 90007, 77771, 50002, 100010, 88817, 1, 0),
(2015, 22224, 50000, 77772, 50002, 100002, 88829, 1, 0),
(2016, 22224, 50000, 77772, 50002, 100005, 88829, 2, 0),
(2017, 22224, 50001, 77772, 50002, 100003, 88832, 1, 0),
(2018, 22227, 50001, 77772, 50002, 100002, 88832, 2, 0),
(2019, 22227, 50002, 77772, 50002, 100009, 88832, 1, 0),
(2020, 22224, 50002, 77772, 50002, 100009, 88829, 2, 0),
(2021, 22227, 50003, 77772, 50002, 100003, 88831, 1, 0),
(2022, 22228, 50003, 77772, 50002, 100007, 88831, 2, 0),
(2023, 22228, 50004, 77772, 50002, 100008, 88831, 1, 0),
(2024, 22228, 50005, 77772, 50002, 100015, 88831, 1, 0),
(2025, 22228, 50006, 77772, 50002, 100010, 88830, 1, 0),
(2026, 22229, 50007, 77772, 50002, 100002, 88831, 1, 0),
(2027, 22225, 40000, 77773, 50002, 100002, 88836, 1, 0),
(2028, 22225, 50000, 77773, 50002, 100009, 88836, 2, 0),
(2029, 22225, 40001, 77773, 50002, 100003, 88836, 1, 0),
(2030, 22225, 40001, 77773, 50002, 100003, 88836, 2, 0),
(2031, 22225, 40002, 77773, 50002, 100005, 88839, 1, 0),
(2032, 22225, 40002, 77773, 50002, 100012, 88839, 2, 0),
(2033, 22226, 40003, 77773, 50002, 100002, 88839, 1, 0),
(2034, 22226, 40003, 77773, 50002, 100009, 88839, 2, 0),
(2035, 22226, 40004, 77773, 50002, 100003, 88838, 1, 0),
(2036, 22226, 40004, 77773, 50002, 100010, 88838, 2, 0),
(2037, 22226, 40005, 77773, 50002, 100004, 88838, 1, 0),
(2038, 22226, 40005, 77773, 50002, 100011, 88838, 2, 0),
(2039, 22230, 40006, 77773, 50002, 100004, 88837, 1, 0),
(2040, 22231, 60000, 77774, 50002, 100003, 88847, 1, 0),
(2041, 22231, 60000, 77774, 50002, 100010, 88847, 2, 0),
(2042, 22231, 60001, 77774, 50002, 100003, 88847, 1, 0),
(2043, 22231, 60001, 77774, 50002, 100003, 88847, 2, 0),
(2044, 22231, 60002, 77774, 50002, 100004, 88850, 1, 0),
(2045, 22231, 60002, 77774, 50002, 100011, 88850, 2, 0),
(2046, 22251, 60003, 77774, 50002, 100002, 88849, 1, 0),
(2047, 22251, 60003, 77774, 50002, 100009, 88850, 2, 0),
(2048, 22253, 60004, 77774, 50002, 100002, 88849, 1, 0),
(2049, 22253, 60004, 77774, 50002, 100009, 88849, 2, 0),
(2050, 22251, 60005, 77774, 50002, 100003, 88849, 1, 0),
(2051, 22251, 60005, 77774, 50002, 100010, 88849, 2, 0),
(2052, 22251, 60006, 77774, 50002, 100005, 88849, 1, 0),
(2053, 22251, 60006, 77774, 50002, 100005, 88849, 2, 0),
(2054, 22253, 60007, 77774, 50002, 100002, 88845, 1, 0),
(2055, 22253, 60007, 77774, 50002, 100009, 88845, 2, 0),
(2056, 22253, 60008, 77774, 50002, 100003, 88848, 1, 0),
(2057, 22253, 60008, 77774, 50002, 100010, 88848, 2, 0),
(2058, 22253, 60009, 77774, 50002, 100005, 88846, 1, 0),
(2059, 22253, 60009, 77774, 50002, 100012, 88846, 2, 0),
(2060, 22238, 70001, 77776, 50002, 100003, 88861, 1, 0),
(2061, 22238, 70001, 77776, 50002, 100010, 88861, 2, 0),
(2062, 22238, 70002, 77776, 50002, 100004, 88861, 1, 0),
(2063, 22238, 70002, 77776, 50002, 100011, 88861, 1, 0),
(2064, 22238, 70003, 77776, 50002, 100006, 88862, 2, 0),
(2065, 22238, 70003, 77776, 50002, 100013, 88862, 2, 0),
(2066, 22239, 70004, 77776, 50002, 100003, 88864, 1, 0),
(2067, 22239, 70004, 77776, 50002, 100010, 88864, 2, 0),
(2068, 22239, 70005, 77776, 50002, 100005, 88864, 1, 0),
(2069, 22239, 70005, 77776, 50002, 100012, 88864, 2, 0),
(2071, 22242, 70007, 77776, 50002, 100002, 88865, 1, 0),
(2072, 22242, 70007, 77776, 50002, 100009, 88865, 2, 0),
(2073, 22242, 70008, 77776, 50002, 100003, 88865, 1, 0),
(2074, 22242, 70008, 77776, 50002, 100010, 88865, 2, 0),
(2075, 22242, 70009, 77776, 50002, 100004, 88865, 1, 0),
(2076, 22242, 70009, 77776, 50002, 100006, 88866, 1, 0),
(2077, 22248, 80000, 77775, 50002, 100002, 88857, 1, 0),
(2078, 22248, 80000, 77775, 50002, 100009, 88857, 2, 0),
(2079, 22248, 80001, 77775, 50002, 100003, 88857, 1, 0),
(2080, 22248, 80001, 77775, 50002, 100010, 88857, 2, 0),
(2081, 22248, 80002, 77775, 50002, 100005, 88857, 1, 0),
(2082, 22248, 80002, 77775, 50002, 100012, 88857, 2, 0),
(2083, 22249, 80003, 77775, 50002, 100002, 88860, 1, 0),
(2084, 22249, 80003, 77775, 50002, 100009, 88860, 2, 0),
(2085, 22249, 80004, 77775, 50002, 100003, 88860, 1, 0),
(2086, 22249, 80004, 77775, 50002, 100010, 88860, 2, 0),
(2087, 22249, 80005, 77775, 50002, 100004, 88860, 1, 0),
(2088, 22249, 80005, 77775, 50002, 100011, 88860, 2, 0),
(2089, 22250, 80006, 77775, 50002, 100002, 88859, 1, 0),
(2090, 22250, 80006, 77775, 50002, 100009, 88859, 2, 0),
(2091, 22250, 80007, 77775, 50002, 100003, 88859, 1, 0),
(2092, 22250, 80007, 77775, 50002, 100010, 88859, 2, 0),
(2093, 22250, 80008, 77775, 50002, 100004, 88859, 1, 0),
(2094, 22250, 80008, 77775, 50002, 100011, 88859, 2, 0),
(3001, 22223, 40001, 77773, 50003, 10001, 88810, 1, 0),
(3002, 22223, 90000, 77771, 50003, 10001, 88810, 1, 0),
(3004, 22223, 90001, 77771, 50003, 100003, 88810, 1, 0),
(3005, 22223, 90002, 77771, 50003, 100003, 88811, 1, 0),
(3006, 22224, 90003, 77771, 50003, 100005, 88811, 2, 0),
(3007, 22255, 90003, 77771, 50003, 100010, 88811, 1, 0),
(3008, 22255, 90003, 77771, 50003, 100013, 88812, 2, 0),
(3009, 22223, 90004, 77771, 50003, 100006, 88810, 1, 0),
(3010, 22223, 90004, 77771, 50003, 100008, 88810, 2, 0),
(3011, 22256, 90005, 77771, 50003, 100011, 88812, 1, 0),
(3012, 22256, 90005, 77771, 50003, 100009, 88812, 2, 0),
(3013, 22255, 90006, 77771, 50003, 100009, 88817, 1, 0),
(3014, 22223, 90007, 77771, 50003, 100010, 88817, 1, 0),
(3015, 22224, 50000, 77772, 50003, 100002, 88829, 1, 0),
(3016, 22224, 50000, 77772, 50003, 100005, 88829, 2, 0),
(3017, 22224, 50001, 77772, 50003, 100003, 88832, 1, 0),
(3018, 22227, 50001, 77772, 50003, 100002, 88832, 2, 0),
(3019, 22227, 50002, 77772, 50003, 100009, 88832, 1, 0),
(3020, 22224, 50002, 77772, 50003, 100009, 88829, 2, 0),
(3021, 22227, 50003, 77772, 50003, 100003, 88831, 1, 0),
(3022, 22228, 50003, 77772, 50003, 100007, 88831, 2, 0),
(3023, 22228, 50004, 77772, 50003, 100008, 88831, 1, 0),
(3024, 22228, 50005, 77772, 50003, 100015, 88831, 1, 0),
(3025, 22228, 50006, 77772, 50003, 100010, 88830, 1, 0),
(3026, 22229, 50007, 77772, 50003, 100002, 88831, 1, 0),
(3027, 22225, 40000, 77773, 50003, 100002, 88836, 1, 0),
(3028, 22225, 50000, 77773, 50003, 100009, 88836, 2, 0),
(3029, 22225, 40001, 77773, 50003, 100003, 88836, 1, 0),
(3030, 22225, 40001, 77773, 50003, 100003, 88836, 2, 0),
(3031, 22225, 40002, 77773, 50003, 100005, 88839, 1, 0),
(3032, 22225, 40002, 77773, 50003, 100012, 88839, 2, 0),
(3033, 22226, 40003, 77773, 50003, 100002, 88839, 1, 0),
(3034, 22226, 40003, 77773, 50003, 100009, 88839, 2, 0),
(3035, 22226, 40004, 77773, 50003, 100003, 88838, 1, 0),
(3036, 22226, 40004, 77773, 50003, 100010, 88838, 2, 0),
(3037, 22226, 40005, 77773, 50003, 100004, 88838, 1, 0),
(3038, 22226, 40005, 77773, 50003, 100011, 88838, 2, 0),
(3039, 22230, 40006, 77773, 50003, 100004, 88837, 1, 0),
(3040, 22231, 60000, 77774, 50003, 100003, 88847, 1, 0),
(3041, 22231, 60000, 77774, 50003, 100010, 88847, 2, 0),
(3042, 22231, 60001, 77774, 50003, 100003, 88847, 1, 0),
(3043, 22231, 60001, 77774, 50003, 100003, 88847, 2, 0),
(3044, 22231, 60002, 77774, 50003, 100004, 88850, 1, 0),
(3045, 22231, 60002, 77774, 50003, 100011, 88850, 2, 0),
(3046, 22251, 60003, 77774, 50003, 100002, 88849, 1, 0),
(3047, 22251, 60003, 77774, 50003, 100009, 88850, 2, 0),
(3048, 22253, 60004, 77774, 50003, 100002, 88849, 1, 0),
(3049, 22253, 60004, 77774, 50003, 100009, 88849, 2, 0),
(3050, 22251, 60005, 77774, 50003, 100003, 88849, 1, 0),
(3051, 22251, 60005, 77774, 50003, 100010, 88849, 2, 0),
(3052, 22251, 60006, 77774, 50003, 100005, 88849, 1, 0),
(3053, 22251, 60006, 77774, 50003, 100005, 88849, 2, 0),
(3054, 22253, 60007, 77774, 50003, 100002, 88845, 1, 0),
(3055, 22253, 60007, 77774, 50003, 100009, 88845, 2, 0),
(3056, 22253, 60008, 77774, 50003, 100003, 88848, 1, 0),
(3057, 22253, 60008, 77774, 50003, 100010, 88848, 2, 0),
(3058, 22253, 60009, 77774, 50003, 100005, 88846, 1, 0),
(3059, 22253, 60009, 77774, 50003, 100012, 88846, 2, 0),
(3060, 22238, 70001, 77776, 50003, 100003, 88861, 1, 0),
(3061, 22238, 70001, 77776, 50003, 100010, 88861, 2, 0),
(3062, 22238, 70002, 77776, 50003, 100004, 88861, 1, 0),
(3063, 22238, 70002, 77776, 50003, 100011, 88861, 1, 0),
(3064, 22238, 70003, 77776, 50003, 100006, 88862, 2, 0),
(3065, 22238, 70003, 77776, 50003, 100013, 88862, 2, 0),
(3066, 22239, 70004, 77776, 50003, 100003, 88864, 1, 0),
(3067, 22239, 70004, 77776, 50003, 100010, 88864, 2, 0),
(3068, 22239, 70005, 77776, 50003, 100005, 88864, 1, 0),
(3069, 22239, 70005, 77776, 50003, 100012, 88864, 2, 0),
(3071, 22242, 70007, 77776, 50003, 100002, 88865, 1, 0),
(3072, 22242, 70007, 77776, 50003, 100009, 88865, 2, 0),
(3073, 22242, 70008, 77776, 50003, 100003, 88865, 1, 0),
(3074, 22242, 70008, 77776, 50003, 100010, 88865, 2, 0),
(3075, 22242, 70009, 77776, 50003, 100004, 88865, 1, 0),
(3076, 22242, 70009, 77776, 50003, 100006, 88866, 1, 0),
(3077, 22248, 80000, 77775, 50003, 100002, 88857, 1, 0),
(3078, 22248, 80000, 77775, 50003, 100009, 88857, 2, 0),
(3079, 22248, 80001, 77775, 50003, 100003, 88857, 1, 0),
(3080, 22248, 80001, 77775, 50003, 100010, 88857, 2, 0),
(3081, 22248, 80002, 77775, 50003, 100005, 88857, 1, 0),
(3082, 22248, 80002, 77775, 50003, 100012, 88857, 2, 0),
(3083, 22249, 80003, 77775, 50003, 100002, 88860, 1, 0),
(3084, 22249, 80003, 77775, 50003, 100009, 88860, 2, 0),
(3085, 22249, 80004, 77775, 50003, 100003, 88860, 1, 0),
(3086, 22249, 80004, 77775, 50003, 100010, 88860, 2, 0),
(3087, 22249, 80005, 77775, 50003, 100004, 88860, 1, 0),
(3088, 22249, 80005, 77775, 50003, 100011, 88860, 2, 0),
(3089, 22250, 80006, 77775, 50003, 100002, 88859, 1, 0),
(3090, 22250, 80006, 77775, 50003, 100009, 88859, 2, 0),
(3091, 22250, 80007, 77775, 50003, 100003, 88859, 1, 0),
(3092, 22250, 80007, 77775, 50003, 100010, 88859, 2, 0),
(3093, 22250, 80008, 77775, 50003, 100004, 88859, 1, 0),
(3094, 22250, 80008, 77775, 50003, 100011, 88859, 2, 0),
(3095, 22294, 100011, 77778, 50001, 100006, 88839, 1, 0),
(10003, 22223, 90000, 77771, 50001, 100002, 88845, 1, 0),
(20003, 22223, 90000, 77771, 50002, 100002, 88845, 1, 0),
(30003, 22223, 90000, 77771, 50003, 100002, 88845, 1, 0);

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
(33341, 'Undergraduate', 'Good'),
(33342, 'Undergrad', 'Good'),
(33343, 'Undergrad', 'Good'),
(33344, 'Undergrad', 'Unsatisfactory'),
(33345, 'Undergrad', 'Good'),
(33346, 'Undergrad', 'Good'),
(33347, 'Undergrad', 'Good'),
(33348, 'Graduate', 'Good'),
(33349, 'Undergrad', 'Good'),
(33350, 'Undergrad', 'Good'),
(33351, 'Undergrad', 'Unsatisfactory'),
(33352, 'Undergrad', 'Good'),
(33353, 'Graduate', 'Unsatisfactory'),
(33354, 'Undergrad', 'Good'),
(33355, 'Undergrad', 'Good'),
(33356, 'Undergrad', 'Good'),
(33357, 'Graduate', 'Good'),
(33358, 'Undergrad', 'Good'),
(33359, 'Undergrad', 'Good'),
(33360, 'Undergrad', 'Good'),
(33361, 'Graduate', 'Good'),
(33362, 'Undergrad', 'Good'),
(33363, 'Undergrad', 'Unsatisfactory'),
(33364, 'Undergrad', 'Good'),
(33365, 'Undergrad', 'Good'),
(33366, 'Undergrad', 'Good'),
(33367, 'Undergrad', 'Good'),
(33368, 'Graduate', 'Good'),
(33369, 'Undergrad', 'Unsatisfactory'),
(33370, 'Undergrad', 'Good'),
(33371, 'Graduate', 'Unsatisfactory '),
(33372, 'Undergrad', 'Good'),
(33373, 'Undergrad', 'Unsatisfactory'),
(33374, 'Undergrad', 'Good'),
(33375, 'Graduate', 'Good'),
(33376, 'Undergrad', 'Good'),
(33377, 'Undergrad', 'Good'),
(33378, 'Undergrad', 'Good'),
(33379, 'Graduate', 'Good'),
(33380, 'Undergrad', 'Good'),
(33381, 'Undergrad', 'Unsatisfactory '),
(33382, 'Undergrad', 'Good'),
(33383, 'Undergrad', 'Good'),
(33389, 'Undergraduate', 'Good'),
(33390, 'Undergraduate', 'Good'),
(33391, 'Undergraduate', 'Good'),
(33392, 'Undergraduate', 'Unsatisfactory'),
(33393, 'Undergraduate', 'Good'),
(33394, 'Graduate', 'Good'),
(33395, 'Undergraduate', 'Good'),
(33396, 'Undergraduate', 'Good'),
(33397, 'Undergraduate', 'Good'),
(33398, 'Graduate', 'Good'),
(33399, 'Undergraduate', 'Unsatisfactory'),
(33400, 'Undergraduate', 'Good'),
(33401, 'Undergraduate', 'Good'),
(33402, 'Undergraduate', 'Good'),
(33403, 'Undergraduate', 'Good'),
(33404, 'Undergraduate', 'Unsatisfactory'),
(33405, 'Graduate', 'Good'),
(33406, 'Undergraduate', 'Good'),
(33407, 'Undergraduate', 'Good'),
(33408, 'Undergraduate', 'Unsatisfactory'),
(33409, 'Undergraduate', 'Good'),
(33410, 'Undergraduate', 'Good'),
(33411, 'Graduate', 'Good'),
(33412, 'Graduate', 'Good'),
(33413, 'Undergraduate', 'Good'),
(33414, 'Undergraduate', 'Unsatisfactory'),
(33415, 'Undergraduate', 'Good'),
(33416, 'Undergraduate', 'Good'),
(33417, 'Undergraduate', 'Unsatisfactory'),
(33418, 'Graduate', 'Unsatisfactory'),
(33419, 'Graduate', 'Good'),
(33420, 'Graduate', 'Good'),
(33421, 'Undergraduate', 'Good'),
(33422, 'Undergraduate', 'Unsatisfactory'),
(33423, 'Undergraduate', 'Good'),
(33424, 'Graduate', 'Good'),
(33425, 'Graduate', 'Good'),
(33426, 'Undergraduate', 'Good'),
(33427, 'Undergraduate', 'Unsatisfactory'),
(33428, 'Undergraduate', 'Good'),
(33429, 'Undergraduate', 'Good'),
(33430, 'Undergraduate', 'Good'),
(33431, 'Undergraduate', 'Good'),
(33432, 'Undergraduate', 'Unsatisfactory'),
(33433, 'Undergraduate', 'Good'),
(33434, 'Undergraduate', 'Good'),
(33435, 'Undergraduate', 'Good'),
(33436, 'Undergraduate', 'Unsatisfactory'),
(33437, 'Undergraduate', 'Good'),
(33438, 'Undergrad', 'Unsatisfactory'),
(33439, 'Undergraduate', 'Good'),
(33440, 'Undergraduate', 'Good'),
(33441, 'Undergraduate', 'Good'),
(33442, 'Undergraduate', 'Undergraduate'),
(33443, 'Undergraduate', 'Good'),
(33444, 'Graduate', 'Good'),
(33445, 'Graduate', 'Good'),
(33446, 'Undergraduate', 'Good'),
(33447, 'Graduate', 'Good'),
(33448, 'Graduate', 'Unsatisfactory'),
(33449, 'Undergraduate', 'Good'),
(33450, 'Undergraduate', 'Good'),
(33451, 'Graduate', 'Unsatisfactory'),
(33452, 'Undergraduate', '33452'),
(33453, 'Undergraduate', 'Good'),
(33454, 'Undergraduate', 'Good'),
(33455, 'Graduate', 'Good'),
(33456, 'Undergraduate', 'Good'),
(33457, 'Undergraduate', 'Good'),
(33458, 'Undergraduate', 'Good'),
(33459, 'Graduate', 'Good'),
(33460, 'Undergraduate', 'Good'),
(33461, 'Graduate', 'Unsatisfactory'),
(33462, 'Undergraduate', 'Good'),
(33463, 'Undergraduate', 'Unsatisfactory'),
(33464, 'Undergraduate', 'Good'),
(33465, 'Undergraduate', 'Good'),
(33466, 'Undergraduate', 'Good'),
(33467, 'Undergraduate', 'Good'),
(33468, 'Undergraduate', 'Good'),
(33469, 'Graduate', 'Good'),
(33470, 'Graduate', 'Good'),
(33471, 'Undergraduate', 'Good'),
(33472, 'Undergraduate', 'Good'),
(33473, 'Graduate', 'Good'),
(33474, 'Undergraduate', 'Good'),
(33475, 'Undergraduate', 'Unsatisfactory'),
(33476, 'Graduate', 'Good'),
(33477, 'Undergraduate', 'Good'),
(33478, 'Undergraduate', 'Good'),
(33479, 'Graduate', 'Good'),
(33480, 'Graduate', 'Good'),
(33481, 'Undergraduate', 'Good'),
(33482, 'Graduate', 'Good'),
(33483, 'Graduate', 'Unsatisfactory'),
(33484, 'Undergraduate', 'Good'),
(33485, 'Undergraduate', 'Good'),
(33486, 'Undergraduate', 'Good'),
(33487, 'Graduate', 'Good'),
(33488, 'Undergraduate', 'Good'),
(33489, 'Undergraduate', 'Good'),
(33490, 'Undergraduate', 'Good'),
(33491, 'Graduate', 'Unsatisfactory'),
(33492, 'Graduate', 'Good'),
(33493, 'Graduate', 'Good'),
(33494, 'Undergraduate', 'Good'),
(33495, 'Undergraduate', 'Good'),
(33496, 'Undergraduate', 'Good'),
(33497, 'Graduate', 'Good'),
(33498, 'Undergraduate', 'Good'),
(33499, 'Undergraduate', 'Good'),
(33500, 'Undergraduate', 'Good'),
(33501, 'Undergraduate', 'Good'),
(33502, 'Undergraduate', 'Good'),
(33503, 'Undergraduate', 'Good'),
(33504, 'Undergraduate', 'Good'),
(33505, 'Undergraduate', 'Good'),
(33506, 'Graduate', 'Good'),
(33507, 'Graduate', 'Good'),
(33508, 'Undergraduate', 'Unsatisfactory'),
(33509, 'Undergraduate', 'Unsatisfactory'),
(33510, 'Graduate', 'Good'),
(33511, 'Undergraduate', 'Unsatisfactory'),
(33512, 'Graduate', 'Unsatisfactory'),
(33513, 'Undergraduate', 'Good'),
(33514, 'Undergraduate', 'Good'),
(33515, 'Undergraduate', 'Good'),
(33516, 'Undergraduate', 'Good'),
(33517, 'Undergraduate', 'Unsatisfactory'),
(33518, 'Graduate', 'Good'),
(33519, 'Graduate', 'Good'),
(33520, 'Graduate', 'Unsatisfactory'),
(33521, 'Graduate', 'Good'),
(33522, 'Graduate', 'Unsatisfactory'),
(33523, 'Graduate', 'Good'),
(33524, 'Graduate', 'Good'),
(33525, 'Graduate', 'Unsatisfactory'),
(33526, 'Graduate', 'Good'),
(33527, 'Undergraduate', 'Good'),
(33528, 'Undergraduate', 'Good'),
(33529, 'Undergraduate', 'Good'),
(33530, 'Undergraduate', 'Good'),
(33531, 'Undergraduate', 'Unsatisfactory'),
(33532, 'Undergraduate', 'Unsatisfactory'),
(33533, 'Undergraduate', 'Unsatisfactory'),
(33534, 'Undergraduate', 'Unsatisfactory'),
(33535, 'Undergraduate', 'Unsatisfactory'),
(33536, 'Undergraduate', 'Unsatisfactory'),
(33537, 'Undergraduate', 'Good'),
(33538, 'Undergraduate', 'Good'),
(33539, 'Undergraduate', 'Good'),
(33540, 'Undergraduate', 'Good'),
(33541, 'Undergraduate', 'Good'),
(33542, 'Graduate', 'Unsatisfactory'),
(33543, 'Graduate', 'Unsatisfactory'),
(33544, 'Graduate', 'Unsatisfactory'),
(33545, 'Graduate', 'Unsatisfactory'),
(33546, 'Graduate', 'Unsatisfactory'),
(33547, 'Undergraduate', 'Good'),
(33548, 'Undergraduate', 'Good'),
(33549, 'Undergraduate', 'Good'),
(33550, 'Undergraduate', 'Good'),
(33551, 'Graduate', 'Good');

-- --------------------------------------------------------

--
-- Table structure for table `s_enrollment`
--

CREATE TABLE `s_enrollment` (
  `E_Stud_ID` int(11) NOT NULL,
  `E_Sec_ID` int(11) NOT NULL,
  `Grade` int(11) NOT NULL,
  `Assignment` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `timeslot`
--

CREATE TABLE `timeslot` (
  `TimeSlotID` int(11) NOT NULL,
  `Period` varchar(45) NOT NULL,
  `Day` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`TimeSlotID`, `Period`, `Day`) VALUES
(10001, '12:00', 'Monday/Wednesday'),
(100002, '8:00 - 9:30am', 'Monday/Wednesday'),
(100003, '10:00 - 11:30am', 'Monday/Wednesday'),
(100004, '12:00 - 1:30pm', 'Monday/Wednesday'),
(100005, '2:00 - 3:30pm', 'Monday/Wednesday'),
(100006, '4:00 - 5:30pm', 'Monday/Wednesday'),
(100007, '6:00 - 7:30pm', 'Monday/Wednesday'),
(100008, '8:00 - 9:30pm', 'Monday/Wednesday'),
(100009, '8:00 - 9:30am ', 'Tuesday/Thursday'),
(100010, '10:00 - 11:30pm', 'Tuesday/Thursday'),
(100011, '12:00 - 1:30pm', 'Tuesday/Thursday'),
(100012, '2:00 - 3:30pm', 'Tuesday/Thursday'),
(100013, '4:00 - 5:30pm', 'Tuesday/Thursday'),
(100014, '6:00 - 7:30pm', 'Tuesday/Thursday'),
(100015, '8:00 - 9:30pm', 'Tuesday/Thursday');

-- --------------------------------------------------------

--
-- Table structure for table `undergradfulltime`
--

CREATE TABLE `undergradfulltime` (
  `U_UndergradFullTime_ID` int(11) NOT NULL,
  `Credits_Num` double NOT NULL,
  `Status` varchar(50) NOT NULL,
  `CreditTotal` double NOT NULL,
  `SemesterYearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergradfulltime`
--

INSERT INTO `undergradfulltime` (`U_UndergradFullTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) VALUES
(2222, 18, 'Good', 18, 50001),
(33331, 12, '', 80, 0);

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

--
-- Dumping data for table `undergradparttime`
--

INSERT INTO `undergradparttime` (`UndergradPartTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) VALUES
(2222, 6, 0, 3, 50001),
(33351, 0, 0, 0, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE `undergraduate` (
  `UG_StudentID` int(11) NOT NULL,
  `MajorID` int(11) NOT NULL,
  `MinorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`UG_StudentID`, `MajorID`, `MinorID`) VALUES
(2222, 1113, 108),
(33331, 1113, 0),
(33334, 1117, 0),
(33335, 1112, 0),
(33338, 1127, 0),
(33339, 1119, 108),
(33340, 1123, 108),
(33341, 1123, 101),
(33342, 1122, 101),
(33343, 1119, 108),
(33344, 1120, 106),
(33345, 1117, 106),
(33346, 1127, 0),
(33347, 1113, 107),
(33349, 1112, 105),
(33350, 1115, 103),
(33351, 1116, 0),
(33352, 1122, 0),
(33354, 1127, 0),
(33355, 1120, 0),
(33356, 1115, 102),
(33358, 1123, 107),
(33359, 1117, 0),
(33360, 1114, 0),
(33362, 1116, 102),
(33363, 1115, 108),
(33364, 1122, 103),
(33365, 1120, 108),
(33366, 1120, 108),
(33367, 1120, 0),
(33369, 1115, 0),
(33370, 1123, 103),
(33372, 1116, 106),
(33373, 1127, 0),
(33374, 1127, 0),
(33376, 1127, 106),
(33377, 1123, 101),
(33378, 1112, 107),
(33380, 1117, 103),
(33381, 1113, 102),
(33382, 1116, 103),
(33383, 1114, 107),
(33389, 1112, 104),
(33390, 1126, 0),
(33391, 1119, 101),
(33392, 1115, 101),
(33393, 1113, 0),
(33394, 1121, 101),
(33395, 1122, 101),
(33396, 1123, 104),
(33399, 1117, 101),
(33400, 1117, 0),
(33401, 1112, 103),
(33402, 1120, 0),
(33403, 1125, 104),
(33404, 1126, 102),
(33406, 1122, 0),
(33407, 1113, 105),
(33408, 1113, 0),
(33409, 1115, 101),
(33410, 1123, 104),
(33413, 1115, 102),
(33414, 1117, 101),
(33415, 1116, 101),
(33416, 1116, 0),
(33417, 1112, 0),
(33421, 1119, 0),
(33422, 1126, 103),
(33423, 1113, 102),
(33426, 1123, 0),
(33427, 1116, 101),
(33428, 1113, 0),
(33429, 1122, 0),
(33430, 1119, 0),
(33431, 1125, 104),
(33432, 1125, 0),
(33433, 1123, 0),
(33434, 1117, 0),
(33435, 1120, 0),
(33436, 1126, 104),
(33437, 1119, 0),
(33438, 1118, 101),
(33439, 1115, 0),
(33440, 1123, 104),
(33441, 1112, 0),
(33442, 1114, 101),
(33443, 1122, 101),
(33446, 1114, 0),
(33449, 1113, 0),
(33450, 1120, 0),
(33452, 1117, 101),
(33453, 1119, 0),
(33454, 1119, 0),
(33456, 1119, 0),
(33457, 1119, 102),
(33458, 1119, 103),
(33460, 1119, 105),
(33462, 1119, 0),
(33465, 1119, 0),
(33466, 1119, 0),
(33467, 1119, 0),
(33468, 1119, 106),
(33471, 1119, 0),
(33472, 1119, 107),
(33474, 1119, 0),
(33475, 1112, 0),
(33477, 1112, 102),
(33478, 1112, 0),
(33481, 1112, 104),
(33484, 1112, 0),
(33485, 1112, 105),
(33486, 1112, 0),
(33488, 1112, 106),
(33489, 1112, 0),
(33490, 1112, 0),
(33494, 1112, 0),
(33495, 1112, 107),
(33496, 1116, 0),
(33498, 1116, 101),
(33499, 1116, 0),
(33500, 1116, 102),
(33501, 1116, 0),
(33502, 1116, 103),
(33503, 1116, 0),
(33504, 1116, 104),
(33505, 1116, 0),
(33508, 1116, 106),
(33509, 1116, 0),
(33511, 1122, 0),
(33513, 1122, 101),
(33514, 1122, 0),
(33515, 1122, 103),
(33516, 1122, 0),
(33517, 1122, 104),
(33527, 1122, 0),
(33528, 1122, 106),
(33529, 1122, 0),
(33530, 1122, 107),
(33531, 1122, 0),
(33532, 1122, 108),
(33533, 1122, 0),
(33534, 1117, 0),
(33535, 1117, 101),
(33536, 1117, 0),
(33537, 1117, 102),
(33538, 1117, 0),
(33539, 1126, 0),
(33540, 1126, 0),
(33541, 1126, 0),
(33547, 1126, 0),
(33548, 1115, 0),
(33549, 1115, 0),
(33550, 1115, 0);

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
(0, '', '', '', '', '', ''),
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
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`,`A_DepartID`);

--
-- Indexes for table `advisor`
--
ALTER TABLE `advisor`
  ADD KEY `A_Stud_ID` (`A_Stud_ID`),
  ADD KEY `A_Facu_ID` (`A_Facu_ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD KEY `a_studidc` (`A_StudId`),
  ADD KEY `Facu_ID` (`Facu_ID`);

--
-- Indexes for table `building`
--
ALTER TABLE `building`
  ADD PRIMARY KEY (`Build_ID`),
  ADD KEY `B_Dept_ID` (`B_Dept_ID`);

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
-- Indexes for table `enrollment1`
--
ALTER TABLE `enrollment1`
  ADD KEY `Stud_ID` (`Stud_ID`),
  ADD KEY `E_Sec_ID` (`E_Sec_ID`),
  ADD KEY `enrollment1_ibfk_3` (`E_SemesterYearID`),
  ADD KEY `Facu_ID` (`Facu_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Facu_ID`),
  ADD KEY `F_Dept_ID` (`F_Dept_ID`);

--
-- Indexes for table `facuschedule`
--
ALTER TABLE `facuschedule`
  ADD PRIMARY KEY (`Facu_sec_id`),
  ADD KEY `Facu_id` (`Facu_id`);

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
  ADD PRIMARY KEY (`GD_StudID`),
  ADD KEY `MinorID` (`MinorID`),
  ADD KEY `MajorID` (`MajorID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD KEY `tr_stud_id` (`Stud_ID`),
  ADD KEY `Sec_ID` (`Sec_ID`),
  ADD KEY `SemesterYearID` (`SemesterYearID`),
  ADD KEY `Cour_ID` (`Cour_ID`);

--
-- Indexes for table `holds`
--
ALTER TABLE `holds`
  ADD PRIMARY KEY (`Holds_ID`);

--
-- Indexes for table `holdstatus`
--
ALTER TABLE `holdstatus`
  ADD KEY `hsstudhold_id` (`HS_StudentID`),
  ADD KEY `HS_HoldID` (`HS_HoldID`) USING BTREE;

--
-- Indexes for table `labroom`
--
ALTER TABLE `labroom`
  ADD PRIMARY KEY (`La_Room_ID`);

--
-- Indexes for table `lectureroom`
--
ALTER TABLE `lectureroom`
  ADD PRIMARY KEY (`Le_Room_ID`);

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
  ADD KEY `Major_ID` (`Major_ID`),
  ADD KEY `MR_CourseID` (`MR_CourseID`);

--
-- Indexes for table `masterschedule`
--
ALTER TABLE `masterschedule`
  ADD PRIMARY KEY (`SemesterYear_ID`);

--
-- Indexes for table `minor`
--
ALTER TABLE `minor`
  ADD PRIMARY KEY (`Minor_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `officeroom`
--
ALTER TABLE `officeroom`
  ADD PRIMARY KEY (`Of_Room_ID`);

--
-- Indexes for table `prerequisites1`
--
ALTER TABLE `prerequisites1`
  ADD KEY `Prerequ_ID` (`Prerequ_ID`),
  ADD KEY `P_CourseID` (`P_CourseID`);

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
  ADD PRIMARY KEY (`S_Section_ID`) USING BTREE,
  ADD KEY `facu_id` (`S_FacuID`),
  ADD KEY `s_cour_id` (`S_CourseID`),
  ADD KEY `s_build_id` (`S_BuildID`),
  ADD KEY `stimeslot` (`S_TimeSlotID`),
  ADD KEY `ssemyear` (`S_SemesterYearID`),
  ADD KEY `sroomnum` (`S_RoomNum`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Stud_ID`);

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
  ADD PRIMARY KEY (`UG_StudentID`),
  ADD KEY `MinorID` (`MinorID`),
  ADD KEY `MajorID` (`MajorID`);

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
-- Constraints for table `advisor`
--
ALTER TABLE `advisor`
  ADD CONSTRAINT `advisor_ibfk_2` FOREIGN KEY (`A_Stud_ID`) REFERENCES `student` (`Stud_ID`),
  ADD CONSTRAINT `advisor_ibfk_3` FOREIGN KEY (`A_Facu_ID`) REFERENCES `faculty` (`Facu_ID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `a_studidc` FOREIGN KEY (`A_StudId`) REFERENCES `student` (`Stud_ID`),
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`Facu_ID`) REFERENCES `faculty` (`Facu_ID`);

--
-- Constraints for table `building`
--
ALTER TABLE `building`
  ADD CONSTRAINT `building_ibfk_1` FOREIGN KEY (`B_Dept_ID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `cdept_id` FOREIGN KEY (`CDeptID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `enrollment1`
--
ALTER TABLE `enrollment1`
  ADD CONSTRAINT `enrollment1_ibfk_1` FOREIGN KEY (`Stud_ID`) REFERENCES `student` (`Stud_ID`),
  ADD CONSTRAINT `enrollment1_ibfk_2` FOREIGN KEY (`E_Sec_ID`) REFERENCES `section` (`S_Section_ID`),
  ADD CONSTRAINT `enrollment1_ibfk_3` FOREIGN KEY (`E_SemesterYearID`) REFERENCES `masterschedule` (`SemesterYear_ID`),
  ADD CONSTRAINT `enrollment1_ibfk_4` FOREIGN KEY (`Facu_ID`) REFERENCES `faculty` (`Facu_ID`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`F_Dept_ID`) REFERENCES `department` (`Department_ID`),
  ADD CONSTRAINT `faculty_id` FOREIGN KEY (`Facu_ID`) REFERENCES `user` (`User_ID`);

--
-- Constraints for table `facuschedule`
--
ALTER TABLE `facuschedule`
  ADD CONSTRAINT `facuschedule_ibfk_1` FOREIGN KEY (`Facu_id`) REFERENCES `faculty` (`Facu_ID`),
  ADD CONSTRAINT `facuschedule_ibfk_2` FOREIGN KEY (`Facu_sec_id`) REFERENCES `section` (`S_Section_ID`);

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
  ADD CONSTRAINT `graduate_ibfk_2` FOREIGN KEY (`MinorID`) REFERENCES `minor` (`Minor_ID`),
  ADD CONSTRAINT `graduate_ibfk_3` FOREIGN KEY (`MajorID`) REFERENCES `major` (`Major_ID`),
  ADD CONSTRAINT `stud_id` FOREIGN KEY (`GD_StudID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `history_ibfk_1` FOREIGN KEY (`Sec_ID`) REFERENCES `section` (`S_Section_ID`),
  ADD CONSTRAINT `history_ibfk_2` FOREIGN KEY (`SemesterYearID`) REFERENCES `masterschedule` (`SemesterYear_ID`),
  ADD CONSTRAINT `history_ibfk_3` FOREIGN KEY (`Cour_ID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `tr_stud_id` FOREIGN KEY (`Stud_ID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `holdstatus`
--
ALTER TABLE `holdstatus`
  ADD CONSTRAINT `hshold` FOREIGN KEY (`HS_HoldID`) REFERENCES `holds` (`Holds_ID`),
  ADD CONSTRAINT `hsstudhold_id` FOREIGN KEY (`HS_StudentID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `labroom`
--
ALTER TABLE `labroom`
  ADD CONSTRAINT `labroom_ibfk_1` FOREIGN KEY (`La_Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `lectureroom`
--
ALTER TABLE `lectureroom`
  ADD CONSTRAINT `lectureroom_ibfk_1` FOREIGN KEY (`Le_Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `departm_id` FOREIGN KEY (`M_DepartID`) REFERENCES `department` (`Department_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `majorrequirements`
--
ALTER TABLE `majorrequirements`
  ADD CONSTRAINT `majorrequirements_ibfk_1` FOREIGN KEY (`Major_ID`) REFERENCES `major` (`Major_ID`),
  ADD CONSTRAINT `majorrequirements_ibfk_2` FOREIGN KEY (`MR_CourseID`) REFERENCES `course` (`Course_ID`);

--
-- Constraints for table `minor`
--
ALTER TABLE `minor`
  ADD CONSTRAINT `minor_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `officeroom`
--
ALTER TABLE `officeroom`
  ADD CONSTRAINT `officeroom_ibfk_1` FOREIGN KEY (`Of_Room_ID`) REFERENCES `room` (`Room_ID`);

--
-- Constraints for table `prerequisites1`
--
ALTER TABLE `prerequisites1`
  ADD CONSTRAINT `prerequisites1_ibfk_1` FOREIGN KEY (`Prerequ_ID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `prerequisites1_ibfk_2` FOREIGN KEY (`P_CourseID`) REFERENCES `course` (`Course_ID`);

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
  ADD CONSTRAINT `facu_id` FOREIGN KEY (`S_FacuID`) REFERENCES `faculty` (`Facu_ID`),
  ADD CONSTRAINT `s_build_id` FOREIGN KEY (`S_BuildID`) REFERENCES `building` (`Build_ID`),
  ADD CONSTRAINT `s_cour_id` FOREIGN KEY (`S_CourseID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `sroomnum` FOREIGN KEY (`S_RoomNum`) REFERENCES `room` (`Room_ID`),
  ADD CONSTRAINT `ssemyear` FOREIGN KEY (`S_SemesterYearID`) REFERENCES `masterschedule` (`SemesterYear_ID`),
  ADD CONSTRAINT `stimeslot` FOREIGN KEY (`S_TimeSlotID`) REFERENCES `timeslot` (`TimeSlotID`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`Stud_ID`) REFERENCES `user` (`User_ID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `undergradfulltime`
--
ALTER TABLE `undergradfulltime`
  ADD CONSTRAINT `undergradfulltime_ibfk_1` FOREIGN KEY (`U_UndergradFullTime_ID`) REFERENCES `undergraduate` (`UG_StudentID`);

--
-- Constraints for table `undergradparttime`
--
ALTER TABLE `undergradparttime`
  ADD CONSTRAINT `ug_part_id` FOREIGN KEY (`UndergradPartTime_ID`) REFERENCES `undergraduate` (`UG_StudentID`);

--
-- Constraints for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD CONSTRAINT `undergraduate_ibfk_1` FOREIGN KEY (`UG_StudentID`) REFERENCES `student` (`Stud_ID`),
  ADD CONSTRAINT `undergraduate_ibfk_3` FOREIGN KEY (`MinorID`) REFERENCES `minor` (`Minor_ID`),
  ADD CONSTRAINT `undergraduate_ibfk_4` FOREIGN KEY (`MajorID`) REFERENCES `major` (`Major_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
