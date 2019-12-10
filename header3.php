<?php
session_start();

   ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

//Main Page
include "session.php";
?>

<html>
   <head>
      <meta charset = "utf-8">
      <title>Minerva University</title>
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css">

   </head>
   <body>

       	<header>
        <nav>
        <p><a href="Index1.php"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>
    	  <ul>
    	  	<li><a href = "#"> Admission</a>
    		<ul>
    			<li><a href = "Undergraduate.php"> Undergraduate</a></li>
    			<li><a href = "Graduate.php"> Graduate</a></li>
    			<li><a href = "Academic Calendar.html"> Academic Calendar</a></li>
                        <li><a href="MasterSchedule.php">Master Schedule</a></li>
                        <li><a href="CrsCatalog.php">Course Catalog</a></li>
           
    		</ul></li>
    		<li><a href = "#"> Department</a>
    		<ul>
          <li><a href = "Art.php"> Art</a></li>
    			<li><a href = "Biology.php"> Biology</a></li>
    			<li><a href = "Business.php"> Business</a></li>
    			<li><a href = "Computer Science.php"> Computer Science</a></li>
            <li><a href= "Humanities.php"> Humanities</a></li>
    			<li><a href = "Math.php"> Math</a></li>
            <li><a href = "Medical.php"> Medical</a></li>
            <li><a href = "Music.php"> Music</a></li>
    		</ul></li>
    		<li><a href = "#"> About</a>
    		<ul>
    			<li><a href = "President.html"> President</a></li>
    			<li><a href = "Staff.html"> Staff</a></li>
    			<li><a href = "Mission.html"> Mission</a></li>
    			<li><a href = "IT Department.html"> IT Department</a></li>
                        </ul>
                        
    		</li>
                <ul><li>
                        <li><a href="login1.php" class="button">Login</a></li>
                        </li> </ul>
        </nav>
            <div align="right">
                            <p id="date"></p>
<p>
<script> document.write(new Date().toLocaleDateString()); </script>
</p>
            </div>
        
        </header>
   <body>
