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
		<h2> <img width="15px" src="./image/icon2.gif"> �û�ע��</h2>	
		<hr>
		<form name="RegForm" action="register.php" method="post">
		
		<table border="0">
			<tr>
				<td>�����û���</td>
				<td> <input id="username"  name="username" type="text" value="{$input.username}"></td>
			</tr>
			<tr>
				<td>��������</td>
				<td><input  id="password" name="password" type="password"></td>
			</tr>
			<tr>
				<td>�ظ�����</td>
				<td><input  id="repass" name="repass" type="password"></td>
			</tr>
			<tr>
				<td>��������</td>
				<td><input id="email" name="email" type="text" value = "{$input.email}"></td>
			</tr>	
			<tr>
				<td>��֤��</td>
				<td><img src="./captcha_code.php?rand={$random}"id='captchaimg'>
				</td>
			</tr>
			<tr>
				<td><label for='message'>�������������֤�� :</label></td>
				<td><input id="6_letters_code" name="6_letters_code" type="text"></td>
			</tr>
			<tr>
				<td colspan="2">
				 �޷���ͼƬ�𣿵�� <a href='javascript: refreshCaptcha();'><font color="red">����</font></a> ˢ��  <br>
				</td>
			</tr>	
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" name="submit" value="  �ύע��  "></td>
			</tr>
		</table>
		
		
		         

	
	{$error}
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