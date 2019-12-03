<?php
include "header2.php";

?>


 <?php
 $sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, e.*, c.*, f.*
              
                FROM history AS h,
               JOIN 
               section AS s,
               course AS c,
               faculty AS f,
               facuschedule AS e,
               user AS u,
               timeslot AS t,
               building AS b,
               room AS r
                WHERE f.Facu_ID = '".$_SESSION['user_id']."' AND s.S_Section_ID = e.Facu_sec_id
                    AND e.Facu_id = f.Facu_ID
                   AND  u.User_ID = f.Facu_ID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_CourseID AND h.SemesterYearID = '50001'
                    AND f.Facu_ID = s.S_FacuID AND t.TimeSlotID = s.S_TimeSlotID
            GROUP BY e.Facu_sec_id ";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th></th>";
                    echo"<th></th>";
                    echo"<th></th>";
                    echo"<th>Course Name</th>";
                   
                    echo"<th>Room Number</th>";
                    echo"<th>Time</th>";
                    echo"<th>Day</th>";                   
                    echo"<th>Credits</th>";
                    echo"<th>Section Number</th>";
                    
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                     echo "<td><form method='POST' action='selectclass.php'><input type='hidden' name='addc'  value='".$row['Course_ID']."'><input type='hidden' name='viewr'  value='".$row['S_Section_ID']."'><input type='submit' name='viewroster' value='View Roster'></form></td>";
        echo "<td><form method='POST' action='selectclass.php'><input type='hidden' name='addc'  value='".$row['Course_ID']."'><input type='hidden' name='viewg'  value='".$row['S_Section_ID']."'><input type='submit' name='viewgrade' value='View Grade'></form></td>";
        echo "<td><form method='POST' action='selectclass.php'><input type='hidden' name='addc'  value='".$row['Course_ID']."'><input type='hidden' name='viewa'  value='".$row['S_Section_ID']."'><input type='submit' name='viewatt' value='View Attendance'></form></td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    
                    echo"</tr>";
                    
                   
                   }
                    echo"</table>";
                    
                    
                    if (isset($_POST['viewroster'])){

                        $_SESSION['roster'] = $_POST['viewr'];
                        header("Location: studentroster.php");
     
          
     }
     if(isset($_POST['viewgrade'])){
         $_SESSION['grade'] = $_POST['viewg'];
                        header("Location: studentgrades.php");
     }
      if(isset($_POST['viewatt'])){
         $_SESSION['att'] = $_POST['viewa'];
                        header("Location: studentattendance.php");
     }
                      
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