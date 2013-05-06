<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');
$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';
session_start();
//上传文件
if($_POST['submit'])
{
	if ((($_FILES["file"]["type"] == "image/gif")|| ($_FILES["file"]["type"] == "image/jpeg")|| ($_FILES["file"]["type"] == "image/pjpeg"))&& ($_FILES["file"]["size"] < 500000))
	{
	 	if ($_FILES["file"]["error"] > 0)
	 	{
	 		$smarty->assign("UploadfileError",$_FILES["file"]["error"],true);
	  	}
	  	else
		{
	  		if (file_exists("upload/" . $_FILES["file"]["name"]))
	  		{
	  			$smarty->assign("UploadfileError",$_FILES["file"]["name"] . " already exists. ",true);
	  		}
	 		else
	  		{
	  			move_uploaded_file($_FILES["file"]["tmp_name"],"upload/" . $_FILES["file"]["name"]);
	  			$smarty->assign("UploadfileSuccessful","Upload file Successful",true);
	  		}
		}
	}
	else
	{
		$smarty->assign("UploadfileError","Invalid file",true);
	}
}
$smarty->display('upload_file.tpl');
$db->disconnect();
?>