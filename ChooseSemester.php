<!DOCTYPE html>
<?php
require "header2.php";
?>
    <h2>Choose Semester</h2>

    
    
    <a href="ChooseDepartment.php">Fall 2019</a>
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Semesters</button>
  <div id="myDropdown" class="dropdown-content">
      
    <a href="">2018</a>
    <a href="ChooseDepartment.php">Fall 2019</a>
    <a href="ChooseDepartment.php">Spring 2020</a>
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

