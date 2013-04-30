<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');

$smarty = new Smarty;
$db = new mysqlconnect();

include_once './include/include.php';

session_start();

//注销登录
if($_GET['action'] == "logout")
{
	unset($_SESSION['id']);
	unset($_SESSION['username']);
	echo '注销登录成功！点击此处 <a href="login.html">登录</a>';
	exit;
}

if($_POST['submit'])
{




	$username = $_POST['username'];
	$password = MD5($_POST['password']);



	//包含数据库连接文件

	// 根据实际改动
	//include('conn.php');

	//检测用户名及密码是否正确

	$sql = "select * from users where username='$username' and password = '$password'";
	//echo $sql;
	$arr = $db->query_array($sql);
	//$arr = array(1);

	if(count($arr)>0)
	{
		//登录成功
		$_SESSION['username'] = $username;
		$_SESSION['id'] = $result['id'];
		echo $username,' 欢迎你！进入 <a href="my.php">用户中心</a><br />';
		echo '点击此处 <a href="login.php?action=logout">注销</a> 登录！<br />';
		//exit;
		
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