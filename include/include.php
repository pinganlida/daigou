<?php
//$smarty->force_compile = true;
$smarty->debugging = false;
$smarty->caching = false;
$smarty->cache_lifetime = 120;
session_start();
function issessionstart()
{
	if(isset($_SESSION['username']))
		return true;
	else 
		return false;
}

if($_SERVER["SERVER_NAME"]=="web420939.dnsvhost.com")
// 	$domainname="http://www.upxpost.com";
	$domainname=".";
else
	$domainname="http://localhost/daigou";

foreach ($_GET as $get_var)
{
	if(!preg_match('/^\w+$/i', $get_var))
	{
		die("what do u wanna do?");
	}			
}


?>