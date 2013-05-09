<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');


$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';
require("./include/cartclass.php");

/*************
 * start all
 */
$id = $_GET['productid'];
$sql = "select * from product where id='$id'";
$arr = $db->query_array($sql);
//print_r($arr);
$smarty->assign("product",$arr[0]);
$cart = CartTool::getCart();
$cart->addItem($arr[0]["id"],$arr[0]["name"],$arr[0]["price"],1);

$smarty->display('addtocart.tpl');
$db->disconnect();
?>
