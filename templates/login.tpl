{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<a href="./index.php">返回首页</a>
<a href="./register.php">注册</a><br/>
<form name="LoginForm" method="post" action="login.php">
<p>用户名:<input id="username" name="username" type="text"><p/>
<p>密 码:<input id="password" name="password" type="password"><p/>
<p><input type="submit" name="submit" value="确 定  "></p>
{$message}
</form>