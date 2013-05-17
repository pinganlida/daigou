<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');


$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';
// //$smarty->force_compile = true;
// $smarty->debugging = true;
// $smarty->caching = true;
// $smarty->cache_lifetime = 120;
//echo realpath("./image/monofont.ttf");
// print_r($_SESSION["cart"]);
// echo $domainname;

$sql = "select * from product limit 0, 4";
$arr = $db->query_array($sql);
$smarty->assign("populargoods", $arr);

$sql = "select * from product where category = 'milkpowder' limit 0, 4";
$arr = $db->query_array($sql);
$smarty->assign("milkpowderlist", $arr);

$smarty->assign("domainname",$domainname);
$smarty->display('index.tpl');
$db->disconnect();
?>
