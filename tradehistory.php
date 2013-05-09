<?php
require('./libs/Smarty.class.php');
require('./include/mysql.php');

$smarty = new Smarty;
$db = new mysqlconnect();

include_once './include/include.php';
require('./include/juglogin.php');
session_start();
$ist = issessionstart();
if($ist == true)
{
	$buyerusername = $_SESSION['username'];
	
	$datarows = $db->query_array("select count(id) from trade where buyerusername='$buyerusername';");
	$numrows = $datarows[0][0];
	$page_daigou=intval($numrows/$page_daigouize);
	//设定每一页显示的记录数
	$page_daigouize = 1;
	//计算总页数
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
		$page = 1; //没有页数则显示第一页；
	}
	//计算记录偏移量
	$offset = ($page-1)*$page_daigouize;
	

	$sql_query= "select * from trade where buyerusername='$buyerusername';";
	$arr = $db->query_array($sql_query);
	$smarty->assign("trade", $arr);
	
	$frist = 1;
	$prev =$page-1;
	$next = $page+1;
	$last=$page_daigou;
	
	if($page>1)
	{
		$fristpage = "<a href='tradehistory.php?page=".$frist."'>首页</a>";
		$prevpage =  "<a href='tradehistory.php?page=".$prev."'>上一页</a>";
	
		$smarty->assign("Frist", $fristpage);
		$smarty->assign("Prev", $prevpage);
	}
	if($page<$page_daigou)
	{
		$nextpage =  "<a href='tradehistory.php?page=".$next."'>下一页</a>";
		$lastpage =  "<a href='tradehistory.php?page=".$last."'>最后一页</a>";
	
		$smarty->assign("Next", $nextpage);
		$smarty->assign("Last", $lastpage);
	}
	$totalpage = "共有" .$page_daigou. "页(" .$page. "/" .$page_daigou.")";
	$smarty->assign("TotalPage", $totalpage);
	for($i=1; $i<$page; $i++)
	{
		$currentpage .= "<a href='tradehistory.php?page=".$i."'>[".$i."]</a>";
		$smarty->assign("Currentpage"," $currentpage ");
	}
	$smarty->assign("Displaypage",$page);
	for($i=$page+1; $i<=$page_daigou;$i++)
	{
		$notcurrentpage .= "<a href='tradehistory.php?page=".$i."'>[".$i."]</a>";
		$smarty->assign("NotCurrentpage",$notcurrentpage);
	}
}
else
{
	$smarty->assign("error","请先登录",true);
}
$smarty->display('tradehistory.tpl');
$db->disconnect();
?>