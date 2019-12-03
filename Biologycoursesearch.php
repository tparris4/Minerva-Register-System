
<?php
require "header2.php";
?>


<!--
Add course w/ checkbox
-->
<?php
//add date function 
if(isset($_SESSION['Fall2019'])){
    
   $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.*, p.* 
            FROM section AS s
            JOIN prerequisites1 AS p, course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b 
            WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID 
            AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID AND p.P_CourseID = c.Course_ID
            AND u.User_ID = f.Facu_ID AND 
            s.S_BuildID = '77772' 
            AND s.S_RoomNum = r.Room_ID
            AND s.S_BuildID = b.Build_ID
            AND
            s.S_SemesterYearID = '50001'
            
AND s.S_FacuID = f.Facu_ID
            GROUP BY s.S_Section_ID";

   $rownumber = 0;
   if ($result = mysqli_query($conn, $sql)){

       
    if(mysqli_num_rows($result) > 0) {
      echo "<table>";
      echo "<tr>";
     echo "<th> </th>";
      echo "<th>C_Name</th>";
      echo "<th>C_Description</th>";
      echo "<th>Professor</th>";
      echo "<th>CRN</th>";
      echo "<th>Building</th>";
      echo "<th>C_CreditAmt</th>";
      echo "<th>Section Num</th>";
      echo "<th>C_DeptName</th>";
      echo "<th>CourseLevel</th>";
      //testing
      echo "<th>Prereq</th>";
      
    $rownumber = $rownumber + 1;
    
      while($row = mysqli_fetch_array($result)){
          $rownumber = $rownumber + 1;
        echo "<tr>";
        //echo "<td><input type='checkbox' name='checkbox[" . $rownumber . "]' value='". $rownumber . "' </td>";
        echo "<td><form method='POST' action='Biologycoursesearch.php'><input type='hidden' name='addc'  value='".$row['Course_ID']."'><input type='hidden' name='add'  value='".$row['S_Section_ID']."'><input type='submit' name='addcourse' value='Add'></form></td>";
                    
        echo "<td>" . $row['C_Name'] . "</td>";
       echo "<td>" . $row['C_Description'] . "</td>";      
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
       echo "<td>" . $row['Course_ID'] . "</td>";
       echo"<td> Room " . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
       echo "<td>" . $row['C_CreditAmt'] . "</td>";
       echo"<td>" . $row['S_Num'] . "</td>";
       echo "<td>" . $row['C_DeptName'] . "</td>";
       echo "<td>" . $row['CourseLevel'] . "</td>";
       //testing
       echo"<td>" . $row['Prerequ_ID'] . "</td>";
       $checkbox1[] = $row['S_Section_ID'];   
       var_dump($row['S_Section_ID']);
       
       
       echo "</tr>";    
       
       //use buttons
      }
      echo "</table>";/*
      $listCheck = implode(",", $checkbox1);
                var_dump($listCheck);
       * 
       */
      //if checkbox was selected to add
     if (isset($_POST['addcourse'])){
         //$checkbox3 = implode(",", $checkbox1);
          //$checkbox2 = $_POST['checkbox'];
          //$_SESSION['coursechosen'] = $row['Sec_ID'];
                    //add course
          $id = mysqli_real_escape_string($conn, $_POST['add']);
          $id2 = mysqli_real_escape_string($conn, $_POST['addc']);
  $sql2 = "INSERT INTO history (Stud_ID, Sec_ID, CourseDump, SemesterYearID, Cour_ID) VALUES ('".$_SESSION['user_id']."', '".$id."', '0', '50001', '".$id2."')";
          
          
          
  if ($conn->query($sql2) === TRUE) {
    echo "New record created successfully";
} else if(empty(mysqli_num_rows($result))){
    echo "prereq not fulfilled" . $_SESSION['prereq'];

}
     
          
     }
     
     
    
   




          
          //$_SESSION['prereq'] = $row['Prerequ_ID'];
          //check prerequsites
          /*
          $check = "SELECT p.Prerequ_ID, p.P_CourseID, h.*, c.*, s.* FROM prerequsites1 AS p"
                  . "JOIN history AS h AND course AS c AND section AS s"
                  . "WHERE p.Prerequ_ID = c.Course_ID AND h.Sec_ID = s.S_Section_ID"
                  . "AND s.S_CourseID = c.Course_ID AND c.Course_ID = p.P_CourseID"
                  . "AND '".S_SESSION['prereq']."' = h.Sec_ID AND (h.Sec_ID NOT IN "
                  . "(SELECT Course_ID FROM course))";
          */
          /*
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

?
else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

      
      
         
      unset($_SESSION['addcourse']);
      mysqli_free_result($result);
       } 
       */
     }
   

      else {
      echo "Not found";
    
    
   }
   }
     else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
     }
   
mysqli_close($conn);

}
   
?>


 <?php
           require "footer.php";
           ?>
   
   </body>


</html>


