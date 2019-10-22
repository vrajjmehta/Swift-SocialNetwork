<?php

//Declaring to variables to prevent errors

$fname = "";
$lame = "";
$em = "";
$em2 = "";
$password = "";
$password2 = "";
$date = "";
$error_array = array();

if(isset($_POST['register_button'])){   //button clicked

    //Registertion form values

    //first name
    $fname = strip_tags($_POST['reg_fname']);   //remove html tags
    $fname = str_replace(' ','',$fname);        //remove spaces
    $fname = ucfirst(strtolower($fname));       //uppercase first letter
    $_SESSION['reg_fname'] = $fname;            //stores first name into session variable 
   
    //last name
    $lname = strip_tags($_POST['reg_lname']);   //remove html tags
    $lname = str_replace(' ','',$lname);        //remove spaces
    $lname = ucfirst(strtolower($lname));       //uppercase first letter
    $_SESSION['reg_lname'] = $lname;            //stores last name into session variable 

    //email
    $em = strip_tags($_POST['reg_email']);   //remove html tags
    $em = str_replace(' ','',$em);        //remove spaces 
    $em = ucfirst(strtolower($em));       //uppercase first letter
    $_SESSION['reg_email'] = $em;            //stores email  into session variable 

    //confirm email
    $em2 = strip_tags($_POST['reg_email2']);   //remove html tags
    $em2 = str_replace(' ','',$em2);        //remove spaces
    $em2 = ucfirst(strtolower($em2));       //uppercase first letter
    $_SESSION['reg_email2'] = $em2;            //stores email2  into session variable 

    //pass
    $password = strip_tags($_POST['reg_password']);   //remove html tags

    //confirm pass
    $password2 = strip_tags($_POST['reg_password2']);   //remove html tags
  
    $birth_date = $_POST['birthday'];  //birth date

    $uname = $_POST['username'];

    if($em == $em2){
        //check email in valid format
        if(filter_var($em,FILTER_VALIDATE_EMAIL)){
            $em = filter_var($em,FILTER_VALIDATE_EMAIL);

            //check email already exists
            $e_check = mysqli_query($con,"SELECT email FROM users WHERE email ='$em'");

            //count number of rows returned
            $num_rows = mysqli_num_rows($e_check);

            if($num_rows >0 ){
                array_push($error_array,"<br>Email already in use<br>");            
            }
        }
        else{
            array_push($error_array,"Invalid email format<br>");
        }
    }
    else{
        array_push($error_array,"Emails dont match<br>");
    }

    if(strlen($fname)>25 || strlen($fname)<2){
        array_push($error_array,"Your first name be between 2 and 25 characters<br>");
    }
    if(strlen($lname)>25 || strlen($lname)<2){
        array_push($error_array,"Your first name be between 2 and 25 characters<br>");
    }
    if($password!=$password2){
        array_push($error_array,"Your password do not match<br>");
    }
    else{
        if(preg_match('/[^A-Za-z0-9]/',$password)){
            array_push($error_array,"Your password can contain only English characters or number<br>");
        }
    }

    $u_check = mysqli_query($con,"SELECT username FROM users WHERE username ='$uname'");     
    $num_rows = mysqli_num_rows($u_check);
    if($num_rows >0 ){
        array_push($error_array,"Username already exists<br>");            
    }


    if(empty($error_array)){
        $password = md5($password);     //encrypt password before sending to database

        $username = $uname;
        
        //Profile picture assignment
        $profile_pic = "dataset-medium/$username/profile.jpg";
        if(!file_exists($profile_pic)){
            $profile_pic="assets/images/profile_pics/defaults/head_red.png";
        }

        $query = mysqli_query($con,"INSERT INTO users VALUES(null,'$fname','$lname','$username','$em','$password','$birth_date','$profile_pic','0','0','no',',')");

        array_push($error_array,"<span style='color:#14C800;'>You are all set! Go ahead and Login!</span><br>");

        //clear session variables
        $_SESSION['reg_fname'] = "";
        $_SESSION['reg_lname'] = "";
        $_SESSION['reg_email'] = "";
        $_SESSION['reg_email2'] = "";

    }
}
?>