
<?php
require "header2.php";
?>
<!--
Check holds
-->
<?php 

$checkhold = "SELECT s.*, h.*, a.* FROM student AS s, "
        . "JOIN holds AS h, holdstatus AS a"
        . "WHERE s.Stud_ID = '".$_SESSION['user_id']."' AND h.Holds_ID = a.HS_HoldID "
        . "AND a.HS_StudentID = s.Stud_ID";

 if ($result = mysqli_query($conn, $checkhold)){
     while($row = mysqli_fetch_array($result)){
         $_SECTION['HoldSet'] = 1;
         header("Location: Student.php");
     }
     
 }
?>

<!--
Add course w/ checkbox
-->
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
      //testing
      echo "<th>Prereq</th>";
      
    $rownumber = $rownumber + 1;
    
      while($row = mysqli_fetch_array($result)){
          $rownumber = $rownumber + 1;
        echo "<tr>";
        echo "<td><input type='checkbox' name='checkbox[" . $rownumber . "]' value='". $rownumber . "' </td>";
        echo "<td>" . $row['C_Name'] . "</td>";
       echo "<td>" . $row['C_Description'] . "</td>";
       echo "<td>" . $row['Course_ID'] . "</td>";
       echo "<td>" . $row['C_CreditAmt'] . "</td>";
       echo "<td>" . $row['C_DeptName'] . "</td>";
       echo "<td>" . $row['CourseLevel'] . "</td>";
       //testing
       echo"<td>" . $row['Prerequ_ID'] . "</td>";
       echo "</tr>";
      
       
      }
      echo "</table>";
      //if checkbox was selected to add
     if (isset($_POST['Submit'])){
          
          $_SESSION['coursechosen'] = $row['Sec_ID'];
          
          
          $_SESSION['prereq'] = $row['Prerequ_ID'];
          //check prerequsites
          /*
          $check = "SELECT p.Prerequ_ID, p.P_CourseID, h.*, c.*, s.* FROM prerequsites1 AS p"
                  . "JOIN history AS h AND course AS c AND section AS s"
                  . "WHERE p.Prerequ_ID = c.Course_ID AND h.Sec_ID = s.S_Section_ID"
                  . "AND s.S_CourseID = c.Course_ID AND c.Course_ID = p.P_CourseID"
                  . "AND '".S_SESSION['prereq']."' = h.Sec_ID AND (h.Sec_ID NOT IN "
                  . "(SELECT Course_ID FROM course))";
          */
         $check2 = "SELECT p.*, h.*, c.*, s.*  FROM prerequsites1 AS p"
                  . "JOIN history AS h AND course AS c AND section AS s"
                  . "WHERE p.Prerequ_ID = c.Course_ID AND h.Sec_ID = s.S_Section_ID"
                  . "AND s.S_CourseID = c.Course_ID AND c.Course_ID = p.P_CourseID"
                  . "AND '".S_SESSION['prereq']."' = h.Sec_ID AND (h.Sec_ID NOT IN "
                  . "(SELECT c.*, s.* FROM course JOIN section "
                 . "WHERE Course_ID = S_Section_ID"
                 . "))";
          
          if ($result = mysqli_query($conn, $check2)){     
               if(mysqli_num_rows($result) > 0) {
          //add course
  $sql2 = "INSERT INTO history (Stud_ID, Sec_ID, CourseDump, SemesterYearID) VALUES ('".$_SESSION['userid']."', '".$_SESSION['coursechosen']."', '0', '50001')";
      if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} elseif(mysqli_num_rows($result = 0)){
    echo "prereq not fulfilled" . $_SESSION['prereq'];
}

else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

      }
      }
           //add course
           $sql2 = "INSERT INTO history (Stud_ID, Sec_ID, CourseDump, SemesterYearID) VALUES ('".$_SESSION['userid']."', '".$_SESSION['coursechosen']."', '0', '50001')";
      if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}
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
                <input type="checkbox" name="Checkbox" id="Checkbox" value="">
                <input type ="SUBMIT" name="Submit" id="Submit" value="Submit">
                <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
 <?php
           require "footer.php";
           ?>
   
   </body>


</html>


