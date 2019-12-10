
<?php 
require "header3.php";
?>
    <meta charset = "utf-8">
<link rel="stylesheet" type="text/css" href="style.css">
</style>
<body>


<h2>Music Course Catalog</h2>

 <?php 
           // $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT DISTINCT c.C_Name, c.C_Description, c.C_Code, c.C_CreditAmt FROM course AS c 
                JOIN prerequisites1 AS p WHERE c.CDeptID = '132'";
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
                    /*if(prerequisites1.Prerequ_ID < prerequisites1.P_CourseID && prerequisites1.P_courseID == course.Course_ID){
                    echo"<td>" . $row['C_Name'] . "</td>";}
                    else{
                        echo"<th>None</th>";
                    } */
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



</body>

</html>

<br><br><br><br><br><br>
<?php 
require 'footer.php';
?>
