<!DOCTYPE html>
   <head>
      <meta charset = "utf-8">
      <title>View Advisor</title>
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


<div align="center"><h1> Advisor List </h1></div>
<?php
    $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
    $viewadvisor = "SELECT  First_name , Last_name  , F_officehrs
    FROM user, faculty
    WHERE user.user_id = Faculty.facu_id AND Faculty.F_Rank = 'Advisor' AND User.User_ID >= '22223'
    ORDER BY First_name";
	if ($result = mysqli_query($conn, $viewadvisor)){
		if (mysqli_num_rows($result) > 0) {
			echo "<section class= 'wrapper3'><table width='100%'  border= '2'>";
			echo"<th>Advisor's First Name </th>";
			echo"<th>Advisor's Last Name </th>";
			echo"<th> Office Hour </th>";

		While ($row= mysqli_fetch_array($result)){
		echo "<tr>";
		echo "<td>" . $row['First_name'] . "</td>";
		echo "<td>" . $row['Last_name'] . "</td>";
		echo "<td>" . $row['F_officehrs'] . "</td>";
		echo "</tr>";
		}
		echo "</table></section>";
	mysqli_free_result($result);
	}else {echo "No Schedule is available at the moment";}}
	else { echo "Error: could not execute $viewadvisor. " . mysqli_error($conn);}
	mysqli_close($conn);
?>

</body>
</html>
