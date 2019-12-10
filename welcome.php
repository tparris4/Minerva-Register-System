<?php
   include "session.php";
   ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
?>
<?php
require "header2.php";
?>

       <?php

        if(isset($_SESSION['Username']))
        {
                $username = $_SESSION['Username'];
                $flag1 = true;
                echo $username;
        }
        else
        {
                echo "username not set or has invalid characters! <br>";
                $flag1 = false;
        }
        if(isset($_SESSION['Password']))
        {
                $password = $_SESSION['Password'];
                $flag2 = true;
                echo $password;
        }
         else
        {
                echo "password not set or has invalid characters! <br>";
                $flag2 = false;
        }
        /*
                $st = $dbh->prepare("SELECT password FROM user WHERE email = ?");
                $st->bindParam(1,$username);
                $succ = $st->execute();
                echo "I did this";
                $result = $st->fetchALL(PDO::FETCH_COLUMN,0);

                var_dump($result[0]);
                echo $result[0];

                $st1 = $dbh->prepare("SELECT salt FROM Person WHERE email = ?");
                $st1->bindParam(1,$username);
                $succ1 = $st1->execute();
                echo "I also did this ";
                $result1 =  $st1->fetchALL(PDO::FETCH_COLUMN,0);
  		var_dump($result1[0]);
                echo $result1[0];
*/
                if ($flag1 && $flag2)
                {
                        echo "Query succesful.\n";
                        $saltedpassword = $password;
                        echo $saltedpassword;

                        //hashedpassword = hash('sha256', $saltedpassword);
                        if($saltedpassword)
                        {
                                echo "Correct Login";
                                //$_SESSION['undergradptid'] = $_SESSION['user_id'];
                                header("Location: Researcher.php");
                                /**
                                $q = $conn->prepare("SELECT user_id FROM user WHERE email_address = '$username'");
                                
                                $q->bind_param("s",$username);
                                $user = $q->execute();
                                echo $user;
                                $userID =  $q->mysqli_fetch_field($user);
                                echo $user[0];

                                $_SESSION["user_ID"]= $userID[0];
                                echo $_SESSION["user_ID"];

                                $q1 = $conn->prepare("SELECT admin_id FROM Admin WHERE admin_id = ?");
                                $q1->bind_param("s",$user[0]);
                                $adminType = $q1->execute();
                                $admin =  $q1->fetch_all();
                                echo $admin[0];
                                var_dump($admin[0]);
                                print_r($adminType);

                                $q2 = $conn->prepare("SELECT facu_id FROM faculty WHERE facu_id = ?");
                                $q2->bind_param(1,$userID[0]);
                                $facultyType = $q2->execute();
                                $faculty =  $q1->fetch_all();
				echo $faculty[0];
                                var_dump($faculty[0]);
                                print_r($facultyType);

                                $q3 = $conn->prepare("SELECT stud_id FROM student WHERE stud_id = ?");
                                $q3->bind_param(1,$userID[0]);
                                $studentType = $q3->execute();
                                $student =  $q3->fetch_all();
                                echo $student[0];
                                var_dump($student[0]);
                                print_r($studentType);


                                $q4 = $conn->prepare("SELECT research_id FROM researcher WHERE research_id = ?");
                                $q4->bind_param(1,$userID[0]);
                                $researcherType = $q4->execute();
                                $researcher =  $q4->fetch_all();
                                echo $researcher[0];
                                var_dump($researcher[0]);
                                print_r($researcherType);

                                if($admin[0] != NULL)
                                {
                                        echo "i am a admin";
                                        $_SESSION["userType"]= 'admin';
                                        echo $_SESSION["userType"];
                                        header('Location: ../adminHomePage.html');
                                }
                                else if($faculty[0] != NULL)
                                {
                                        echo "i am a faculty";
                                        $_SESSION["userType"]= 'faculty';
                                        echo $_SESSION["userType"];
                                        header('Location: ../facultyHomePage.html');
				}
                                else if($student[0] != NULL)
                                {
                                        echo "i am a student";
                                        $_SESSION["userType"]= 'student';
                                        echo $_SESSION["userType"];
                                        header('Location: ../Student.php');
                                }
                                else if($researcher[0] != NULL)
                                {
                                        echo "i am a researcher";
                                        $_SESSION["userType"]= 'researcher';
                                        echo $_SESSION["userType"];
                                        header('Location: ../researcherHomePage.html');
                                }
                                
                                else
                                {
                                        echo "error";
 					header('Location: ../Login.php');
                                }
                                */
                        }
                        else
                        {
                                echo "Inccorect password";
                                header('Location: ../Login.php');
                        }
                }
                else
                {
                        header('Location: ../Login.php');
                        print_r($dbh->errorInfo());
                        print_r ($st->errorCode());
                        echo "<br> FAILED TO EXECUTE";
                }
        
?>
      
<?php
include "footer.php";
?>
   </body>
   
   <!--
   $q = $conn->prepare("SELECT user_id FROM user WHERE email_address = ?");
                                $q->bind_param("s",$username);
                                $user = $q->execute();
                                //$userID =  $q->mysqli_fetch_assoc();
                                echo $user;

                                $_SESSION["user_ID"]= $user;
                                echo $_SESSION["user_ID"];

                                $q1 = $conn->prepare("SELECT admin_id FROM Admin WHERE admin_id = ?");
                                $q1->bind_param("s",$user);
                                $admin = $q1->execute();
                                //$admin =  $q1->fetch_all();
                                echo $admin[0];
                                var_dump($admin[0]);
                                print_r($adminType);

                                $q2 = $conn->prepare("SELECT facu_id FROM faculty WHERE facu_id = ?");
                                $q2->bind_param(1,$user);
                                $faculty = $q2->execute();
                                //$faculty =  $q1->fetch_all();
				echo $faculty[0];
                                var_dump($faculty[0]);
                                print_r($facultyType);

                                $q3 = $conn->prepare("SELECT stud_id FROM student WHERE stud_id = ?");
                                $q3->bind_param(1,$user);
                                $student = $q3->execute();
                                //$student =  $q3->fetch_all();
                                echo $student[0];
                                var_dump($student[0]);
                                print_r($studentType);


                                $q4 = $conn->prepare("SELECT research_id FROM researcher WHERE research_id = ?");
                                $q4->bind_param(1,$user);
                                $researcher = $q4->execute();
                                //$researcher =  $q4->fetch_all();
                                echo $researcher[0];
                                var_dump($researcher[0]);
                                print_r($researcherType);
   -->
</html>
