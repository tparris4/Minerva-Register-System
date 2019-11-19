<?php
session_start();
if (!isset($_SESSION['username']) || empty($_SESSION['username'])) {
      exit();
      

}

?>
<?php
require "header2.php";
?>

<?php
   $sql = "SELECT * 
       FROM holds,holdstatus,student, user
       WHERE holdstatus.HS_HoldID = holds.Holds_ID 
       AND student.Stud_ID = holdstatus.HS_StudentID
       AND student.Stud_ID = user.User_ID";

   $rownumber = 0;
   if ($result = mysqli_query($conn, $sql)){

       
    if(mysqli_num_rows($result) > 0) {
      echo "<table>";
      echo "<tr>";
      echo "<th>Name</th>";
      echo "<th>Hold Type</th>";
      echo "<th>Description</th>";
      
      
    $rownumber = $rownumber + 1;
    
      while($row = mysqli_fetch_array($result)){
        echo "<tr>";
        
        echo "<td>" . $row['First_Name'] . " " .  $row['Last_Name'] . "</td>";
        echo "<td>" . $row['Hold_Type'] . "</td>";
       echo "<td>" . $row['Hold_Description'] . "</td>";
       

       echo "</tr>";
      
      }
      echo "</table";

      
      mysqli_free_result($result);
       } else {
      echo "Not found";
    }
   }  else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn)
?>

                

           <?php
           require "footer.php";
           ?>
   
   </body>


</html>

