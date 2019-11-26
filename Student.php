
<?php
require "header2.php";
?>
<p> <div class ="Welcome"><h2>Welcome <?php echo $_SESSION['FirstName'] . " " . $_SESSION['LastName']; ?></h2> </p>
            <p></p></div>
<?php
if(isset($_SESSION['HoldSet'])){
    echo "Cannot add courses due to hold conflict(s)";
    unset($_SESSION['HoldSet']);
}
                ?>
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
                window.location.href="SearchCourse.php";
               
            }
            
            function LookUpTranscript(){
                window.location.href="Transcript.php";
            }
            
            function LookUpHolds(){
                window.location.href="Holds.php";
            }
            
            function ViewCatalog(){
                window.location.href="CrsCatalogLogin.php";
            }
            
            function ViewGrades(){
                window.location.href="ViewGrades.php";
            }
            
            function ChangeMajor(){
                window.location.href="ChangeMajor.php";
            }
            
            function DegreeAudit(){
                window.location.href="DegreeAudit.php";
            }
            

            
            </script>

                        
           
            <?php
 
            //check if student is full time or part time to check credits
            if (isset($_SESSION['undergradptid'])){
            $sql11 = "SELECT Credits_Num FROM undergradparttime WHERE UndergradPartTime_ID = {$_SESSION['undergradptid']}";
            if($result = mysqli_query($conn,$sql11)){
              if(mysqli_num_rows($result) > 0){
              echo "Part Time";
   {
            /*$row = mysqli_fetch_array($result);
            
                while( $row = mysqli_fetch_assoc($result) ){
                    extract($row);
                    $credittotal = $row['CreditNum'];
                    echo $credittotal;
            }}/*/
              }
             
            
            //$credittotal = mysqli_fetch_assoc($result);
            
            }}
            }
            else if(isset($_SESSION['undergradftid']))
            {
                $sql12 = "SELECT Credits_Num FROM undergradfulltime WHERE UndergradFullTime_ID = '{$_SESSION['undergradftid']}";
            if($result = mysqli_query($conn,$sql12)){
              if(mysqli_num_rows($result) > 0)
              {
                  echo "Full Time";
            
             /*   while( $row = mysqli_fetch_assoc($result) ){
                    extract($row);
                    $credittotal = $row['CreditNum'];
                    echo $credittotal;
            }*/
                  
              }}}
            else{
                echo "something happened or student not in database";
            }
            //print schedule
            /*
             * JOIN section AS s AND faculty AS f AND course AS c AND user AS u 
                AND timeslot AS t AND building AS b AND room AS r 
             */
            $credittotal = 0;
            
            /* undergraduate AS x,
               undergradparttime AS y,
               undergradfulltime AS z 
             * 
             */
            
            $sql = "SELECT h.*,s.*, u.*,t.*,b.*,r.*, y.UndergradPartTime_ID, z.U_UndergradFullTime_ID,
                f.Facu_ID, c.Course_ID, c.C_Name, c.C_CreditAmt
                FROM history AS h,
               section AS s,
               faculty AS f,
               course AS c,
               user AS u,
               timeslot AS t,
               building AS b,
                undergraduate AS x,
               undergradparttime AS y,
               undergradfulltime AS z,
               room AS r
                WHERE h.Stud_ID = '".$_SESSION['user_id']."' AND s.S_Section_ID = h.Sec_ID
                   AND  u.User_ID = f.Facu_ID
                    AND s.S_RoomNum = r.Room_ID AND s.S_BuildID = b.Build_ID
                    AND c.Course_ID = s.S_CourseID AND h.SemesterYearID = '50001'
                    AND f.Facu_ID = s.S_FacuID AND t.TimeSlotID = s.S_TimeSlotID
            GROUP BY h.Sec_ID ";
            if ($result = mysqli_query($conn, $sql)){
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
                    
                    $credittotal = $credittotal + $row['C_CreditAmt'];
                    
                    
                    }
                echo "<td>" . "Credit Number: " . $credittotal . "</td>";
                echo "</tr>";
                echo "</table>";
                //if student is pt
                if($credittotal <= 6){
                    //update credits
                    $_SESSION['undergradptid'] = $_SESSION['user_id'];
                    $url_id = mysqli_real_escape_string($conn, $_SESSION['undergradptid']);
                    $allcredits = "SELECT CreditTotal FROM undergradparttime WHERE UnderGradPartTime = '{$_SESSION['user_id']}'";
                    
                    $updatecredits = "UPDATE undergradparttime SET CreditTotal='$allcredits' WHERE UndergradPartTime_ID='$url_id'";
                    $checkid = "SELECT UndergradPartTime_ID FROM undergradparttime WHERE UndergradPartTime_ID='$url_id'";
                    if($result2 = mysqli_query($conn, $checkid));
                        //if id exists
                        if(mysqli_num_rows($result2) >0){
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
                            $allcredits = "SELECT CreditTotal FROM undergradparttime WHERE UnderGradPartTime = '{$_SESSION['user_id']}'";
                    
                            $insert1 = "INSERT INTO `undergradparttime` (`UndergradPartTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) 
                        VALUES ('{$_SESSION['undergradptid']}', '".$credittotal."', 'Good', '".$credittotal."', '50001')";
               if (mysqli_query($conn, $insert1)) {
               echo "New record created successfully";
               }else{
               echo "Error: " . $insert1 . "" . mysqli_error($conn);
            }
 
                        }
                        if(!empty($row['UndergradFullTime_ID'])){
                        //remove from ft if exists
                        $_SESSION['undergradftid'] = $_SESSION['user_id'];
                                  $url_id4 = mysqli_real_escape_string($conn, $_SESSION['undergradftid']);
                    $checkid4 = "SELECT UndergradFullTime_ID FROM UndergradFulltime WHERE U_UndergradFullTime_ID='$url_id'";
                    if($result4 = mysqli_query($conn, $checkid4));
                        //if id exists
                        if(mysqli_num_rows($result4) > 0){
                     $del2 = "DELETE FROM `undergradfulltime` WHERE U_UndergradFullTime_ID='$url_id'";
                              $_SESSION['undergradptid'] = $_SESSION['user_id'];
                             //unset($_SESSION['undergradptid']);
                             
        if ($conn->query($del2) === TRUE) {
          echo "Record deleted successfully";
           } else {
          echo "Error deleting record: " . $conn->error;
                }
                }
                }}
                   
                //if student is full time
                else if($credittotal > 6){
                                    //update credits
                    $url_id2 = mysqli_real_escape_string($conn, $_SESSION['user_id']);
                    $allcredits = "SELECT CreditTotal FROM undergradparttime WHERE UnderGradPartTime = '{$_SESSION['user_id']}'";
                    
                    $checkid2 = "SELECT UndergradFullTime_ID FROM undergradfulltime WHERE U_UndergradFullTime_ID='$url_id2'";
                    if($result3 = mysqli_query($conn, $checkid2)){
                        //if id exists
                        if(mysqli_num_rows($result3) > 0){
                           $updatetid = "UPDATE undergradfulltime SET Credits_Num='$credittotal' AND CreditTotal = '$allcredits' WHERE U_UndergradFullTime_ID='$url_id2'";
                            //update record
                    if ($conn->query($updateid) === TRUE) {
                        echo "Record updated successfully";
                    } else {
                        echo "Error updating record: " . $conn->error;
                    }
                        
                        }
                    }
                    
                    
                        

                //if record does not exist, insert
                        else{
                            if (isset($_SESSION['undergradptid'])){
                   // ($allcredits) $allcredits = "SELECT CreditTotal FROM undergradparttime WHERE UnderGradPartTime_ID = '{$_SESSION['user_id']}'";
                    if(empty($row['U_UndergradFullTime_ID'])){
                            $insert1 = "INSERT INTO `undergradfulltime` (`U_UndergradFullTime_ID`, `Credits_Num`, `Status`, `CreditTotal`, `SemesterYearID`) 
                        VALUES ('{$_SESSION['user_id']}', '$credittotal', 'Good', '$credittotal', '50001' )";
                        
                    $updatecredits = "UPDATE undergradparttime SET CreditTotal='$allcredits' WHERE U_UndergradFullTime_ID='{$_SESSION['user_id']}'";
               if (mysqli_query($conn, $insert1)) {
               echo "New record created successfully";
               }else{
               echo "Error: " . $insert1 . "" . mysqli_error($conn);
                        }
                            
                    }  else{
                                echo "1";
                        }
                        //delete pt row if ft student
                    $url_id3 = mysqli_real_escape_string($conn, $_SESSION['user_id']);
                    $checkid3 = "SELECT UndergradPartTime_ID FROM undergradparttime WHERE UndergradPartTime_ID='$url_id3'";
                    if($result5 = mysqli_query($conn, $checkid3));
                        //if id exists
                        if(mysqli_num_rows($result5) >0){
                     $del1 = "DELETE FROM `undergradparttime` WHERE UnderGradPartTime_ID='$url_id3'"; 
                             
                             
        if ($conn->query($del1) === TRUE) {
          echo "Record deleted successfully";
           } else {
          echo "Error deleting record: " . $conn->error;
                }
                }
                }
                        }
                }
                
           
      
    
                
    mysqli_free_result($result);
            }
            else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   //check if student is full time or part time to check credits
            if (isset($_SESSION['undergradptid'])){
            $sql11 = "SELECT Credits_Num FROM undergradparttime WHERE UndergradPartTime_ID = {$_SESSION['undergradptid']}";
            if($result = mysqli_query($conn,$sql11)){
              if(mysqli_num_rows($result) > 0){
              echo "Part Time";
   {
            /*$row = mysqli_fetch_array($result);
            
                while( $row = mysqli_fetch_assoc($result) ){
                    extract($row);
                    $credittotal = $row['CreditNum'];
                    echo $credittotal;
            }}/*/
              }
             
            
            //$credittotal = mysqli_fetch_assoc($result);
            
            }}
            }
            else if(isset($_SESSION['undergradftid']))
            {
                $sql12 = "SELECT Credits_Num FROM undergradfulltime WHERE UndergradFullTime_ID = '{$_SESSION['undergradftid']}";
            if($result = mysqli_query($conn,$sql12)){
              if(mysqli_num_rows($result) > 0)
              {
                  echo "Full Time";
            
             /*   while( $row = mysqli_fetch_assoc($result) ){
                    extract($row);
                    $credittotal = $row['CreditNum'];
                    echo $credittotal;
            }*/
                  
              }}}
            else{
                echo "something happened or student not in database";
            }
?>
            
            <?php 
            $sql = "SELECT u.*, b.*, f.*, d.*, a.* "
                    
                    . "FROM user AS u "
                    . "JOIN"
                    . " building AS b, faculty AS f, advisor AS a, department AS d"
                    . " WHERE a.A_Stud_ID = '{$_SESSION['user_id']}'"
                    . " AND a.A_Facu_ID = f.Facu_ID AND"
                    . " u.User_ID = f.Facu_ID AND b.B_Dept_ID = d.Department_ID "
                    . "AND  f.F_Dept_ID = d.Department_ID";
                      
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    
                    echo"<th>Advisor Name</th>";
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
      echo "Not found";
    }
    
            }else{
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
        <button class = "button" onclick="ClassSearch()" >Search Courses</button>
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
   
 