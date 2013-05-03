<HTML>
<HEAD>
<TITLE>视频代购平台</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
</HEAD>
<BODY bgcolor="#ffffff" align = "center">
<div style="width:1000px; height: 120px; border-width:1px; border-style:solid">
banner
</div>


<div style="width:1000px; height: 30px; border-width:1px; border-style:solid; text-align: right">

<table width="100%">
	<tr>
		<td><a href="./index.php">首页</a></td>
		<td><a href="./product.php">产品信息</a></td>
		<td><a href="./goodofhelper.php">代购员信息</a></td>
		<td><a href="./populargoods.php">热门商品</a></td>
		<td><a href="./product.php">商品列表</a></td>
		<td><a href="./faq.php">常见问题</a></td>
		<td><a href="./aboutus.php">关于我们</a></td>
		<td align="right">
		{if $islogin == 1}
	欢迎你 {$username}  <a href="{$loginmessage}">个人中心  </a>
	<a href="./login.php?action=logout">注销</a>
{else}
<a href="./register.php">注册</a>

<a href="./login.php">登陆</a>
{/if}
&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
</table>



</div>
