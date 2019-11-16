<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);


        if(isset($_POST['Year']))
        {
                $year = $_POST['Year'];
                $flag1 = true;
                echo $year;
        }
        else
        {
                echo "Invalid Year<br>";
                $flag1 = false;
        }
        if(isset($_POST['Semester']))
        {
                $semester = $_POST['Semester'];
                $flag2 = true;
                echo $semester;
        }
        else
        {
                echo "Invalid Semester<br>";
                $flag2 = false;
        }
 if($flag1 && $flag2)
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
                $select1 = $dbh->prepare("SELECT COUNT(period_id) FROM period");
                $periodAmount= $select1->execute();
                //NOT FINISHED
                for($i=0;$i<189;$i++)
                {
                        $insert1 = $dbh->prepare("INSERT INTO Period VALUES(?,?,?,?)");
                        $insert1->bindParam(1,$i+189);
                        $insert1->bindParam(2,$i);
                        $insert1->bindParam(3,$year);
                        $insert1->bindParam(4,$semester);
                        $success1 = $insert1->execute();
                }
                if($success1)
                {
                        echo "Inserted <br>"
                        //propably add a pop up box stating that it was done sucessfully
                        //header('Location: ../addSemeter.html');
                }
                else
                {
                        echo "Not inserted <br>"
                }
        }
else
        {
                echo "Something went wrong";
                header('Location: ../addSemeter.html');
        }
        
?>
