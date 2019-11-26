
<?php
require "header2.php";
?>

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

<?php
 
            //check if student is full time or part time to check credits
            if (isset($_SESSION['undergradid'])){
            $sql11 = "SELECT CreditTotal FROM undergradparttime WHERE undergradparttime_ID = {$_SESSION['undergradid']}";
            if($result = mysqli_query($conn,$sql11)){
              if(mysqli_num_rows($result) > 0)
   {
            $row = mysqli_fetch_array($result);
            
                while( $row = mysqli_fetch_assoc($result) ){
                    
                    $credittotal = $row['CreditTotal'];
                    echo "<table>";
                   
                    echo "<th>" . $row['CreditTotal'] . "</th>";
                    echo "</table>";
            }}}
            
            //$credittotal = mysqli_fetch_assoc($result);
            
            }
            else if(isset($_SESSION['undergradftid']))
            {
                $sql12 = "SELECT CreditTotal FROM undergradfulltime WHERE undergradfulltime_ID = '{$_SESSION['undergradftid']}";
            if($result = mysqli_query($conn,$sql12)){
              if(mysqli_num_rows($result) > 0)
   {
            $row = mysqli_fetch_array($result);
            
                while( $row = mysqli_fetch_assoc($result) ){
                    extract($row);
                    $credittotal = $row['CreditNum'];
                    echo $credittotal;
            }}}}
            else{
                echo "something happened";
            }?>
<table>
   
    <tr><td>Major: <?php echo $_SESSION['MajorName'];?> </td></tr>
    <tr><td>Minor: <?php echo $_SESSION['MinorName'];?></td></tr>
</table>
            
            
            <p class="wrapper" align="center">
            <?php
            //print all sections w/ studid
$sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, e.*, f.Facu_ID, c.Course_ID, c.C_Name, c.C_CreditAmt
                FROM history AS h,
               section AS s,
               faculty AS f,
               course AS c,
               user AS u,
               timeslot AS t,
               building AS b,
               room AS r,
               enrollment1 AS e
                WHERE h.Stud_ID = '".$_SESSION['user_id']."' AND s.S_Section_ID = h.Sec_ID
                     
                   AND e.Stud_ID = h.Stud_ID
                   AND e.E_Sec_ID = h.Sec_ID
AND  u.User_ID = f.Facu_ID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_CourseID 
                    AND f.Facu_ID = s.S_FacuID AND t.TimeSlotID = s.S_TimeSlotID
                    AND NOT h.SemesterYearID = '50001';
            ORDER BY h.SemesterYearID ASC ";
                
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                 
                    echo"<th>Course Name</th>";
                    echo"<th>Professor Name</th>";
                    echo"<th>Room Number</th>";
                    echo"<th>Time</th>";
                    echo"<th>Day</th>";                   
                    echo"<th>Credits</th>";
                    echo"<th>Section Number</th>";
                    echo"<th>Grade</th>";
                   
                    $rownumber = 0;
                    $gradetotal = 0;
                   $gradecount = 0;

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . ', ' . $row['First_Name'] . "</td>"; 
                    echo"<td>" . $row['R_Num'] . ',' . $row['B_Name'] . "</td>";
                    echo"<td>" . $row['Period'] . "</td>";
                    echo"<td>" . $row['Day'] . "</td>";
                    echo"<td>" . $row['C_CreditAmt'] . "</td>";
                    echo"<td>" . $row['S_Num'] . "</td>";
                    $gradetotal = $gradetotal + $row['Grade'];
                    $gradecount = $gradecount + 1;
                          
                    echo"</tr>";
                    
                    
                    }
                echo "</table>";
                /*function avg($sum=0,$count=0){
    return ($count)? $sum / $count: NAN;
}
var_dump( avg(array_sum($values),count($values)) );*/
                
                echo "<table>";
                echo "<tr>";
                echo "<td>" . "Total Credits: " . var_dump($credittotal) . "</td>";
                echo "</tr>";
                echo "</table>";
                
                echo "<table>";
                echo "<tr>";
                $gradepoint = $gradetotal / $gradecount;
                echo "<td>" .  "grades" . var_dump($gradepoint) . "</td>";
                echo "<td>" . "Total Credits: " . var_dump($credittotal) . "</td>";
                echo "</tr>";
                echo "</table>";
            }}
                ?>
            </p>

            <p></p>
            <p></p>
            <p></p>
            <p></p><p></p><p></p>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            
            
           <?php
           require "footer.php";
           ?>
 

