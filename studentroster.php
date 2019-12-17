<?php
include "header4.php";

?>


  <?php 
            $sql = "SELECT DISTINCT user.User_ID, user.First_Name, user.Last_Name, course.C_Name, section.S_Num, user.Phone_Number, user.Email_Address, attendance.A_StudId "
                    . "FROM user JOIN "
                    
                    . "faculty, attendance, section, course "
                    . " WHERE attendance.A_StudId = user.User_ID"
                    . " AND attendance.Facu_ID = faculty.Facu_ID AND"
                    . "  attendance.Att_Sec_ID = section.S_Section_ID AND "
                    . "section.S_CourseID = course.Course_ID "
                    . " AND (faculty.Facu_ID = ? AND attendance.Att_Sec_ID = ?) ORDER BY user.Last_Name";
                      
            $statement=$conn->prepare($sql);
            $statement->bind_param('ii', $_SESSION['user_id'], $_SESSION['roster']);
            $statement->execute();
            $result=$statement->get_result();
            if ($result ->num_rows > 0){
            
                    echo "<table>"; 
                    echo"<th>Section</th>";
                    echo"<th>Student Name</th>";
                    echo"<th>Student ID</th>";
                    echo"<th>Phone Number</th>";
                    echo"<th>Email Address</th>";
                                             
                    $rownumber = 0;
                   

                   while($row = $result->fetch_assoc()){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . ", Section " . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['A_StudId'] . "</td>";
                    echo"<td>" . $row['Phone_Number'] . "</td>";                    
                    echo"<td>" . $row['Email_Address'] . "</td>";    
                    echo"</tr>";
                    
                    }
                echo "</table>";
                
            
                }else {
      echo "Not found";
    }
    
            
?>
 

<?php 
include "footer.php";
?>