<?php
session_start();

require('./libs/Smarty.class.php');
require('./include/mysql.php');

$smarty = new Smarty;
$db = new mysqlconnect();

include_once './include/include.php';
require('./include/juglogin.php');
session_start();

//注销登录
if($_POST['submit'])
{

	$username = $_POST['username'];
	$password = MD5($_POST['password']);

	//检测用户名及密码是否正确

	$sql = "select * from users where username='$username' and password = '$password'";
	//echo $sql;
	$arr = $db->query_array($sql);
	//$arr = array(1);

	if(count($arr)>0)
	{
		//登录成功
		$_SESSION['username'] = $username;
		$_SESSION['id'] = $arr[id];
		$smarty->assign("logoutmessage","login.php?action=logout",true);
		header("Location: index.php");
	}
	else
	{
		$smarty->assign("message","登录失败,请重新登录");
		//$smarty->assign("link","登录失败！ <a href=\"login.php\">重新登录</a>");
	}
}
$smarty->display('login.tpl');
$db->disconnect();
?>