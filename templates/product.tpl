{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
<a href="./register.php">ע��</a>
<a href="./login.php">��½</a>
<a href="./index.php">������ҳ</a>
<br>
<table border=1>	
{section name=outer loop=$productlist}
	<tr>
		<td>
		{$productlist[outer].name}
		</td>
		<td>
		{$productlist[outer].description}
		</td>
	</tr>
{/section}
</table>
{$Frist}
{$Prev}
{$Next}
{$Last}
{$TotalPage}
{$Currentpage}
{$Displaypage}
{$NotCurrentpage}

<form name="selectpages" action="product.php" method="post">
<input id="selectpage"  name="selectpage" type="text"><br>
<input type="submit" name="submit" value="��ҳ   ">