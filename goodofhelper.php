<?php
?><?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');


$smarty = new Smarty;
$db = new mysqlconnect();
require('./include/juglogin.php');
include_once './include/include.php';

$numrows = $db->rownumber(users);

//设定每一页显示的记录数
$pagesize = 1;
//计算总页数
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
	$page = 1; //没有页数则显示第一页；
}
//计算记录偏移量
$offset = ($page-1)*$pagesize;

$sql = "select * from users where feature = 'd' limit $offset,$pagesize";
$arr = $db->query_array($sql);

$smarty->assign("userslist", $arr);

$frist = 1;
$prev =$page-1;
$next = $page+1;
$last=$pages;
if($page>1)
{
	$fristpage = "<a href='goodofhelper.php?page=".$frist."'>首页</a>";
	$prevpage =  "<a href='goodofhelper.php?page=".$prev."'>上一页</a>";
	
	$smarty->assign("Frist", $fristpage);
	$smarty->assign("Prev", $prevpage);
}
if($page<$pages)
{
	$nextpage =  "<a href='goodofhelper.php?page=".$next."'>下一页</a>";
	$lastpage =  "<a href='goodofhelper.php?page=".$last."'>最后一页</a>";
	
	$smarty->assign("Next", $nextpage);
	$smarty->assign("Last", $lastpage);
}
$totalpage = "共有" .$pages. "页(" .$page. "/" .$pages.")";
$smarty->assign("TotalPage", $totalpage);
for($i=1; $i<$page; $i++)
{	
	$currentpage .= "<a href='goodofhelper.php?page=".$i."'>[".$i."]</a>";
	$smarty->assign("Currentpage"," $currentpage ");
}
$smarty->assign("Displaypage",$page);
for($i=$page+1; $i<=$pages;$i++)
{
	$notcurrentpage .= "<a href='goodofhelper.php?page=".$i."'>[".$i."]</a>";
	$smarty->assign("NotCurrentpage",$notcurrentpage);
}

$smarty->display('goodofhelper.tpl');
$db->disconnect();
?>