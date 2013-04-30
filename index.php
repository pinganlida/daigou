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
	$list[$i] =  "hahahahahoho-".$i;
}


$smarty->assign("header2",$smarty->fetch("header2.tpl"));


$sql = "select * from product";
$arr = $db->query_array($sql);

//example of insert
// $sql = "insert into product (name,description) values ('添加商品测试','添加商品描述测试')";
// $newid = $db->query_insert($sql);
//echo "newid = ".$newid;

echo $db->rownumber("product");

$smarty->assign("productlist", $arr);



$smarty->display('index.tpl');
$db->disconnect();
?>
