<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');

require('./include/cartclass.php');
$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';
include_once './include/data.php';
foreach ($_GET as $key => $value)
{
	if($key != page)
		$str .= $key."=". $value."&";
}
if($_GET["category"]=="milkpowder"){
	//$numrows = $db->rownumber(product);
	//�趨ÿһҳ��ʾ�ļ�¼��
	$pagesize = 10;
	//������ҳ��
	$pages=intval($numrows/$pagesize);
	if($numrows%$pagesize)
		$pages++;
	if(isset($_POST['selectpage']))
	{
		if($_POST['selectpage']>$pages)
			$page  = $pages;
		elseif ($_POST['selectpage']<=0)
		$page = 1;
		else
			$page = intval($_POST['selectpage']);
	}
	elseif(isset($_GET['page'])||$_GET['page'] >0)
	$page=intval($_GET['page']);
	else
	{
		$page = 1; //û��ҳ������ʾ��һҳ��
	}
	//�����¼ƫ����
	$offset = ($page-1)*$pagesize;

	$branch = $_GET["branch"];
	if($_GET["branch"])
		$sql = "select * from product where category = 'milkpowder' and branch = '$branch' limit $offset,$pagesize";
	else
		$sql = "select * from product where category = 'milkpowder' limit $offset,$pagesize";
	$arr = $db->query_array($sql);

	$numrows=count($arr);

	$smarty->assign("productlist", $arr);

	$frist = 1;
	$prev =$page-1;
	$next = $page+1;
	$last=$pages;
	if($page>1)
	{
		$fristpage = "<a href='product.php?".$str."page=".$frist."'>��ҳ</a>";
		$prevpage =  "<a href='product.php?".$str."page=".$prev."'>��һҳ</a>";

		$smarty->assign("Frist", $fristpage);
		$smarty->assign("Prev", $prevpage);
	}
	if($page<$pages)
	{
		$nextpage =  "<a href='product.php?".$str."page=".$next."'>��һҳ</a>";
		$lastpage =  "<a href='product.php?".$str."page=".$last."'>���һҳ</a>";

		$smarty->assign("Next", $nextpage);
		$smarty->assign("Last", $lastpage);
	}
	$totalpage = "����" .$pages. "ҳ(" .$page. "/" .$pages.")";
	$smarty->assign("TotalPage", $totalpage);
	for($i=1; $i<$page; $i++)
	{
	$currentpage .= "<a href='product.php?".$str."page=".$i."'>[".$i."]</a>";
	$smarty->assign("Currentpage"," $currentpage ");
	}
	$smarty->assign("Displaypage",$page);
	for($i=$page+1; $i<=$pages;$i++)
	{
	$notcurrentpage .= "<a href='product.php?".$str."page=".$i."'>[".$i."]</a>";
	$smarty->assign("NotCurrentpage",$notcurrentpage);
	}

	if(!$_GET["branch"]){
		$smarty->assign("milkbranch",$milkbranch);
		$smarty->assign("milkbranchtpl",$smarty->fetch("milkbranch.tpl"));
	}else{
		$smarty->assign("branchname",$milkbranch[$_GET["branch"]]);
		$smarty->assign("milkbranchtpl",$smarty->fetch("milkbranchselected.tpl"));
	}


	$smarty->assign("domainname",$domainname);
	$smarty->display('product_milkpowder.tpl');	
}else{
	$numrows = $db->rownumber(product);
	//�趨ÿһҳ��ʾ�ļ�¼��
	$pagesize = 10;
	//������ҳ��
	$pages=intval($numrows/$pagesize);
	if($numrows%$pagesize)
		$pages++;
	if(isset($_POST['selectpage']))
	{
		if($_POST['selectpage']>$pages)
			$page  = $pages;
		elseif ($_POST['selectpage']<=0)
		$page = 1;
		else
			$page = intval($_POST['selectpage']);
	}
	elseif(isset($_GET['page'])||$_GET['page'] >0)
	$page=intval($_GET['page']);
	else
	{
		$page = 1; //û��ҳ������ʾ��һҳ��
	}
	//�����¼ƫ����
	$offset = ($page-1)*$pagesize;

	$sql = "select * from product limit $offset,$pagesize";
	$arr = $db->query_array($sql);

	$smarty->assign("productlist", $arr);

	$frist = 1;
	$prev =$page-1;
	$next = $page+1;
	$last=$pages;
	if($page>1)
	{
		$fristpage = "<a href='product.php?".$str."page=".$frist."'>��ҳ</a>";
		$prevpage =  "<a href='product.php?".$str."page=".$prev."'>��һҳ</a>";

		$smarty->assign("Frist", $fristpage);
		$smarty->assign("Prev", $prevpage);
	}
	if($page<$pages)
	{
		$nextpage =  "<a href='product.php?".$str."page=".$next."'>��һҳ</a>";
		$lastpage =  "<a href='product.php?".$str."page=".$last."'>���һҳ</a>";

		$smarty->assign("Next", $nextpage);
		$smarty->assign("Last", $lastpage);
	}
	$totalpage = "����" .$pages. "ҳ(" .$page. "/" .$pages.")";
	$smarty->assign("TotalPage", $totalpage);
	for($i=1; $i<$page; $i++)
	{
		$currentpage .= "<a href='product.php?".$str."page=".$i."'>[".$i."]</a>";
		$smarty->assign("Currentpage"," $currentpage ");
	}
	$smarty->assign("Displaypage",$page);
	for($i=$page+1; $i<=$pages;$i++)
	{
		$notcurrentpage .= "<a href='product.php?".$str."page=".$i."'>[".$i."]</a>";
		$smarty->assign("NotCurrentpage",$notcurrentpage);
	}
	$smarty->assign("domainname",$domainname);
	$smarty->display('product.tpl');	
}



$db->disconnect();
?>