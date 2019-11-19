<!DOCTYPE html>
<?php
session_start();
if (!isset($_SESSION['username']) || empty($_SESSION['username'])) {
      exit();
      

}

?>
<?php
require "header2.php";
?>

<body>
<?php
   $sql = "SELECT c.*, p.*, s.*, h.*  FROM course AS c 
           JOIN prerequisites1 AS p AND section AS s AND history AS s
           WHERE c.CDeptID= '130'";

   $rownumber = 0;
   if ($result = mysqli_query($conn, $sql)){

       
    if(mysqli_num_rows($result) > 0) {
      echo "<table>";
      echo "<tr>";
     echo "<th> </th>";
      echo "<th>C_Name</th>";
      echo "<th>C_Description</th>";
      echo "<th>CRN</th>";
      echo "<th>C_CreditAmt</th>";
      echo "<th>C_DeptName</th>";
      echo "<th>CourseLevel</th>";
      
    $rownumber = $rownumber + 1;
    
      while($row = mysqli_fetch_array($result)){
        echo "<tr>";
        echo "<td><input type='checkbox' name='checkbox[" . $rownumber . "]' value='". $rownumber . "' </td>";
        echo "<td>" . $row['C_Name'] . "</td>";
       echo "<td>" . $row['C_Description'] . "</td>";
       echo "<td>" . $row['CRN'] . "</td>";
       echo "<td>" . $row['C_CreditAmt'] . "</td>";
       echo "<td>" . $row['C_DeptName'] . "</td>";
       echo "<td>" . $row['CourseLevel'] . "</td>";
       echo "</tr>";
      
      }
      echo "</table>";
      
     if (isset($_POST['Submit'])){
          $_SESSION['coursechosen'] = $_POST['Checkbox'];
          
          echo ("{$_SESSION['coursechosen']}");
          header("Location: Courseadd.php");
      }
      mysqli_free_result($result);
       } else {
      echo "Not found";
    }
   }  else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn)
?>

    <form action ="Biologycoursesearch.php" method ="post">
                <input type="checkbox" name="S" id="Checkbox" value="item1">
                <input type ="SUBMIT" name="Add" id="Submit" value="Submit">
                
 <?php
           require "footer.php";
           ?>
   
   </body>


</html>


