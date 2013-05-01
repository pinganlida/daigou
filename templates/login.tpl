{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<a href="./index.php">返回首页</a>
<a href="./register.php">注册</a><br/>
{if count($loginmessage) gt 0}
	欢迎你 {$username}  <a href="{$loginmessage}">个人中心  </a>
{/if}
{if count($logoutmessage) gt 0}
 	<a href="{$logoutmessage}">注销</a><br />
{/if}
<form name="LoginForm" method="post" action="login.php">
<p>用户名:<input id="username" name="username" type="text"><p/>
<p>密 码:<input id="password" name="password" type="password"><p/>
<p><input type="submit" name="submit" value="确 定  "></p>
{$message}
</form>