-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2019 at 10:52 PM
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
(123, 123, 123, 'test'),
(1111, 123, 123, 'test'),
(11111, 123, 123, 'Admin');

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
(77776, 'Computer Science Building', '200 Comp Sci Building', 25);

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
  `D_Chair` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Department_ID`, `D_Name`, `D_Email`, `D_Location`, `D_Phone`, `D_Secretary`, `D_Chair`) VALUES
(124, 'Math', 'MathDep@msc.edu', '100 Math Building', '214-669-7480', 'Thnah Pierce', 'Anthony Hutchenson'),
(125, 'Biology', 'BiologyDept@msc.edu', '100 Science Building', '570-418-4913', 'Jayne Clarce', 'David Greenwood'),
(126, 'Business', 'BusinessDept@msc.edu', '100 Business Building', '856-890-7925', 'Gerald Hicks', 'Judy Hardy'),
(127, 'Medical ', 'MedicalDept@msc.edu', '100 Medical Building', '325-447-1824', 'Robin Hardner', 'Mary Runnels'),
(128, 'Art', 'ArtDepartment@msc.edu', '400 Art Building', '270-835-1345', 'Edwin Villasenor', 'Christopher Iddings'),
(129, 'Computer Science', 'CompSciDepartment@msc.edu', 'Computer Science Building', '478-338-3375', 'Brent Bolin', 'George Pinion');

-- --------------------------------------------------------

--
-- Table structure for table `enrollment`
--

CREATE TABLE `enrollment` (
  `Stud_ID` int(11) NOT NULL,
  `Section ID` int(11) NOT NULL,
  `Grades` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `Facu_ID` int(11) NOT NULL COMMENT 'Faculty ID',
  `F_Rank` varchar(45) NOT NULL,
  `F_Office` varchar(45) NOT NULL,
  `F_OfficeHrs` varchar(45) NOT NULL,
  `F_Dept` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`Facu_ID`, `F_Rank`, `F_Office`, `F_OfficeHrs`, `F_Dept`) VALUES
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
(22239, 'Faculty', '222 Computer Science Building', '5:00 - 6:00', 0);

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
  `MajorName` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `graduate`
--

INSERT INTO `graduate` (`GD_StudID`, `MajorName`) VALUES
(33332, 'Business'),
(33333, 'Business');

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
  `Hold_Type` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `holds`
--

INSERT INTO `holds` (`Holds_ID`, `Hold_Type`) VALUES
(200, 'Financial');

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
(200, 2222, 'Unsatisfied');

-- --------------------------------------------------------

--
-- Table structure for table `major`
--

CREATE TABLE `major` (
  `Major_ID` int(11) NOT NULL,
  `M_Name` varchar(45) NOT NULL,
  `M_DepartID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `major`
--

INSERT INTO `major` (`Major_ID`, `M_Name`, `M_DepartID`) VALUES
(1112, 'Calculus', 124),
(1113, 'Trigonometry', 124),
(1113, 'Science', 125),
(1114, 'Business', 126),
(1115, 'Economics', 126),
(1116, 'Accounting', 126),
(1117, 'Biochemistry', 125),
(1118, 'Medical Chemistry', 127);

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
-- Table structure for table `prerequisites`
--

CREATE TABLE `prerequisites` (
  `Prereq_ID` int(11) NOT NULL,
  `Pre_Course_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prerequisites`
--

INSERT INTO `prerequisites` (`Prereq_ID`, `Pre_Course_ID`) VALUES
(90001, 90004);

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
(88816, 103, 25, 77773);

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
(1001, 22223, 40001, 77773, 5004, 10001, 88810, 1);

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
(33363, 'Undergrad', 'Unsatisfactory');

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
  `StartTime` varchar(45) NOT NULL,
  `EndTime` varchar(45) NOT NULL,
  `Day` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `timeslot`
--

INSERT INTO `timeslot` (`TimeSlotID`, `StartTime`, `EndTime`, `Day`) VALUES
(10001, '12:00', '1:30', 'Monday/Wednesday');

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

-- --------------------------------------------------------

--
-- Table structure for table `undergraduate`
--

CREATE TABLE `undergraduate` (
  `UG_StudentID` int(11) NOT NULL,
  `Major_Name` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `undergraduate`
--

INSERT INTO `undergraduate` (`UG_StudentID`, `Major_Name`) VALUES
(2222, 'Math'),
(33331, 'Math'),
(33334, 'Biology');

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
(44441, 'Patricia ', 'Brown', '860-309-9554', '2516 Hart Street, Austin, Texas, 78723', 'PBrown', 'PBrown@msc.edu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`,`A_DepartID`);

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
  ADD PRIMARY KEY (`Section ID`,`Stud_ID`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`Facu_ID`);

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
  ADD PRIMARY KEY (`GD_StudID`);

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
  ADD PRIMARY KEY (`HS_HoldID`,`HS_StudentID`),
  ADD UNIQUE KEY `HS_HoldID` (`HS_HoldID`),
  ADD KEY `hsstudhold_id` (`HS_StudentID`);

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
-- Indexes for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD PRIMARY KEY (`Prereq_ID`),
  ADD KEY `prereq_idc` (`Pre_Course_ID`);

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
  ADD PRIMARY KEY (`UG_StudentID`);

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
-- Constraints for table `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `a_studidc` FOREIGN KEY (`A_StudId`) REFERENCES `student` (`Stud_ID`);

--
-- Constraints for table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `cdept_id` FOREIGN KEY (`CDeptID`) REFERENCES `department` (`Department_ID`);

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
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
-- Constraints for table `prerequisites`
--
ALTER TABLE `prerequisites`
  ADD CONSTRAINT `pre_cour_id` FOREIGN KEY (`Prereq_ID`) REFERENCES `course` (`Course_ID`),
  ADD CONSTRAINT `prereq_idc` FOREIGN KEY (`Pre_Course_ID`) REFERENCES `course` (`Course_ID`);

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
-- Constraints for table `undergraduate`
--
ALTER TABLE `undergraduate`
  ADD CONSTRAINT `undergraduate_ibfk_1` FOREIGN KEY (`UG_StudentID`) REFERENCES `student` (`Stud_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
