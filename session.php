<?php
   include "config.php";
   session_start();
  
   $_SESSION['user_id'] = 1;
   $user_check = $_SESSION['Username'];
   
   $ses_sql = mysqli_query($conn,"select email_address from user where email_address = '$user_check' ");
   
   $row = mysqli_fetch_array($ses_sql,MYSQLI_ASSOC);
   
   $login_session = $row['email_address'];
   
   if(!isset($_SESSION['user_id'])){
      header("Location: ../login.php");
      die();
   }

?>