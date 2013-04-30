<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');

$smarty = new Smarty;
$db = new mysqlconnect();

include_once './include/include.php';
// //$smarty->force_compile = true;
// $smarty->debugging = true;
// $smarty->caching = true;
// $smarty->cache_lifetime = 120;

$smarty->assign("Name","wake me up",true);

for($i=0;$i<20;$i++){
	$list[$i] =  "hahahaha-".$i;
}


$smarty->assign("header2",$smarty->fetch("header2.tpl"));


$sql = "select * from product";
$arr = $db->query_array($sql);


$smarty->assign("productlist", $arr);



$smarty->display('index.tpl');
$db->disconnect();
?>
