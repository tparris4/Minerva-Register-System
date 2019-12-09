<?php
include "header4.php";

?>


  <?php 
            $sql = "SELECT user.*,  faculty.*, attendance.*, section.*, course.*, enrollment.*"
                    
                    . "FROM user JOIN "
                    
                    . "faculty, attendance, section, course, enrollment1"
                    . " WHERE attendance.A_StudId = user.User_ID"
                    . " AND attendance.Facu_ID = faculty.Facu_ID AND"
                    . " '".$_SESSION['user_id']."' = faculty.Facu_ID AND attendance.Att_Sec_ID = section.S_Section_ID AND "
                    . "section.S_CourseID = course.Course_ID AND enrollment1.E_Sec_ID = '".$_SESSION['att']."' AND "
                    . "enrollment1.E_SemesterYearID = '50001' AND enrollment1.Facu_ID = faculty.Facu_ID "
                    . "ORDER BY enrollment1.E_Sec_ID";
                      
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Student Name</th>";
                    echo"<th>Student ID</th>";
                    echo"<th>Date</th>";
                    echo"<th>Attendended Class</th>";
                          
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['A_StudId'] . "</td>";
                    echo"<td>" . $row['Date'] . "</td>";
                    echo"<td>" . $row['IsPresent'] . "</td>";
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
   mysqli_close($conn);
?>
 

<?php 
include "footer.php";
?>