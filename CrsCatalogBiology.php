<?php
 $dbhost = 'localhost';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'register_system';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully</br>';
   session_start();
   ?>
<html>
<head>

    <meta charset = "utf-8">
<link rel="stylesheet" type="text/css" href="style.css">
</style>
<body>
            <header>
        <p><a href="Minerva University3.html"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>
        </header>

<h2>Course Catalog</h2>

 <?php 
           // $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT c.*, p.* FROM course AS c 
                JOIN prerequisite1 AS p WHERE c.CDeptID = '125'";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Prerequisites</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    if(p.Prerequ_ID < p.P_CourseID && p.P_courseID == c.Course_ID){
                    echo"<td>" . $row['C_Name'] . "</td>";}
                    else{
                        echo"<th>None</th>";
                    }
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>

<table>
  <tr>
    <th>Name</th>
    <th>Description</th>
    <th>Credits</th>
    <th>Department</th>
    <th>Prerequisites</th>
  </tr>
  <tr>
    <td>Introduction to Biology - BIO 101</td>
    <td>An introduction to cellular structure and function, to biological molecules, bioenergetics, to the genetics of both prokaryotic and eukaryotic organisms, and to the elements of molecular biology.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Calculus 1</td>
  </tr>
  <tr>
    <td>Evolutionary Biology - BIO 102</td>
    <td>The first principles of evolutionary theory, classification, ecology, and behavior; a phylogenetic synopsis of the major groups of organisms from viruses to primates.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Introduction to Biology - BIO 101</td>
  </tr>
    <tr>
    <td>Introductory Biology Lab - BIO L101</td>
    <td>Students gain hands-on experience and learn the theoretical basis of lab techniques common to a variety of biological disciplines such as biochemistry, molecular biology, cell biology, and bioinformatics.</td>
    <td>2.0</td>
    <td>Biology</td>
    <td>Introduction to Biology - BIO 101</td>
  </tr>
    <tr>
        <td>Human Genetics in Modern Society - BIO 103</td>
    <td></td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Introduction to Biology - BIO 101</td>
  </tr>
    <tr>
    <td>Human Neuorology - BIO 104</td>
    <td>Introduction to basic human neuroscience leading to a discussion of brain diseases classified under the rubric Dementia. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Human Genetics in Modern Society - BIO 103</td>
  </tr>
    <tr>
    <td>Quantitative Biology Project Lab</td>
    <td>Course covers two important aspects: (1) interdisciplinary and research-based education and (2) teaching fundamental experimental and computational skills in quantitative studies of living systems. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Approval from department</td>
  </tr>
    <tr>
    <td>Exploring Issues of Diversity, Equity, and Inclusion in Relation to Human Biology - BIO 201</td>
    <td>This course will examine diversity, equity, and inclusion beginning with a biological framework. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Human Neurology - BIO 104</td>
  </tr>
    <tr>
    <td>Genomics Research Initiative Lab I - BIO 202</td>
    <td>Students will isolate bacterial viruses or other organisms from the environment and characterize them by methods including electron microscopy and nucleic acid analysis. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Approval from department</td>
  </tr>
    <tr>
    <td>Professional Development Topics in the Biological Sciences - BIO 203</td>
    <td>Seminars will introduce students to various professional development topics in the biological sciences. Emphasis may include current research in academe and industry, using campus and community resources to help achieve academic, personal and professional goals, and career exploration.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Approval from Department</td>
  </tr>
    <tr>
    <td>Undergraduate Workshops - BIO 204 </td>
    <td>The workshops will be restricted to lower-division undergraduates. The course will introduce students to the methods of scientific research and to a variety of research topics in the biological/biomedical sciences.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Professional Development Topics in the Biological Sciences</td>
  </tr>
</table>
<table>
    <h3> Upper Division Courses</h3>
    <h4> Biochemistry</h4>
    <tr>
    <td>Structural Biochemistry - BCH 301</td>
    <td>The structure and function of biomolecules. Includes protein conformation, dynamics, and function; enzymatic catalysis, enzyme kinetics, and allosteric regulation; lipids and membranes; sugars and polysaccharides; and nucleic acids.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Chemistry Lab and Human Genetics in Modern Society</td>
  </tr>
    <tr>
    <td>Metabolic Biochemistry - BCH 302</td>
    <td>Energy-producing pathways–glycolysis, the TCA cycle, oxidative phosphorylation, photosynthesis, and fatty acid oxidation; and biosynthetic pathways–gluconeogenesis, glycogen synthesis, and fatty acid biosynthesis.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Chemistry Lab and Human Genitics in Modern Society</td>
  </tr>
    <tr>
    <td>Biochemical Techniques - BCH 301A</td>
    <td>Introductory laboratory course in current principles and techniques applicable to research problems in biochemistry and molecular biology. </td>
    <td>2.0</td>
    <td>Biology</td>
    <td>Must be taken with Structural Biochemistry</td>
  </tr>
    <tr>
    <td>Nutrition - BCH 304</td>
    <td>Elaborates the relationship between diet and human metabolism, physiology, health, and disease. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Structural Biochemistry - 301</td>
  </tr>
    <tr>
    <td>Our Energy Future—Sustainable Energy Solutions - BCH 305</td>
    <td>Course will provide an overview of energy production and utilization and the consequences of this on the economy and environment</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Structural Biochemistry - 301</td>
  </tr>
    <tr>
    <td>Chemistry of Biological Interactions - BCH 306</td>
    <td>Nearly all interactions between organisms, including host-pathogen interactions and mate attraction, have a chemical basis. Plants and microorganisms are the dominant life forms on earth and remain a major source of pharmaceutical leads. Students in this course will utilize biochemical methods to extract, fractionate, and analyze plant and microbial compounds of medicinal and ecological significance including antibiotics, growth regulators, toxins, and signaling molecules.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Structural Biochemistry - 301</td>
  </tr>
    <tr>
    <td>Advanced Topics in Modern Biology: Biochemistry </td>
    <td>Students are expected to actively participate in course discussions, read, and analyze primary literature.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Chemistry of Biological Interactions - BCH 306</td>
  </tr>
  
</table>
<h3>Genetics and Cellular Structural Biology</h3>
<table>
    <tr>
    <td>Advanced Topics in Modern Biology: Biochemistry </td>
    <td>Students are expected to actively participate in course discussions, read, and analyze primary literature.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Chemistry of Biological Interactions - BCH 306</td>
  </tr>
        <tr>
    <td> Molecular Biology </td>
    <td>Molecular basis of biological processes, emphasizing gene action in context of entire genome. Chromosomes and DNA metabolism: chromatin, DNA replication, repair, mutation, recombination, transposition.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Human Neurology - BIO 104</td>
  </tr>
          <tr>
    <td>Molecular Basis of Human Disease </td>
    <td>An examination of the molecular basis of human diseases.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Human Neurology - BIO 104</td>
  </tr>
          <tr>
    <td>Virology </td>
    <td>An introduction to eukaryotic virology, with emphasis on animal virus systems.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Molecular Biology</td>
  </tr>
          <tr>
    <td> Pharmacology </td>
    <td>Basics of pharmacology such as drug absorption, distribution, metabolism, and elimination.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Molecular Biology</td>
  </tr>
  
          <tr>
    <td>Microbiology Laboratory </td>
    <td>Techniques in microbial physiology, microbial genomics, microbial evolution, and microbial ecology will be used to explore the role of microbes in industry, health, and the environment.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Taken with Microbiology</td>
  </tr>
          <tr>
    <td> Microbial Genetics </td>
    <td>Course will consider the organization and function of prokaryotic genomes including content, DNA supercoiling, histone-like proteins, chromosomal dynamics (short-term and long-term), extrachromosomal elements, bacterial sex, transduction, transformation, mobile elements (transposon), epigenetic change, adaptive and directed mutation</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Molecular Biology</td>
  </tr>
  
        <tr>
    <td>Medical Microbiology </td>
    <td>Encompasses the increasingly important areas of viral, bacterial, and parasitic diseases and understanding the complex interaction between humans and infectious agents.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Microbiology</td>
  </tr>
        <tr>
    <td>Microbial Physiology </td>
    <td>Prokaryotic cell biology will be discussed primarily from physiological and biochemical standpoints with a focus on conceptual understanding, integration, and mechanism. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Taken with Medical Microbiology</td>
  </tr>
        <tr>
    <td>Quantitative Principles in Biology </td>
    <td>Course considers problems in biology that were solved using quantitative biology approaches. Problems will range from the molecular to the population level.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Microbiology</td>
  </tr>
  <tr>
    <td>Bioinformatics Laboratory </td>
    <td>Bioinformatics is the analysis of big data in the biosciences. This course provides a hands-on introduction to the computer-based analysis of biomolecular and genomic data.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Taken with Quantitative Principles in Biology</td>
  </tr>
  <tr>
    <td>Structural Biology of Viruses </td>
    <td>An introduction to virus structures, how they are determined, and how they facilitate the various stages of the viral life cycle from host recognition and entry to replication, assembly, release, and transmission to uninfected host cells. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Quantitative Principles in Biology</td>
  </tr>
  <tr>
    <td> Genomics Research Initiative Laboratory II</td>
    <td>Students will characterize the genomic sequence of the organisms isolated in BILD 70 and use molecular and computational tools to resolve ambiguities and close gaps. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Quantitative Principles in Biology</td>
  </tr>
  <tr>
    <td>Molecular Sequence Analysis </td>
    <td>This course covers the analysis of nucleic acid and protein sequences, with an emphasis on the application of algorithms to biological problems. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Quantitative Principles in Biology</td>
  </tr>
   <tr>
    <td>Computational Molecular Biology </td>
    <td>This advanced course covers the application of machine learning and modeling techniques to biological systems. Topics include gene structure, recognition of DNA and protein sequence patterns, classification, and protein structure prediction. </td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Taken with Molecular Sequence Analysis</td>
  </tr>
   <tr>
    <td> Bioinformatics Laboratory (Advanced)</td>
    <td>This course emphasizes the hands-on application of bioinformatics methods to biological problems. Students will gain experience in the application of existing software, as well as in combining approaches to answer specific biological questions. S</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Molecular Sequence Analysis</td>
  </tr>
   <tr>
    <td>Advanced Topics in Modern Biology: Molecular Biology  </td>
    <td>Course will vary in title and content. Students are expected to actively participate in course discussions, read, and analyze primary literature.</td>
    <td>3.0</td>
    <td>Biology</td>
    <td>Molecular Sequence Analysis</td>
  </tr>
   
</table>


</body>
//https://www.ucsd.edu/catalog/courses/BIOL.html
</html>


