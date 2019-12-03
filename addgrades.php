<?php
include "header2.php";

?>


  <?php 
            $sql = "SELECT u.*,  f.*, a.*, s.*, c.*, e.*"
                    
                    . "FROM user AS u "
                    . "JOIN"
                    . "faculty AS f, attendance AS a, section AS s, course AS c, enrollment1 AS e"
                    . " WHERE a.A_StudId = u.User_ID"
                    . " AND a.Facu_ID = f.Facu_ID AND"
                    . " '".$_SESSION['user_id']."' = f.Facu_ID AND a.Att_Sec_ID = s.Sec_ID AND "
                    . "s.CourseID = c.Course_ID AND e.E_Sec_ID = '".$_SESSION['addg']."' AND "
                    . "e.E_SemesterYearID = '50001' AND e.Facu_ID = f.Facu_ID"
                    . "ORDER BY e.E_Sec_ID";
                      
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Student Name</th>";
                    echo"<th>Student ID</th>";
                    echo"<th>Assignment</th>";
                    echo"<th>Date</th>";
                    echo"<th>Grade</th>";
                     echo"<th></th>";
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['A_StudId'] . "</td>";
                    echo"<td><form action='addgrades.php' method='POST'> <input type='text' name='assignment'></form></td>";
echo"<td><form action='addgrades.php' method='POST'> <input type='text' name='date'></form></td>";
echo"<td><form action='addgrades.php' method='POST'> <input type='text' name='grade'></form></td>";
echo"<td><button type='submit' method='POST' name='save'>Submit</button></td>";
                            
                    
                    echo"</tr>";
                    
                    }
                echo "</table>";
                
            if(isset($_POST['save'])){
                $id1 = mysqli_real_escape_string($conn, $_POST['assignment']);
                $id2 = mysqli_real_escape_string($conn, $_POST['date']);
                $id3 = mysqli_real_escape_string($conn, $_POST['grade']);
      $sql = "INSERT INTO `enrollment1` (`Stud_ID`, `E_Sec_ID`, `Assignment`, `Grade`, `E_SemesterYearID`, `Facu_ID`) VALUES ('".$row['A_StudId']."', '".$row['E_Sec_ID']."' , '".$id1."', '".$id2."', '".$id3."', '50001')";
    
          
          
          
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
   }
   
     else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
     }
   
mysqli_close($conn);


?>
 

<?php 
include "footer.php";
?>
