<!DOCTYPE html>
<?php
require "header2.php";
?>
    <h2>Choose Semester</h2>
    <!--
Check holds
-->

<?php 
//hold conflict
/*
 $sql = "SELECT student.Stud_ID, user.First_Name, user.Last_Name,  holds.Hold_Type, holds.Hold_Description, holdstatus.HoldStatus
       FROM holds,holdstatus,student, user
       WHERE user.user_ID = '" . $_SESSION['user_id'] . "'
           AND user.user_ID = student.Stud_ID AND
       holdstatus.HS_HoldID = holds.Holds_ID 
       AND student.Stud_ID = holdstatus.HS_StudentID";

   $rownumber = 0;
   if ($result = mysqli_query($conn, $sql)){

       
    if(mysqli_num_rows($result) > 0) {

      

    
      while($row = mysqli_fetch_array($result)){

          echo "check1";
         $_SESSION['HoldSet'] = 1;
         header("Location: Student.php");
       }
   }}  
 * 
 */
?>
 <div id="Homepagecontainer">
      <div id="main">
      <section class="wrapper">
      <div class="btn-group" style="width:75%">
          <button style="width:11.11%"><a href="ChooseDepartment.php"><?php $_SESSION['Fall2019'] = 1?>Fall 2019</a></button>
          <br> <br> <br><button style="width:11.11%"><a href="ChooseDepartment.php"><?php $_SESSION['Spring 2020'] =1 ?>Spring 2020</a></button>

      </div>
      </section>
      </div>

    <a href="ChooseDepartment.php"<?php $_SESSION['Fall2019'] = 1?>>Fall 2019</a>
    
    <a href="ChooseDepartment.php" <?php $_SESSION['Spring 2020'] =1 ?> >Spring 2020</a>


<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<?php
           require "footer.php";
           ?>
   
   
</body>
</html>

