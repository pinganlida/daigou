<?php
session_start();

require('./libs/Smarty.class.php');
require('./include/mysql.php');

$smarty = new Smarty;
$db = new mysqlconnect();

include_once './include/include.php';
require('./include/juglogin.php');
session_start();

//ע����¼
if($_POST['submit'])
{

	$username = $_POST['username'];
	$password = MD5($_POST['password']);

	//����û����������Ƿ���ȷ

	$sql = "select * from users where username='$username' and password = '$password'";
	//echo $sql;
	$arr = $db->query_array($sql);
	//$arr = array(1);

	if(count($arr)>0)
	{
		//��¼�ɹ�
		$_SESSION['username'] = $username;
		$_SESSION['id'] = $arr[id];
		$smarty->assign("logoutmessage","login.php?action=logout",true);
		header("Location: index.php");
	}
	else
	{
		$smarty->assign("message","��¼ʧ��,�����µ�¼");
		//$smarty->assign("link","��¼ʧ�ܣ� <a href=\"login.php\">���µ�¼</a>");
	}
}
$smarty->display('login.tpl');
$db->disconnect();
?>