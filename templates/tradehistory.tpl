{include file="header.tpl" title=foo}
{if count($error) eq 0}
<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">		
		<h2> <img width="15px" src="./image/icon2.gif"> 历史交易记录 </h2>	
		<hr>
		<table border=1 width="100%" class="productshow">
			<tr>
				<td width="400">	
					产品名称
				</td>
				<td widt="50">	
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
		<form name="selectpages" action="tradehistory.php" method="post">
		{$Frist}
		{$Prev}
		{$Next}
		{$Last}
		{$TotalPage}
		{$Currentpage}
		{$Displaypage}
		{$NotCurrentpage}
		
		
		跳到第<input id="selectpage"  name="selectpage" type="text" maxlength="1" size="2">页
		<input type="submit" name="submit" value="Go">
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