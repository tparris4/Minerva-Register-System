<?php
include "header2.php";
?>

<?php 
$sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, e.*, f.Facu_ID, c.Course_ID, c.C_Name, c.C_CreditAmt
                FROM history AS h,
               section AS s,
               faculty AS f,
               enrollment1 AS e,
               course AS c,
               user AS u,
               timeslot AS t,
               building AS b,
               room AS r
                WHERE h.Stud_ID = '".$_SESSION['user_id']."'
                    AND s.S_Section_ID = h.Sec_ID
                   AND  u.User_ID = f.Facu_ID
                   AND e.Stud_ID = h.Stud_ID
                   AND e.E_Sec_ID = h.Sec_ID
                   AND e.E_SemesterYearID = '50001'
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_CourseID AND h.SemesterYearID = '50001'
                    AND f.Facu_ID = s.S_FacuID AND t.TimeSlotID = s.S_TimeSlotID
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
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }


?>



<?php
include "footer.php";
?>
    </body>
</html>

