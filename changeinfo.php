<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');
$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
require('./include/include.php');
$ist = issessionstart();
$id = $_SESSION['id'];
if($ist == true)
{
	$username = $_SESSION['username'];
	$sql_query= "select * from users where username='$username'";
	$arr = $db->query_array($sql_query);
	$smarty->assign("input", $arr[0]);
	if($_POST['submit'])
	{

		$email = $_POST['email'];
		$gender = $_POST['gender'];
		$address = $_POST['address'];
		$postcode = $_POST['postcode'];
		$country = $_POST['country'];
		if(empty($email))
		{
			$error .= '邮箱不能为空<br>';
		}
		if(filter_var($email,FILTER_VALIDATE_EMAIL) === false)
		{
			$error .= '邮箱不匹配<br>';
		}

		if(!empty($error))
		{
			$smarty->assign("error", $error);
			unset($error);
		}
		else 
		{
			$address = addslashes($address);
			$postcode = addslashes($postcode);
			
			$sql_query = "UPDATE users SET email = '$email',gender = '$gender',address = '$address', postcode = '$postcode',country = '$country'
			WHERE username = '$username';";
			$db->query($sql_query);
			
			$smarty->assign("renewsuccessful", "更新信息成功");
			$sql_query= "select * from users where username='$username'";
			$arr = $db->query_array($sql_query);
			$smarty->assign("input", $arr[0]);
		}
	}
	
}
else 
{
	$smarty->assign("notlogin", "请先登录",true);
}
$smarty->display('changeinfo.tpl');
?>