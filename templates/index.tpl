{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{$header2}
����ƽ̨ header
<hr>
��ҳ
<a href="./register.php">ע��</a>
<a href="./login.php">��½</a>
<a href="./product.php">��Ʒ�б�</a>
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
