{include file="header.tpl" title=foo}
<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">		
		<h2> <img width="15px" src="./image/icon2.gif"> 修改个人资料 </h2>	
		<hr>
		
		{if count($notlogin) gt 0}
			{$notlogin}<a href="{$domainname}/login.php">登陆</a><br/>
		{/if}
		{if count($notlogin) == 0}
		<form name="ChangeForm" action="changeinfo.php" method="post">
		<table border="0">
			<tr>
				<td>电子邮箱</td>
				<td><input id="email"  name="email" type="text" value="{$input.email}" maxlength="50"></td>
			</tr>
			<tr>
				<td>性别</td>
				<td>
				{if {$input.gender} == m}
				男<input type="radio" checked="checked" id="gender" name="gender" value="m" />
				女<input type="radio" id="gender" name="gender" value="f" /><br />
				{/if}
				{if {$input.gender} == f}
				男<input type="radio" id="gender" name="gender" value="m" />
				女<input type="radio" id="gender" checked="checked" name="gender" value="f" /><br />
				{/if}
				</td>
			</tr>
			<tr>
				<td>电话</td>
				<td><input id="phone" name="phone" type="text" value="{$input.phone}" maxlength="20"></td>
			</tr>
			<tr>
				<td>地址</td>
				<td><input id="address" name="address" type="text" value="{$input.address}" maxlength="200"></td>
			</tr>
			<tr>
				<td>邮编</td>
				<td><input id="postcode" name="postcode" type="text" value="{$input.postcode}" maxlength="10"></td>				
			</tr>
			<tr>
				<td>国家</td>
				<td><input id="country" name="country" type="text" value="{$input.country}" maxlength="30"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="submit" value="提交修改  "></td>
			</tr>
		</table>
		
	
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