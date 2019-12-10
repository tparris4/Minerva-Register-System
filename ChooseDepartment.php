<!DOCTYPE html>

<?php
require "header2.php";
?>

<!--
search bar to have parameters
e.g. text box for course name
e.g. drop down for section number's
e.g. text box for professor name, put in $id's
e.g. dropdown for times
use search with $ids
-->
    <h2>Choose Department</h2>

    <ul><li>
        <li><a href="Artcoursesearch.php">Art</a></li>
    <li><a href ="Biologycoursesearch.php">Biology</a></li>
   <li> <a href ="Businesscoursesearch.php">Business</a></li>
   <li> <a href ="compscicoursesearch.php">Computer Science</a></li>
  <li>  <a href ="mathcoursesearch.php">Math</a></li>
   <li> <a href ="humcoursesearch.php">Humanities</a></li>
 <li>  <a href ="Englishcoursesearch.php">English</a></li>
  <li>  <a href ="Medicalcoursesearch.php">Medical</a></li>
   <li> <a href ="Musiccoursesearch.php">Music</a></li>
        </li></ul>
    <ul><li>
            <div id="Homepagecontainer">
      <div id="main">
      <section class="wrapper">
      <div class="btn-group" style="width:100%">
             <button style="width:11.11%"><a href="Artcoursesearch.php">Art</a></button>
      <button style="width:11.11%"><a href="Biologycoursesearch.php">Biology</a></button>
      <button style="width:11.11%"><a href="Businesscoursesearch.php">Business</a></button>
      <button style="width:11.11%"><a href="compscicoursesearch.php">Computer Science</a></button>
      <button style="width:11.11%"><a href="mathcoursesearch.php">Math</a></button>
      <button style="width:11.11%"><a href="humcoursesearch.php">Humanities</a></button>
      <button style="width:11.11%"><a href="Englishcoursesearch.php">English</a></button>
      <button style="width:11.11%"><a href="Medicalcoursesearch.php">Medical</a></button>
      <button style="width:11.11%"><a href="Musiccoursesearch.php">Music</a></button>
 </div>
      </section>
      </div>
                </div>
        </li></ul>



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

