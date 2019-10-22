<?php
require 'config/config.php';
require 'includes/form_handlers/register_handler.php';
require 'includes/form_handlers/login_handler.php';
?>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome to Swift Social Network</title>
    <link rel="stylesheet" type="text/css" href="assets/css/register_style.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <script src="assets/js/register.js"></script>
</head>
<body>
    <?php
    
    if(isset($_POST['register_button'])){
        echo '
        <script>

        $(document).ready(function(){
            $("#first").hide();
            $("#second").show();
        });

        </script>
        ';
    }
    ?>

    <div class="wrapper">
        
        <div class="login_box">
            <div class="login_header">
                <h1>Swift Social Media </h1>
                Login or sign up below
            </div>

            <div id="first">
                <form action="register.php" method="POST">
                    <input type="text" name="log_email" placeholder="Username" value ="<?php 
                    if(isset($_SESSION['log_email'])){
                        echo $_SESSION['log_email'];
                    }?>" required>
                    <br>
                    <input type="password" name="log_password" placeholder="Password"><br>
                    <input type="submit" name="login_button" value="LOGIN"><br>

                    <?php if(in_array("Email or password was incorrect<br>",$error_array)) echo "Email or password was incorrect<br>" ?>
                    <a href="#" id="signup" class="signup"> Need an account?Register here </a>
                    
                </form>
            </div>

            <div id="second">
                <form action="register.php" method="POST">
                    <input type="text" name="reg_fname" placeholder="First Name" value ="<?php 
                    if(isset($_SESSION['reg_fname'])){
                        echo $_SESSION['reg_fname'];
                    }
                    ?>" required>
                    <br>
                    <?php if(in_array("Your first name be between 2 and 25 characters<br>",$error_array)) echo "Your first name be between 2 and 25 characters<br>" ?>

                    <input type="text" name="reg_lname" placeholder="Last Name" value ="<?php 
                    if(isset($_SESSION['reg_lname'])){
                        echo $_SESSION['reg_lname'];
                    }
                    ?>" required>
                    <br>
                    <?php if(in_array("Your last name be between 2 and 25 characters<br>",$error_array)) echo "Your last name be between 2 and 25 characters<br>" ?>

                    <input type="email" name="reg_email" placeholder="Email" value ="<?php 
                    if(isset($_SESSION['reg_email'])){
                        echo $_SESSION['reg_email'];
                    }
                    ?>" required>
                    <br>
                
                    <input type="email" name="reg_email2" placeholder="Confirm Email" value ="<?php 
                    if(isset($_SESSION['reg_email2'])){
                        echo $_SESSION['reg_email2'];
                    }
                    ?>" required>
                    <?php if(in_array("Email already in use<br>",$error_array)) echo "Email already in use<br>"; 
                    else if(in_array("Invalid email format<br>",$error_array)) echo "Invalid email format<br>"; 
                    else if(in_array("Emails dont match<br>",$error_array)) echo "Emails dont match<br>"; ?>
                    
                    <br>
                    <input type="password" name="reg_password" placeholder="Password" required>
                    <br>
                    <input type="password" name="reg_password2" placeholder="Confirm Password" required>
                    <br>
                    <?php if(in_array("Your password do not match<br>",$error_array)) echo "Your password do not match<br>"; 
                    else if(in_array("Your password can contain only English characters or number<br>",$error_array)) echo "Your password can contain only English characters or number<br>";?>

                    <input type="text" name="username" placeholder="Username" value ="<?php 
                    if(isset($_SESSION['username'])){
                        echo $_SESSION['username'];
                    }
                    ?>"required>
                    <?php if(in_array("Username already exists<br>",$error_array)) echo "Username already exists<br>"; ?>
                    <br>

                    <!--birthday-->
                    <label for="brithday">Birthday:</label>
                    <input type="date" name="birthday" value ="<?php 
                    if(isset($_SESSION['birthday'])){
                        echo $_SESSION['birthday'];
                    }
                    ?>" required>

                    <br>

                    <input type="submit" name="register_button" value="Register">
                    <?php if(in_array("<span style='color:#14C800;'>You are all set! Go ahead and Login!</span><br>",$error_array)) echo "<span style='color:#14C800;'>You are all set! Go ahead and Login!</span><br>" ?>
                    <a href="#" id="signin" class="signin"> Already have an account? Sign in here </a>
                </form>
            </div>
        </div>
    </div>
</body>
</html>