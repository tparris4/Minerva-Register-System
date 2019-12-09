<?php
include "header4.php";

?>


  <?php 
            $sql = "SELECT user.*,  faculty.*, attendance.*, section.*, course.*, enrollment1.*"
                    
                    . "FROM user"
                    . "JOIN "
                    . "faculty , attendance , section , course, enrollment1"
                    . " WHERE attendance.A_StudId = user.User_ID"
                    . " AND attendance.Facu_ID = faculty.Facu_ID AND"
                    . " '".$_SESSION['user_id']."' = faculty.Facu_ID AND attendance.Att_Sec_ID = section.S_Section_ID AND "
                    . "section.S_CourseID = course.Course_ID AND enrollment1.E_Sec_ID = '".$_SESSION['addgrade']."' AND "
                    . "enrollment1.E_SemesterYearID = '50001' AND enrollment1.Facu_ID = faculty.Facu_ID "
                    . "ORDER BY enrollment1.E_Sec_ID";
                      
            $statement=$conn->prepare($sql);
            $statement->bind_param(1, $_SESSION['user_id']);
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
                    echo"<td><form action='addgrades.php' method='POST'> <input type='text' name='assignment'></form></td>";
echo"<td><input type='text' name='date'></td>";
echo"<td><input type='text' name='grade'></td>";
echo"<td><input type='submit' name='save' value='Submit'></form></td>";
                            
                    
                    echo"</tr>";
                    
                    }
                echo "</table>";
                
            if(isset($_POST['save'])){
                $id1 = mysqli_real_escape_string($conn, $_POST['assignment']);
                $id2 = mysqli_real_escape_string($conn, $_POST['date']);
                $id3 = mysqli_real_escape_string($conn, $_POST['grade']);
      $sql = "INSERT INTO `enrollment1` (`Stud_ID`, `E_Sec_ID`, `Assignment`, `Grade`, `E_SemesterYearID`, `Facu_ID`) VALUES ('".$row['A_StudId']."', '".$row['E_Sec_ID']."' , '".$id1."', '".$id2."', '".$id3."', '50001', '".$_SESSION['user_id']."')";
    /*
      $stmt = mysqli_prepare($sql);
    $stmt->bind_param("sss". $_POST['assignment'], $_POST['date'], $_POST['grade']);
          $stmt->execute();
          
     * 
     */
          
  if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else{
    echo "Something happened";
}

}
     
          
     }

     
   

      else {
      echo "Not found";
    
    
   }
   


?>
 

<?php 
include "footer.php";
?>
