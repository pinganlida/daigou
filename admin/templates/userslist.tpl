<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<br>
		<table border=1>	
		{section name=outer loop=$userslist}
			<tr>
				<td>
				{$userslist[outer].username}
				</td>
				<td>
				<a href="./userdetails.php?userid={$userslist[outer].id}">ÏêÏ¸ĞÅÏ¢</a>
				</td>
			</tr>
		{/section}
		</table>
		{$Frist}
		{$Prev}
		{$Next}
		{$Last}
		{$TotalPage}
		{$Currentpage}
		{$Displaypage}
		{$NotCurrentpage}
		
		<form name="selectpages" action="userslist.php" method="post">
		<input id="selectpage"  name="selectpage" type="text"><br>
		<input type="submit" name="submit" value="ÌøÒ³   ">
		</td>

	</tr>
	
</table>
</div>