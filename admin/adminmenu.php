<?php
require('./libs/Smarty.class.php');
$smarty = new Smarty;
include_once './include/include.php';
$ist = issessionstart();
if($ist == true)
{
	$smarty->assign("successful", "<a href='./userslist.php'>�û��б�</a>",true);
}
else 
{
	$smarty->assign("error", "�Ƿ�����",true);
}
$smarty->display('adminmenu.tpl');
?>