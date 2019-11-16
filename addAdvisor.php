<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

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
//NOT FINISHED 
$select1 = $dbh->prepare("SELECT first_name,last_name FROM Faculty, Person WHERE faculty_id = person_id");
$advisors = $select1->execute();
echo $advisors[0];

for($i = 0; $i < count($advisors); $i++)
{
        <option value="$i">$advisors[$i]</option>
}

        if(isset($_POST['StudentID']))
        {
                $studentID = $_POST['StudentID'];
                $flag1 = true;
                echo $studentID;
        }
        else
        {
                echo "Invalid Student ID<br>";
  $flag1 = false;
        }
        if(isset($_POST['Advisor']))
        {
                $advisor = $_POST['Advisor'];
                $flag2 = true;
                echo $advisor;
        }
        else
        {
                echo "Invalid Advisor Name<br>";
                $flag2 = false;
        }
       
 if($flag1 && $flag2)
        {
                //NOT FINISHED
                $select2 = $dbh->prepare("SELECT faculty_id FROM Faculty, Person WHERE first_name = ?, last_name =$
                $select2->bindParam(1,$);
                $select2->bindParam(2,$);
                $advisorID = $select2->execute();
                echo $advisorID[0];

                $update1 = $dbh->prepare("UPDATE Student SET advisorid = ? WHERE student_id = ?");
                $update1->bindParam(1,$advisorID[0]);
                $update1->bindParam(2,$studentID);
                $advisorAdded = $update1->execute();

                if($advisorAdded)
                {
                        echo "Inserted <br>"
                        //propably add a pop up box stating that it was done sucessfully
                        //header('Location: ../addAdvisor.html');
                }
                else
                {
                        echo "Not inserted <br>"
                }
   }
else
        {
                echo "Something went wrong";
                header('Location: ../addAdvisor.html');
        }
        
?>