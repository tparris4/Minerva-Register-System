<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

//Connect to DB
session_start();
try
{
        $dbh = new PDO('pgsql:dbname=minerva');
        echo "IN DBMS";
}
catch(PDOException $e)
{
        echo "Error: ".$$e->getMessage()."br/>";

        die();
}

$select1 = $dbh->prepare("SELECT course_Name FROM Course");
$succ1 = $select1->execute();
echo "I did this <br>";
$courses =  $select1->fetchALL(PDO::FETCH_COLUMN,0);
var_dump($courses[0]);
echo $courses[0];

        for($i=0;$i<count($courses);$i++)
        {
                echo "<option value="$i">$courses[$i]</option>";
        }

$select2 = $dbh->prepare("SELECT time_period FROM Time");
$succ2 = $select2->execute();
echo "I did this <br>";
$times =  $select2->fetchALL(PDO::FETCH_COLUMN,0);
var_dump($times[0]);
echo $times[0];
for($i=0;$i<count($times);$i++)
        {
                echo "<option value="$i">$times[$i]</option>";
        }

$select3 = $dbh->prepare("SELECT day_slot FROM Day");
$succ3 = $select3->execute();
echo "I did this <br>";
$days =  $select3->fetchALL(PDO::FETCH_COLUMN,0);
var_dump($days[0]);
echo $days[0];

        for($i=0;$i<count($days);$i++)
        {
                echo "<option value="$i">$days[$i]</option>";
        }

$select4 = $dbh->prepare("SELECT room_num FROM Room");
$succ4 = $select4->execute();
echo "I did this <br>";
$rooms =  $select4->fetchALL(PDO::FETCH_COLUMN,0);
var_dump($rooms[0]);
echo $rooms[0];

        for($i=0;$i<count($rooms);$i++)
        {
                echo "<option value="$i">$rooms[$i]</option>";
        }

$select5 = $dbh->prepare("SELECT first_name, last_name FROM Person,Faculty WHERE faculty_id = person_id");
$succ5 = $select5->execute();
echo "I did this <br>";
$professors =  $select5->fetchALL(PDO::FETCH_COLUMN,0);
var_dump($professors[0]);
echo $professors[0];

        for($i=0;$i<count($professors);$i++)
        {
   echo "<option value="$i">$professors[$i]</option>";
        }

$select6 = $dbh->prepare("SELECT period_year, period_semester FROM Period");
$succ6 = $select6->execute();
echo "I did this <br>";
$yearSemesters =  $select6->fetchALL(PDO::FETCH_COLUMN,0);
var_dump($yearSemesters[0]);
echo $yearSemesters[0];

        for($i=0;$i<count($yearSemesters);$i++)
        {
                echo "<option value="$i">$yearSemesters[$i]</option>";
        }






        if(isset($_POST['SectionID']))
        {
                $sectionID = $_POST['SectionID'];
                $flag1 = true;
                echo $sectionID;
        }
        else
        {
                echo "Invalid Section ID<br>";
                $flag1 = false;
        }
        if(isset($_POST['CourseName']))
        {
                $courseName = $_POST['CourseName'];
                $flag2 = true;
                echo $courseName;
        }
 else
        {
                echo "Invalid Start Time <br>";
                $flag4 = false;
        }
        if(isset($_POST['EndTime']))
        {
                $endTime = $_POST['EndTime'];
                $flag5 = true;
                echo $endTime;
        }
        else
        {
                echo "Invalid End Time<br>";
                $flag5 = false;
        }
        if(isset($_POST['Day1']))
        {
                $day1 = $_POST['Day1'];
                $flag6 = true;
                echo $day1;
        }
        else
        {
                echo "Invalid Day 1 <br>";
                $flag6 = false;
        }
        if(isset($_POST['Day2']))
        {
                $day2 = $_POST['Day2'];
                $flag7 = true;
                echo $day2;
        }
        else
        {
 echo "Invalid Day 2 <br>";
                $flag7 = false;
        }
        if(isset($_POST['Room']))
        {
                $room = $_POST['Room'];
                $flag8 = true;
                echo $room;
        }
        else
        {
                echo "Invalid room<br>";
                $flag8 = false;
        }
        if(isset($_POST['Instructor']))
        {
                $instructor = $_POST['Instructor'];
                $flag9 = true;
                echo $instructor;
        }
        else
        {
                echo "Invalid Instructor <br>";
                $flag9 = false;
        }

 if($flag1 && $flag2 && $flag3 && $flag4 && $flag5 && $flag6 && $flag7 && $flag8 && $flag9)
        {
                echo "made it";

                $select7 = $dbh->prepare("SELECT course_id FROM Course WHERE course_name = ?");
                $select7->bindParam(1,$courseName);
                $succ7 = $select7->execute();
                echo "I did this <br>";
                $courseID =  $select7->fetchALL(PDO::FETCH_COLUMN,0);
                var_dump($courseID[0]);
                echo $courseID[0];
 $select8 = $dbh->prepare("SELECT room_id FROM Room WHERE room_num = ?");
                $select8->bindParam(1,$room);
                $succ8 = $select8->execute();
                echo "I did this <br>";
                $roomID =  $select8->fetchALL(PDO::FETCH_COLUMN,0);
                var_dump($roomID[0]);
                echo $roomID[0];

                //NOT FINISHED
                $select9 = $dbh->prepare("SELECT faculty_id FROM Faculty WHERE  = ?");
                $select9->bindParam(1,);
                $succ9 = $select9->execute();
                echo "I did this <br>";
                $instructorID =  $select9->fetchALL(PDO::FETCH_COLUMN,0);
                var_dump($instructorID[0]);
                echo $instructorID[0];

                //NOT FINISHED
                $select10 = $dbh->prepare("SELECT period_id FROM Period,timeslot WHERE slot_id = slot_id,period_ye$
                $select10->bindParam(1,);
                $succ10 = $select10->execute();
                echo "I did this <br>";
                $periodID =  $select10->fetchALL(PDO::FETCH_COLUMN,0);
                var_dump($periodID[0]);
                echo $periodID[0];

                $insert1 = $dbh->prepare("INSERT INTO Section VALUES(?,?,?,?,?)");
                $insert1->bindParam(1,$sectionID);
                $insert1->bindParam(2,$periodID);
                $insert1->bindParam(3,$roomID);
                $insert1->bindParam(4,$courseID);
                $insert1->bindParam(5,$instructorID);
                $sectionAdded = $insert1->execute();

                if($sectionAdded)
                {
                        echo "Inserted <br>"
 //propably add a pop up box stating that it was done sucessfully
                        //header('Location: ../addSection.html');
                }
                else
                {
                        echo "Not inserted <br>"
                }
        }
else
        {
                echo "Something went wrong";
                header('Location: ../addSection.html');
        }
?>

