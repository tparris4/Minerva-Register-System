
<?php
require "header2.php";
?>

<!--
check for holds
-->

<?php 
/*
 $sql = "SELECT student.Stud_ID, user.First_Name, user.Last_Name,  holds.Hold_Type, holds.Hold_Description, holdstatus.HoldStatus
       FROM holds,holdstatus,student, user
       WHERE user.user_ID = '" . $_SESSION['user_id'] . "'
           AND user.user_ID = student.Stud_ID AND
       holdstatus.HS_HoldID = holds.Holds_ID 
       AND student.Stud_ID = holdstatus.HS_StudentID";

   $rownumber = 0;
   if ($result = mysqli_query($conn, $sql)){

       
    if(mysqli_num_rows($result) > 0) {

      

    
      while($row = mysqli_fetch_array($result)){

          echo "check1";
         $_SESSION['HoldSet'] = 1;
         header("Location: Student.php");
       }
   }}  
 * 
 */
?>

<!--
Print Last Name
-->
<h2> <?php echo $_SESSION['FirstName'] . " " . $_SESSION['LastName']; ?></h2>

<table>
   
    <tr><td>Major: <?php echo $_SESSION['MajorName'];?> </td></tr>
    <tr><td>Minor: <?php echo $_SESSION['MinorName'];?></td></tr>
</table>
<!--
Degree Audit
-->
<?php 
$degreecheck = "SELECT s.*, h.*, c.*, e.*, m.*, r.*, u.* "
        . "FROM student AS s"
        . "JOIN history AS h, undergraduate AS u, section AS e, major AS m, majorrequirements AS r, course AS c"
        . "WHERE h.Stud_ID ='".$_SESSION['user_id']."'"
        . "AND u.Stud_ID = '".$_SESSION['user_id']."'"
        . "  AND h.Sec_ID = e.S_Section_ID "
        . "AND e.S_CourseID = c.Course_ID"
        . " AND m.M_Name = '".$_SESSION['MajorName']."'
            AND r.Major_ID = '".$_SESSION['MajorName']."'
             AND (r.MR_CourseID NOT IN (SELECT Cour_ID FROM history WHERE history.Stud_ID = '".$_SESSION['user_id']."'))
             
";

 if ($result = mysqli_query($conn, $degreecheck)){
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




           <?php
           require "footer.php";
           
           ?>
   
</body>
</html>