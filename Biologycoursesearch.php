
<?php
require "header2.php";
?>


<!--
Add course w/ checkbox
-->
<?php
//date conflict done
//credit conflict done
//hold conflict done
$Date = new DateTime(); // Today
echo $Date->format('d/m/Y'); // echos today! 
$DateEnd = new DateTime('2020-02-05');
//add date function 
if(isset($_SESSION['Fall2019']) && ($_SESSION['creditAll'] <= 18) && ($Date < $DateEnd)){
    
   $sql = "SELECT section.*, course.*, timeslot.*, room.*, building.*, faculty.*, user.*, prerequisites1.* 
            FROM section
            JOIN prerequisites1, course , faculty, user, timeslot, room, building 
            WHERE section.S_CourseID = course.Course_ID AND section.S_TimeSlotID = timeslot.TimeSlotID 
            AND section.S_RoomNum = room.Room_ID AND section.S_BuildID = building.Build_ID AND prerequisites1.P_CourseID = course.Course_ID
            AND user.User_ID = faculty.Facu_ID AND 
            section.S_BuildID = '77772' 
            AND section.S_RoomNum = room.Room_ID
            AND section.S_BuildID = building.Build_ID
            AND
            section.S_SemesterYearID = '50001'
            
AND section.S_FacuID = faculty.Facu_ID
            GROUP BY section.S_Section_ID";

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
      echo "<th>Time</th>";
      echo "<th>Day</th>";
      echo "<th>CourseLevel</th>";
      echo "<th>Number Enrolled</th>";
      //testing
      echo "<th>Prereq</th>";
      
    $rownumber = $rownumber + 1;
    
      while($row = mysqli_fetch_array($result)){
          $rownumber = $rownumber + 1;
        echo "<tr>";
        //echo "<td><input type='checkbox' name='checkbox[" . $rownumber . "]' value='". $rownumber . "' </td>";
        echo "<td><form method='POST' action='Biologycoursesearch.php'>"
        . "<input type='hidden' name='addpre'  value='".$row['Prerequ_ID']."'>"
        . "<input type='hidden' name='addday'  value='".$row['Day']."'>"
        . "<input type='hidden' name='addtime'  value='".$row['Period']."'>"
                . "<input type='hidden' name='addcourid'  value='".$row['Course_ID']."'>"
                . "<input type='hidden' name='addsec'  value='".$row['S_Section_ID']."'>"
                . "<input type='submit' name='addcourse' value='Add'></form></td>";
                    
        echo "<td>" . $row['C_Name'] . "</td>";
       echo "<td>" . $row['C_Description'] . "</td>";      
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
       echo "<td>" . $row['Course_ID'] . "</td>";
       echo"<td> Room " . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
       echo "<td>" . $row['C_CreditAmt'] . "</td>";
       echo"<td>" . $row['S_Num'] . "</td>";
       echo "<td>" . $row['C_DeptName'] . "</td>";
              echo"<td>" . $row['Period'] . "</td>";
       echo"<td>" . $row['Day'] . "</td>";
       echo "<td>" . $row['CourseLevel'] . "</td>";
       echo "<td>" . $row['Capacity'] . "</td>";

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
     if (isset($_POST['addcourse']) && $row['Capacity'] < 26){
         //$checkbox3 = implode(",", $checkbox1);
          //$checkbox2 = $_POST['checkbox'];
          //$_SESSION['coursechosen'] = $row['Sec_ID'];

          $id = mysqli_real_escape_string($conn, $_POST['addsec']);
          $id2 = mysqli_real_escape_string($conn, $_POST['addcourid']);
          
          $id3 = mysqli_real_escape_string($conn, $_POST['addday']);
          
          $id4 = mysqli_real_escape_string($conn, $_POST['addtime']);
          $id5 = mysqli_real_escape_string($conn, $_POST['addpre']);
          //check if already in
          $alreadyin = $conn->prepare("SELECT history.* FROM history WHERE SemesterYearID = '50001' AND Sec_ID = '".$id."'");
          $alreadyin->execute();
          $result = $alreadyin->fetchALL(PDO::FETCH_COLUMN,0);
          if($result->num_rows > 0){
              echo "Already added";
              
          }
          else
          {
              $check = true
          }
          //check if time already in
          $timein = $conn->prepare("SELECT history.*, section.* FROM history, section WHERE history.SemesterYearID = '50001' AND Sec_ID = '".$id."' AND timeslot.Day = '".$id3."' AND timeslot.Period = '".$id4."'");
                   $timein->execute();
          $result2 = $timein->fetchALL(PDO::FETCH_COLUMN,0);
          if($result2->num_rows > 0){
              echo "Time/Day Conflict";
              
          }
          else
          {
              $time = true;
          }
          //check if prereq is fulfilled
          $prereqin = $conn->prepare("SELECT history.*, section.*, course.*, prerequisites1.* ")
          
          
          //else
          
         if ($time == $check) {
  $sql2 = $conn->prepare("INSERT INTO history (Stud_ID, Sec_ID, CourseDump, SemesterYearID, Cour_ID) VALUES ('".$_SESSION['user_id']."', '".$id."', '0', '50001', '".$id2."'");
  $sql2->execute();
  $result4 = $sql2->fetchALL(PDO::FETCH_COLUMN,0);
  
  $sql3 = $conn->prepare("UPDATE section SET Capacity =Capacity +1 WHERE S_Section_ID = '".$id."'");        
          $sql3->execute();
          $result5 = $sql3->fetchALL(PDO::FETCH_COLUMN,0);
          
  if ($conn->query($sql2) === TRUE) {
    echo "New record created successfully";
} 
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
   

}
else if($_SESSION['creditAll'] > 18){
    echo"Credit amount is more than 18.0";
}
   
?>


 <?php
           require "footer.php";
           ?>
   
   </body>


</html>


