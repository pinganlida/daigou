<HTML>
<HEAD>
<TITLE>��Ƶ����ƽ̨</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
</HEAD>
<BODY bgcolor="#ffffff">
banner
<hr>
{if count($loginmessage) gt 0}
	��ӭ�� {$username}  <a href="{$loginmessage}">��������  </a>
{/if}
{if count($logoutmessage) gt 0}
 	<a href="{$logoutmessage}">ע��</a><br />
{/if}
