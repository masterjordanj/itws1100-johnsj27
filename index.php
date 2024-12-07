<?php include('includes/codeheader.php'); ?>
<link rel="stylesheet" href="style.css" type="text/css">
<title>Home Page</title>
</head>
<body>
   

   <?php include('includes/header.php'); ?>

   <div id="row">
      <div id="left"> 
         <img src="labs/lab03/aboutphoto.jpeg" style="width:300px;height: 450px;">
      </div>
      <div id="right">
      <?php
      session_start();
      //$_SESSION['name'] = 'Jordan';
      //$_SESSION['admin'] = '1';
      if (isset($_SESSION['name'])) {
         echo "<p>Welcome, {$_SESSION['name']}!</p>";
         echo '<a href="includes/logout.php">Logout</a>';
      } else {
      ?>
         <form action="includes/login.php" method="POST">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            <br>
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            <br>
            <button type="submit">Login</button>
         </form>
      <?php } ?>
         
      </div>
      <br>
      

   </div>
</body>

<?php include('includes/footer.php'); ?>