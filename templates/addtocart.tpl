{include file="header.tpl" title=foo}
<div style="width:1024px; text-align: center" >
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		
		<h2> <img width="15px" src="./image/icon2.gif"> 产品已放入购物车 </h2>	
		<hr>
		
		<table class="productshow">	
		
			<tr>
				<td class="productshow" width="180">
				<img width="150" src="./image/productpic/{$product.image}">
				
				</td>
				<td class="productshow">
				<h2>{$product.name}</h2><br>
				价格: {$product.price} 元<br><br>
			
				
				</td>
			</tr>
			<tr>
				<td colspan="2" class="description">{$product.description}</td>
			</tr>
	
		</table>
	
		
		</td>
		<td rowspan="3" valign="top">
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
	
</table>
</div>
{include file="footer.tpl"}
