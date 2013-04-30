{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{$header2}
代购平台 header
<hr>
首页
<a href="./register.php">注册</a>
<br>
helloword
<hr>
{$Name}
<hr>
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




<hr>
footer
{include file="footer.tpl"}
