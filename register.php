<?php
require('./libs/Smarty.class.php');

$smarty = new Smarty;

include_once './include/include.php';


if($_POST["submit"]==null){
	//未提交的页面， 显示输入用户名，密码，电子邮件	
}else{
	//提交后的页面
	
	//TODO 判定输入
	if(success){
		//如果成功，输出一个提示页面（general的提示页面)
	}
	else{
		//如果失败,则返回输入页面，并且，提示出错的地方
		//把出错信息放到一个数组里面输出到页面，提示给用户
	}	
	
}

$smarty->assign("Name","wake me up",true);

for($i=0;$i<20;$i++){
	$list[$i] =  "hahahaha-".$i;
}





$smarty->assign("list",$list);

$smarty->assign("header2",$smarty->fetch("header2.tpl"));


$smarty->display('index.tpl');

















?>
