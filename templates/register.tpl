{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{$header2}
代购平台 header
<hr>
{$Name}
<a href="./index.php">返回首页</a>
<a href="./login.php">登陆</a>
<hr>
<form name="RegForm" action="register.php" method="post">
输入用户名: <input id="username"  name="username" type="text" value="{$input.username}"><br>
设置密码: <input  id="password" name="password" type="password"><br>
重复密码: <input  id="repass" name="repass" type="password"><br>
电子邮箱: <input id="email" name="email" type="text" value = "{$input.email}">
<input type="submit" name="submit" value="  提交注册  ">
<hr>
{$Error}
<hr>
