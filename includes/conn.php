<?php 

$servername = "localhost";  // Server name (typically 'localhost' or IP address)
$username = "phpmyadmin"; // Database username
$password = "9p7OhMw0IFkY"; // Database password
$dbname = "mySite";   // Database name

// Create a connection using MySQLi
$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>