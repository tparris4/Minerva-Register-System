<!DOCTYPE html>
<?php
include "header.php";
?>

    <h2>Choose Values</h2>
    <h4>Days</h4>
    <form>
        <label class="checkbox-inline">
               <input type="checkbox" value =" "> Monday</label>
                <label class="checkbox-inline">
               <input type="checkbox" value =" "> Tuesday</label>
                <label class="checkbox-inline">
               <input type="checkbox" value =" "> Wednesday</label>
                <label class="checkbox-inline">
               <input type="checkbox" value =" "> Thursday</label>
                <label class="checkbox-inline">
               <input type="checkbox" value =" "> Friday</label>
    </form>
    <div id="box2" align="left">
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn">Times</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="">12:00-1:00</a>
    <a href="#about">2:00-3:00</a>
    <a href="#contact">5:00-6:00</a>
  </div>
</div>
    </div>
    
    
    <div id="box2" align="left">
    <div class="dropdown">
  <button onclick="myFunction2()" class="dropbtn">Professor</button>
  <div id="myDropdown2" class="dropdown-content">
    <a href="">John Doe</a>
    <a href="">John Dane</a>
    <a href="">John Done</a>
  </div>
</div>
    </div>
    
    
    <div id="box2" align="left">
    <div class="dropdown">
  <button onclick="myFunction3()" class="dropbtn">Subject</button>
  <div id="myDropdown3" class="dropdown-content">
    <a href="">Math</a>
    <a href="">Science</a>
    <a href="">Business</a>
  </div>
</div>
    </div>
    <div id="box2" align="left">
    <form action="/SearchPage.php">
        Course Number: <input type="text" name ="CourseName" value=" "><br>
        
        <input type="submit" value="Search">
    </form>
    </div>
<script>
/* When the user clicks on the button, 
toggle between hiding and showing the dropdown content */
function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
}
function myFunction2() {
  document.getElementById("myDropdown2").classList.toggle("show");
}
function myFunction3() {
  document.getElementById("myDropdown3").classList.toggle("show");
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

<?php
include "footer.php";
?>