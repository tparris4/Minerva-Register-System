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
          <button style="width:16.66%"><a href="addAdvisor1.php">Add Advisor</a></button>
      <button style="width:16.66%"><a href="addHold1.php">Add Hold</a></button>
      <button style="width:16.66%"><a href="addMjrReq.php">Add Major Requirements</a></button>
      <button style="width:16.66%"><a href="addSection1.php">Add Section</a></button>
      
      </div>
          
          <div class="btn-group" style="width:100%">
              
      <button style="width:16.66%"><a href="addCourse.php">Add Course</a></button>
      
      <button style="width:16.66"><a href="addSemester.php">Add Semester</a></button>
      <button style="width:16.66%"><a href="deleteSection.php">Delete Section</a></button>
      
      <button style="width:16.66"><a href="viewSection.php">View Section</a></button>
          </div>
           <div class="btn-group" style="width:125%">
               <button style="width:25%"><a href="message.php">Message User</a></button>
      <button style="width:25%"><a href="ViewAccount.php">View Account Info</a></button>
      <button style="width:25%"><a href="Index1.php">Home</a></button>
      <button style="width:25%"><a href="Researcher.php">Main Page</a></button>
      <button style="width:25%"><a href="logout.php">Log Out</a></button>
      </div>
      </section>
      </div>
                </div>
            
            
             <ul>
      
            
            
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
 
      