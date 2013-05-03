{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}
<br>
<table border=1>	
{section name=outer loop=$userslist}
	<tr>
		<td>
		{$userslist[outer].username}
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
<input type="submit" name="submit" value="ÌøÒ³   ">