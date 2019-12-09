<?php
include "header4.php";

?>


  <?php 
            $sql = "SELECT user.*,  faculty.*, attendance.*, section.*, course.*, enrollment1.*"
                    
                    . "FROM user JOIN "
                    
                    . "faculty, attendance, section, course, enrollment1"
                    . " WHERE enrollment1.Stud_ID = user.User_ID"
                    . " AND attendance.Facu_ID = faculty.Facu_ID AND"
                    . " '".$_SESSION['user_id']."' = faculty.Facu_ID AND attendance.Att_Sec_ID = section.S_Section_ID AND "
                    . "section.S_CourseID = course.Course_ID AND enrollment1.E_Sec_ID = '".$_SESSION['grade']."' AND "
                    . "enrollment1.E_SemesterYearID = '50001' AND enrollment1.Facu_ID = f.Facu_ID "
                    . "ORDER BY section.S_Section_ID";
                      
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Student Name</th>";
                    echo"<th>Student ID</th>";
                    echo"<th>Assignment</th>";
                    echo"<th>Grade</th>";
                          
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['Stud_ID'] . "</td>";
                    echo"<td>" . $row['Assignment'] . "</td>";
                    echo"<td>" . $row['Grade'] . "</td>";
                    echo"</tr>";
                    
                    }
                echo "</table>";
                
            
      mysqli_free_result($result);
                }else {
      echo "Not found";
    }
    
            }else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
?>

<?php 
$sql = "SELECT history.*, user.*, section.*, course.*, enrollment1.*, faculty.*, student.*
                FROM history JOIN
               section,
               faculty,
               enrollment1,
               course,
               user,
               student
                WHERE enrollment1.Stud_ID = user.User_ID"
                    . " AND attendance.Facu_ID = faculty.Facu_ID AND"
                    . " '".$_SESSION['user_id']."' = faculty.Facu_ID AND attendance.Att_Sec_ID = section.S_Section_ID AND "
                    . "section.S_CourseID = course.Course_ID AND enrollment1.E_Sec_ID = '".$_SESSION['grade']."' AND "
                    . "enrollment1.E_SemesterYearID = '50001' AND enrollment1.Facu_ID = f.Facu_ID "
                    . "ORDER BY section.S_Section_ID
                    AND section.S_Section_ID = history.Sec_ID
                   AND  user.User_ID = Student.Stud_ID
                   AND enrollment1.Stud_ID = history.Stud_ID
                   AND enrollment1.E_Sec_ID = history.Sec_ID
                    AND faculty.Facu_ID = section.S_FacuID
            ORDER BY h.Sec_ID ";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Course Name</th>";
                    echo"<th>Assignment</th>";
                    echo"<th>Grade</th>";
                    
                    
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    
                    echo"<td>" . $row['Midterm_Grade'] . "</td>";
                    echo"<td>" . $row['Final_Grade'] . "</td>";
                    
                    echo"</tr>";
                    
                    
                    
                    }
                echo "</table>";
                 mysqli_free_result($result);
            }
            else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }


?>
 

<?php 
include "footer.php";
?>