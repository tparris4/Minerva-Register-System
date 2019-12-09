<?php
include "header4.php";

?>


 <?php
 $sql = "SELECT history.*,section.*, user.*,timeslot.*,building.*,room.*, facuschedule.*, course.*, faculty.*
              
                FROM history
               JOIN
               section,
               course,
               faculty,
               facuschedule,
               user,
               timeslot,
               building,
               room
                WHERE faculty.Facu_ID = '".$_SESSION['user_id']."' AND section.S_Section_ID = facuschedule.Facu_sec_id
                    AND facuschedule.Facu_id = faculty.Facu_ID
                   AND  user.User_ID = faculty.Facu_ID
                    AND section.S_RoomNum = room.Room_ID AND section.S_BuildID = building.Build_ID
                    AND course.Course_ID = section.S_CourseID AND history.SemesterYearID = '50001'
                    AND faculty.Facu_ID = section.S_FacuID AND timeslot.TimeSlotID = section.S_TimeSlotID
            GROUP BY facuschedule.Facu_sec_id ";
            $statement=$conn->prepare($sql);
            $statement->bind_param(1, $_SESSION['user_id']);
            $statement->execute();
            $result=$statement->get_result();
            if ($result ->num_rows > 0){
            
                    echo "<table>"; 
                    echo"<th></th>";
                    echo"<th></th>";
                    echo"<th>Course Name</th>";
                   
                    echo"<th>Room Number</th>";
                    echo"<th>Time</th>";
                    echo"<th>Day</th>";                   
                    echo"<th>Credits</th>";
                    echo"<th>Section Number</th>";
                    
                    $rownumber = 0;
                   

                   while($row = $result->fetch_assoc()){
                    echo "<tr>";                
        echo "<td><form method='POST' action='addtoclass.php'><input type='hidden' name='addc'  value='".$row['Course_ID']."'><input type='hidden' name='addg'  value='".$row['S_Section_ID']."'><input type='submit' name='addgrade' value='Add Grade'></form></td>";
        echo "<td><form method='POST' action='addtoclass.php'><input type='hidden' name='addc'  value='".$row['Course_ID']."'><input type='hidden' name='adda'  value='".$row['S_Section_ID']."'><input type='submit' name='addatt' value='Add Attendance'></form></td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    
                    echo"</tr>";
                    
                   
                    
                    
                    }
                    echo"</table>";
                    
     if(isset($_POST['addgrade'])){
         $_SESSION['addgrade'] = $_POST['addg'];
                        header("Location: addgrades.php");
     }
      if(isset($_POST['addatt'])){
         $_SESSION['addatt'] = $_POST['adda'];
                        header("Location: addattendance.php");
     }
                      
      mysqli_free_result($result);
                }else {
      echo "Not found";
    }
    
           
   ?>

 
<?php 
include "footer.php";
?>