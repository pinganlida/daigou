<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');


$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';

$numrows = $db->rownumber(product);

//�趨ÿһҳ��ʾ�ļ�¼��
$pagesize = 3;
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
	$fristpage = "<a href='product.php?page=".$frist."'>��ҳ</a>";
	$prevpage =  "<a href='product.php?page=".$prev."'>��һҳ</a>";
	
	$smarty->assign("Frist", $fristpage);
	$smarty->assign("Prev", $prevpage);
}
if($page<$pages)
{
	$nextpage =  "<a href='product.php?page=".$next."'>��һҳ</a>";
	$lastpage =  "<a href='product.php?page=".$last."'>���һҳ</a>";
	
	$smarty->assign("Next", $nextpage);
	$smarty->assign("Last", $lastpage);
}
$totalpage = "����" .$pages. "ҳ(" .$page. "/" .$pages.")";
$smarty->assign("TotalPage", $totalpage);
for($i=1; $i<$page; $i++)
{	
	$currentpage .= "<a href='product.php?page=".$i."'>[".$i."]</a>";
	$smarty->assign("Currentpage"," $currentpage ");
}
$smarty->assign("Displaypage",$page);
for($i=$page+1; $i<=$pages;$i++)
{
	$notcurrentpage .= "<a href='product.php?page=".$i."'>[".$i."]</a>";
	$smarty->assign("NotCurrentpage",$notcurrentpage);
}

$smarty->display('product.tpl');
$db->disconnect();
?>