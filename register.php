<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');
$smarty = new Smarty;
$db = new mysqlconnect();
include_once './include/include.php';
require('./include/juglogin.php');
$smarty->assign("Name","ע��",true);

$error="";

if($_POST['submit'])
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
	if($_POST['password']!=$_POST['repass'])
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

	
	if(!empty($error))
	{		
		$smarty->assign("Error",$error,true);
		unset($error);
	}
	else
	{
		$sql_query= "select * from users where username='$username';";
		$arr = $db->query_array($sql_query);
		if(count($arr)>0)
		{
			$smarty->assign("Error","�û�������",true);
		}
		else
		{
			$password = MD5($password);
			$regdate = time();
			$sql = "INSERT INTO users(username,password,email)VALUES('$username','$password','$email')";
			$id= $db->query_insert($sql);
			$_SESSION['username'] = $username;
			$_SESSION['id'] = $id;
			$smarty->assign("message","index.php",true);
			header("Location: index.php");
		}
	}	
}	
//δ�ύ��ҳ�棬 ��ʾ�����û��������룬�����ʼ�
else
{
	if(strlen($error)==0)
	{
		$smarty->assign("Error","",true);
		unset($error);
	}
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



$smarty->display('register.tpl');

?>
