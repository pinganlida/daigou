<HTML>
<HEAD>
<TITLE>视频代购平台</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
</HEAD>
<BODY bgcolor="#ffffff">
banner
<hr>
{if count($loginmessage) gt 0}
	欢迎你 {$username}  <a href="{$loginmessage}">个人中心  </a>
{/if}
{if count($logoutmessage) gt 0}
 	<a href="{$logoutmessage}">注销</a><br />
{/if}
