<?php
require('./libs/Smarty.class.php');

$smarty = new Smarty;

include_once './include/include.php';

$smarty->assign("Name","ע��",true);

if(isset($_POST['submit']))
{ 
	//�ύ���ҳ��
	$username = $_POST['username'];
	$password = $_POST['password'];
	$repassword = $_POST['repass'];
	$email = $_POST['email'];
	
	if(empty($username))
	{
		$error .= '�û�������Ϊ��<br>';
	}
	if(empty($password))
	{
		$error .= '���벻��Ϊ��<br>';
	}
	if(empty($repassword))
	{
		$error .= '�ٴ��������벻��Ϊ��<br>';
	}
	if(empty($email))
	{
		$error .= '���䲻��Ϊ��<br>';
	}
	if(strlen($password) < 6)
	{
		$error .= '���볤�Ȳ���С��6λ<br>';
	}
	if($_POST['password']!=$_POST['re_password'])
	{
		$error .= '2�����벻һ��<br>';
	}
/*	if(!preg_match('/^[\w\x80-\xff]{3,15}$/', $username))
	{
		$error .= '�û�����ƥ��<br>';
	}
	if(!preg_match('/^w+([-+.]w+)*@w+([-.]w+)*.w+([-.]w+)*$/', $email))
	{
		$error .= '���䲻ƥ��<br>';
	} */
}	
//δ�ύ��ҳ�棬 ��ʾ�����û��������룬�����ʼ�
else
{
	
}
	/*if(success)
	{
		//����ɹ������һ����ʾҳ�棨general����ʾҳ��)
	}
	else
	{
		//���ʧ��,�򷵻�����ҳ�棬���ң���ʾ����ĵط�
		//�ѳ�����Ϣ�ŵ�һ���������������ҳ�棬��ʾ���û�
	}	*/
	


//$smarty->assign("header2",$smarty->fetch("header2.tpl"));


if(isset($error))
{
	$smarty->assign("Error",$error,true);
	unset($error);
}
$smarty->display('register.tpl');

?>
