{include file="header.tpl" title=foo}

<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">

		<table class="productshow">	
		{section name=outer loop=$item}
			<tr>
				<td class="productshow" width="180">
				<img width="150" src="./image/productpic/{$item[outer].image}">
				
				</td>
				<td class="productshow">
				<h2>{$item[outer].name}</h2><br>
				价格: {$item[outer].price} 元<br><br>
			
				<a target=_blank href="{$domainname}/addtocart.php?productid={$item[outer].id}"><img src="./image/chart.gif"> 放入购物车</a>
				</td>
			</tr>
			<tr>
				<td colspan="2" class="description">{$item[outer].description}
				<br>
				<img width="400" src="./image/productpic/{$item[outer].image}">
				</td>
			</tr>
		{/section}
		</table>
</div>
