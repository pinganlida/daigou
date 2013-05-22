{include file="header.tpl" title=foo}
{if count($error) eq 0}
<h1>历史交易列表</h1>
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<br>
		<table border=1>
			<tr>
				<td>	
					产品名称
				</td>
				<td>	
					产品价格
				</td>
				<td>	
					交易时间
				</td>
			</tr>	
		{section name=outer loop=$trade}
			<tr>
				<td>
				{$trade[outer].productname}
				</td>
				<td>
				{$trade[outer].price}
				</td>
				<td>
				{$trade[outer].tradetime}
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
		
		<form name="selectpages" action="tradehistory.php" method="post">
		<input id="selectpage"  name="selectpage" type="text" maxlength="2"><br>
		<input type="submit" name="submit" value="跳页   ">
		</td>
		<td>
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
</table>
</div>
{/if}
{if count($error) gt 0}
{$error}
{/if}
{include file="footer.tpl"}