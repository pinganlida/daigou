{include file="header.tpl" title=foo}
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<h1>��Ϣ�޸�</h1>
		<hr>
		{if count($notlogin) gt 0}
			{$notlogin}<a href="login.php">��½</a><br/>
		{/if}
		{if count($notlogin) == 0}
		<form name="ChangeForm" action="changeinfo.php" method="post">
		��������: <input id="email"  name="email" type="text" value="{$input.email}"><br>
		�Ա�:
		{if {$input.gender} == m}
		��<input type="radio" checked="checked" id="gender" name="gender" value="m" />
		Ů<input type="radio" id="gender" name="gender" value="f" /><br />
		{/if}
		{if {$input.gender} == f}
		��<input type="radio" id="gender" name="gender" value="m" />
		Ů<input type="radio" id="gender" checked="checked" name="gender" value="f" /><br />
		{/if}
		��ַ: <input id="address" name="address" type="text" value="{$input.address}"><br>
		�ʱ�: <input id="postcode" name="postcode" type="text" value="{$input.postcode}"><br>
		����: <input id="country" name="country" type="text" value="{$input.country}"><br>
		<input type="submit" name="submit" value="�ύ�޸�  "><br>
		{/if}
		<hr>
		{$error}
		{$renewsuccessful}
		</td>
		<td>
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
</table>
</div>
{include file="footer.tpl"}