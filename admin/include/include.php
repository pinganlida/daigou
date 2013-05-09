<?php
//$smarty->force_compile = true;
$smarty->debugging = false;
$smarty->caching = false;
$smarty->cache_lifetime = 120;
session_start();
function issessionstart()
{
	if(isset($_SESSION['adminusername']))
		return true;
	else 
		return false;
}
?>