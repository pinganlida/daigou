<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');


$smarty = new Smarty;
$db = new mysqlconnect();
include_once './include/include.php';

$datarows = $db->query_array("select count(id) from users;");
$numrows = $datarows[0][0];
//�趨ÿһҳ��ʾ�ļ�¼��
$page_daigouize = 3;
//������ҳ��
$page_daigou=intval($numrows/$page_daigouize);
if($numrows%$page_daigouize)
	$page_daigou++;
if(isset($_POST['selectpage']))
{ 
	if($_POST['selectpage']>$page_daigou)
		$page  = $page_daigou;
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
$offset = ($page-1)*$page_daigouize;

$sql = "select * from users limit $offset,$page_daigouize";
$arr = $db->query_array($sql);

$smarty->assign("userslist", $arr);

$frist = 1;
$prev =$page-1;
$next = $page+1;
$last=$page_daigou;
if($page>1)
{
	$fristpage = "<a href='userslist.php?page=".$frist."'>��ҳ</a>";
	$prevpage =  "<a href='userslist.php?page=".$prev."'>��һҳ</a>";
	
	$smarty->assign("Frist", $fristpage);
	$smarty->assign("Prev", $prevpage);
}
if($page<$page_daigou)
{
	$nextpage =  "<a href='userslist.php?page=".$next."'>��һҳ</a>";
	$lastpage =  "<a href='userslist.php?page=".$last."'>���һҳ</a>";
	
	$smarty->assign("Next", $nextpage);
	$smarty->assign("Last", $lastpage);
}
$totalpage = "����" .$page_daigou. "ҳ(" .$page. "/" .$page_daigou.")";
$smarty->assign("TotalPage", $totalpage);
for($i=1; $i<$page; $i++)
{	
	$currentpage .= "<a href='userslist.php?page=".$i."'>[".$i."]</a>";
	$smarty->assign("Currentpage"," $currentpage ");
}
$smarty->assign("Displaypage",$page);
for($i=$page+1; $i<=$page_daigou;$i++)
{
	$notcurrentpage .= "<a href='userslist.php?page=".$i."'>[".$i."]</a>";
	$smarty->assign("NotCurrentpage",$notcurrentpage);
}

$smarty->display('userslist.tpl');
$db->disconnect();
?>