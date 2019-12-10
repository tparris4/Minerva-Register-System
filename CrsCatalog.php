
<?php 
require "header3.php";
?>
   

<h2>Course Catalog</h2>
<div class="topnav">
  <div class="search-container">
  <form action="CrsCatalog.php">
  <input type="text" placeholder="Search by Department" id="Search" onkeyup = "search_department()">
  <button type="submit" id = "SearchButton">Submit</button>
</form>
</div>
</div>

        <ul>  
            <li><a href="CrsCatalogHumanities.php">Humanities</a></li>
    <li><a href="CrsCatalogMath.php">Math</a></li>
    <li><a href="CrsCatalogCompSci.php">Computer Science</a></li>
    <li><a href="CrsCatalogBusiness.php">Business</a></li>
    <li><a href="CrsCatalogArt.php">Art</a></li>
    <li><a href="CrsCatalogBiology.php">Biology</a></li>
    <li><a href="CrsCatalogMedical.php">Medical</a></li>
    <li><a href="CrsCatalogEnglish.php">English</a></li>
   <li> <a href="CrsCatalogMusic.php">Music</a></li>
        </ul> </li>




 <?php 
           // $conn = mysqli_connect($dbhost, $dbuser, $dbpass,$dbname);
            $sql = "SELECT DISTINCT c.C_DeptName, c.C_Name, c.C_Code, c.C_CreditAmt, c.C_Description 
                FROM course AS c 
                
                GROUP BY c.C_Code";
            if ($result = mysqli_query($conn, $sql)){
                if(mysqli_num_rows($result) > 0){
            
                    echo "<table>"; 
                    echo"<th>Course_Name</th>";            
                    echo"<th>Course_Description</th>";
                    echo"<th>Course_Code</th>";
                    echo"<th>Course_Credit Amount</th>";
                    echo"<th>Department</th>";
                    echo"</th>";
                    
                   

                   while($row = mysqli_fetch_array($result)){
                    echo "<tr>";
                    echo"<td>" . $row['C_Name'] . "</td>";
                    echo"<td>" .  $row['C_Description'] . "</td>";
                    echo"<td>" . $row['C_Code'] . "</td>";
                    echo"<td>" .  $row['C_CreditAmt'] . "</td>";
                    
                    echo"<td>" . $row['C_DeptName'] . "</td>";
                    /*if(prerequisites1.Prerequ_ID < prerequisites1.P_CourseID && prerequisites1.P_courseID == course.Course_ID){
                    echo"<td>" . $row['C_Name'] . "</td>";}
                    else{
                        echo"<th>None</th>";
                    } */
                    echo"</tr>";
                    }
                echo "</table>";
      mysqli_free_result($result);
    } else {
      echo "Not found";
    }
   } else{
    echo "Error: could not execute $sql. " . mysqli_error($conn);
   }
   mysqli_close($conn);
?>

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

function search_department(){
  var input = document.getElementById("Search").value;
  input.toString();
  var input2=input.toLowerCase();
  if(input2 === "business" || input2 === "bus")
  {
    window.location.href = "CrsCatalogBusiness.php";
  }
  else if(input2 === "math" || input2 === "mathematics"){
    window.location.href = "CrsCatalogMath.php";
  }
  else if(input2 === "eng" || input2 === "english"){
    window.location.href = "CrsCatalogEnglish.php";
  }
  else if(input2 === "hum" || input === "humanities"){
    window.location.href = "CrsCatalogHum.php";
  }
  else if(input2 === "comp sci" || input2 === "computer science"){
    window.location.href = "CrsCatalogCompSci.php";
  }
  else if(input2 === "mus" || input2 === "music"){
    window.location.href = "CrsCatalogMusic.php";
  }
  else if(input2 === "bio" || input2 === "biology"){
    window.location.href = "CrsCatalogBiology.php";
  }
  else if(input2 === "med" || input2 === "medical"){
    window.location.href = "CrsCatalogMedical.php";
  }
  else if(input2 === "art"){
    window.location.href = "CrsCatalogArt.php";
  }
  else{
      printf("Subject Not Found");
  }

}
</script>

<?php
include "footer.php";
?>
