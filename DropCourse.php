
<?php
require "header2.php";
?>


            <?php
           //print schedule
            
            /*$sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, f.Facu_ID, c.*
                FROM history AS h
                JOIN section AS s, faculty AS f, course AS c, user AS u, 
                timeslot AS t, building AS b, room AS r
                WHERE h.Stud_ID = '{$_SESSION['user_id']}' AND s.S_Section_ID = h.Sec_ID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_CourseID AND h.SemesterYearID = '50001'
                    AND f.Facu_ID = u.User_ID AND t.TimeSlotID = s.S_TimeSlotID
            ORDER BY h.Sec_ID
             AND t.Day";*/
            $sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, f.Facu_ID, c.Course_ID, c.C_Name, c.C_CreditAmt
                FROM history AS h,
               section AS s,
               faculty AS f,
               course AS c,
               user AS u,
               timeslot AS t,
               building AS b,
               room AS r
                WHERE h.Stud_ID = '".$_SESSION['user_id']."' AND s.S_Section_ID = h.Sec_ID
                   AND  u.User_ID = f.Facu_ID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_CourseID AND h.SemesterYearID = '50001'
                    AND f.Facu_ID = s.S_FacuID AND t.TimeSlotID = s.S_TimeSlotID
            ORDER BY h.Sec_ID ";
            if ($result = mysqli_query($conn, $sql)){
               $credittotal = 0;
               $rownumber = 0;
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>";
                    echo"<th>Course Name</th>";
                    echo"<th>Professor Name</th>";
                    echo"<th>Room Number</th>";
                    echo"<th>Time</th>";
                    echo"<th>Day</th>";                   
                    echo"<th>Credits</th>";
                    echo"<th>Section Number</th>";
                    echo"<th>";
                    
                   
                   while($row = mysqli_fetch_array($result)){
                       $rownumber = $rownumber + 1;
                    echo "<tr>";
                    
                    echo "<td><input type='checkbox' name='checkbox[" . $rownumber . "]' value='". $rownumber . "' </td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"</tr>";
                    $checkbox1[] = $row['S_Section_ID']; 
                    $credittotal = $credittotal + $row['C_CreditAmt'];
                    
                    }
                echo "</table>";
                
                echo "<table>";
                echo "<td>" . "Credit Number: " . $credittotal . "</td>";
                echo "</tr>";
                
                echo "</table>";
                
                //drop course
                
                $listCheck = implode(",", $checkbox1);
                var_dump($listCheck);
                
      if (isset($_POST['Delete'])){
          $subcredits = $credittotal - $subcredits;
          $listCheck = implode(",", $checkbox1);
          $cnt = array();
          $cnt = count($_POST['checkbox']);
          //match section number with course name
          for ($i=0; $i<sizeof ($checkbox1);$i++) {
          if ($checkbox1[$i] == $rownumber){
          //$sql4 = mysqli_query($conn, "SELECT s.S_Section_ID FROM section AS s JOIN course AS c WHERE s.S_Course_ID = c.Course_ID"); section.S_Section_ID = '$sql4' AND section.S_Section_ID = history.Sec_ID AND
          //delete from history
              $del_id = $_POST['checkbox'][$i];
          $sql3 = "DELETE FROM 'history' WHERE history.Stud_ID = '{$_SESSION['user_id']}' AND history.Sec_ID IN '".$listCheck."'";
          $delete = mysqli_query($conn, $sql3);
    if($delete){
        echo " Records deleted successfully.";
        
      // header("Location: Student.php");
          }}

          }
      }
                
         
      
      mysqli_free_result($result);
            }else {
      echo "Not found";
    }
                
            
    
            } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
    //header("Location: Student.php");
   }
            
            
          
?>


    <form action ="DropCourse.php" method ="post">
                <input type="checkbox" name="Checkbox" id="Checkbox" value="item1">
                <input type ="SUBMIT" name ="delete" value="Delete" id="Delete">
<?php
           require "footer.php";
           ?>
         <!-- 
          $ids = array();
          foreach($_POST['Checkbox'] as $val){
              $ids[] = (int) $val;
          }
          $ids = implode("','", $ids);
          $del2 = "SELECT c.C_Name, "
          $del1 = "DELETE FROM history WHERE C_Name IN ('".$ids"')";
          $delete = mysql_query($sql);
          -->
    </body>
</html>

