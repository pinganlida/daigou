{config_load file="test.conf" section="setup"}
{include file="header.tpl" title=foo}

{$header2}
����ƽ̨ header
<hr>
��ҳ<br>
helloword
<hr>
{$Name}
<hr>
<table border=1>
{section name=outer loop=$list}
	<tr>
		<td>
		{$list[outer]}<br>
		</td>
		<td>
			rambo
		</td>
	</tr>
	
{sectionelse}
	none
{/section}
</table>




<hr>
footer
{include file="footer.tpl"}
