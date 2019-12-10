<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

        <?php
        
 $dbhost = 'localhost';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'register_system';
   /*
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully</br>';
   */
        try{
            $conn = new PDO("mysql:host=".$dbhost."; dbname=".$dbname, $dbuser, $dbpass);
            echo "IN DBMS";
        } catch (Exception $ex) {
echo "Error: ".$ex->getMessage()."br/>";
        die();
        }
        ?>
  