
<?php
require "header2.php";
?>

<?php

if(isset($_SESSION['addcourse'])){
   $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77772' AND s.S_SemesterYearID = '50001' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";

   $rownumber = 0;
   if ($result = mysqli_query($conn, $sql)){

       
    if(mysqli_num_rows($result) > 0) {
      echo "<table>";
      echo "<tr>";
     echo "<th> </th>";
      echo "<th>C_Name</th>";
      echo "<th>C_Description</th>";
      echo "<th>CRN</th>";
      echo "<th>C_CreditAmt</th>";
      echo "<th>C_DeptName</th>";
      echo "<th>CourseLevel</th>";
      
    $rownumber = $rownumber + 1;
    
      while($row = mysqli_fetch_array($result)){
        echo "<tr>";
        echo "<td><input type='checkbox' name='checkbox[" . $rownumber . "]' value='". $rownumber . "' </td>";
        echo "<td>" . $row['C_Name'] . "</td>";
       echo "<td>" . $row['C_Description'] . "</td>";
       echo "<td>" . $row['Course_ID'] . "</td>";
       echo "<td>" . $row['C_CreditAmt'] . "</td>";
       echo "<td>" . $row['C_DeptName'] . "</td>";
       echo "<td>" . $row['CourseLevel'] . "</td>";
       echo "</tr>";
      
      }
      echo "</table>";
      
     if (isset($_POST['Submit'])){
          $_SESSION['coursechosen'] = $_POST['Checkbox'];
          
          echo ("{$_SESSION['coursechosen']}");
          header("Location: Courseadd.php");
      }
      mysqli_free_result($result);
       } else {
      echo "Not found";
    }
   }  else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
   unset($_SESSION['addcourse']);
}
else if(isset($_SESSION['searchcourse'])){
    echo "test";
}
else{
    echo "not found";
}
?>


    <form action ="Biologycoursesearch.php" method ="post">
                <input type="checkbox" name="S" id="Checkbox" value="item1">
                <input type ="SUBMIT" name="Add" id="Submit" value="Submit">
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <?php
           require "footer.php";
           ?>
   
   </body>


</html>


