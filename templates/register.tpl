{include file="header.tpl" title=foo}
<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">

<script type="text/javascript">
function refreshCaptcha() 
{ 
    var img = document.images['captchaimg']; 
    img.src = img.src.substring(0,img.src.lastIndexOf("?"))+"?rand="+Math.random()*1000; 
} 
</script>


		
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<h2> <img width="15px" src="./image/icon2.gif"> 用户注册</h2>	
		<hr>
		<form name="RegForm" action="register.php" method="post">
		
		<table border="0">
			<tr>
				<td>输入用户名</td>
				<td> <input id="username"  name="username" type="text" value="{$input.username}"></td>
			</tr>
			<tr>
				<td>设置密码</td>
				<td><input  id="password" name="password" type="password"></td>
			</tr>
			<tr>
				<td>重复密码</td>
				<td><input  id="repass" name="repass" type="password"></td>
			</tr>
			<tr>
				<td>电子邮箱</td>
				<td><input id="email" name="email" type="text" value = "{$input.email}"></td>
			</tr>	
			<tr>
				<td>验证码</td>
				<td><img src="./captcha_code.php?rand={$random}"id='captchaimg'>
				</td>
			</tr>
			<tr>
				<td><label for='message'>请输入上面的验证码 :</label></td>
				<td><input id="6_letters_code" name="6_letters_code" type="text"></td>
			</tr>
			<tr>
				<td colspan="2">
				 无法读图片吗？点击 <a href='javascript: refreshCaptcha();'><font color="red">这里</font></a> 刷新  <br>
				</td>
			</tr>	
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="submit" value="  提交注册  "></td>
			</tr>
		</table>
		
		
		         

	
	{$error}
	{if count($message) gt 0}
		<a href="{$message}">返回主页</a><br/>
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