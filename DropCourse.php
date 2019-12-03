
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
            $subcredits = 0;
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
                    //echo"<th>";
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
                    
                    //echo "<td><input type='checkbox' id = 'checkbox[]' name='checkbox[]' value='".$row['S_Section_ID']. "' </td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    //echo "<td><a href="
                    //echo '<td><form method="POST" action="?delete=delete&id=##"><input type="submit" name="delete" value="$row['id']"></form></td>';
                    //echo "<td><a href=\"DropCourse.php?id=".$row['S_Section_ID']."&status=app\">Approve</a></td>";
                    echo "<td><form method='POST' action='DropCourse.php'><input type='hidden' name='del'  value='".$row['S_Section_ID']."'><input type='submit' name='delete' value='delete'></form></td>";
                     //echo "<td><form type='POST'><input type='submit' name='delete' value='".$row['S_Section_ID']."'><input type='submit' name='submit_btn' value='accept'></form>'</td>";
                    var_dump($row['S_Section_ID']);
                    echo"</tr>";
                        //$checkbox1[] = $row['S_Section_ID']; 
                    $credittotal = $credittotal + $row['C_CreditAmt'];
                    
                    }
                echo "</table>";
                
                echo "<table>";
                echo "<td>" . "Credit Number: " . $credittotal . "</td>";
                echo "</tr>";
                
                echo "</table>";
                
  
                var_dump($row['S_Section_ID']);
         if (isset($_POST['delete'])){
             echo 'test';
            // $_SESSION['test'] = "Test";
             var_dump($_POST['delete']);
             $id = mysqli_real_escape_string($conn, $_POST['del']);
             var_dump($id);
             
          $sql3 = "DELETE FROM `history` WHERE `Stud_ID` = {$_SESSION['user_id']} AND `SemesterYearID` = 50001 AND `Sec_ID` = '".$id."'";
          if ($conn->query($sql3) === TRUE) {
          echo "Record deleted successfully";
           } else {
          echo "Error deleting record: " . $conn->error;
                }
                /*
                 * 
                 * history.Sec_ID IN '".$checkbox1."'
          $delete = mysqli_query($conn, $sql3);
    if($delete){
        echo " Records deleted successfully.";
        
      // header("Location: Student.php");
          }}
                 * 
                 */
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
         
         /*
          $cnt = array();
          $cnt = count($_POST['checkbox']);
          * 
          */
          //match section number with course name
          /*for ($i=0; $i<sizeof ($checkbox1);$i++) {
          if ($checkbox1[$rownumber] == $i){
              var_dump($checkbox1[$rownumber]);
              echo "checking... ";
              var_dump($checkbox1[$i]);
            // $chkbox1 = $checkbox1[$i];
           if(!empty($checkbox[$rownumber])){
           * 
           */
           /*   
    for($i = 0; $i < $count; $i++) {
        $id = (int) $checkbox[$i]; // Parse your value to integer

        if ($id > 0) { // and check if it's bigger then 0
          //$sql4 = mysqli_query($conn, "SELECT s.S_Section_ID FROM section AS s JOIN course AS c WHERE s.S_Course_ID = c.Course_ID"); section.S_Section_ID = '$sql4' AND section.S_Section_ID = history.Sec_ID AND
          //delete from history
              //$del_id = $_POST['checkbox'][$i];
            * 
            */
          -->
    </body>
</html>

