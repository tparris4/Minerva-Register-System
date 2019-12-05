<?php
include "header4.php";

?>
<style>
body {
  font-family: "Lato", sans-serif;
}

.sidenav {
  display: none;
  height: 100%;
  width: 250px;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: darkgreen;
  overflow-x: hidden;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
}
</style>
<div id="mySidenav" class="sidenav">
  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
  <a href="selectclass.php">View Roster/Grades/Attendance</a>
  <a href="addtoclass.php">Add Grades/Attendance</a>
  <a href="message.php">Message User</a>
  
      <a href="ViewAccount.php">View Account Information</a>

</div>

<p> <div class ="Welcome"><h2>Welcome <?php echo $_SESSION['FirstName'] . " " . $_SESSION['LastName']; ?></h2> </p>
            <p></p></div>

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Faculty Menu</span>
   <script>
            
            function openNav() {
  document.getElementById("mySidenav").style.display = "block";
}

function closeNav() {
  document.getElementById("mySidenav").style.display = "none";
}
</script>
<?php
//teaching schedule
 $sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, e.*, c.*, f.*
              
                FROM history AS h,
               
               section AS s,
               course AS c,
               faculty AS f,
               facuschedule AS e,
               user AS u,
               timeslot AS t,
               building AS b,
               room AS r
                WHERE f.Facu_ID = '".$_SESSION['user_id']."' AND s.S_Section_ID = e.Facu_sec_id
                    AND e.Facu_id = f.Facu_ID
                   AND  u.User_ID = f.Facu_ID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_CourseID AND h.SemesterYearID = '50001'
                    AND f.Facu_ID = s.S_FacuID AND t.TimeSlotID = s.S_TimeSlotID
            GROUP BY e.Facu_sec_id ";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Course Name</th>";
                   
                    echo"<th>Room Number</th>";
                    echo"<th>Time</th>";
                    echo"<th>Day</th>";                   
                    echo"<th>Credits</th>";
                    echo"<th>Section Number</th>";
                    
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                   // echo "<td><form method='POST' action='Biologycoursesearch.php'><input type='hidden' name='addc'  value='".$row['Course_ID']."'><input type='hidden' name='add'  value='".$row['S_Section_ID']."'><input type='submit' name='addcourse' value='Add'></form></td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    
                    echo"</tr>";
                    
                   
                    
                    
                    }
                      
      mysqli_free_result($result);
                }else {
      echo "Not found";
    }
    
            }else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   ?>

 
            <?php 
            //advising students
            $sql1 = "SELECT u.*, b.*, f.*, d.*, a.* "
                    
                    . "FROM user AS u, "
                    
                    . " building AS b, faculty AS f, advisor AS a, department AS d"
                    . " WHERE a.A_Stud_ID = u.User_ID AND"
                    . " '".$_SESSION['user_id']."' = f.Facu_ID AND a.A_Facu_ID = f.Facu_ID AND"
                    . " b.B_Dept_ID = d.Department_ID "
                    . "AND  f.F_Dept_ID = d.Department_ID";
                      
            if ($result = mysqli_query($conn, $sql1)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Student Name</th>";
                    echo"<th>Room Number</th>";
                    echo"<th>Office Hours</th>";
                    echo"<th>Department</th>";
                          
                    $rownumber = 0;
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['F_Office'] . "</td>";
                    
                    echo"<td>" . $row['F_OfficeHrs'] . "</td>";
                    echo"<td>" . $row['D_Name'] . "</td>";            
                    echo"</tr>";
                    
                    }
                echo "</table>";
                
            
      mysqli_free_result($result);
                }else {
     ;
    }
    
            }else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
?>
<?php 
include "footer.php";
?>