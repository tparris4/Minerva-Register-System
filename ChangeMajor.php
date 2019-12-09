
<?php
require "header2.php";
?>
<script>
    
    function myFunction() {
  document.getElementById("myDropdown").classList.toggle("show");
  <dialog open>Please wait 3-5 business days for your request to be reflected in your account</dialog>;
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
</head>
<body>
        <h2>Change Major</h2>
    
        <p>Current Major: <?php
        if(isset($_SESSION['undergradid'])){
            echo $_SESSION['MajorName'];
        }
        /*$sql = "SELECT u.MajorID, m.M_Name FROM undergraduate AS u AND major AS m WHERE {$_SESSION['user_id']} = 
                 AND m.Major_ID = u.MajorID";
        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                echo "<br>" . $row['M_Name'];
            }
        }
           else{
               echo "Major not found";
           }
                
        }
         */ else if(isset($_SESSION['graduateid'])){
         
        $sql = "SELECT u.MajorID, m.M_Name FROM graduate AS u AND major AS m WHERE {$_SESSION['user_id']} = {$_SESSION['graduateid']}
                 AND m.Major_ID = u.MajorID";
        $result = $conn->query($sql);
        if($result->num_rows > 0){
            while($row = $result->fetch_assoc()){
                echo "<br>" . $row['M_Name'];
            }
        }
           else{
               echo "Major not found";
           }
                
        }
        ?></p>
        
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        <br>
        
        
        <p align="center">Select the major</p>
        <div class="dropdown">
            <button onclick="PromptFunction()" class="dropbtn">Choose Major</button>
        <div id="myDropdown" class="dropdown-content">
            <option value="Biology">Biology</option>
            <option value="Math">Math</option>
            <button onclick="PromptFunction()" class="dropbtn">Choose Major</button>
        </div>
        </div>
        
        
        

           <?php
           require "footer.php";
           ?>
   
    