<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

        if(isset($_POST['CourseID']))
        {
                $courseID = $_POST['CourseID'];
                $flag1 = true;
                echo $courseID;
        }
        else
        {
                echo "Invalid Course ID<br>";
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
                echo "Invalid Course Name<br>";
                $flag2 = false;
        }
        if(isset($_POST['CourseDescription']))
        {
                $courseDescription = $_POST['CourseDescription'];
                $flag3 = true;
                echo $courseDescription;
        }
        else
        {
                echo "Invalid Course Description<br>";
                $flag3 = false;
        }
 if(isset($_POST['CourseOfferd']))
        {
                $courseOfferd = $_POST['CourseOfferd'];
                $flag4 = true;
                echo $courseOfferd;
        }
        else
        {
                echo "Invalid Course Offerd<br>";
                $flag4 = false;
        }
        if(isset($_POST['CourseCredit']))
        {
                $courseCredit = $_POST['CourseCredit'];
                $flag5 = true;
                echo $courseCredit;
        }
        else
        {
                echo "Invalid Course Credit<br>";
                $flag5 = false;
        }
        if($flag1 && $flag2 && $flag3 && $flag4 && $flag5)
        {
                echo "made it"; 
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
$q1 = $dbh->prepare("INSERT INTO Course VALUES(?,?,?,?,?)");
                $q1->bindParam(1,$courseID);
                $q1->bindParam(2,$courseName);
                $q1->bindParam(3,$courseDescription);
                $q1->bindParam(4,$courseCredit);
                $q1->bindParam(5,$courseOfferd);
                $courseAdded = $q1->execute();

                if($courseAdded)
                {
                        echo "Inserted <br>";
                        //propably add a pop up box stating that it was done sucessfully
                        header('Location: ../addCourse.html');
                }
                else
                {
                        echo "Not inserted <br>";
                }
        }
        else
        {
                echo "Something went wrong";
                header('Location: ../addCourse.html');
        }
?>