<?php

/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

session_start();

if(isset($_SESSION["loggedin"]) && $_SESSION["loggedin"] === true){
    header("location: welcome.php");
    exit;
    
}

require_once "config.php";

$username = $password = "";
$username_err = $password_err = "";

//process form

if($_SERVER["REQUEST_METHOD"] == "POST"){
    
 //username empty
    if(empty(trim($_POST["username"]))){
        $username_err = "Enter email";
    }else {
        $username = trim($_POST["username"]);
    }
    
    if(empty(trim($_POST["password"]))){
        $password_err = "Enter password";
    }else{
        $password = trim($_POST["password"]);
    }
    
    if(empty($username_err) && empty($password_err)){
        $sql = "SELECT id, username, password FROM User WHERE username = ?";
    }
    
    if($stmt = mysqli_prepare($link, $sql)){
        mysqli_stmt_bind_param($stmt, "s", $param_username);
        
        //set para
        $param_username = $username;
        
        //attempt
        if(mysqli_stmt_execute($stmt)){
            //result
            mysqli_stmt_store_result($stmt);
            
            //check username exists
            if(mysqli_stmt_num_rows($stmt) == 1){
                //bind results
                mysqli_stmt_bind_result($stmt, $id, $username, $hashed_password);
                if(mysqli_stmt_fetch($stmt)){
                    if(password_verify($password, $sql))
                {
    session_start();
    
    $_SESSION["loggedin"] = true;
    $_SESSION["id"] = $id;
    $_SESSION["username"] = $username;
    
    //redirect
                header("location: homepage.php");}
                else{
                    $password_err = "The password you entered was not valid.";
                }
                }
            }else{
                echo "Oops! Something went wrong. Please try again later.";
            }
            }
            mysqli_stmt_close($stmt);
        }
        mysqli_close($link);
        }
?>
