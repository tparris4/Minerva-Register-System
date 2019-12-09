<!DOCTYPE html>
<?php
include "header2.php";
?>

    <h2>Choose Values</h2>
    <h4>Days</h4>
    <form method ="POST" action="SearchPage.php" name ="Submit">
        <label class="checkbox-inline">
               <input method ="POST" type="checkbox" class="radio" name ="Day" value ="Monday/Wednesday"> Monday</label>
                <label class="checkbox"class="radio" >
               <input method ="POST" type="checkbox"class="radio" name ="Day" value ="Tuesday/Thursday"> Tuesday</label>
                <label class="checkbox"class="radio" >
               <input  method ="POST" type="checkbox" name ="Day" value ="Monday/Wednesday" class="radio" > Wednesday</label>
                <label class="checkbox"class="radio" >
               <input method ="POST" type="checkbox" name ="Day" value ="Tuesday/Thursday"class="radio"> Thursday</label>
                </label>
                <br>
          <select id="time" name="time">
              <option selected="Time" value="None">              </option>
              <option value="8:00 - 9:30am">8:00 - 9:30am</option>
              <option value="10:00 -11:30am">8:00 - 9:30am</option>            
              <option value="12:00 - 1:30pm">12:00 - 1:30pm</option>
              <option value="2:00 - 3:30pm">2:00 - 3:30pm</option>
              <option value="4:00 - 5:30pm">4:00 - 5:30pm</option>
              <option value="6:00 - 7:30pm">6:00 - 7:30pm</option>
              <option value="8:00 - 9:30pm">8:00 - 9:30pm</option>
              
        </select>
                <br>
                <select id="term" name="term">
                    <option selected="Term" value ="None"></option>
                    <option value="50001">Fall 2019</option>
                    <option value="50003">Spring 2020</option>
                    
                        
                    
                </select>
                
                <br>
                <select id="Department" name ="dept">
                    <option selected="Dept" Value="None"></option>
                    <option value="124">Math</option>
                    <option value="125">Biology</option>
                    <option value="126">Business</option>
                    <option value="127">Medical</option>
                    <option value="128">Art</option>
                    <option value="129">Computer Science</option>
                    <option value="130">English</option>
                    <option value="131">Humanities</option>
                    <option value="132">Music</option>
                    
                    
                </select>
                
                
                <input type="Submit" name="Submit" title="Submit"/></form>
    
    <?php
    if(isset($_POST['Submit'])){
        $Day = mysqli_real_escape_string($conn, $_POST['Day']);
        $term = mysqli_real_escape_string($conn,$_POST['term']);
        $time = mysqli_real_escape_string($conn,$_POST['time']);
        $dept = mysqli_real_escape_string($conn,$_POST['dept']);
        
        $sql = array();
        if(!empty($Day)){
            $sql[] = "timeslot.Day = '$Day'";
            
        }
        if(!empty($term)){
            $sql[] = "section.S_TimeSlotID = '$term'";
            
        }
        if(!empty($time)){
            $sql[] = "timeslot.Period = '$time'";
            
        }
        if(!empty($dept)){
            $sql[] = "course.C_DeptName = '$dept'";
            
        }
        $sql = implode(' AND ', $sql);
        $sql1 = "SELECT timeslot.*, section.*, course.*, department.*,"
                . "room.*, building.*, faculty.*, user.*, history.*, section.*" . (!empty($sql) ? :  " WHERE  '".$sql."'
            AND section.S_Section_ID = history.Sec_ID
                   AND  user.User_ID = faculty.Facu_ID
                   
                    AND section.S_RoomNum = room.Room_ID AND section.S_BuildID = building.Build_ID
                    AND course.Course_ID = section.S_CourseID AND history.SemesterYearID = '50001'
                    
                    AND faculty.Facu_ID = section.S_FacuID AND
                    timeslot.TimeSlotID = section.S_TimeSlotID"; 
        
                if ($result = mysqli_query($conn, $sql1)){
        
                
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Course Name</th>";
                    echo"<th>Professor</th>";
                    echo"<th>Room Number</th>";
                    echo"<th>Time</th>";
                    echo"<th>Day</th>";                   
                    echo"<th>Credits</th>";
                    echo"<th>Section Number</th>";
                    
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    
                    echo"</tr>";
                   }
                   echo "</table>";
                 mysqli_free_result($result);
            }
            else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql1. " . mysqli_error($conn);
   }
    
    ?>
    
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}
function myFunction2() {
  document.getElementById("myDropdown2").classList.toggle("show");
}
function myFunction3() {
  document.getElementById("myDropdown3").classList.toggle("show");
}
// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>

<?php
include "footer.php";
?>