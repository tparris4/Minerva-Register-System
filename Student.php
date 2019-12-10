
<?php
require "header2.php";
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
  <a href="ChooseSemester.php">Add Course</a>
  <a href="DropCourse.php">Drop Course</a>
  <a href="SearchCourse.php">Search Course</a>
  <a href="Transcript.php">Transcript</a>
   <a href="Holds.php">Holds</a>
    <a href="CrsCatalogLogin.php">Course Catalog</a>
     <a href="ViewGrades.php">View Grades</a>
      <a href="ChangeMajor.php">Change Major Request</a>
      <a href="DegreeAudit.php">Degree Audit</a>
      <a href="ViewAdvisor.php">View Advisor List</a>
      <a href="ViewAccount.php">View Account Information</a>
      <a href="messagestu.php">Message Users</a>
      <a href="ViewMidFinal.php">View Midterm/Final Grades</a>
</div>
 

<p> <div class ="Welcome"><h2>Welcome <?php echo $_SESSION['FirstName'] . " " . $_SESSION['LastName']; ?></h2> </p>
            <p></p></div>

<span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; Student Menu</span>

<?php
        if(isset($_SESSION['HoldSet']))
        {
                echo "Cannot add courses due to hold conflict(s)";
                unset($_SESSION['HoldSet']);
        }
?>

<table><tr><td>Major:

<?php
$select1 = $conn->prepare("SELECT major.M_Name FROM major,undergraduate WHERE major.Major_ID = undergraduate.MajorID AND undergraduate.UG_StudentID = ?");
$select1->bindParam(1,$_SESSION['user_id']);
$major = $select1->execute();
$majors =  $select1->fetchALL(PDO::FETCH_COLUMN,0);
//echo $majors[0];
if(major)
{
        for($i =0; $i< count(majors); $i++)
        {
                echo $majors[$i];
}
}
?>
</td></tr><tr><td>Minor:
<?php
$select2 = $conn->prepare("SELECT minor.MinorName FROM minor, undergraduate WHERE minor.Minor_ID = undergraduate.MinorID AND undergraduate.UG_StudentID = ?");
$select2->bindParam(1,$_SESSION['user_id']);
$minor = $select2->execute();
$minors =  $select2->fetchALL(PDO::FETCH_COLUMN,0);
//echo $minors[0];
if(minor)
{
        for($i =0; $i< count(minors); $i++)
{
                echo $minors[$i];
        }
}
?>

</td></tr></table>
        <script>
                function AddCourse()
                {
                        window.location.href="ChooseSemester.php";
                }
                function DropCourse()
                {
                        window.location.href="DropCourse.php";
                }
                function ClassSearch()
                {
 window.location.href="SearchCourse.php";
                }
                function LookUpTranscript()
                {
                        window.location.href="Transcript.php";
                }
                function LookUpHolds()
                {
                        window.location.href="Holds.php";
                }
                function ViewCatalog()
                {
                        window.location.href="CrsCatalogLogin.php";
                }
                function ViewGrades()
                {
                        window.location.href="ViewGrades.php";
                }
                function ChangeMajor()
{
                        window.location.href="ChangeMajor.php";
                }
                function DegreeAudit()
                {
                        window.location.href="DegreeAudit.php";
                }
        </script>

<?php
if (isset($_SESSION['undergradptid'])){
        $select3 = $conn->prepare("SELECT Credits_Num FROM undergradparttime WHERE UndergradPartTime_ID = ?");
        $select3->bindParam(1,$_SESSION['user_id']);
        $underGradPartCredit = $select3->execute();
        $underGradPartCredits =  $select3->fetchALL(PDO::FETCH_COLUMN,0);
        //echo $underGradPartCredits[0];
        if(underGradPartCredit)
        {
                echo "Part time";
 }
}
else if(isset($_SESSION['undergradftid'])){
        $select4 = $conn->prepare("SELECT Credits_Num FROM undergradfulltime WHERE undergradfulltime.u_undergradfulltime_ID = ?"); 
        $select4->bindParam(1,$_SESSION['user_id']);
        $underGradFullCredit = $select4->execute();
        $underGradFullCredits =  $select4->fetchALL(PDO::FETCH_COLUMN,0);
        //echo $underGradFullCredits[0];
        if(underGradFullCredit)
        {
                echo "Full time";
        }
}
else{
        echo "something happened or student not in database<br>";
}
$select5 = $conn->prepare("SELECT course.C_Name FROM history,section,course  WHERE history.Stud_ID = ? AND section.S_Section_ID = history.Sec_ID AND course.Course_ID = section.S_CourseID AND history.SemesterYearID = '50001' ORDER BY history.Sec_ID");
$select5->bindParam(1,$_SESSION['user_id']); 
$course = $select5->execute();
$courses =  $select5->fetchALL(PDO::FETCH_COLUMN,0);
//echo $course[0];
$select6 = $conn->prepare("SELECT first_name FROM history,section,faculty,person WHERE history.Stud_ID = ? AND section.S_Section_ID = history.Sec_ID AND user.User_ID = faculty.Facu_ID AND history.SemesterYearID = '50001' AND faculty.Facu_ID = section.S_FacuID ORDER BY history.Sec_ID");
$select6->bindParam(1,$_SESSION['user_id']);
$facultyFirstName = $select6->execute();
$facultyFirstNames =  $select6->fetchALL(PDO::FETCH_COLUMN,0);
//echo $facultyFirstName[0];
$select7 = $conn->prepare("SELECT last_name FROM history,section,faculty,person WHERE history.Stud_ID = ? AND sect$
$select7->bindParam(1,$_SESSION['user_id']);
$facultyLastName = $select7->execute();
$facultyLastNames =  $select7->fetchALL(PDO::FETCH_COLUMN,0);
//echo $facultyLastNames[0];
$select8 = $conn->prepare("SELECT r_num FROM history,section,room WHERE history.Stud_ID = ? AND section.S_Section_$
$select8->bindParam(1,$_SESSION['user_id']);
$room = $select8->execute();
$rooms =  $select8->fetchALL(PDO::FETCH_COLUMN,0);
//echo $rooms[0];
$select9 = $conn->prepare("SELECT b_name FROM history,section,room,building WHERE history.Stud_ID = ? AND section.$
$select9->bindParam(1,$_SESSION['user_id']);
$building = $select9->execute();
$buildings =  $select9->fetchALL(PDO::FETCH_COLUMN,0);
//echo $buildings[0];
$select10 = $conn->prepare("SELECT period FROM history,section,timeslot WHERE history.Stud_ID = ? AND section.S_Se$
$select10->bindParam(1,$_SESSION['user_id']);
$time = $select10->execute();
$times =  $select10->fetchALL(PDO::FETCH_COLUMN,0);
//echo $times[0];
$select11 = $conn->prepare("SELECT day FROM history,section,timeslot WHERE history.Stud_ID = ? AND section.S_Secti$
$select11->bindParam(1,$_SESSION['user_id']);
$day = $select11->execute();
$days =  $select11->fetchALL(PDO::FETCH_COLUMN,0);
//echo $days[0];
$select12 = $conn->prepare("SELECT course.c_creditamt FROM history,section,course  WHERE history.Stud_ID = ? AND s$
$select12->bindParam(1,$_SESSION['user_id']);
$credit = $select12->execute();
$credits =  $select12->fetchALL(PDO::FETCH_COLUMN,0);
//echo $credits[0];
$select13 = $conn->prepare("SELECT s_num FROM history,section WHERE history.Stud_ID = ? AND section.S_Section_ID =$
$select13->bindParam(1,$_SESSION['user_id']);
$sectionNum = $select13->execute();
$sectionNums =  $select13->fetchALL(PDO::FETCH_COLUMN,0);
//echo $sectionNums[0];
echo "<table>";
echo"<th>Course Name</th>";
echo"<th>Professor</th>";
echo"<th>Room Number</th>";
echo"<th>Time</th>";
echo"<th>Day</th>";
echo"<th>Credits</th>";
echo"<th>Section Number</th>";
$credittotal = 0;
for($i=0;$i < count(room);$i++)
{
        echo "<tr>";
        echo"<td>" . $courses[$i] . "</td>";
        echo"<td>" . $facultyLastNames[$i] . ', ' . $facultyFirstNames[$i] . "</td>";
        echo"<td>" . $rooms[$i] . ',' . $buildings[$i] . "</td>";
        echo"<td>" . $times[$i] . "</td>";
        echo"<td>" . $days[$i] . "</td>";
        echo"<td>" . $credits[$i] . "</td>";
        echo"<td>" . $sectionNums[$i] . "</td>";
        echo"</tr>";
        $credittotal = $credittotal + $credits[$i];
}
echo "<td>" . "Total Credits: " . $credittotal . "</td>";
echo "</tr>";
echo "</table>";
?>
<?php
$select14 = $conn->prepare("SELECT last_name FROM person,faculty,advisor WHERE advisor.A_Stud_ID = ? AND advisor.A$
$select14->bindParam(1,$_SESSION['user_id']);
$advisorLastName = $select14->execute();
$advisorLastNames = $select14->fetchALL(PDO::FETCH_COLUMN,0);
//echo $fadvisorLastNames[0];
$select15 = $conn->prepare("SELECT first_name FROM person,faculty,advisor WHERE advisor.A_Stud_ID = ? AND advisor.$
$select15->bindParam(1,$_SESSION['user_id']);
$advisorFirstName = $select15->execute();
$advisorFirstNames = $select15->fetchALL(PDO::FETCH_COLUMN,0);
//echo $fadvisorFirstNames[0];
$select16 = $conn->prepare("SELECT f_office FROM faculty,advisor WHERE advisor.A_Stud_ID = ? AND advisor.A_Facu_ID$
$select16->bindParam(1,$_SESSION['user_id']);
$office = $select16->execute();
$offices = $select16->fetchALL(PDO::FETCH_COLUMN,0);
//echo $offices[0];
$select17 = $conn->prepare("SELECT f_officehrs FROM faculty,advisor WHERE advisor.A_Stud_ID = ? AND advisor.A_Facu$
$select17->bindParam(1,$_SESSION['user_id']);
$officehr = $select17->execute();
$officehrs = $select17->fetchALL(PDO::FETCH_COLUMN,0);
//echo $officehrs[0];
$select18 = $conn->prepare("SELECT d_name FROM faculty,advisor,department WHERE advisor.A_Stud_ID = ? AND advisor.$
$select18->bindParam(1,$_SESSION['user_id']);
$department = $select18->execute();
$departments = $select18->fetchALL(PDO::FETCH_COLUMN,0);
//echo $department[0]
echo "<table>";
echo"<th>Advisor Name</th>";
echo"<th>Room Number</th>";
echo"<th>Office Hours</th>";
echo"<th>Department</th>";
for($i=0;$i < count(office);$i++)
{
        echo "<tr>";
        echo"<td>" . $advisorLastNames[$i] . ', ' . $advisorFirstNames[$i] . "</td>";
        echo"<td>" . $offices[$i] . "</td>";
        echo"<td>" . $officehrs[$i] . "</td>";
        echo"<td>" . $departments[$i] . "</td>";
        echo"</tr>";
}
echo "</table>";
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
