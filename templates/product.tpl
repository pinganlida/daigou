{include file="header.tpl" title=foo}
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<table border=1>	
		
		<tr>
				<td>
				��Ʒ����
				</td>
				<td>
				��Ʒ����
				</td>			
				

				<td width="100">
				����
				</td>
			</tr>
		{section name=outer loop=$productlist}
			<tr>
				<td>
				{$productlist[outer].name}
				</td>
				<td>
				{$productlist[outer].description}
				</td>
			
	
				<td width="100">
				<a target=_blank href="{$domainname}/addtocart.php?productid={$productlist[outer].id}">���빺�ﳵ</a>
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
		
		<form name="selectpages" action="product.php" method="post">
		<input id="selectpage"  name="selectpage" type="text"><br>
		<input type="submit" name="submit" value="��ҳ   ">
		</td>
		<td>
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
</table>

</div>
{include file="footer.tpl"}
