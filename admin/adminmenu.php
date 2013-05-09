<?php
require('./libs/Smarty.class.php');
$smarty = new Smarty;
include_once './include/include.php';
$ist = issessionstart();
if($ist == true)
{
	$smarty->assign("successful", "<a href='./userslist.php'>用户列表</a>",true);
}
else 
{
	$smarty->assign("error", "非法进入",true);
}
$smarty->display('adminmenu.tpl');
?>