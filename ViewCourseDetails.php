<!DOCTYPE html>
   <head>
      <meta charset = "utf-8">
      <title>View Course Details</title>
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

<br>
<br>
<br>
<br>
<div align= "center"><h1> Courses Description </h1></div>
<?php
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
    $viewcoursedetails= "SELECT  C_Name, C_Description
    FROM course";
	if ($result = mysqli_query($conn, $viewcoursedetails)){
		if (mysqli_num_rows($result) > 0) {
			echo "<section class= 'wrapper3'><table width='100%'  border= '2'>";
			echo"<th>Course Name</th>";
			echo"<th>Course Description</th>";

		While ($row= mysqli_fetch_array($result)){
		echo "<tr>";
		echo "<td>" . $row['C_Name'] . "</td>";
		echo "<td>" . $row['C_Description'] . "</td>";
		echo "</tr>";
		}
		echo "</table></section>";
	mysqli_free_result($result);
}else {echo "No course description is available at the moment";}}
	else { echo "Error: could not execute $viewcoursedetails. " . mysqli_error($conn);}
	mysqli_close($conn);
?>

</body>
</html>
