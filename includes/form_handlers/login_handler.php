<?php

if(isset($_POST['login_button'])){
    $user_name = $_POST['log_email'];     //sanitize email
    $_SESSION['log_email'] = $user_name;        //store email into session variable

    $password = md5($_POST['log_password']);    //get password
    $check_database_query = mysqli_query($con,"SELECT * FROM users WHERE username='$user_name' and password='$password'");
    $check_login_qeury = mysqli_num_rows($check_database_query);

    if($check_login_qeury==1){
        $row = mysqli_fetch_array($check_database_query);
        $username = $row['username'];

        $user_closed_query = mysqli_query($con,"SELECT * FROM users WHERE email='$email' AND user_closed='yes'");
        if(mysqli_num_rows($user_closed_query)==1){
            $reopen_account = mysqli_query($con,"UPDATE users SET user_closed='no' WHERE EMAIL='$email'");
        }

        $_SESSION['username']=$username;

        header("Location:index.php");
        exit();
    }
    else{
        array_push($error_array,"Email or password was incorrect<br>");
    }
}
?>
