<?php
session_start();

require('./libs/Smarty.class.php');
require('./include/mysql.php');

$smarty = new Smarty;
$db = new mysqlconnect();

include_once './include/include.php';
session_start();

//ע����¼
if($_POST['submit'])
{

	$adminusername = $_POST['adminusername'];
	$password = MD5($_POST['password']);

	//����û����������Ƿ���ȷ

	$sql = "select * from admin where username='$adminusername' and password = '$password'";
	//echo $sql;
	$arr = $db->query_array($sql);
	//$arr = array(1);

	if(count($arr)>0)
	{
		//��¼�ɹ�
		$_SESSION['adminusername'] = $adminusername;
		//$_SESSION['id'] = $arr[0][id];
		//$smarty->assign("logoutmessage","login.php?action=logout",true);
		header("Location: adminmenu.php");
	}
	else
	{
		$smarty->assign("message","��¼ʧ��,�����µ�¼");
		//$smarty->assign("link","��¼ʧ�ܣ� <a href=\"login.php\">���µ�¼</a>");
	}
}
$smarty->display('adminlogin.tpl');
$db->disconnect();
?>