<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');
$smarty = new Smarty;
$db = new mysqlconnect();
include_once './include/include.php';
require('./include/juglogin.php');
$smarty->assign("Name","ע��",true);

$error="";
$random =rand();
$smarty->assign("random",random,true);
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
	
	if(!preg_match('/^[a-z\d_]{5,20}$/i', $username))
	{
		$error .= '�û���ֻ������ĸ,����,�»������<br>';
	}
	
	if(filter_var($email,FILTER_VALIDATE_EMAIL) === false)
	{
		$error .= '����д��ȷ�������ʽ<br>';
	} 
	// ����������֤�Ĵ���    
	if(empty($_SESSION['6_letters_code'] )||strcasecmp($_SESSION['6_letters_code'], $_POST['6_letters_code']) != 0)
	{          
	 	$error .= "��֤ʧ��<br>";    
	}

	
	if(!empty($error))
	{		
		$smarty->assign("error",$error,true);
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


$smarty->assign("domainname",$domainname);
$smarty->display('register.tpl');

?>
