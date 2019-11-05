
<html>
<head>
    <meta charset = "utf-8">
    <title>Holds</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
   <body>
    <header><nav>
	    <p><a href="Minerva University.html"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>
      

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

   $sql = "SELECT * 
       FROM holds,holdstatus,student, user
       WHERE holdstatus.HS_HoldID = holds.Holds_ID 
       AND student.Stud_ID = holdstatus.HS_StudentID
       AND student.Stud_ID = user.User_ID";

   $rownumber = 0;
   if ($result = mysqli_query($conn, $sql)){

       
    if(mysqli_num_rows($result) > 0) {
      echo "<table>";
      echo "<tr>";
      echo "<th>Name</th>";
      echo "<th>Hold Type</th>";
      echo "<th>Description</th>";
      echo "<th>Amount</th>";
      
    $rownumber = $rownumber + 1;
    
      while($row = mysqli_fetch_array($result)){
        echo "<tr>";
        
        echo "<td>" . $row['First_Name'] . " " .  $row['Last_Name'] . "</td>";
        echo "<td>" . $row['Hold_Type'] . "</td>";
       echo "<td>" . $row[''] . "</td>";
       echo "<td>" . $row[''] . "</td>";

       echo "</tr>";
      
      }
      echo "</table";

      
      mysqli_free_result($result);
       } else {
      echo "Not found";
    }
   }  else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn)
?>

                
                
       <footer id="footer">
            <div class ="geninfo" align ="center">
          <p><a href="Minerva University.html"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>  
          <p>Phone Number: 812-522-3917 <br>
          Street: 4038 Minerva University <br>
          City, State, Zip: Seymour, Indiana, 47274 <br>
          Inquiries: generalminervauniversity@msc.edu <br>
      </p></div>
    </footer>     
   </body>


</html>

