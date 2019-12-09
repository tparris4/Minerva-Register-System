<?php
include "header2.php";
?>

<?php 
$sql = "SELECT history.*, user.*, section.*, course.*, enrollment1.*, faculty.*
                FROM history,
               section,
               faculty,
               enrollment1,
               course,
               user
                WHERE history.Stud_ID = '".$_SESSION['user_id']."'
                    AND section.S_Section_ID = history.Sec_ID
                   AND  user.User_ID = faculty.Facu_ID
                   AND enrollment1.Stud_ID = history.Stud_ID
                   AND enrollment1.E_Sec_ID = history.Sec_ID
                    AND course.Course_ID = section.S_CourseID,
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