<?php
include "header4.php";

?>


  <?php 
            $sql = "SELECT user.*,  faculty.*, attendace.*, section.*, course.* "
                    
                    . "FROM user JOIN "
                    
                    . "faculty, attendance, section, course"
                    . " WHERE attendance.A_StudId = user.User_ID"
                    . " AND attendance.Facu_ID = faculty.Facu_ID AND"
                    . " '".$_SESSION['user_id']."' = faculty.Facu_ID AND attendance.Att_Sec_ID = section.S_Section_ID AND "
                    . "section.S_CourseID = course.Course_ID AND attendance.Att_Sec_ID = '".$_SESSION['roster']."'"
                    . "ORDER BY attendance.Att_Sec_ID";
                      
            $statement=$conn->prepare($sql);
            $statement->bind_param(1, $_SESSION['user_id']);
            $statement->execute();
            $result=$statement->get_result();
            if ($result ->num_rows > 0){
            
                    echo "<table>"; 
                    echo"<th>Section</th>";
                    echo"<th>Student Name</th>";
                    echo"<th>Student ID</th>";
                    echo"<th>Phone Number</th>";
                    echo"<th>Email Address</th>";
                    echo"<th>Phone Number</th>";
                          
                    $rownumber = 0;
                   

                   while($row = $result->fetch_assoc()){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . ", Section " . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['A_StudId'] . "</td>";
                    echo"<td>" . $row['Phone_Number'] . "</td>";                    
                    echo"<td>" . $row['Email_Address'] . "</td>";                   
                    echo"<td>" . $row['Phone_Number'] . "</td>";
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