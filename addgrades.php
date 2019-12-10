<?php
include "header4.php";

?>


  <?php 
 

            $sql = "SELECT user.*,  faculty.*, attendance.*, section.*, course.*, enrollment1.*"
                    
                    . "FROM user "
                    . "JOIN "
                    . "faculty , attendance , section , course, enrollment1"
                    . " WHERE attendance.A_StudId = user.User_ID"
                    . " AND attendance.Facu_ID = faculty.Facu_ID AND"
                    . " attendance.Att_Sec_ID = section.S_Section_ID AND "
                    . "section.S_CourseID = course.Course_ID AND "
                    . "enrollment1.E_SemesterYearID = '50003'"
                    . " AND enrollment1.Facu_ID = faculty.Facu_ID "
                    . "AND (faculty.Facu_ID = ? AND enrollment1.E_Sec_ID = ?) "
                    . "ORDER BY enrollment1.E_Sec_ID";
                      
            $statement=$conn->prepare($sql);
            $statement->bind_param('ii', $_SESSION['user_id'], $_SESSION['addgra']);
            $statement->execute();
            $result=$statement->get_result();
            if ($result ->num_rows > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Student Name</th>";
                    echo"<th>Student ID</th>";
                    echo"<th>Assignment</th>";
                    echo"<th>Date</th>";
                    echo"<th>Grade</th>";
                     echo"<th></th>";
                    $rownumber = 0;
                   

                   while($row = $result->fetch_assoc()){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['A_StudId'] . "</td>";
                    echo"<td><form action='addgrades.php' method='POST'> <input type='text' name='assignment'></td>";
echo"<td><input type='text' name='date'></td>";
echo"<td><input type='text' name='grade'></td>";
echo"<td><input type='submit' name='save' value='Submit'></form></td>";
                            
                    
                    echo"</tr>";
                    
                    }
                echo "</table>";
                
            if(isset($_POST['save'])){
      $sql = "INSERT INTO `enrollment1` (`Stud_ID`, `E_Sec_ID`, "
              . "`Assignment`, `Grade`, `E_SemesterYearID`, `Facu_ID`, `Date`)"
              . "VALUES "
              . "(?, ?, :assignment,:grade, ?, ?, :date)";
       $select1=$conn->prepare($sql);
       $id1 = $_POST['assignment'];
                $id2 = $_POST['date'];
                $id3 = $_POST['grade'];
            $select1->bind_param('ii', $row['A_StudID'], $_SESSION['addgra']);
            $select1->bind_param(':assignment', $id1);
            
            $select1->bind_param(':grade', $id3);
            $select1->bind_param('ii', '50003', $_SESSION['user_id']);
            $select1->bind_param(':date', $id2);
$select1->execute();

}
     
          
     }

     
   

      else {
      echo "Not found";
    
    
   }
   


?>
 

<?php 
include "footer.php";
?>
