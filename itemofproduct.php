<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');

require('./include/cartclass.php');
$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';
include_once './include/data.php';

$itemid = $_GET["itemid"];
$sql = "select * from product where id = '$itemid'";
$arr = $db->query_array($sql);
echo $arr[0][0];
$smarty->assign("item", $arr);
$smarty->assign("domainname",$domainname);
$smarty->display('itemofproduct.tpl');
$db->disconnect();
?>