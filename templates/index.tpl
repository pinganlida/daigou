{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

����ƽ̨ header
<hr>
��ҳ<br>
helloword
<hr>
{$Name}
<hr>

{section name=outer loop=$list}
	{$list[outer]}<br>
{sectionelse}
	none
{/section}

<hr>
footer
{include file="footer.tpl"}
