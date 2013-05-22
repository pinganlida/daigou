{include file="header.tpl" title=foo}
<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">

<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		
		{$milkbranchtpl}
		
		
		<table class="productshow">	
		
		<tr>
				<td class="productshow" >
				商品名称
				</td>
				<td width="500" class="productshow">
				商品描述
				</td>			
				

				<td width="100"  class="productshow">
				购买
				</td>
			</tr>
		{section name=outer loop=$productlist}
			<tr>
				<td class="productshow">
				<a target=_blank href="{$domainname}/itemofproduct.php?itemid={$productlist[outer].id}"><img width="150" src="./image/productpic/{$productlist[outer].image}"> </a>
				</td>
				<td class="productshow">
				<h2>{$productlist[outer].name}</h2><br>
				
				描述: {$productlist[outer].description|truncate:"500"}				
				</td>
			
	
				<td width="100" class="productshow">
				价格: {$productlist[outer].price} 元<br><br>
				<a target=_blank href="{$domainname}/addtocart.php?productid={$productlist[outer].id}"><img src="./image/chart.gif"> 放入购物车</a>
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
		
		<form name="selectpages" action="{$jumppageurl}" method="post">
		<input id="selectpage"  name="selectpage" type="text" maxlength="2"><br>
		<input type="submit" name="submit" value="跳页   ">
		</td>
		<td valign="top">
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
</table>

</div>
{include file="footer.tpl"}
