<!DOCTYPE html>
   <head>
      <meta charset = "utf-8">
      <title>View Teaching Schedule</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" type="text/css" href="style.css">
   </head>
<body>
<?php
    $dbhost = 'localhost';
    $dbuser = 'root';
    $dbpass = '';
    $dbname = 'register_system';
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);

    if(! $conn ) {
       die('Could not connect: ' . mysqli_error());
    }
    session_start();
?>


<div align="center"><h1> Teaching Schedule </h1></div>
<?php
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
    $viewteachingschedule = "SELECT  Course_ID, C_Name, S_Section_ID, Day, Period, B_Name, Semesters
    FROM course, section, timeslot, building, masterschedule
    WHERE Course.Course_ID = Section.S_Section_ID";
	if ($result = mysqli_query($conn, $viewteachingschedule)){
		if (mysqli_num_rows($result) > 0) {
			echo "<section class= 'wrapper3'><table width='100%'  border= '2'>";
			echo"<th>Course ID</th>";
			echo"<th>Course Name</th>";
			echo"<th>Section ID </th>";
      echo"<th>Days </th>";
      echo"<th>Period </th>";
      echo"<th>Building </th>";
      echo"<th>Semester </th>";

		While ($row= mysqli_fetch_array($result)){
		echo "<tr>";
		echo "<td>" . $row['Course_ID'] . "</td>";
		echo "<td>" . $row['C_Name'] . "</td>";
		echo "<td>" . $row['S_Section_ID'] . "</td>";
    echo "<td>" . $row['Day'] . "</td>";
    echo "<td>" . $row['Period'] . "</td>";
    echo "<td>" . $row['B_Name'] . "</td>";
    echo "<td>" . $row['Semesters'] . "</td>";
		echo "</tr>";
		}
		echo "</table></section>";
	mysqli_free_result($result);
}else {echo "No Teaching Schedule is available at the moment";}}
	else { echo "Error: could not execute $viewteachingschedule. " . mysqli_error($conn);}
	mysqli_close($conn);
?>

</body>
</html>
