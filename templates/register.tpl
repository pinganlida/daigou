{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{$header2}
����ƽ̨ header
<hr>
{$Name}
<a href="./index.php">������ҳ</a>
<hr>
<form name="RegForm" action="register.php" method="post">
�����û���: <input id="username"  name="username" type="text" />
��������: <input  id="password" name="password" type="password" />
�ظ�����: <input  id="repass" name="repass" type="password" />
��������: <input id="email" name="email" type="text" />
<input type="submit" name="submit" value="  �ύע��  " />
<hr>
{$Error}
<hr>