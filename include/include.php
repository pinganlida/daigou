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

if (!get_magic_quotes_gpc()) 
{
	!empty($_POST)     && Add_S($_POST);
	!empty($_GET)     && Add_S($_GET);
	!empty($_COOKIE) && Add_S($_COOKIE);
	!empty($_SESSION) && Add_S($_SESSION);
}
!empty($_FILES) && Add_S($_FILES);

function Add_S(&$array)
{
	if (is_array($array)) 
	{
		foreach ($array as $key => $value) 
		{
			if (!is_array($value)) 
			{
				$array[$key] = addslashes($value);
			}
			 else 
			{
				Add_S($array[$key]);
			}
		}
	}
}
/* 过滤所有GET过来变量------------------------------------------------------------- */
foreach ($_GET as $get_key=>$get_var)
{
	if (is_numeric($get_var)) 
	{
		$get[strtolower($get_key)] = get_int($get_var);
	} 
	else
	{
		$get[strtolower($get_key)] = get_str($get_var);
	}
}

/* 过滤所有POST过来的变量 */
foreach ($_POST as $post_key=>$post_var)
{
	if (is_numeric($post_var)) 
	{
		$post[strtolower($post_key)] = get_int($post_var);
	} 
	else 
	{
		$post[strtolower($post_key)] = get_str($post_var);
	}
}

/* 过滤函数 */
//整型过滤函数
function get_int($number)
{
	return intval($number);
}
//字符串型过滤函数
function get_str($string)
{
	if (!get_magic_quotes_gpc()) {
		return addslashes($string);
	}
	return $string;
}
?>