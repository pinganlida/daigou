<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');


$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';
// require("./include/cartclass.php");

/*************
 * start all
 */
$productlist = $_SESSION["cart"];
$number=count($productlist);

if($_POST["submit"]){
	if(ereg('^[0-9]*[1-9][0-9]*$',$_POST["quantity"])){
		for($i=0;$i<$number;$i++){
			if($_SESSION["cart"][$i]["id"]==$_POST["quantityid"])
				$_SESSION["cart"][$i]["quantity"] = $_POST["quantity"];
		}
	}else{
		$smarty->assign("error","商品数量必须是正整数!");
	}
}


if($_GET["action"]=="clear"){
	unset($_SESSION["cart"]);
	$number=0;
}





$tempnumber=0;
if(isset($_GET["delete"])){
	
	$dosplice = false;
	for($i=0;$i<$number;$i++){
		if($_SESSION["cart"][$i]["id"]==$_GET["delete"]){
			$splicekey = $i;
			$dosplice = true;
			break;
		}
			
	}
	
// 	echo "splicekey ".$i;
	if($dosplice)
		array_splice($_SESSION["cart"],$splicekey,1);
}




// print_r($_SESSION);

$number=count($_SESSION["cart"]);
$totalprice = 0;
for($i=0;$i<$number;$i++){
	$totalprice +=  $productlist[$i]["price"] * $productlist[$i]["quantity"];
}
	

$smarty->assign("productlist",$_SESSION["cart"]);
$smarty->assign("totalprice",$totalprice);
$smarty->assign("domainname",$domainname);
$smarty->display('cart.tpl');
$db->disconnect();
?>
