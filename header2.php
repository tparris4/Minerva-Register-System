<?php
session_start();
if (!isset($_SESSION['Username']) || empty($_SESSION['Username'])) {
      exit();
   ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
}

include "session.php";
?>

<html>
    <head>
    
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css">

    </head>
    <body>
        <header><nav>
        <p><a href="#"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>
        <!DOCTYPE html>

    
     
 
        
        <ul>
           <div id="Homepagecontainer">
      <div id="main">
      <section class="wrapper">
      <div class="btn-group" style="width:100%">
          <button style="width:11.11%"><a href="ChooseSemester.php">Add Course</a></button>
      <button style="width:11.11%"><a href="DropCourse.php">Drop Course</a></button>
      <button style="width:11.11%"><a href="SearchPage.php">Look up course</a></button>
      <button style="width:11.11%"><a href="Transcript.php">View Transcript</a></button>
      <button style="width:11.11%"><a href="Holds.php">View Holds</a></button>
      <button style="width:11.11%"><a href="ViewGrades.php">View Grades</a></button>
      <button style="width:11.11%"><a href="CrsCatalogLogin.php">View Catalog</a></button>
      <button style="width:11.11%"><a href="ChangeMajor.php">Declare Major</a></button>
      <button style="width:11.11%"><a href="DegreeAudit.php">Degree Audit</a></button>
      <button style="width:11.11%"><a href="ViewAccount.php">View Account Info</a></button>
      <button style="width:11.11%"><a href="Index1.php">Home</a></button>
      <button style="width:11.11%"><a href="Student.php">MainPage</a></button>
      <button style="width:11.11%"><a href="logout.php">Log Out</a></button>
      </div>
      </section>
      </div>
                </div>
            
            
            <div align="right">
                <br>
                <h4> <?php echo " {$_SESSION['user_id']} \n
                       \n<br> {$_SESSION['LastName']}, {$_SESSION['FirstName']} ";
                       ?><br><h4>
            <p id="date"></p>
<p>
<script> document.write(new Date().toLocaleDateString()); </script>
</p>
            </div>
             
        </ul>


        </header>
    <body><html>
        