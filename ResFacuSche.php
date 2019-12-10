<?php
include "header5.php";
?>

<form action="ResFacuSche.php" method="POST">
<select name ="majorid">
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
    <select name="yearid">
        <option value="50001">Spring 2019</option>
        <option value = "50003">Fall 2019</option>
    </select>
    <input type="Submit" name="Submit" value ="Submit"></form>

<?php

if(isset($_POST['Submit'])){
    
$select1 = $conn->prepare("SELECT DISTINCT 
   user.User_ID,
                    
                    user.First_Name,
                   user.Last_Name, 
                    course.C_Name, 
                    timeslot.Period,
                    timeslot.Day,
                    room.R_Num, building.B_Name,
                   
                    course.C_CreditAmt,
                    section.S_Num
                        
              
                FROM history 
               
               JOIN section, 
                course, 
                faculty, 
                facuschedule, 
                user, 
                major, 
                department, 
                building, 
                room, 
                timeslot
                WHERE section.S_Section_ID = facuschedule.Facu_sec_id 
                    AND facuschedule.Facu_id = faculty.Facu_ID 
                    AND user.User_ID = faculty.Facu_ID 
                    AND section.S_RoomNum = room.Room_ID 
                    AND section.S_BuildID = building.Build_ID 
                    AND course.Course_ID = section.S_CourseID  
                    AND faculty.Facu_ID = section.S_FacuID 
                    AND timeslot.TimeSlotID = section.S_TimeSlotID 
                    AND Course.CDeptID = department.Department_ID  
                    AND department.Department_ID = building.B_Dept_ID "
        . " AND building.Build_ID = section.S_BuildID  
     AND (department.Department_ID = ? AND section.S_SemesterYearID = ?)   
            ORDER BY facuschedule.Facu_sec_id");
    $maj = $_POST['majorid'];
    $year = $_POST['yearid'];
$select1->bind_param('ii', $maj, $year);
$select1->execute();
$result=$select1->get_result();
//$majors =  $select1->fetchALL(PDO::FETCH_COLUMN,0);
//
//echo $majors[0];
if ($result->num_rows > 0){
    echo "<table>";
    echo "<th>User ID</th>";
    echo "<th>First Name</th>";
    echo "<th>Last Name</th>";
     echo "<th>Course Name</th>";
    echo "<th>Time</th>";
    echo "<th>Day</th>";
    echo "<th>Room/Building</th>";
    echo "<th>Credits</th>";
    echo "<th>Section Number</th>";
    $rownumber = 0;
    while($row=$result->fetch_assoc()){
       echo "<tr>";
                    echo"<td>" . $row['User_ID'] . "</td>";
                    
                    echo"<td>" . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                   
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    
                    $rownumber = $rownumber +1;
                    echo"</tr>";
                    
    }
    echo"</table>";
    echo"<table>";
    echo"<tr>There are currently" . ' ' . $rownumber . ' '. "entries in this major<tr>";
    echo"</table>";
}
}

   ?>


<?php
include "footer.php";
?>

