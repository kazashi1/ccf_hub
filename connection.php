<?php
$servername = "localhost";
$username = "root";  
$password = "";       
$dbname = "ccf_hub";

$conn = new mysqli($servername, $username, $password, $dbname);

// Check if connected to server
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>