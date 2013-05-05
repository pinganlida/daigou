{include file="header.tpl" title=foo}
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<h1>信息修改</h1>
		<hr>
		{if count($notlogin) gt 0}
			{$notlogin}<a href="login.php">登陆</a><br/>
		{/if}
		{if count($notlogin) == 0}
		<form name="ChangeForm" action="changeinfo.php" method="post">
		电子邮箱: <input id="email"  name="email" type="text" value="{$input.email}"><br>
		性别:
		{if {$input.gender} == m}
		男<input type="radio" checked="checked" id="gender" name="gender" value="m" />
		女<input type="radio" id="gender" name="gender" value="f" /><br />
		{/if}
		{if {$input.gender} == f}
		男<input type="radio" id="gender" name="gender" value="m" />
		女<input type="radio" id="gender" checked="checked" name="gender" value="f" /><br />
		{/if}
		地址: <input id="address" name="address" type="text" value="{$input.address}"><br>
		邮编: <input id="postcode" name="postcode" type="text" value="{$input.postcode}"><br>
		国家: <input id="country" name="country" type="text" value="{$input.country}"><br>
		<input type="submit" name="submit" value="提交修改  "><br>
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