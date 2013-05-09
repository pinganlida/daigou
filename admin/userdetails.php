<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');

$smarty = new Smarty;
$db = new mysqlconnect();

include_once './include/include.php';

$id = $_GET['userid'];
$sql = "select * from users where id='$id'";
$arr = $db->query_array($sql);
$smarty->assign("userslist", $arr);
$smarty->display('userdetails.tpl');
$db->disconnect();
?>