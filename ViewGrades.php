<?php
include "header2.php";
?>

<?php 
$sql = "SELECT history.*,section.*, user.*,timeslot.*,building.*,room.*, enrollment1.*, faculty.Facu_ID, course.Course_ID, course.C_Name, course.C_CreditAmt
                FROM history JOIN
               section,
               faculty,
               enrollment1,
               course,
               user,
               timeslot,
               building,
               room
                WHERE history.Stud_ID = '".$_SESSION['user_id']."'
                    AND section.S_Section_ID = history.Sec_ID
                   AND  user.User_ID = faculty.Facu_ID
                   AND enrollment1.Stud_ID = history.Stud_ID
                   AND enrollment1.E_Sec_ID = history.Sec_ID
                   AND enrollment1.E_SemesterYearID = '50001'
                    AND section.S_RoomNum = room.Room_ID AND section.S_BuildID = building.Build_ID
                    AND course.Course_ID = section.S_CourseID AND history.SemesterYearID = '50001'
                    AND faculty.Facu_ID = section.S_FacuID AND timeslot.TimeSlotID = section.S_TimeSlotID
            ORDER BY history.Sec_ID ";
            $statement=$conn->prepare($sql);
            $statement->bind_param(1, $_SESSION['user_id']);
            $statement->execute();
            $result=$statement->get_result();
            if ($result ->num_rows > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Course Name</th>";
                    echo"<th>Assignment</th>";
                    echo"<th>Grade</th>";
                    
                    
                    $rownumber = 0;
                   

                   while($row = $result->fetch_assoc()){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    
                    echo"<td>" . $row['Assignment'] . "</td>";
                    echo"<td>" . $row['Grade'] . "</td>";
                    
                    echo"</tr>";
                    
                    
                    
                    }
                echo "</table>";
                 mysqli_free_result($result);
            }
            else {
      echo "Not found";
    }
   

?>



<?php
include "footer.php";
?>

