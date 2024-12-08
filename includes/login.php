<?php
session_start();
include('conn.php'); // Contains DB connection code

$username = $_POST['username'];
$password = $_POST['password'];

$sql  = "SELECT count(1) FROM mySiteUsers WHERE username = ? and password = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $username, $password);
$stmt->execute();
$stmt->bind_result($found);
$stmt->fetch();
if ($found){
    $user = $result->fetch_assoc();
    $_SESSION['user'] = $user['username'];
    $_SESSION['name'] = $user['name'];
    $_SESSION['pswd'] = $user['password'];
    $_SESSION['admin'] = $user['admin'];

    header("Location: ../index.php");
    exit();
} else {
  echo "<p>Error: Invalid User ID or Password</p>";
  header("Location: ../index.php");
  exit();
}


?>
