{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

<a href="./index.php">������ҳ</a>
<a href="./register.php">ע��</a><br/>
<form name="LoginForm" method="post" action="login.php">
<p>�û���:<input id="username" name="username" type="text"><p/>
<p>�� ��:<input id="password" name="password" type="password"><p/>
<p><input type="submit" name="submit" value="ȷ ��  "></p>
{$message}
</form>