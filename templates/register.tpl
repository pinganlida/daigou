{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{$header2}
����ƽ̨ header
<hr>
{$Name}
<a href="./index.php">������ҳ</a>
<a href="./login.php">��½</a>
<hr>
<form name="RegForm" action="register.php" method="post">
�����û���: <input id="username"  name="username" type="text" value="{$input.username}"><br>
��������: <input  id="password" name="password" type="password"><br>
�ظ�����: <input  id="repass" name="repass" type="password"><br>
��������: <input id="email" name="email" type="text" value = "{$input.email}">
<input type="submit" name="submit" value="  �ύע��  ">
<hr>
{$Error}
<hr>
