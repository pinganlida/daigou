{include file="header.tpl" title=foo}
<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">

<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		
		{$milkbranchtpl}
		
		
		<table class="productshow">	
		
		<tr>
				<td class="productshow" >
				��Ʒ����
				</td>
				<td width="500" class="productshow">
				��Ʒ����
				</td>			
				

				<td width="100"  class="productshow">
				����
				</td>
			</tr>
		{section name=outer loop=$productlist}
			<tr>
				<td class="productshow">
				<a target=_blank href="{$domainname}/itemofproduct.php?itemid={$productlist[outer].id}"><img width="150" src="./image/productpic/{$productlist[outer].image}"> </a>
				</td>
				<td class="productshow">
				<a target=_blank href="{$domainname}/itemofproduct.php?itemid={$productlist[outer].id}"><h2>{$productlist[outer].name}</h2></a>
				<br>
				
				����: {$productlist[outer].description|truncate:"400"}	
				<p style="text-align:right">
				<a target=_blank href="{$domainname}/itemofproduct.php?itemid={$productlist[outer].id}"><font color="red">����...</font></a></p>			
				</td>
			
	
				<td width="100" class="productshow">
				�۸�: {$productlist[outer].price} Ԫ<br><br>
				<a target=_blank href="{$domainname}/addtocart.php?productid={$productlist[outer].id}"><img src="./image/chart.gif"> ���빺�ﳵ</a>
				</td>
			</tr>

		{/section}
		</table>
		
		<form name="selectpages" action="{$jumppageurl}" method="post">
		{$Frist}
		{$Prev}
		{$Next}
		{$Last}
		{$TotalPage}
		{$Currentpage}
		{$Displaypage}
		{$NotCurrentpage}
		&nbsp;&nbsp;
		������
		<input id="selectpage"  name="selectpage" type="text" maxlength="2" size="1">
		ҳ
		<input type="submit" name="submit" value="Go">
		</td>
		<td valign="top">
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
</table>

</div>
{include file="footer.tpl"}
