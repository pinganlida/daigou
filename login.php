<?php
require('./libs/Smarty.class.php');

$smarty = new Smarty;

include_once './include/include.php';

session_start();

//ע����¼
if($_GET['action'] == "logout")
{
	unset($_SESSION['userid']);
	unset($_SESSION['username']);
	echo 'ע����¼�ɹ�������˴� <a href="login.html">��¼</a>';
	exit;
}

if(!isset($_POST['submit']))
{
	exit('�Ƿ�����!');
}


$username = $_POST['username'];
$password = MD5($_POST['password']);



//�������ݿ������ļ�

// ����ʵ�ʸĶ�
//include('conn.php');

//����û����������Ƿ���ȷ
$check_query = mysql_query("select uid from user where username='$username' and password='$password' limit 1");
if($result = mysql_fetch_array($check_query))
{
	//��¼�ɹ�
	$_SESSION['username'] = $username;
	$_SESSION['userid'] = $result['uid'];
	echo $username,' ��ӭ�㣡���� <a href="my.php">�û�����</a><br />';
	echo '����˴� <a href="login.php?action=logout">ע��</a> ��¼��<br />';
	exit;
} 
else 
{
	exit('��¼ʧ�ܣ�����˴� <a href="./index.php;">����</a> ����');
}

$smarty->display('login.tpl');
?>