<!DOCTYPE html>
<html lang="en">

<head>
   <meta charset="UTF-8">
   <link rel="stylesheet" href="../style.css" type="text/css">
   
   <script type="text/javascript" src="../resources/jquery-3.7.1.min.js"></script>
   <script type="text/javascript" src="lab08/lab8.js"></script>
   
   <title>Labs Page</title>
</head>

<body>
   
   <?php 
   include('../includes/header.php'); 
   
   
   
   
   
   ?>
   <div id="dynamic"></div>
   <?php 
   if (isset($_SESSION['admin'])){
      if ($_SESSION['admin']){
         ?>
         <form action="includes/addlab.php" method="POST">
            <label for="labno">Lab Number:</label>
            <input type="text" id="labno" name="labno" required>
            <br>
            <label for="title">Lab Title:</label>
            <input type="text" id="title" name="title" required>
            <br>
            <label for="description">Lab Description:</label>
            <input type="text" id="description" name="description" required>
            <br>
            <button type="submit">Add Lab</button>
         </form>
         <?php 
      }
   } 
   ?>
</body>

<?php include('../includes/footer.php'); ?>
<!-- 






-->