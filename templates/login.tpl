{include file="header.tpl" title=foo}
<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">

<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<form name="LoginForm" method="post" action="login.php">
		<h2> <img width="15px" src="./image/icon2.gif"> ������¼</h2>	
		<hr>
		<table border="0">
			<tr>
				<td>�û���</td>
				<td><input id="username" name="username" type="text" maxlength="30"></td>
			</tr>
			<tr>
				<td>�� ��</td>
				<td><input id="password" name="password" type="password" maxlength="50"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="submit" value="��¼"></td>
			</tr>
		</table>
		<font color="red">{$message}</font>
		</form>
		</td>
		<td>
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
</table>
</div>
{include file="footer.tpl"}