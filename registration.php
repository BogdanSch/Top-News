<?php
require_once "action.php";
include "html-parts/header.php";

$str_form = "<form  name='autoForm' action='registration.php' method='post' onSubmit='return overify_login(this);' >
 			 Логін: <input type='text' name='login'>
 			 Пароль: <input type='password' name='pas'>
 			 <input type='submit' name='go' value='Submit' class='btn btn-primary'>
 		     </form>";
if (!isset($_POST ['go'])) {
	echo $str_form; 
}
else {
	if (!check_log($_POST ['login'])) { 
		if (registration($_POST ['login'], $_POST ['pas'])) {
			echo "You've been successfully registered!<br/>";
			echo "<a href='index.php'>Home</a><br/>";
			echo "<a href='admin_panel.php'>Go to admin panel</a><br/>";
		}
	}
	else {
		echo $str_form;
		echo "This user already exists!";
	}
}
include "html-parts/footer.php";