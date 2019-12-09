<?php
require "header2.php";
?>

<?php
            //print all sections w/ studid
$sql = "SELECT user.User_ID, user.First_Name, user.Last_Name, user.Phone_Number, user.Home_Address, user.Email_Address
                WHERE user.User_ID = '".$_SESSION['user_id']."'
                      ";
                
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                 
                    echo"<th>First Name</th>";
                    echo"<th>Last Name</th>";
                    echo"<th>Phone Number</th>";
                    echo"<th>Home Address</th>";
                    echo"<th>Email Address</th>";                   
                   
                   
                    $rownumber = 0;
                    $gradetotal = 0;
                   $gradecount = 0;

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . "</td>"; 
                    echo"<td>" . $row['Phone_Number'] . "</td>";
                    echo"<td>" . $row['Home_Address'] . "</td>";
                    echo"<td>" . $row['Email_Address'] . "</td>";
         
                          
                    echo"</tr>";
                    
                    
                    }
                echo "</table>";
                }else {
      echo "Not found";
    }
    
            }else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
                ?>


<?php
require "footer.php";

?>