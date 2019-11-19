<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php

?>
<?php
require "header2.php";
?>
<p> <div class ="Welcome"><h2>Welcome <?php echo $_SESSION['FirstName'] . " " . $_SESSION['LastName']; ?></h2> </p>
            <p></p></div>
                
<table>
    <tr><td>Major: <?php 

    $major = "SELECT m.M_Name FROM major AS m JOIN undergraduate AS u WHERE m.Major_ID = u.MajorID
            AND u.UG_StudentID = {$_SESSION['user_id']}";
   if($result = mysqli_query($conn, $major)){
   if(mysqli_num_rows($result) > 0)
   {
    while($row = mysqli_fetch_array($result)){
        
    $_SESSION['MajorName'] = $row['M_Name'];
    echo $_SESSION['MajorName'];
    }
   }
            
   }
    ?> </td></tr>
    <tr><td>Minor: <?php 
    $minor = "SELECT m.MinorName FROM minor AS m JOIN undergraduate AS u 
            WHERE m.Minor_ID = u.MinorID AND u.UG_StudentID = {$_SESSION['user_id']}";
       if($result = mysqli_query($conn, $minor)){
   if(mysqli_num_rows($result) > 0)
   {
    while($row = mysqli_fetch_array($result)){
        
    $_SESSION['MinorName'] = $row['MinorName'];
    echo $_SESSION['MinorName'];
    }
   }
            
   }?></td></tr>
    
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
            /*
             *        if($result = mysqli_query($conn, $minor)){
   if(mysqli_num_rows($result) > 0)
   {
    while($row = mysqli_fetch_array($result)){
        
    $_SESSION['MinorName'] = $row['MinorName'];
    echo $_SESSION['MinorName'];
    }
   }
            
   }?>
             */
            //check if student is full time or part time to check credits
            if (isset($_SESSION['undergradid'])){
            $sql11 = "SELECT CreditNum FROM undergradparttime WHERE undergradparttime_ID = {$_SESSION['undergradid']}";
            if($result = mysqli_query($conn,$sql11)){
              if(mysqli_num_rows($result) > 0)
   {
            $row = mysqli_fetch_array($result);
            
                while( $row = mysqli_fetch_assoc($result) ){
                    extract($row);
                    $credittotal = $row['CreditNum'];
                    echo $credittotal;
            }}}
            
            //$credittotal = mysqli_fetch_assoc($result);
            
            }
            else if(isset($_SESSION['undergradftid']))
            {
                $result = mysqli_query($conn, "SELECT CreditNum FROM undergradfulltime WHERE undergradfulltime_ID = '{$_SESSION['undergradftid']}");
            $credittotal = mysqli_fetch_assoc($result, MYSQLI_ASSOC);
                
                }
            else{
                echo "something happened";
            }
            //print schedule
            /*
             * JOIN section AS s AND faculty AS f AND course AS c AND user AS u 
                AND timeslot AS t AND building AS b AND room AS r 
             */
            $_SESSION['user_id'] = 2222;
            $sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, f.Facu_ID, c.Course_ID, c.C_Name, c.C_CreditAmt
                FROM history AS h,
               section AS s,
               faculty AS f,
               course AS c,
               user AS u,
               timeslot AS t,
               building AS b,
               room AS r
                WHERE h.Stud_ID = '".$_SESSION['user_id']."' AND s.S_Section_ID = h.Sec_ID
                   AND  u.User_ID = f.Facu_ID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_CourseID AND h.SemesterYearID = '50001'
                    AND f.Facu_ID = s.S_FacuID AND t.TimeSlotID = s.S_TimeSlotID
            ORDER BY h.Sec_ID ";
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
                    $url_id = $_SESSION['undergradid'];
                    $checkid = "SELECT UndergradPartTime_ID FROM undergradparttime WHERE UndergradPartTime_ID='$url_id'";
                    $result = mysqli_query($conn, $checkid);
                        //if id exists
                        if(mysqli_num_rows($result) >0){
                           $updateid = "UPDATE undergradparttime SET Credits_Num='$credittotal' WHERE UndergradPartTime_ID='$url_id'";
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
?>
                      <br>
            <br>
            <br>
            

            <br>
            <br>
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

            
                      <br>
            <br>
            <br>
            <br>
            <br>
            

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
