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

if($_GET["action"]=="clear"){
	unset($_SESSION["cart"]);
}

$number=count($productlist);
$tempnumber=0;
if(isset($_GET["delete"])){
	for($i=0;$i<$number;$i++){
		if($_SESSION["cart"][$i]["id"]!=$_GET["delete"])
			$splicekey = $i;
	}
	array_splice($_SESSION["cart"],$i,1);
}




$productlist = $_SESSION["cart"];
$number=count($productlist);
$totalprice = 0;
for($i=0;$i<$number;$i++){
	$totalprice +=  $productlist[$i]["price"] * $productlist[$i]["quantity"];
}
	

$smarty->assign("productlist",$productlist);
$smarty->assign("totalprice",$totalprice);

$smarty->display('cart.tpl');
$db->disconnect();
?>
