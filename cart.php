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
$cart = CartTool::getCart();
print_r($cart->all());

$smarty->display('cart.tpl');
$db->disconnect();
?>
