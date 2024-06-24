<!-- DB connection -->
<?php
$servername = "sql112.infinityfree.com";
$username = "if0_36741158";
$password = "4aPa3ryleNu7y";
$dbname = "if0_36741158_college_predictor";
// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>