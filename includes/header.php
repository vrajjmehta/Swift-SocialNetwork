<?php
require 'config/config.php';

if(isset($_SESSION['username'])){
    $userLoggedIn = $_SESSION['username'];
    $user_details_query = mysqli_query($con,"SELECT * FROM users WHERE username='$userLoggedIn'");
    $user = mysqli_fetch_array($user_details_query);
}
else{
    header("Location: register.php");
}
?>
<html>
<head>
    <title>Social</title>
    <!-- Javascript -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="assets/js/bootstrap.js"></script>

     <!-- CSS -->
    <link rel="stylesheet" href="font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css">
</head>
<body>

    <div class="top_bar">
        <div class="logo">
            <a href="index.php"> Swift Social Media </a>
        </div>

    <nav>
        <a href="#">
            <?php echo $user['first_name']; ?>
        </a>
        <a href="#">
            <i class="fa fa-home" aria-hidden="true"></i>
        </a>
        <a href="#">
            <i class="fa fa-envelope" aria-hidden="true"></i>
        </a>
        <a href="#">
            <i class="fa fa-bell-o" aria-hidden="true"></i>
        </a>
        <a href="#">
            <i class="fa fa-users" aria-hidden="true"></i>
        </a>
        <a href="#">
            <i class="fa fa-cog" aria-hidden="true"></i>
        </a>
    </nav>

    </div>

    <div class="wrapper">