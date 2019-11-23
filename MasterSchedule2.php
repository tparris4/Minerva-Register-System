<?php 
require 'header.php';
?>

           
<h2 align=center>Master Schedule</h2>

<h3><u>Mathematics</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.*, e.*, a.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b, lectureroom AS e, labroom AS a
            WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77771' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID 
            AND (a.La_Room_ID = r.Room_ID OR e.Le_Room_ID = r.Room_ID)
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
<br>
<br>
<h3><u>Biology</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77772' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
<br>
<br>
<h3><u>Medical</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77773' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
<br>
<br>
<h3><u>Art</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77774' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
</body>
<br>
<br>
<h3><u>Business</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77775' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
<br>
<br>
<h3><u>Computer Science</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77776' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
<br>
<br>
<h3><u>English</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77777' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
<br>
<br>
<h3><u>Music</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77778' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
<br>
<br>
<h3><u>Humanities</u></h3>
 <?php 
           $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT s.*, c.*, t.*, r.*, b.*, f.*, u.* FROM section AS s
            JOIN course AS c, faculty AS f, user AS u, timeslot AS t, room AS r, building AS b WHERE s.S_CourseID = c.Course_ID AND s.S_TimeSlotID = t.TimeSlotID AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
            AND u.User_ID = f.Facu_ID AND s.S_BuildID = '77779' AND s.S_SemesterYearID = '50003' AND s.S_FacuID = f.Facu_ID
            ORDER BY s.S_CourseID";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Professor Name</th>";
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Section_Num</th>";
                    echo"<th>Building_Name</th>";
                    echo"<th>Room_Num</th>";
                    echo"<th>Period</th>";
                    echo"<th>Day</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    echo"<td>" . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['R_Num'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>
<?php
require 'footer.php'
?>
</body>
</html>

