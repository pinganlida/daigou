<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');


$smarty = new Smarty;
// $db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';
// //$smarty->force_compile = true;
// $smarty->debugging = true;
// $smarty->caching = true;
// $smarty->cache_lifetime = 120;
$smarty->assign("domainname",$domainname);
$smarty->display('contactus.tpl');
// $db->disconnect();
?>
