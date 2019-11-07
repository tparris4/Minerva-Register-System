<?php
session_start();
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
            <li><a href = "ind.php">Home</a></li>
            
        </ul>
        <div class = "login-sys">
            <?php
            if (isset($_SESSION['email_add'])){
                echo '<form action="logout.php" method = "post">
                <button type="submit" name="login-submit>Submit</button>
                </form>';
            }
            else{
                
            
         echo   '<form action ="login.php" method="POST">
                <input type ="text" name="email_address" placeholder="Email Address">
                 <input type ="password" name="password" placeholder="Password">
                 <button type ="submit" name="login-submit" class="btn" value="login-submit">Submit</button>
            </form>';
                    
            }
            ?>
            <br>
            <br>
            <br>
            <br>
            <form action ="logout.php" method ="post">
                 <button type ="submit" name="logout-submit">Logout</button>
            </form>
        </div>
                
                </header>
        
