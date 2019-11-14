<?php
 $dbhost = 'localhost';
   $dbuser = 'root';
   $dbpass = '';
   $dbname = 'register_system';
   $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
   
   if(! $conn ) {
      die('Could not connect: ' . mysqli_error());
   }
   echo 'Connected successfully</br>';
   session_start();
   ?>
<html>
<head>
<?php 
require "header2.php";

if(isset($_POST['redirect'])){
    header('Location: '.$_POST['redirect']);
    exit;
}
?>
    <meta charset = "utf-8">
<link rel="stylesheet" type="text/css" href="style.css">
</style>

<script type="text/javascript">
    function goToNewPage()
    {
        var url = document.getElementById('MSchedule').value;
        if(url != 'none'){
                    window.location.href = url;
        }
    }
    </script>
</head>
<body>

    <form method="post" id="MSchedule">
    <select name="redirect" id="pages">
        <option value="none" selected>Choose year</option>
        <option value="MasterSchedule1.php">Fall 2019</option>
        <option value="MasterSchedule2.php">Spring 2020</option>
        <option value="MasterSchedule.html">Test</option>
    </select>
        <input type="submit" value="Submit"/>
    </form>
    <br>
    <br>
    <br><br><br><br><br>
    
    
    
    
 
</body>
<?php
require 'footer.php'
?>
</html>

