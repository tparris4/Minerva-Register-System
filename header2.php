<?php
session_start();
include "session.php";
?>

<html>
    <head>
    
        <title>Header</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="style.css">

    </head>
    <body>
                <header>
        <p><a href="Minerva University3.html"><img src="Minerva University Logoo.png" height="100" width="100" alt="background"></a></p>
        <ul>
            <li><a href = "index.php">Home</a></li>
            <div align="right">
                <a href="logout.php" class="button">Logout</a><br>
            <p id="date"></p>
<p>
<script> document.write(new Date().toLocaleDateString()); </script>
</p>
            </div>
            
        </ul>


        </header>
        