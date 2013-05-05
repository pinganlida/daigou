{include file="header.tpl" title=foo}
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">

function refreshCaptcha() 
{ 
    var img = document.images['captchaimg']; 
    img.src = img.src.substring(0,img.src.lastIndexOf("?"))+"?rand="+Math.random()*1000; 
} 
</script>


<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<hr>
		<form name="RegForm" action="register.php" method="post">
		输入用户名: <input id="username"  name="username" type="text" value="{$input.username}"><br>
		设置密码: <input  id="password" name="password" type="password"><br>
		重复密码: <input  id="repass" name="repass" type="password"><br>
		电子邮箱: <input id="email" name="email" type="text" value = "{$input.email}"><br>         
	 	 验证码: <img src="captcha_code.php?rand={$random}"id='captchaimg'><br>         
	 	<label for='message'>请输入上面的验证码 :</label>  <br>         
	 	<input id="6_letters_code" name="6_letters_code" type="text">  <br>         
	 	无法读图片吗？点击 <a href='javascript: refreshCaptcha();'>here</a> 刷新  <br>	
		<input type="submit" name="submit" value="  提交注册  ">
	<hr>
	{$Error}
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