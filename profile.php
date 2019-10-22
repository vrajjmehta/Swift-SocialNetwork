<?php 
include("includes/header.php");
include("includes/classes/User.php");
include("includes/classes/Post.php");


if(isset($_GET['profile_username'])) {
	$username = $_GET['profile_username'];
	$user_details_query = mysqli_query($con, "SELECT * FROM users WHERE username='$username'");
	$user_array = mysqli_fetch_array($user_details_query);

	$num_friends = (substr_count($user_array['friend_array'], ",")) - 1;

	$birthday = date("d-m");
}



if(isset($_POST['remove_friend'])) {
	$user = new User($con, $userLoggedIn);
	$user->removeFriend($username);
}

if(isset($_POST['add_friend'])) {
	$user = new User($con, $userLoggedIn);
	$user->sendRequest($username);
}
if(isset($_POST['respond_request'])) {
	header("Location: requests.php");
}

 ?>

 	<style type="text/css">
	 	.wrapper {
	 		margin-left: 0px;
			padding-left: 0px;
	 	}

 	</style>
	
 	<div class="profile_left">
 		<img src="<?php echo $user_array['profile_pic']; ?>">

 		<div class="profile_info">
 			<p><?php echo "Posts: " . $user_array['num_posts']; ?></p>
 			<p><?php echo "Likes: " . $user_array['num_likes']; ?></p>
 			<p><?php echo "Friends: " . $num_friends ?></p>
 		</div>

 		<form action="<?php echo $username; ?>" method="POST">
 			<?php 
 			$profile_user_obj = new User($con, $username); 
 			if($profile_user_obj->isClosed()) {
 				header("Location: user_closed.php");
 			}

 			$logged_in_user_obj = new User($con, $userLoggedIn); 

 			if($userLoggedIn != $username) {

 				if($logged_in_user_obj->isFriend($username)) {
 					echo '<input type="submit" name="remove_friend" class="danger" value="Remove Friend"><br>';
 				}
 				else if ($logged_in_user_obj->didReceiveRequest($username)) {
 					echo '<input type="submit" name="respond_request" class="warning" value="Respond to Request"><br>';
 				}
 				else if ($logged_in_user_obj->didSendRequest($username)) {
 					echo '<input type="submit" name="" class="default" value="Request Sent"><br>';
 				}
 				else 
 					echo '<input type="submit" name="add_friend" class="success" value="Add Friend"><br>';

 			}
 			?>
 		</form>
		 <label class="birthday">
			Wish <?php echo $user_array['first_name'];?> Happy Birthday on<br>
			<?php echo $birthday; ?>
		 <label>
 	</div>


	<div class="main_column column">
		
		<h1>Mates</h1>
		<?php
		$friends_query = mysqli_query($con,"SELECT friend_array FROM users WHERE username='$username'");
		if(mysqli_num_rows($friends_query) > 0) {
			$num = 1;
			$row = mysqli_fetch_array($friends_query);
			$friend = $row['friend_array'];
			$friend_array = explode(",",$friend);

			while($num < sizeof($friend_array)) {
				
				$search_name_query = mysqli_query($con,"SELECT first_name,last_name FROM users WHERE username='$friend_array[$num]'");
				$user_details = mysqli_fetch_array($search_name_query);
				?>
				<h6>
				<a href="<?php echo $friend_array[$num]; ?>">
				<?php
				echo $user_details['first_name'] . " " . $user_details['last_name'];
				?>
				</a>
				</h6>
				<?php
			
			$num++;
			}
		}
		?>
	</div>


	<div class="main_column2 column">
		<?php
			$program_query = mysqli_query($con,"SELECT program,home_suburb FROM user_details WHERE username='$username'");
			$other_details = mysqli_fetch_array($program_query);
			$program = $other_details['program'];
			$suburb = $other_details['home_suburb'];
		?>
		
		<h2>Program:<?php echo $program;?><h2>

		<h4>Courses taken<h4>

		<table>
		<tr>
    	<th>Year</th>
    	<th>Semester</th>
   	 	<th>Course</th>
 	 	</tr>
		<?php
			$courses_query = mysqli_query($con,"SELECT year,sem,course_id FROM courses WHERE username='$username'");
			if(mysqli_num_rows($courses_query) > 0) {
				$num = 1;
				while($num <= (mysqli_num_rows($courses_query))) {
					$row = mysqli_fetch_array($courses_query);
					$year = $row['year'];
					$sem = $row['sem'];
					$course_id = $row['course_id'];
				?>
				<tr>
   	 			<td><?php echo $year;  ?></td>
    			<td><?php echo $sem;  ?></td>
    			<td><?php echo $course_id;  ?></td>
  				</tr>
				<?php
				$num++;
				}
			}


		?>
		</table>
		<h4>Home Suburb:<?php echo $suburb; ?><h4>	
	</div>
	</div>
</body>
</html>