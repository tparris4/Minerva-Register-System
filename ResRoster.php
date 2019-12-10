<?php
include "header5.php";
        ?>
<form action="ResRoster.php" method="POST">
<select name ="majorid">
  <option value="1112">Calculus</option>
  <option value="1113">Trigonometry</option>
  <option value="1114">Business</option>
  <option value="1115">Economics</option>
  <option value="1116">Accounting</option>
  <option value="1117">Biochemistry</option>
  <option value="1118">Medical Chemistry</option>
  <option value="1119">Graphic Design</option>
  <option value="1120">Digital Art</option>
  <option value="1121">Human Systems</option>
  <option value="1122">Comp Sci B.S.</option>
  <option value="1123">Comp Sci B.A.</option>
  <option value="1124">Comp Engineering</option>
  <option value="1125">Bus Leadership</option>
  <option value="1126">Math Theory</option>
  <option value="1127">Biogenetics</option>
</select>
    <select name="yearid">
        <option value="50001">Spring 2019</option>
        <option value = "50003">Fall 2019</option>
    </select>
    <input type="Submit" name="Submit" value ="Submit"></form>
<?php

if(isset($_POST['Submit'])){
    
$select1 = $conn->prepare("SELECT major.*,  enrollment1.*, undergraduate.*, department.*, faculty.*, user.*, course.*, section.*, building.* "
        . "FROM building JOIN section, major, undergraduate, department, faculty, course, user, enrollment1 "
        . " WHERE major.Major_ID = undergraduate.MajorID AND undergraduate."
        . "UG_StudentID = user.User_ID AND faculty.Facu_ID = section.S_FacuID AND enrollment1.Stud_ID = user.User_ID AND enrollment1.E_Sec_ID = section.S_Section_ID AND section.S_CourseID = course.Course_ID AND "
        . " major.M_DepartID = department.Department_ID AND department.Department_ID = building.B_Dept_ID"
        . " AND building.Build_ID = section.S_BuildID AND (major.Major_ID = ? AND enrollment1.E_SemesterYearID = ?)"
        . " ORDER BY course.Course_ID");
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
    echo "<th>Student ID</th>";
    echo "<th>First Name</th>";
    echo "<th>Last Name</th>";
     echo "<th>Course Name</th>";
    echo "<th>Assignment</th>";
    echo "<th>Grade</th>";
    echo "<th>Date</th>";
    $rownumber = 0;
    while($row=$result->fetch_assoc()){
       echo "<tr>";
                    echo"<td>" . $row['User_ID'] . "</td>";
                    
                    echo"<td>" . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . "</td>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" . $row['Assignment'] . "</td>";
                    echo"<td>" . $row['Grade'] . "</td>";
                    echo"<td>" . $row['Facu_ID'] . "</td>";
                    
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
