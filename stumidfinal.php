<?php
include "header4.php";
        ?>

<h3>This course is <?php $select=$conn->prepare("SELECT course.C_Name, section.S_Num FROM course, section "
        . "WHERE section.S_CourseID = course.Course_ID AND (section.S_Section_ID =?) ");

$select->bind_param('i', $_SESSION['midfin']);
$select->execute();
$result=$select->get_result();
if ($result->num_rows > 0){
    
    while($row=$result->fetch_assoc()){
        echo "" . $row['C_Name'] . ", Section " . $row['S_Num'] . "" ;
            
    }
}
?>
</h3>
<?php

    
$select1 = $conn->prepare("SELECT user.User_ID, user.First_Name, User.Last_Name, "
        . " history.Midterm_Grade, history.Final_Grade, enrollment1.E_Sec_ID "
        . "FROM  user JOIN section, enrollment1, "
        . "  faculty, history, course "
        . "WHERE section.S_CourseID = course.Course_ID "
        ." AND user.User_ID = enrollment1.Stud_ID "
        . "AND section.S_Section_ID = enrollment1.E_Sec_ID "
        . " AND history.Stud_ID = enrollment1.Stud_ID "
        . " AND history.SemesterYearID = '50003' "
        . " AND faculty.Facu_ID = enrollment1.Facu_ID "
        . " AND (faculty.Facu_ID = ? AND enrollment1.E_Sec_ID = ?) "
        . "   GROUP BY history.Stud_ID ORDER BY user.User_ID ");

            $select1->bind_param('ii', $_SESSION['user_id'], $_SESSION['midfin']);
$select1->execute();
$result2=$select1->get_result();
//$majors =  $select1->fetchALL(PDO::FETCH_COLUMN,0);
//
//echo $majors[0];

if ($result2->num_rows > 0){
    echo "<table>";
    echo "<th>Student ID</th>";
    echo "<th>First Name</th>";
    echo "<th>Last Name</th>";
    echo "<th>Midterm</th>";
    echo "<th>Final</th>";
    echo "<th></th>";
    $rownumber = 0;
    while($row=$result2->fetch_assoc()){
       echo "<tr>";
                    echo"<td>" . $row['User_ID'] . "</td>";
                    
                    echo"<td>" . $row['First_Name'] . "</td>";
                    echo"<td>" . $row['Last_Name'] . "</td>";
                    echo"<td>" . $row['Midterm_Grade'] . "</td>";
                    echo"<td>" . $row['Final_Grade'] . "</td>";
                    
                    echo"<td>" . $row['E_Sec_ID'] . "</td>";
                    
                    $rownumber = $rownumber +1;
                    echo"</tr>";
                    
    }
    echo"</table>";
    echo"<table>";
    echo"<tr>There are currently" . ' ' . $rownumber . ' '. "entries in this major<tr>";
     echo"</table>";
}

?>
<?php
include "footer.php";
?>
