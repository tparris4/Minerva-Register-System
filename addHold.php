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
$select1 = $dbh->prepare("SELECT hold_type FROM Hold WHERE");
$holds = $select1->execute();
echo $holds[0];

for($i = 0; $i < count($holds); $i++)
{
        <option value="$i">$holds[$i]</option>
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
        if(isset($_POST['HoldType']))
        {
                $holdType = $_POST['HoldType'];
                $flag2 = true;
                echo $holdType;
        }
        else
        {
                echo "Invalid Hold Type<br>";
                $flag2 = false;
        }
       
 if($flag1 && $flag2)
        {
                //NOT FINISHED
                $select2 = $dbh->prepare("SELECT FROM WHERE");
                $select2->bindParam(1,$);
                $select2->bindParam(2,$);
                $holdID = $select2->execute();
                echo $holdID[0];

                $update1 = $dbh->prepare("UPDATE  SET  = ? WHERE  = ?");
                $update1->bindParam(1,$);
                $update1->bindParam(2,$studentID);
                $advisorAdded = $update1->execute();

                if($advisorAdded)
                {
                        echo "Inserted <br>"
                        //propably add a pop up box stating that it was done sucessfully
                        //header('Location: ../addHold.html');
                }
                else
                {
                        echo "Not inserted <br>"
  }
        }
else
        {
                echo "Something went wrong";
                header('Location: ../addHold.html');
        }
        
?>
