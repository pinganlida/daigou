<?php
session_start();
if($_GET['action'] == "logout")
{
	unset($_SESSION['id']);
	unset($_SESSION['username']);
	session_destroy();	
}

if(isset($_SESSION['username']))	
{
	$username = $_SESSION['username'];
	$smarty->assign("username",$username,true);
	$smarty->assign("loginmessage","my.php",true);
	$smarty->assign("logoutmessage","index.php?action=logout",true);
	$smarty->assign("islogin",1);
}	else{
	$smarty->assign("islogin",0);
}
?>