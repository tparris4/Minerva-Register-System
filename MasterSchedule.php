<!DOCTYPE html>
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
</head>
<body>
            <header>
        <p><a href="Minerva University3.html"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>
        </header>

<h2>Master Schedule</h2>

<h3><u>Mathematics</u></h3>
<table>
    <thead>
    <th>Professor</th>
      <th>8:00 - 9:30am</th>
      <th>10:00 - 11:30am</th>
      <th>Noon</th>
    <th>12:00 - 1:30pm</th>
    <th>2:00 - 3:30pm</th>
    <th>4:00 - 5:30pm</th>
    <th>Evening</th>
    <th>6:00 - 7:30pm</th>
    <th>8:00 - 9:30pm</th>
</thead>
<tbody>
  <tr>
    <td>Hamme, D.</td>
    <td> Pre-Calculus - MAT 100 M/W SEC 1</td>
    <td>Pre-Calculus - MAT 100 M/W <br>
        Pre-Calculus - MAT 100 Tu/Th</td>

    <td> </td>

    <td>Pre-Calculus - MAT 100 M/W <br>
        Pre-Calculus - MAT 100 Tu/Th</td>
    <td></td>
    <td></td>
  
    <td>Calculus 1 - MAT 101 Tu/Th</td>

    <td>Calculus 1 - MAT 101 Tu/Th</td>
    <td></td>
  </tr>
    <tr>
    <td>Beltran, M.</td>
    <td> </td>
    <td>Linear Algebra - MAT 102 M/W <br>
        Linear Algebra - MAT 102 Tu/Th</td>
    <td> </td>
    <td>Linear Algebra - MAT 102 M/W
        Linear Algebra - MAT 102 Tu/Th</td>
    <td>Introduction to Statistics - MAT 103 Tu/Th <br>
        Introduction to Statistics - MAT 103 M/W</td>
    <td></td>
    <td>Calculus 1 - MAT 101 M/W</td>
    <td>Calculus 1 - MAT 101 M/W</td>
    
    <td></td>
  </tr>
  <tr>
    <td>Gurly, D.</td>
    <td>Calculus 2 </td>
    <td>Pre-Calculus - MAT 100 M/W</td>

    <td> </td>

    <td>Pre-Calclus - MAT 100 M/W</td>
    <td></td>
    <td></td>
  
    <td></td>

    <td>Calculus 1 - MAT 101 Tu/Th</td>
    <td>Calculus 1 - MAT 101 Tu/Th</td>
  </tr>
</tbody>
</table>
<h3><u>Biology</u></h3>
<table>
    <thead>
    <th>Professor</th>
      <th>8:00 - 9:30</th>
      <th>10:00 - 11:30</th>
      <th>Noon</th>
    <th>12:00 - 1:30</th>
    <th>2:00 - 3:30</th>
    <th>4:00 - 5:30</th>
    <th>Evening</th>
    <th>6:00 - 7:30</th>
    <th>8:00 - 9:30</th>
    </thead>
    <tbody>
    <tr>
    <td>Kline, N.</td>
    <td> </td>
    <td>Introduction to Biology - BIO 101  M/W SEC 1<br>
        Introductory Biology Lab - BIO 101A M/W - SEC 2</td>
    <td>Evolutionary of Biology - BIO 102 M/W - SEC 1 </td>
    <td></td>
    <td>Introductory Biology Lab - M/W SEC 1</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
    <tr>
    <td>Ford A.</td>
    <td>Evolutionary Biology BIO 101 - M/W SEC 2 <br>
        Introductory Biology Lab BIO 101A - Tu/Th SEC 1 </td>
    <td>Human Genetics in Modern Society BIO 103 - M/W SEC 1</td>
    <td> </td>
    <td>/td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
    <tr>
    <td>Hwang, R.</td>
    <td>Human Neurology BIO 104 - SEC 1 M/W <br>
         Genomics Research Initiaite Lab I BIO 105 - SEC 1 T/Th</td>
    <td>Human Neurology - SEC 1 M/W</td>
    <td> </td>
    <td>Quantitive Biology Project Lab - SEC 1 M/W</td>
    <td></td>
    <td></td>
    <td></td>
    <td>Human Genetics in Modern Society - SEC 1 M/W</td>
    <td>Human Neurology - SEC 1 M/W <br>
        Quantitative Biology Project Lab - SEC 1 Tu/Th</td>
  </tr>
    <tr>
    <td>Capobianco, K.</td>
    <td>Genomics Research Initiative Lab I M/W </td>
    <td>Genomics Research Initiative Lab I Tu/Th</td>
    <td> </td>
    <td></td>
    <td>Professional Development Topics in the Biological Sciences M/W</td>
    <td>Professional Development Topics in the Biological Sciences Tu/Th</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
    <tr>
    <td>Hamme, D.</td>
    <td> </td>
    <td>Pre-Calculus M/W</td>
    <td> </td>
    <td>Pre-Calclus M/W</td>
    <td></td>
    <td></td>
    <td>Calculus 1 Tu/Th</td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>
<h3><u>Biology</u></h3>

        <?php 
           // $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_FacuID = '22224' AND s.S_SemesterYearID = '50001' AND s.S_FacuID = f.Facu_ID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
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
    </tr>
    <tr>
    <td>Lewis, E.</td>
    <td> </td>
    <td>Blood, Hematopoiesis & Lymphatics MED 100 - M/W SEC 1</td>
    <td>Clincial Medicine 1 - MED 101 M/W SEC 1</td>
    <td></td>
    <td>Design & Analysis of Clinical Research MED 103 - M/W SEC 1 <br>
        Design & Analysis of Clinical Research MED 103 - Tu/Th SEC 2</td>
    <td>Clinical Medicine I Tu/Th</td>
    <td></td>
    <td></td>
    <td></td>
  </tr><tr>
    <td>Lynn, C.</td>
    <td> </td>
    <td>Foundations of Medicine M/W</td>
    <td> </td>
    <td>Foundations of Medicine Tu/Th</td>
    <td>Foundations of Medicine M/W</td>
    <td></td>
    <td></td>
    <td>Gastrointestinal & Hepatobiliary Tu/Th</td>
    <td></td>
  </tr><tr>
    <td>Stevens, F.</td>
    <td>Human Structure M/W </td>
    <td>Human Structure M/W</td>
    <td> </td>
    <td>Human Structure Tu/Th / Immunology, Microbiology & Integument M/W</td>
    <td>Immunology, Microbiology & Integument Tu/Th</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr><tr>
    <td>Hamme, D.</td>
    <td> </td>
    <td>Pre-Calculus M/W</td>
    <td> </td>
    <td>Pre-Calclus M/W</td>
    <td></td>
    <td></td>
    <td>Calculus 1 Tu/Th</td>
    <td></td>
    <td></td>
  </tr><tr>
    <td>Hamme, D.</td>
    <td> </td>
    <td>Pre-Calculus M/W</td>
    <td> </td>
    <td>Pre-Calclus M/W</td>
    <td></td>
    <td></td>
    <td>Calculus 1 Tu/Th</td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>
<h3><u>Art</u></h3>
<table>
    <thead>
        <th>Professor</th>
      <th>8:00 - 9:30</th>
      <th>10:00 - 11:30</th>
      <th>Noon</th>
    <th>12:00 - 1:30</th>
    <th>2:00 - 3:30</th>
    <th>4:00 - 5:30</th>
    <th>Evening</th>
    <th>6:00 - 7:30</th>
    <th>8:00 - 9:30</th>
</thead>
<tbody>
    <tr>
    <td>Daigre, J.</td>
    <td>Drawing Fundamentals M/W</td>
    <td>Drawing Fundamentals M/W</td>
    <td> </td>
    <td>Self and Representation M/W</td>
    <td>Self and Representation M/W</td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
</tbody>
</table>
  <h3><u>Computer Science</u></h3>
<table>
    <thead>
        <th>Professor</th>
      <th>8:00 - 9:30</th>
      <th>10:00 - 11:30</th>
      <th>Noon</th>
    <th>12:00 - 1:30</th>
    <th>2:00 - 3:30</th>
    <th>4:00 - 5:30</th>
    <th>Evening</th>
    <th>6:00 - 7:30</th>
    <th>8:00 - 9:30</th>
</thead>
<tbody>
    <tr>
    <td>Parks, E.</td>
    <td> </td>
    <td>Computer Science I M/W</td>
    <td> </td>
    <td>Computer Science I M/W</td>
    <td>Programming 1 Tu/Th</td>
    <td>Programming 1 Tu/Th</td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
    </thead>
    
    
</table>
   <footer id="footer">
            <div class ="geninfo">
          <p><a href="Minerva University.html"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>  
          <p>Phone Number: 812-522-3917 <br>
          Street: 4038 Minerva University <br>
          City, State, Zip: Seymour, Indiana, 47274 <br>
          Inquiries: generalminervauniversity@msc.edu <br>
      </p></div>
    </footer>     
   </body>
</body>
</html>

