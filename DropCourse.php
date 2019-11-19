
<?php
require "header2.php";
?>


            <?php
           //print schedule
            
            $sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, f.FacuID, * c.Course_ID, c.C_Name, c.C_CreditAmt
                FROM history AS h
                JOIN section AS s AND faculty AS f AND course AS c AND user AS u 
                AND timeslot AS t
                WHERE h.StudID = '{$_SESSION['user_id']}' AND s.S_Section_ID = h.SecID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_Course_ID AND h.SemesterYearID = '50001'
                    AND f.FacuID = u.User_ID AND t.TimeSlotID = s.S_TimeSlotID
            ORDER BY h.SecID
             AND t.Day";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>";
                     echo "<th> </th>";
                    echo"<th>Course Name</th>";
                    echo"<th>Professor Name</th>";
                    echo"<th>Room Number</th>";
                    echo"<th>Time</th>";
                    echo"<th>Day</th>";                   
                    echo"<th>Credits</th>";
                    echo"<th>Section Number</th>";
                    echo"<th>";
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                     echo "<td><input type='checkbox' name='checkbox[" . $rownumber . "]' value='". $row['C_Name'] . "' </td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"</tr>";
                    $subcredits = $row['C_CreditAmt'];
                    
                    }
                echo "</table>";
                
                echo "<table>";
                echo "<tr>" . "Total Credits: " . var_dump($credittotal) . "</td>";
                echo "</table>";
                
                //drop course
                
                
      if (isset($_POST['Delete'])){
         echo  var_dump($_POST['Delete']);
          echo var_dump($_POST['Checkbox']);
          $subcredits = $credittotal - $subcredits;
          $delcourse = $_POST['Checkbox'];
          $listCheck = "'" . implode("','", $delcourse) . "'";
          //match section number with course name
          $sql4 = mysqli_query($conn, "SELECT s.S_Section_ID FROM section AS s JOIN course AS c WHERE s.S_Section_ID = c.Course_ID");
          //delete from history
          $sql3 = "DELETE FROM 'history' WHERE history.StudID = '{$_SESSION['user_id']}' AND section.S_Section_ID = history.SecID AND section.S_Section_ID = '$sql4' AND course.C_Name IN ($listcheck)";
          $delete = mysqli_query($conn, $sql3);
    if($delete){
        echo " Records deleted Successfully.";
        
       header("Location: Student.php");
    }
}
                
         
      
      mysqli_free_result($result);
            }else {
      echo "Not found";
    }
                
            
    
            } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
    header("Location: Student.php");
   }
            
            
            
   mysqli_close($conn)
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

