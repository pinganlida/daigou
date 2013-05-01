<?php
session_start();
if(isset($_SESSION['username']))	
{
	$username = $_SESSION['username'];
	$smarty->assign("username",$username,true);
	$smarty->assign("loginmessage","my.php",true);
	$smarty->assign("logoutmessage","login.php?action=logout",true);
}	
else 
{
	echo "hahahahhahaha";
}
?>