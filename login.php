<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');

$smarty = new Smarty;
$db = new mysqlconnect();

include_once './include/include.php';

session_start();

//ע����¼
if($_GET['action'] == "logout")
{
	unset($_SESSION['id']);
	unset($_SESSION['username']);
	echo 'ע����¼�ɹ�������˴� <a href="login.html">��¼</a>';
	exit;
}

if($_POST['submit'])
{




	$username = $_POST['username'];
	$password = MD5($_POST['password']);



	//�������ݿ������ļ�

	// ����ʵ�ʸĶ�
	//include('conn.php');

	//����û����������Ƿ���ȷ

	$sql = "select * from users where username='$username' and password = '$password'";
	//echo $sql;
	$arr = $db->query_array($sql);
	//$arr = array(1);

	if(count($arr)>0)
	{
		//��¼�ɹ�
		$_SESSION['username'] = $username;
		$_SESSION['id'] = $result['id'];
		echo $username,' ��ӭ�㣡���� <a href="my.php">�û�����</a><br />';
		echo '����˴� <a href="login.php?action=logout">ע��</a> ��¼��<br />';
		//exit;
		
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