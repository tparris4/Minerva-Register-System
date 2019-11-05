<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<?php
session_start();
if (!isset($_SESSION['username']) || empty($_SESSION['username'])) {
      exit();
}

$username = $_SESSION['username'];

   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully</br>';
?>
<html>
    <head>
    
        <title>Student Home Page</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css">

    </head>
    <body>
                <header>
        <p><a href="Minerva University3.html"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>
        </header>
        <div class ="Welcome"><h5>Welcome</h5> 
            <p><?php
            echo $_POST["First_Name" . " " . "Last_Name"];?><br></p></div>
                
        
        <script>
            function AddCourse(){
                window.location.href="ChooseSemester.html";
            }
            
            function DropCourse(){
                window.location.href="DropCourse.html";
            }
            
            function ClassSearch(){
                window.location.href="SearchPage.html";
            }
            
            function LookUpTranscript(){
                window.location.href="Transcript.html";
            }
            
            function LookUpHolds(){
                window.location.href="Holds.php";
            }
            
            function ViewCatalog(){
                window.location.href="CrsCatalog.html";
            }
            
            function ViewGrades(){
                window.location.href="ViewGrades.html";
            }
            
            function ChangeMajor(){
                window.location.href="ChangeMajor.html";
            }
            
            function DegreeAudit(){
                window.location.href="DegreeAudit.html";
            }
            
            function ViewSchedule(){
                window.location.href="studentschedule.php";
            }
            </script>
      
        <div align="center">
            <div id="box1" align="center">
              
        <button class = "button" onclick="AddCourse()">Add Course</button>
        <button class = "button" onclick="DropCourse()">Drop Course</button>
        <button class = "button" onclick="ClassSearch()">Search Courses</button>
        <button class = "button" onclick="LookUpTranscript()">Look Up Transcript</button>
        <button class = "button" onclick="LookUpHolds()">Look Up Holds</button>
        <button class = "button" onclick="ViewCatalog()">View Catalog</button>
        <button class = "button" onclick="ViewGrades()">View Grades</button>
        <button class = "button" onclick="ChangeMajor()">Change Major</button>
        <button class = "button" onclick="DegreeAudit()">Degree Audit</button>
        <button class = "button" onclick="ViewSchedule()">View Schedule</button>

        </div>


        </div>

            <footer id="footer2">
            <div class ="geninfo">
          <p><a href="Minerva University.html"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>  
          <p>Phone Number: 812-522-3917 <br>
          Street: 4038 Minerva University <br>
          City, State, Zip: Seymour, Indiana, 47274 <br>
          Inquiries: generalminervauniversity@msc.edu <br>
      </p></div>
    </footer>     
   
    
    </body>
</html>