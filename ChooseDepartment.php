<!DOCTYPE html>

<?php
require "header2.php";
?>
    <h2>Choose Department</h2>

    <ul>
    <a href ="Biologycoursesearch.php">Biology</a>
        <a href="Artcoursesearch.php">Art</a>
    <a href ="Biologycoursesearch.php">Biology</a>
    <a href ="Businesscoursesearch.php">Business</a>
    <a href ="compscicoursesearch.php">Computer Science</a>
    <a href ="mathcoursesearch.php">Math</a>
    <a href ="humcoursesearch.php">Humanities</a>
    <a href ="Englishcoursesearch.php">English</a>
    <a href ="Medicalcoursesearch.php">Medical</a>
    <a href ="Musiccoursesearch.php">Music</a>
    </ul>
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Semesters</button>
  <div id="myDropdown" class="dropdown-content">
      
    <a href="">2018</a>
    <a href="Artcoursesearch.php">Art</a>
    <a href ="Biologycoursesearch.php">Biology</a>
    <a href ="Businesscoursesearch.php">Business</a>
    <a href ="compscicoursesearch.php">Computer Science</a>
    <a href ="mathcoursesearch.php">Math</a>
    <a href ="humcoursesearch.php">Humanities</a>
    <a href ="Englishcoursesearch.php">English</a>
    <a href ="Medicalcoursesearch.php">Medical</a>
    <a href ="Musiccoursesearch.php">Music</a>
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
<br>
<br>
<br>
<br>
<br>
<br><br><br>


<p>
<?php
           require "footer.php";
           ?></p>
   <!--
   <form action ="Biologycoursesearch.php" method ="post">
                <input type="checkbox" name="S" id="Checkbox" value="item1">
                <input type ="SUBMIT" name="Add" id="Submit" value="Submit">
   
   
         if (isset($_POST['checkbox[$.rownumber]'])){
          $_SESSION['coursechosen'] = $_POST['S'];
          
          echo ("{$_SESSION['coursechosen']}");
          window.location.href = "Courseadd.php";
      }
   
   
    if (isset($_POST['Submit'])){
          $_SESSION['coursechosen'] = $_POST['Checkbox'];
          
          echo ("{$_SESSION['coursechosen']}");
          window.location.href = "Courseadd.php";
      }
   -->
   
</body>
</html>

