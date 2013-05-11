<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');


$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';
//require("./include/cartclass.php");

/*************
 * start all
 */



$id = $_GET['productid'];
$sql = "select * from product where id='$id'";
$arr = $db->query_array($sql);
$result=$arr[0];
//print_r($arr);
$smarty->assign("product",$arr[0]);

$number = count($_SESSION["cart"]);

$canadd = true;
for($i=0;$i<$number;$i++){
	if($_SESSION["cart"][$i]["id"]==$result["id"])
		$canadd = false;
}

if($canadd){
$_SESSION["cart"][$number]["id"]  = $result["id"];
$_SESSION["cart"][$number]["name"] =  $result["name"];
$_SESSION["cart"][$number]["price"] =  $result["price"];
$_SESSION["cart"][$number]["quantity"] =  1;
}



// print_r($_SESSION);
$smarty->assign("domainname",$domainname);
$smarty->display('addtocart.tpl');
$db->disconnect();


?>
