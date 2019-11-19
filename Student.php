<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php
session_start();
if (!isset($_SESSION['Username']) || empty($_SESSION['Username'])) {
      exit();
   ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
}

?>
<?php
require "header2.php";
?>
<p> <div class ="Welcome"><h2>Welcome <?php echo $_SESSION['FirstName'] . " " . $_SESSION['LastName']; ?></h2> </p>
            <p></p></div>
                
<table>
    <tr><td>Major: <?php 
    $major = mysqli_query($conn, "SELECT m.M_Name FROM major AS m JOIN undergraduate AS u WHERE m.Major_ID = u.MajorID"
            . "AND u.Stud_ID = {$_SESSION['user_id']}");
    while($row = $major -> fetch_assoc()){
        
    $_SESSION['MajorName'] = $row['M_Name'];
    echo $_SESSION['MajorName'];
    }
    
    
    ?> </td></tr>
    <tr><td>Minor: <?php $minor = mysqli_query($conn, "SELECT m.MinorName FROM minor AS m JOIN undergraduate AS u "
            . "WHERE m.Minor_ID = u.MinorID");
    while($row = $minor ->fetch_assoc()){
    echo $_SESSION['MinorName'] = $row['MinorName'];}?></td></tr>
    
</table>
        
        <script>
            function AddCourse(){
                window.location.href="ChooseSemester.php";
            }
            
            function DropCourse(){
                window.location.href="DropCourse.php";
            }
            
            function ClassSearch(){
                window.location.href="SearchPage.html";
            }
            
            function LookUpTranscript(){
                window.location.href="Transcript.html";
            }
            
            function LookUpHolds(){
                window.location.href="Holds.php";
            }
            
            function ViewCatalog(){
                window.location.href="CrsCatalog.php";
            }
            
            function ViewGrades(){
                window.location.href="ViewGrades.html";
            }
            
            function ChangeMajor(){
                window.location.href="ChangeMajor.php";
            }
            
            function DegreeAudit(){
                window.location.href="DegreeAudit.html";
            }
            
            </script>
      
                        
           
            <?php
            //just to test
            $studentid = '33332';
            //check if student is full time or part time to check credits
            if (isset($_SESSION['undergradid'])){
            $credittotal = mysqli_query($conn, "SELECT CreditNum FROM undergradparttime WHERE undergradparttime_ID = 'undergradid'");
            }
            else if(isset($_SESSION['undergradftid']))
            {
                $credittotal = mysqli_query($conn, "SELECT CreditNum FROM undergradfulltime WHERE undergradfulltime_ID = 'undergradftid'");
            }
            else{
                echo "something happened";
            }
            //print schedule
            $sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, f.FacuID, c.Course_ID, c.C_Name, c.C_CreditAmt
                FROM history AS h
                JOIN section AS s AND faculty AS f AND course AS c AND user AS u 
                AND timeslot AS t AND building AS b AND room AS r 
                WHERE h.StudID = '{$_SESSION['user_id']}' AND s.S_Section_ID = h.SecID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_Course_ID AND h.SemesterYearID = '50001'
                    AND f.FacuID = u.User_ID AND t.TimeSlotID = s.S_TimeSlotID
            ORDER BY h.SecID
             AND t.Day";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>";
                    echo"<th>Course Name</th>";
                    echo"<th>Professor Name</th>";
                    echo"<th>Room Number</th>";
                    echo"<th>Time</th>";
                    echo"<th>Day</th>";                   
                    echo"<th>Credits</th>";
                    echo"<th>Section Number</th>";
                    echo"<th>";
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
                
                echo "<table>";
                echo "<tr>";
                echo "<td>" . "Total Credits: " . var_dump($credittotal) . "</td>";
                echo "</tr>";
                echo "</table>";
                if($credittotal <= 6){
                    //update credits
                    $url_id = mysqli_real_escape_string($_SESSION['undergradid']);
                    $checkid = "SELECT UndergradPartTime_ID FROM undergradparttime WHERE UndergradPartTime_ID='$url_id'";
                    $result = mysql_query($checkid);
                        //if id exists
                        if(mysql_num_rows($result) >0){
                           $updatetid = "UPDATE undergradparttime SET Credits_Num='$credittotal' UndergradPartTime_ID='$url_id'";
                            //update record
                    if ($conn->query($updateid) === TRUE) {
                        echo "Record updated successfully";
                    } else {
                        echo "Error updating record: " . $conn->error;
                    }
                        }
                        //if record does not exist, insert
                        else{
                            $insert1 = "INSERT INTO `undergradparttime` (`UndergradPartTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) 
                        VALUES ('{$_SESSION['undergradid']}', '$rownumber', 'Good', '$credittotal', '50001' LIMIT 1)";
               if (mysqli_query($conn, $insert1)) {
               echo "New record created successfully";
               }else{
               echo "Error: " . $insert1 . "" . mysqli_error($conn);
            }
 
                        }
                }
                   
                //if student is full time
                else if($credittotal > 6){
                                    //update credits
                    $url_id2 = mysqli_real_escape_string($_SESSION['undergradid']);
                    $checkid2 = "SELECT UndergradFullTime_ID FROM undergradfulltime WHERE UndergradFullTime_ID='$url_id2'";
                    $result2 = mysql_query($checkid2);
                        //if id exists
                        if(mysql_num_rows($result2) >0){
                           $updatetid = "UPDATE undergradfulltime SET Credits_Num='$credittotal' WHERE UndergradFullTime_ID='$url_id2'";
                            //update record
                    if ($conn->query($updateid) === TRUE) {
                        echo "Record updated successfully";
                    } else {
                        echo "Error updating record: " . $conn->error;
                    }
                        }
                        

                //if record does not exist, insert
                        else{
                            $insert1 = "INSERT INTO `undergradfulltime` (`UndergradFullTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) 
                        VALUES ('{$_SESSION['undergradid']}', '$rownumber', 'Good', '$credittotal', '50001' LIMIT 1)";
               if (mysqli_query($conn, $insert1)) {
               echo "New record created successfully";
               }else{
               echo "Error: " . $insert1 . "" . mysqli_error($conn);
                        }
 
                        
                    $url_id = mysqli_real_escape_string($_SESSION['undergradid']);
                    $checkid = "SELECT UndergradPartTime_ID FROM undergradparttime WHERE UndergradPartTime_ID='$url_id'";
                    $result3 = mysql_query($checkid);
                        //if id exists
                        if(mysql_num_rows($result3) >0){
                     $del1 = "DELETE FROM `undergradparttime` (`UndergradPartTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) VALUES "
                             . "('{$_SESSION['undergradid']}', '$credittotal', 'Good', '$credittotal', '50001')";
                              $_SESSION['undergradftid'] = $_SESSION['undergradid'];
                             unset($_SESSION['undergradid']);
                             
        if ($conn->query($del1) === TRUE) {
          echo "Record deleted successfully";
           } else {
          echo "Error deleting record: " . $conn->error;
                }
                }
                }
                
           }
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>?>
            
        <div align="center">
            <div id="box1" align="center">
              
        <button class = "button" onclick="AddCourse()">Add Course</button>
        <button class = "button" onclick="DropCourse()">Drop Course</button>
        <button class = "button" onclick="ClassSearch()">Search Courses</button>
        <button class = "button" onclick="LookUpTranscript()">Look Up Transcript</button>
        <button class = "button" onclick="LookUpHolds()">Look Up Holds</button>
        <button class = "button" onclick="ViewCatalog()">View Catalog</button>
        <button class = "button" onclick="ViewGrades()">View Grades</button>
        <button class = "button" onclick="ChangeMajor()">Change Major</button>
        <button class = "button" onclick="DegreeAudit()">Degree Audit</button>

        </div>


        </div>

            
            
            

           <?php
           require "footer.php";
           ?>
   
    <!--
/**
$sql2 = "INSERT INTO `undergradfulltime` (`UndergradFullTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) 
                        VALUES ('{$_SESSION['undergradid']}', '$rownumber', 'Good', '$credittotal', '50001')";
*/
    $rownumber = $rownumber + $row['C_CreditAmt']; 
                    $credittotal = $credittotal + $rownumber;
-->
    </body>
</html>
