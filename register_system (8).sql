-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2019 at 06:15 AM
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
(22244, 33344),
(22241, 33345),
(22246, 33346),
(22247, 33347),
(22258, 33349),
(22243, 33350),
(22259, 33351),
(22245, 33352),
(22262, 33352),
(22260, 33353),
(22263, 33360),
(22261, 33371);

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `Attendance_ID` int(11) NOT NULL,
  `Date` varchar(45) NOT NULL,
  `IsPresent` varchar(45) NOT NULL,
  `A_StudId` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`Attendance_ID`, `Date`, `IsPresent`, `A_StudId`) VALUES
(1001, '09/21/2018', 'Yes', 2222);

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
(77774, 'Arts Building', '400 Arts Building', 15),
(77775, 'Business Building', '300 Business Building', 25),
(77776, 'Computer Science Building', '200 Comp Sci Building', 25),
(77777, 'English Building', '100 English Building', 25),
(77778, 'Music Building', '100 Music Building', 30),
(77779, 'Humanities Building', '100 Humanities Building', 25);

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
(90001, 'Calculus 1', 'Continuity, limits, and the derivative for algebraic, trigonometric, logarithmic, exponential, and inverse functions. Applications to physics, chemistry, and engineering.', '101', 3, 124, 'Math', 0),
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
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `Stud_ID` int(11) NOT NULL,
  `Section ID` int(11) NOT NULL,
  `Grades` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enrollment`
--

INSERT INTO `enrollment` (`Stud_ID`, `Section ID`, `Grades`) VALUES
(2222, 1001, '1');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Facu_ID` int(11) NOT NULL COMMENT 'Faculty ID',
  `F_Rank` varchar(45) NOT NULL,
  `F_Office` varchar(45) NOT NULL,
  `F_OfficeHrs` varchar(45) NOT NULL,
  `F_Dept_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Facu_ID`, `F_Rank`, `F_Office`, `F_OfficeHrs`, `F_Dept_ID`) VALUES
(22223, 'Faculty', '123 Math Building', '12:00 - 1:00', 0),
(22224, 'Faculty', '123 Science Building', '12:00 - 1:00', 0),
(22225, 'Faculty', '234 Medical Building', '1:00 - 2:00', 0),
(22226, 'Faculty', '235 Medical Building', '3:00 - 4:00', 0),
(22227, 'Faculty', '355 Science Building', '12:00 - 1:00', 0),
(22228, 'Faculty', '220 Science Building', '4:00 - 5:00', 0),
(22229, 'Faculty', '120 Science Building', '3:00 - 4:30', 0),
(22230, 'Faculty', '100 Medical Building', '2:00 - 3:00', 0),
(22231, 'Faculty', '123 Art Building ', '5:00 - 6:00', 0),
(22238, 'Faculty', '123 Computer Science Building', '5:00 - 6:00', 0),
(22239, 'Faculty', '222 Computer Science Building', '5:00 - 6:00', 0),
(22240, 'Faculty', '123 Medical Building', '3:00 - 4:00', 0),
(22241, 'Advisor', '123 Medical Building', '12:00 - 1:00', 127),
(22242, 'Faculty', '123 Computer Science Building', '3:00 - 4:00', 129),
(22243, 'Advisor', '200 Business Building', '3:00 - 4:00', 126),
(22244, 'Advisor', '200 Art Building', '3:00 - 4:00', 128),
(22245, 'Advisor', '200 Computer Science Building', '3:00 - 4:00', 129),
(22246, 'Advisor', '200 Biology Building', '3:00 - 4:00', 125),
(22247, 'Advisor', '200 Math Building ', '3:00 - 4:00', 124),
(22248, 'Faculty', '123 Business Building', '12:00 - 1:00pm', 126),
(22249, 'Faculty', '200 Business Building', '2:00 - 3:00 pm M/W', 126),
(22250, 'Faculty', '222 Business Building', '2:00 - 3:00pm Tu/Th', 126),
(22251, 'Faculty', '200 Art Building', '11:00am - 12:00pm Tu/Th', 124),
(22252, 'Faculty', '200 Science Building', '3:00 - 4:00pm M/W', 125),
(22253, 'Faculty', '222 Art Building', '12:00 - 1:00pm M/W', 128),
(22254, 'Faculty', '200 Art Building', '2:00 - 3:00pm Tu/Th', 128),
(22255, 'Faculty', '222 Math Building', '12:00 - 1:00pm Tu/Th', 124),
(22256, 'Faculty', '223 Math Building', '2:00 - 3:00pm Tu/Th', 124),
(22257, 'Faculty', '300 Art Building', '2:00 - 3:00pm M/W', 128),
(22258, 'Advisor', '300 Math Building', '2:00 - 3:00pm M/W', 124),
(22259, 'Advisor', '300 Art Building', '1:00 - 2:00pm M/W', 128),
(22260, 'Advisor', '301 Medical Building', '12:00 - 1:00pm Tu/Th', 127),
(22261, 'Advisor', '301 Science Building', '2:00 - 3:00pm M/W', 125),
(22262, 'Advisor', '301 Computer Science Building', '2:00 - 3:00pm Tu/Th', 129),
(22263, 'Advisor', '301 Business Building', '1:00 - 2:00pm', 126),
(22264, 'Faculty', '233 Math Building', '12:00 - 1:00pm', 124);

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
  `MajorName` varchar(45) NOT NULL,
  `MajorID` int(11) NOT NULL,
  `MinorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graduate`
--

INSERT INTO `graduate` (`GD_StudID`, `MajorName`, `MajorID`, `MinorID`) VALUES
(33332, 'Business', 0, 0),
(33333, 'Business', 0, 0),
(33336, 'Medical Chemistry ', 0, 0),
(33337, 'Computer Engineering ', 0, 0),
(33348, 'Business Leadership', 0, 0),
(33353, 'Human Systems', 0, 0),
(33357, 'Accounting ', 0, 0),
(33361, 'Digital Art ', 0, 0),
(33368, 'Mathematical Theory ', 0, 0),
(33371, 'Computer Engineering ', 0, 0),
(33379, 'Mathematical Theory', 0, 0),
(33394, '', 1124, 102),
(33398, '', 1121, 106),
(33405, '', 1113, 107),
(33411, '', 1124, 101),
(33412, '', 1122, 0),
(33418, '', 1122, 104),
(33419, '', 1119, 0),
(33420, '', 1125, 101),
(33424, '', 1121, 106),
(33425, '', 1126, 0),
(33444, '', 1118, 108),
(33445, '', 1124, 101),
(33447, '', 1125, 0),
(33448, '', 1115, 0),
(33451, '', 1123, 106),
(33455, '', 1123, 0);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `Transcript_ID` int(11) NOT NULL,
  `Stud_ID` int(11) NOT NULL,
  `Sec_ID` int(11) NOT NULL,
  `CourseDump` varchar(45) NOT NULL COMMENT 'Not sure what this is',
  `SemesterYearID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(200, 'Financial', ''),
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
(1113, 'Biogenetics', 125),
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
(1125, 'Buisiness Leadership', 126),
(1126, 'Mathematical Theory', 124);

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
(88870, 205, 30, 77776);

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
  `S_Num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section`
--

INSERT INTO `section` (`S_Section_ID`, `S_FacuID`, `S_CourseID`, `S_BuildID`, `S_SemesterYearID`, `S_TimeSlotID`, `S_RoomNum`, `S_Num`) VALUES
(1001, 22223, 40001, 77773, 5004, 10001, 88810, 1),
(1002, 22223, 90000, 77771, 50001, 10001, 88810, 1),
(1004, 22223, 90001, 77771, 50003, 100003, 88810, 1),
(1005, 22223, 90002, 77771, 50003, 100003, 88811, 1),
(1006, 22224, 90003, 77771, 50003, 100005, 88811, 2),
(1007, 22255, 90003, 77771, 50001, 100010, 88811, 1),
(1008, 22255, 90003, 77771, 50001, 100013, 88812, 2),
(1009, 22223, 90004, 77771, 50001, 100006, 88810, 1),
(1010, 22223, 90004, 77771, 50001, 100008, 88810, 2),
(1011, 22256, 90005, 77771, 50001, 100011, 88812, 1),
(1012, 22256, 90005, 77771, 50001, 100009, 88812, 2),
(1013, 22255, 90006, 77771, 50001, 100009, 88817, 1),
(1014, 22223, 90007, 77771, 50001, 100010, 88817, 1),
(1015, 22224, 50000, 77772, 50001, 100002, 88829, 1),
(1016, 22224, 50000, 77772, 50001, 100005, 88829, 2),
(1017, 22224, 50001, 77772, 50001, 100003, 88832, 1),
(1018, 22227, 50001, 77772, 50001, 100002, 88832, 2),
(1019, 22227, 50002, 77772, 50001, 100009, 88832, 1),
(1020, 22224, 50002, 77772, 50001, 100009, 88829, 2),
(1021, 22227, 50003, 77772, 50001, 100003, 88831, 1),
(1022, 22228, 50003, 77772, 50001, 100007, 88831, 2),
(1023, 22228, 50004, 77772, 50001, 100008, 88831, 1),
(1024, 22228, 50005, 77772, 50001, 100015, 88831, 1),
(1025, 22228, 50006, 77772, 50001, 100010, 88830, 1),
(1026, 22229, 50007, 77772, 50001, 100002, 88831, 1),
(1027, 22225, 40000, 77773, 50001, 100002, 88836, 1),
(1028, 22225, 50000, 77773, 50001, 100009, 88836, 2),
(1029, 22225, 40001, 77773, 50001, 100003, 88836, 1),
(1030, 22225, 40001, 77773, 50001, 100003, 88836, 2),
(1031, 22225, 40002, 77773, 50001, 100005, 88839, 1),
(1032, 22225, 40002, 77773, 50001, 100012, 88839, 2),
(1033, 22226, 40003, 77772, 50001, 100002, 88839, 1),
(1034, 22226, 40003, 77773, 50001, 100009, 88839, 2),
(1035, 22226, 40004, 77773, 50001, 100003, 88838, 1),
(1036, 22226, 40004, 77773, 50001, 100010, 88838, 2),
(1037, 22226, 40005, 77773, 50001, 100004, 88838, 1),
(1038, 22226, 40005, 77773, 50001, 100011, 88838, 2),
(1039, 22230, 40006, 77773, 50001, 100004, 88837, 1),
(1040, 22231, 60000, 77774, 50001, 100003, 88847, 1),
(1041, 22231, 60000, 77774, 50001, 100010, 88847, 2),
(1042, 22231, 60001, 77774, 50001, 100003, 88847, 1),
(1043, 22231, 60001, 77774, 50001, 100003, 88847, 2),
(1044, 22231, 60002, 77774, 50001, 100004, 88850, 1),
(1045, 22231, 60002, 77774, 50001, 100011, 88850, 2),
(1046, 22251, 60003, 77774, 50001, 100002, 88849, 1),
(1047, 22251, 60003, 77774, 50001, 100009, 88850, 2),
(1048, 22253, 60004, 77774, 50001, 100002, 88849, 1),
(1049, 22253, 60004, 77774, 50001, 100009, 88849, 2),
(1050, 22251, 60005, 77774, 50001, 100003, 88849, 1),
(1051, 22251, 60005, 77774, 50001, 100010, 88849, 2),
(1052, 22251, 60006, 77774, 50001, 100005, 88849, 1),
(1053, 22251, 60006, 77774, 50001, 100005, 88849, 2),
(1054, 22253, 60007, 77774, 50001, 100002, 88845, 1),
(1055, 22253, 60007, 77774, 50001, 100009, 88845, 2),
(1056, 22253, 60008, 77774, 50001, 100003, 88848, 1),
(1057, 22253, 60008, 77774, 50001, 100010, 88848, 2),
(1058, 22253, 60009, 77774, 50001, 100005, 88846, 1),
(1059, 22253, 60009, 77774, 50001, 100012, 88846, 2),
(1060, 22238, 70001, 77776, 50001, 100003, 88861, 1),
(1061, 22238, 70001, 77776, 50001, 100010, 88861, 2),
(1062, 22238, 70002, 77776, 50001, 100004, 88861, 1),
(1063, 22238, 70002, 77776, 50001, 100011, 88861, 1),
(1064, 22238, 70003, 77776, 50001, 100006, 88862, 2),
(1065, 22238, 70003, 77776, 50001, 100013, 88862, 2),
(1066, 22239, 70004, 77776, 50001, 100003, 88864, 1),
(1067, 22239, 70004, 77776, 50001, 100010, 88864, 2),
(1068, 22239, 70005, 77776, 50001, 100005, 88864, 1),
(1069, 22239, 70005, 77776, 50001, 100012, 88864, 2),
(1071, 22242, 70007, 77776, 50001, 100002, 88865, 1),
(1072, 22242, 70007, 77776, 50001, 100009, 88865, 2),
(1073, 22242, 70008, 77776, 50001, 100003, 88865, 1),
(1074, 22242, 70008, 77776, 50001, 100010, 88865, 2),
(1075, 22242, 70009, 77776, 50001, 100004, 88865, 1),
(1076, 22242, 70009, 77776, 50001, 100006, 88866, 1),
(1077, 22248, 80000, 77775, 50001, 100002, 88857, 1),
(1078, 22248, 80000, 77775, 50001, 100009, 88857, 2),
(1079, 22248, 80001, 77775, 50001, 100003, 88857, 1),
(1080, 22248, 80001, 77775, 50001, 100010, 88857, 2),
(1081, 22248, 80002, 77775, 50001, 100005, 88857, 1),
(1082, 22248, 80002, 77775, 50001, 100012, 88857, 2),
(1083, 22249, 80003, 77775, 50001, 100002, 88860, 1),
(1084, 22249, 80003, 77775, 50001, 100009, 88860, 2),
(1085, 22249, 80004, 77775, 50001, 100003, 88860, 1),
(1086, 22249, 80004, 77775, 50001, 100010, 88860, 2),
(1087, 22249, 80005, 77775, 50001, 100004, 88860, 1),
(1088, 22249, 80005, 77775, 50001, 100011, 88860, 2),
(1089, 22250, 80006, 77775, 50001, 100002, 88859, 1),
(1090, 22250, 80006, 77775, 50001, 100009, 88859, 2),
(1091, 22250, 80007, 77775, 50001, 100003, 88859, 1),
(1092, 22250, 80007, 77775, 50001, 100010, 88859, 2),
(1093, 22250, 80008, 77775, 50001, 100004, 88859, 1),
(1094, 22250, 80008, 77775, 50001, 100011, 88859, 2),
(2001, 22223, 40001, 77773, 50002, 10001, 88810, 1),
(2002, 22223, 90000, 77771, 50002, 10001, 88810, 1),
(2004, 22223, 90001, 77771, 50002, 100003, 88810, 1),
(2005, 22223, 90002, 77771, 50002, 100003, 88811, 1),
(2006, 22224, 90003, 77771, 50002, 100005, 88811, 2),
(2007, 22255, 90003, 77771, 50002, 100010, 88811, 1),
(2008, 22255, 90003, 77771, 50002, 100013, 88812, 2),
(2009, 22223, 90004, 77771, 50002, 100006, 88810, 1),
(2010, 22223, 90004, 77771, 50002, 100008, 88810, 2),
(2011, 22256, 90005, 77771, 50002, 100011, 88812, 1),
(2012, 22256, 90005, 77771, 50002, 100009, 88812, 2),
(2013, 22255, 90006, 77771, 50002, 100009, 88817, 1),
(2014, 22223, 90007, 77771, 50002, 100010, 88817, 1),
(2015, 22224, 50000, 77772, 50002, 100002, 88829, 1),
(2016, 22224, 50000, 77772, 50002, 100005, 88829, 2),
(2017, 22224, 50001, 77772, 50002, 100003, 88832, 1),
(2018, 22227, 50001, 77772, 50002, 100002, 88832, 2),
(2019, 22227, 50002, 77772, 50002, 100009, 88832, 1),
(2020, 22224, 50002, 77772, 50002, 100009, 88829, 2),
(2021, 22227, 50003, 77772, 50002, 100003, 88831, 1),
(2022, 22228, 50003, 77772, 50002, 100007, 88831, 2),
(2023, 22228, 50004, 77772, 50002, 100008, 88831, 1),
(2024, 22228, 50005, 77772, 50002, 100015, 88831, 1),
(2025, 22228, 50006, 77772, 50002, 100010, 88830, 1),
(2026, 22229, 50007, 77772, 50002, 100002, 88831, 1),
(2027, 22225, 40000, 77773, 50002, 100002, 88836, 1),
(2028, 22225, 50000, 77773, 50002, 100009, 88836, 2),
(2029, 22225, 40001, 77773, 50002, 100003, 88836, 1),
(2030, 22225, 40001, 77773, 50002, 100003, 88836, 2),
(2031, 22225, 40002, 77773, 50002, 100005, 88839, 1),
(2032, 22225, 40002, 77773, 50002, 100012, 88839, 2),
(2033, 22226, 40003, 77772, 50002, 100002, 88839, 1),
(2034, 22226, 40003, 77773, 50002, 100009, 88839, 2),
(2035, 22226, 40004, 77773, 50002, 100003, 88838, 1),
(2036, 22226, 40004, 77773, 50002, 100010, 88838, 2),
(2037, 22226, 40005, 77773, 50002, 100004, 88838, 1),
(2038, 22226, 40005, 77773, 50002, 100011, 88838, 2),
(2039, 22230, 40006, 77773, 50002, 100004, 88837, 1),
(2040, 22231, 60000, 77774, 50002, 100003, 88847, 1),
(2041, 22231, 60000, 77774, 50002, 100010, 88847, 2),
(2042, 22231, 60001, 77774, 50002, 100003, 88847, 1),
(2043, 22231, 60001, 77774, 50002, 100003, 88847, 2),
(2044, 22231, 60002, 77774, 50002, 100004, 88850, 1),
(2045, 22231, 60002, 77774, 50002, 100011, 88850, 2),
(2046, 22251, 60003, 77774, 50002, 100002, 88849, 1),
(2047, 22251, 60003, 77774, 50002, 100009, 88850, 2),
(2048, 22253, 60004, 77774, 50002, 100002, 88849, 1),
(2049, 22253, 60004, 77774, 50002, 100009, 88849, 2),
(2050, 22251, 60005, 77774, 50002, 100003, 88849, 1),
(2051, 22251, 60005, 77774, 50002, 100010, 88849, 2),
(2052, 22251, 60006, 77774, 50002, 100005, 88849, 1),
(2053, 22251, 60006, 77774, 50002, 100005, 88849, 2),
(2054, 22253, 60007, 77774, 50002, 100002, 88845, 1),
(2055, 22253, 60007, 77774, 50002, 100009, 88845, 2),
(2056, 22253, 60008, 77774, 50002, 100003, 88848, 1),
(2057, 22253, 60008, 77774, 50002, 100010, 88848, 2),
(2058, 22253, 60009, 77774, 50002, 100005, 88846, 1),
(2059, 22253, 60009, 77774, 50002, 100012, 88846, 2),
(2060, 22238, 70001, 77776, 50002, 100003, 88861, 1),
(2061, 22238, 70001, 77776, 50002, 100010, 88861, 2),
(2062, 22238, 70002, 77776, 50002, 100004, 88861, 1),
(2063, 22238, 70002, 77776, 50002, 100011, 88861, 1),
(2064, 22238, 70003, 77776, 50002, 100006, 88862, 2),
(2065, 22238, 70003, 77776, 50002, 100013, 88862, 2),
(2066, 22239, 70004, 77776, 50002, 100003, 88864, 1),
(2067, 22239, 70004, 77776, 50002, 100010, 88864, 2),
(2068, 22239, 70005, 77776, 50002, 100005, 88864, 1),
(2069, 22239, 70005, 77776, 50002, 100012, 88864, 2),
(2071, 22242, 70007, 77776, 50002, 100002, 88865, 1),
(2072, 22242, 70007, 77776, 50002, 100009, 88865, 2),
(2073, 22242, 70008, 77776, 50002, 100003, 88865, 1),
(2074, 22242, 70008, 77776, 50002, 100010, 88865, 2),
(2075, 22242, 70009, 77776, 50002, 100004, 88865, 1),
(2076, 22242, 70009, 77776, 50002, 100006, 88866, 1),
(2077, 22248, 80000, 77775, 50002, 100002, 88857, 1),
(2078, 22248, 80000, 77775, 50002, 100009, 88857, 2),
(2079, 22248, 80001, 77775, 50002, 100003, 88857, 1),
(2080, 22248, 80001, 77775, 50002, 100010, 88857, 2),
(2081, 22248, 80002, 77775, 50002, 100005, 88857, 1),
(2082, 22248, 80002, 77775, 50002, 100012, 88857, 2),
(2083, 22249, 80003, 77775, 50002, 100002, 88860, 1),
(2084, 22249, 80003, 77775, 50002, 100009, 88860, 2),
(2085, 22249, 80004, 77775, 50002, 100003, 88860, 1),
(2086, 22249, 80004, 77775, 50002, 100010, 88860, 2),
(2087, 22249, 80005, 77775, 50002, 100004, 88860, 1),
(2088, 22249, 80005, 77775, 50002, 100011, 88860, 2),
(2089, 22250, 80006, 77775, 50002, 100002, 88859, 1),
(2090, 22250, 80006, 77775, 50002, 100009, 88859, 2),
(2091, 22250, 80007, 77775, 50002, 100003, 88859, 1),
(2092, 22250, 80007, 77775, 50002, 100010, 88859, 2),
(2093, 22250, 80008, 77775, 50002, 100004, 88859, 1),
(2094, 22250, 80008, 77775, 50002, 100011, 88859, 2),
(3001, 22223, 40001, 77773, 50003, 10001, 88810, 1),
(3002, 22223, 90000, 77771, 50003, 10001, 88810, 1),
(3004, 22223, 90001, 77771, 50003, 100003, 88810, 1),
(3005, 22223, 90002, 77771, 50003, 100003, 88811, 1),
(3006, 22224, 90003, 77771, 50003, 100005, 88811, 2),
(3007, 22255, 90003, 77771, 50003, 100010, 88811, 1),
(3008, 22255, 90003, 77771, 50003, 100013, 88812, 2),
(3009, 22223, 90004, 77771, 50003, 100006, 88810, 1),
(3010, 22223, 90004, 77771, 50003, 100008, 88810, 2),
(3011, 22256, 90005, 77771, 50003, 100011, 88812, 1),
(3012, 22256, 90005, 77771, 50003, 100009, 88812, 2),
(3013, 22255, 90006, 77771, 50003, 100009, 88817, 1),
(3014, 22223, 90007, 77771, 50003, 100010, 88817, 1),
(3015, 22224, 50000, 77772, 50003, 100002, 88829, 1),
(3016, 22224, 50000, 77772, 50003, 100005, 88829, 2),
(3017, 22224, 50001, 77772, 50003, 100003, 88832, 1),
(3018, 22227, 50001, 77772, 50003, 100002, 88832, 2),
(3019, 22227, 50002, 77772, 50003, 100009, 88832, 1),
(3020, 22224, 50002, 77772, 50003, 100009, 88829, 2),
(3021, 22227, 50003, 77772, 50003, 100003, 88831, 1),
(3022, 22228, 50003, 77772, 50003, 100007, 88831, 2),
(3023, 22228, 50004, 77772, 50003, 100008, 88831, 1),
(3024, 22228, 50005, 77772, 50003, 100015, 88831, 1),
(3025, 22228, 50006, 77772, 50003, 100010, 88830, 1),
(3026, 22229, 50007, 77772, 50003, 100002, 88831, 1),
(3027, 22225, 40000, 77773, 50003, 100002, 88836, 1),
(3028, 22225, 50000, 77773, 50003, 100009, 88836, 2),
(3029, 22225, 40001, 77773, 50003, 100003, 88836, 1),
(3030, 22225, 40001, 77773, 50003, 100003, 88836, 2),
(3031, 22225, 40002, 77773, 50003, 100005, 88839, 1),
(3032, 22225, 40002, 77773, 50003, 100012, 88839, 2),
(3033, 22226, 40003, 77772, 50003, 100002, 88839, 1),
(3034, 22226, 40003, 77773, 50003, 100009, 88839, 2),
(3035, 22226, 40004, 77773, 50003, 100003, 88838, 1),
(3036, 22226, 40004, 77773, 50003, 100010, 88838, 2),
(3037, 22226, 40005, 77773, 50003, 100004, 88838, 1),
(3038, 22226, 40005, 77773, 50003, 100011, 88838, 2),
(3039, 22230, 40006, 77773, 50003, 100004, 88837, 1),
(3040, 22231, 60000, 77774, 50003, 100003, 88847, 1),
(3041, 22231, 60000, 77774, 50003, 100010, 88847, 2),
(3042, 22231, 60001, 77774, 50003, 100003, 88847, 1),
(3043, 22231, 60001, 77774, 50003, 100003, 88847, 2),
(3044, 22231, 60002, 77774, 50003, 100004, 88850, 1),
(3045, 22231, 60002, 77774, 50003, 100011, 88850, 2),
(3046, 22251, 60003, 77774, 50003, 100002, 88849, 1),
(3047, 22251, 60003, 77774, 50003, 100009, 88850, 2),
(3048, 22253, 60004, 77774, 50003, 100002, 88849, 1),
(3049, 22253, 60004, 77774, 50003, 100009, 88849, 2),
(3050, 22251, 60005, 77774, 50003, 100003, 88849, 1),
(3051, 22251, 60005, 77774, 50003, 100010, 88849, 2),
(3052, 22251, 60006, 77774, 50003, 100005, 88849, 1),
(3053, 22251, 60006, 77774, 50003, 100005, 88849, 2),
(3054, 22253, 60007, 77774, 50003, 100002, 88845, 1),
(3055, 22253, 60007, 77774, 50003, 100009, 88845, 2),
(3056, 22253, 60008, 77774, 50003, 100003, 88848, 1),
(3057, 22253, 60008, 77774, 50003, 100010, 88848, 2),
(3058, 22253, 60009, 77774, 50003, 100005, 88846, 1),
(3059, 22253, 60009, 77774, 50003, 100012, 88846, 2),
(3060, 22238, 70001, 77776, 50003, 100003, 88861, 1),
(3061, 22238, 70001, 77776, 50003, 100010, 88861, 2),
(3062, 22238, 70002, 77776, 50003, 100004, 88861, 1),
(3063, 22238, 70002, 77776, 50003, 100011, 88861, 1),
(3064, 22238, 70003, 77776, 50003, 100006, 88862, 2),
(3065, 22238, 70003, 77776, 50003, 100013, 88862, 2),
(3066, 22239, 70004, 77776, 50003, 100003, 88864, 1),
(3067, 22239, 70004, 77776, 50003, 100010, 88864, 2),
(3068, 22239, 70005, 77776, 50003, 100005, 88864, 1),
(3069, 22239, 70005, 77776, 50003, 100012, 88864, 2),
(3071, 22242, 70007, 77776, 50003, 100002, 88865, 1),
(3072, 22242, 70007, 77776, 50003, 100009, 88865, 2),
(3073, 22242, 70008, 77776, 50003, 100003, 88865, 1),
(3074, 22242, 70008, 77776, 50003, 100010, 88865, 2),
(3075, 22242, 70009, 77776, 50003, 100004, 88865, 1),
(3076, 22242, 70009, 77776, 50003, 100006, 88866, 1),
(3077, 22248, 80000, 77775, 50003, 100002, 88857, 1),
(3078, 22248, 80000, 77775, 50003, 100009, 88857, 2),
(3079, 22248, 80001, 77775, 50003, 100003, 88857, 1),
(3080, 22248, 80001, 77775, 50003, 100010, 88857, 2),
(3081, 22248, 80002, 77775, 50003, 100005, 88857, 1),
(3082, 22248, 80002, 77775, 50003, 100012, 88857, 2),
(3083, 22249, 80003, 77775, 50003, 100002, 88860, 1),
(3084, 22249, 80003, 77775, 50003, 100009, 88860, 2),
(3085, 22249, 80004, 77775, 50003, 100003, 88860, 1),
(3086, 22249, 80004, 77775, 50003, 100010, 88860, 2),
(3087, 22249, 80005, 77775, 50003, 100004, 88860, 1),
(3088, 22249, 80005, 77775, 50003, 100011, 88860, 2),
(3089, 22250, 80006, 77775, 50003, 100002, 88859, 1),
(3090, 22250, 80006, 77775, 50003, 100009, 88859, 2),
(3091, 22250, 80007, 77775, 50003, 100003, 88859, 1),
(3092, 22250, 80007, 77775, 50003, 100010, 88859, 2),
(3093, 22250, 80008, 77775, 50003, 100004, 88859, 1),
(3094, 22250, 80008, 77775, 50003, 100011, 88859, 2),
(10003, 22223, 90000, 77771, 50001, 100002, 88845, 1),
(20003, 22223, 90000, 77771, 50002, 100002, 88845, 1),
(30003, 22223, 90000, 77771, 50003, 100002, 88845, 1);

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
(33455, 'Graduate', 'Good');

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

--
-- Dumping data for table `undergradparttime`
--

INSERT INTO `undergradparttime` (`UndergradPartTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) VALUES
(33351, 0, 0, 0, 2019);

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE `undergraduate` (
  `UG_StudentID` int(11) NOT NULL,
  `Major_Name` varchar(45) NOT NULL,
  `MajorID` int(11) NOT NULL,
  `MinorID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`UG_StudentID`, `Major_Name`, `MajorID`, `MinorID`) VALUES
(2222, 'Math', 0, 0),
(33331, 'Math', 0, 0),
(33334, 'Biology', 0, 0),
(33335, 'Calculus', 0, 0),
(33338, 'Biogenetics', 0, 0),
(33339, 'Graphic Design', 0, 0),
(33340, 'Computer Science B.A.', 0, 0),
(33341, 'Computer Science B.A.', 0, 0),
(33342, 'Computer Science B.S.', 0, 0),
(33343, 'Graphic Design', 0, 0),
(33344, 'Digital Art', 0, 0),
(33345, 'Biochemistry', 0, 0),
(33346, 'Biogenetics', 0, 0),
(33347, 'Trigonometry ', 0, 0),
(33349, 'Calculus ', 0, 0),
(33350, 'Economics', 0, 0),
(33351, 'Accounting', 0, 0),
(33352, 'Computer Science B.S.', 0, 0),
(33354, 'Graphic Design ', 0, 0),
(33355, 'Digital Art', 0, 0),
(33356, 'Economics ', 0, 0),
(33358, 'Computer Science B.A.', 0, 0),
(33359, 'Biochemistry ', 0, 0),
(33360, 'Business ', 0, 0),
(33362, 'Accounting ', 0, 0),
(33363, 'Economics ', 0, 0),
(33364, 'Computer Science B.S.', 0, 0),
(33365, 'Digital Art', 0, 0),
(33366, 'Graphic Design ', 0, 0),
(33367, 'Digital Art ', 0, 0),
(33369, 'Economics ', 0, 0),
(33370, 'Computer Science B.A.', 0, 0),
(33372, 'Accounting ', 0, 0),
(33373, 'Calculus ', 0, 0),
(33374, 'Biogenetics ', 0, 0),
(33376, 'Biochemistry ', 0, 0),
(33377, 'Computer Science B.A. ', 0, 0),
(33378, 'Calculus ', 0, 0),
(33380, 'Biochemistry ', 0, 0),
(33381, 'Trigonometry ', 0, 0),
(33382, 'Accounting ', 0, 0),
(33383, 'Business', 0, 0),
(33389, 'Calculus', 1112, 104),
(33390, 'Mathematical Theory', 1126, 0),
(33391, '', 1119, 101),
(33392, '', 1115, 101),
(33393, '', 1113, 0),
(33394, '', 1121, 101),
(33395, '', 1122, 101),
(33396, '', 1123, 104),
(33399, '', 1117, 101),
(33400, '', 1117, 0),
(33401, '', 1112, 103),
(33402, '', 1120, 0),
(33403, '', 1125, 104),
(33404, '', 1126, 102),
(33406, '', 1122, 0),
(33407, '', 1113, 105),
(33408, '', 1113, 0),
(33409, '', 1115, 101),
(33410, '', 1123, 104),
(33413, '', 1115, 102),
(33414, '', 1117, 101),
(33415, '', 1116, 101),
(33416, '', 1116, 0),
(33417, '', 1112, 0),
(33421, '', 1119, 0),
(33422, '', 1126, 103),
(33423, '', 1113, 102),
(33426, '', 1123, 0),
(33427, '', 1116, 101),
(33428, '', 1113, 0),
(33429, '', 1122, 0),
(33430, '', 1119, 0),
(33431, '', 1125, 104),
(33432, '', 1125, 0),
(33433, '', 1123, 0),
(33434, '', 1117, 0),
(33435, '', 1120, 0),
(33436, '', 1126, 104),
(33437, '', 1119, 0),
(33438, '', 1118, 101),
(33439, '', 1115, 0),
(33440, '', 1123, 104),
(33441, '', 1112, 0),
(33442, '', 1114, 101),
(33443, '', 1122, 101),
(33446, '', 1114, 0),
(33449, '', 1113, 0),
(33450, '', 1120, 0),
(33452, '', 1117, 101),
(33453, '', 1119, 0),
(33454, '', 1119, 0);

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
  ADD PRIMARY KEY (`A_Facu_ID`),
  ADD KEY `A_Stud_ID` (`A_Stud_ID`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`Attendance_ID`),
  ADD KEY `a_studidc` (`A_StudId`);

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
  ADD PRIMARY KEY (`Section ID`,`Stud_ID`),
  ADD KEY `Stud_ID` (`Stud_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Facu_ID`),
  ADD KEY `F_Dept_ID` (`F_Dept_ID`);

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
  ADD KEY `MajorID` (`MajorID`),
  ADD KEY `MinorID` (`MinorID`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`Transcript_ID`) USING BTREE,
  ADD KEY `tr_stud_id` (`Stud_ID`);

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
-- Indexes for table `minor`
--
ALTER TABLE `minor`
  ADD PRIMARY KEY (`Minor_ID`),
  ADD KEY `Department_ID` (`Department_ID`);

--
-- Indexes for table `period`
--
ALTER TABLE `period`
  ADD PRIMARY KEY (`PeriodID`);

--
-- Indexes for table `prerequisite`
--
ALTER TABLE `prerequisite`
  ADD PRIMARY KEY (`Prereq_ID`,`P_CourseID`);

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
  ADD PRIMARY KEY (`UG_StudentID`),
  ADD KEY `MajorID` (`MajorID`),
  ADD KEY `MinorID` (`MinorID`);

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
  ADD CONSTRAINT `advisor_ibfk_1` FOREIGN KEY (`A_Facu_ID`) REFERENCES `faculty` (`Facu_ID`),
  ADD CONSTRAINT `advisor_ibfk_2` FOREIGN KEY (`A_Stud_ID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `a_studidc` FOREIGN KEY (`A_StudId`) REFERENCES `student` (`Stud_ID`),
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`Attendance_ID`) REFERENCES `section` (`S_Section_ID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `cdept_id` FOREIGN KEY (`CDeptID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `enrollment`
--
ALTER TABLE `enrollment`
  ADD CONSTRAINT `enrollment_ibfk_1` FOREIGN KEY (`Stud_ID`) REFERENCES `student` (`Stud_ID`),
  ADD CONSTRAINT `enrollment_ibfk_2` FOREIGN KEY (`Section ID`) REFERENCES `section` (`S_Section_ID`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
  ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`F_Dept_ID`) REFERENCES `department` (`Department_ID`),
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
  ADD CONSTRAINT `graduate_ibfk_1` FOREIGN KEY (`MajorID`) REFERENCES `major` (`Major_ID`),
  ADD CONSTRAINT `graduate_ibfk_2` FOREIGN KEY (`MinorID`) REFERENCES `minor` (`Minor_ID`),
  ADD CONSTRAINT `stud_id` FOREIGN KEY (`GD_StudID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `history`
--
ALTER TABLE `history`
  ADD CONSTRAINT `tr_stud_id` FOREIGN KEY (`Stud_ID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `holdstatus`
--
ALTER TABLE `holdstatus`
  ADD CONSTRAINT `hshold` FOREIGN KEY (`HS_HoldID`) REFERENCES `holds` (`Holds_ID`),
  ADD CONSTRAINT `hsstudhold_id` FOREIGN KEY (`HS_StudentID`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `major`
--
ALTER TABLE `major`
  ADD CONSTRAINT `departm_id` FOREIGN KEY (`M_DepartID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `minor`
--
ALTER TABLE `minor`
  ADD CONSTRAINT `minor_ibfk_1` FOREIGN KEY (`Department_ID`) REFERENCES `department` (`Department_ID`);

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
-- Constraints for table `undergradparttime`
--
ALTER TABLE `undergradparttime`
  ADD CONSTRAINT `ug_part_id` FOREIGN KEY (`UndergradPartTime_ID`) REFERENCES `undergraduate` (`UG_StudentID`);

--
-- Constraints for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD CONSTRAINT `undergraduate_ibfk_1` FOREIGN KEY (`UG_StudentID`) REFERENCES `student` (`Stud_ID`),
  ADD CONSTRAINT `undergraduate_ibfk_2` FOREIGN KEY (`MajorID`) REFERENCES `major` (`Major_ID`),
  ADD CONSTRAINT `undergraduate_ibfk_3` FOREIGN KEY (`MinorID`) REFERENCES `minor` (`Minor_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
