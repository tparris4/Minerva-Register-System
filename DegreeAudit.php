
<?php
require "header2.php";
?>

<!--
check for holds
-->
<?php 

$checkhold = "SELECT s.*, h.*, a.* FROM student AS s, "
        . "JOIN holds AS h, holdstatus AS a"
        . "WHERE s.Stud_ID = '".$_SESSION['user_id']."' AND h.Holds_ID = a.HS_HoldID "
        . "AND a.HS_StudentID = s.Stud_ID";

 if ($result = mysqli_query($conn, $checkhold)){
     while($row = mysqli_fetch_array($result)){
         $_SECTION['HoldSet'] = 1;
         header("Location: Student.php");
     }
     
 }
?>
<!--
Print Last Name
-->
<h2> <?php echo $_SESSION['FirstName'] . " " . $_SESSION['LastName']; ?></h2>
<!--
Degree Audit
-->
<?php 
$degreecheck = "SELECT s.*, h.*, a.*, c.*, e.*, m.*, r.* FROM student AS s"
        . "JOIN history AS s, section AS e, major AS m, majorrequirements AS r, course AS c"
        . "WHERE '".$SESSION['user_id']."' = h.Stud_ID AND h.Sec_ID = e.S_Section_ID AND e.S_CourseID = c.CourseID"
        . " AND r.Major_ID = m.Major_ID 
            AND m.M_Name = '".$_SESSION['MajorName']."' AND (r.MR_CourseID NOT IN (SELECT c.CourseID from Course))";

 if ($result = mysqli_query($conn, $checkhold)){
     if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Course Name</th>";
                    echo"<th>Course Description</th>";
                    echo"<th>Course Code</th>";
                    echo"<th>Credit Amount</th>";
                    echo"<th>Department</th>";                   
                    
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>"; 
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['C_DeptName'] . "</td>";

                    echo"</tr>";
                    
                    }
                echo "</table>";
     }
 }
 
?>

<table>
   
    <tr><td>Major: <?php echo $_SESSION['MajorName'];?> </td></tr>
    <tr><td>Minor: <?php echo $_SESSION['MinorName'];?></td></tr>
</table>




           <?php
           require "footer.php";
           
           ?>
   
</body>
</html>