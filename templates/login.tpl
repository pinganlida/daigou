{include file="header.tpl" title=foo}
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<form name="LoginForm" method="post" action="login.php">
		<p>�û���:<input id="username" name="username" type="text" maxlength="30"><p/>
		<p>�� ��:<input id="password" name="password" type="password" maxlength="50"><p/>
		<p><input type="submit" name="submit" value="ȷ ��  "></p>
		{$message}
		</form>
		</td>
		<td>
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
</table>
</div>
{include file="footer.tpl"}