<!DOCTYPE html>
<?php
require "header2.php";
?>
    <h2>Choose Semester</h2>
    <!--
Check holds
-->

<?php 
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


    <a href="ChooseDepartment.php"<?php $_SESSION['Fall2019'] = 1?>>Fall 2019</a>
    
    <a href="ChooseDepartment.php" <?php $_SESSION['Spring 2020'] =1 ?> >Spring 2020</a>
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Semesters</button>
  <div id="myDropdown" class="dropdown-content">
      
    <a href="">2018</a>
    <a href="ChooseDepartment.php" <?php $_SESSION['Fall2019'] = 1 ?>>Fall 2019</a>
    <a href="ChooseDepartment.php" <?php $_SESSION['Spring 2020'] =1 ?> >Spring 2020</a>
  </div>
</div>

<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}

// Close the dropdown if the user clicks outside of it
window.onclick = function(event) {
  if (!event.target.matches('.dropbtn')) {
    var dropdowns = document.getElementsByClassName("dropdown-content");
    var i;
    for (i = 0; i < dropdowns.length; i++) {
      var openDropdown = dropdowns[i];
      if (openDropdown.classList.contains('show')) {
        openDropdown.classList.remove('show');
      }
    }
  }
}
</script>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<?php
           require "footer.php";
           ?>
   
   
</body>
</html>

