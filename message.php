<?php
require "header2.php";
?>

<form action="mailto:contact@example.com" method=”POST”

enctype=”multipart/form-data”

name=”EmailTestForm”>

Email:<br>

<input type=”text” size=”24″ name=”VisitorName”><br><br>

Message:<br> <textarea name=”VisitorComment” rows=”4″ cols=”20″>

</textarea><br><br> <input type=”submit” value=”Submit”> </form>

<form action="mailto:someone@example.com" method="post" enctype="text/plain">
</form>

<?php
require "footer.php";
?>