{include file="header.tpl" title=foo}
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<hr>
		<form name="RegForm" action="register.php" method="post">
		�����û���: <input id="username"  name="username" type="text" value="{$input.username}"><br>
		��������: <input  id="password" name="password" type="password"><br>
		�ظ�����: <input  id="repass" name="repass" type="password"><br>
		��������: <input id="email" name="email" type="text" value = "{$input.email}"><br>
		<input type="submit" name="submit" value="  �ύע��  ">
		<hr>
		{$Error}
		{if count($message) gt 0}
			<a href="{$message}">������ҳ</a><br/>
		{/if}
<hr>
		</td>
		<td>
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
</table>
</div>
{include file="footer.tpl"}