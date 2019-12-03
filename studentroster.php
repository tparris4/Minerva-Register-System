<?php
include "header2.php";

?>


  <?php 
            $sql = "SELECT u.*,  f.*, a.*, s.*, c.* "
                    
                    . "FROM user AS u "
                    . "JOIN"
                    . "faculty AS f, attendance AS a, section AS s, course AS c"
                    . " WHERE a.A_StudId = u.User_ID"
                    . " AND a.Facu_ID = f.Facu_ID AND"
                    . " '".$_SESSION['user_id']."' = f.Facu_ID AND a.Att_Sec_ID = s.Sec_ID AND "
                    . "s.CourseID = c.Course_ID AND a.Att_Sec_ID = '".$_SESSION['roster']."'"
                    . "ORDER BY a.Att_Sec_ID";
                      
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Section</th>";
                    echo"<th>Student Name</th>";
                    echo"<th>Student ID</th>";
                          
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Att_Sec_ID'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['A_StudId'] . "</td>";
                    echo"<td>" . $row['Phone_Number'] . "</td>";                    
                    echo"<td>" . $row['Email_Address'] . "</td>";                   
                    echo"<td>" . $row['Phone_Number'] . "</td>";
                    echo"</tr>";
                    
                    }
                echo "</table>";
                
            
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