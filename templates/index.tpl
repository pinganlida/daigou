{include file="header.tpl" title=foo}
<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		
		
		<table width="100%" border="0" >
			<tr>
				<td valign="top" width="190">
				<div class="leftcolumn" style="width: 100%;">				
				<img id="mychemist"  width="180" src ="./image/mychemist.jpg"       onMouseOver="stopchangebanner(); changeBanner(0); focusOn(0);" onMouseOut="startchangebanner();"><br><br>
				<img id="coles"      width="180" src ="./image/coles.jpg"           onMouseOver="stopchangebanner(); changeBanner(1); focusOn(1);" onMouseOut="startchangebanner();"><br><br>
				<img id="woolworth"  width="180" src ="./image/woolworths.gif"      onMouseOver="stopchangebanner(); changeBanner(2); focusOn(2);" onMouseOut="startchangebanner();"><br><br>	
				<img id="aldi"       width="180" src ="./image/aldi2.gif"           onMouseOver="stopchangebanner(); changeBanner(3); focusOn(3);" onMouseOut="startchangebanner();"><br><br>				
				<img id="liquorland" width="180" src ="./image/liquorland.jpg"      onMouseOver="stopchangebanner(); changeBanner(4); focusOn(4);" onMouseOut="startchangebanner();">
				</div>
				</td>
				<td valign = "top">
				
				<img id="adindex" src="./image/mychemist_ad.jpg" width=510 height=320 border=0 name="banner" onMouseOver="stopchangebanner();" onMouseOut="startchangebanner();">
				<br><br>
				<div id="adtext">				
				</div>
				</td>
			
			</tr>			
		</table>
		
		<hr>

		
		<h2> <img width="15px" src="./image/icon2.gif"> 热门商品 </h2>	
		<hr>
		<table>
			<tr>
				{section name=outer loop=$populargoods}
				<td align="center">	
				<img width="150" src="./image/productpic/{$populargoods[outer].image}">
				{$populargoods[outer].name}<br>
				价格: {$populargoods[outer].price}
				</td>
				{/section}
				
			</tr>
		</table>
		

		
		<h2> <img width="15px" src="./image/icon2.gif"> 澳新奶粉  </h2>	
		<hr>		
		<table>
			<tr>
				{section name=outer loop=$milkpowderlist}
				<td align="center">	
				<img width="150" src="./image/productpic/{$milkpowderlist[outer].image}">
				{$milkpowderlist[outer].name}<br>
				价格: {$milkpowderlist[outer].price}
				</td>
				{/section}
				
			</tr>
		</table>
		
		<h2> <img width="15px" src="./image/icon2.gif"> 护肤品  </h2>	
		<hr>
		<table>
			<tr>
				{section name=outer loop=$milkpowderlist}
				<td align="center">	
				<img width="150" src="./image/productpic/{$milkpowderlist[outer].image}">
				{$milkpowderlist[outer].name}<br>
				价格: {$milkpowderlist[outer].price}
				</td>
				{/section}
				
			</tr>
		</table>
		
		<h2> <img width="15px" src="./image/icon2.gif"> 保健品  </h2>	
		<hr>
		<table>
			<tr>
				{section name=outer loop=$milkpowderlist}
				<td align="center">	
				<img width="150" src="./image/productpic/{$milkpowderlist[outer].image}">
				{$milkpowderlist[outer].name}<br>
				价格: {$milkpowderlist[outer].price}
				</td>
				{/section}
				
			</tr>
		</table>
		
		<h2> <img width="15px" src="./image/icon2.gif"> UGG雪地靴  </h2>	
		<hr>
		<table>
			<tr>
				{section name=outer loop=$milkpowderlist}
				<td align="center">	
				<img width="150" src="./image/productpic/{$milkpowderlist[outer].image}">
				{$milkpowderlist[outer].name}<br>
				价格: {$milkpowderlist[outer].price}
				</td>
				{/section}
				
			</tr>
		</table>
		
		<h2> <img width="15px" src="./image/icon2.gif"> 澳洲红酒  </h2>	
		<hr>
		<table>
			<tr>
				{section name=outer loop=$milkpowderlist}
				<td align="center">	
				<img width="150" src="./image/productpic/{$milkpowderlist[outer].image}">
				{$milkpowderlist[outer].name}<br>
				价格: {$milkpowderlist[outer].price}
				</td>
				{/section}
				
			</tr>
		</table>
		
		<h2> <img width="15px" src="./image/icon2.gif"> 澳洲精油  </h2>	
		<hr>
		<table>
			<tr>
				{section name=outer loop=$milkpowderlist}
				<td align="center">	
				<img width="150" src="./image/productpic/{$milkpowderlist[outer].image}">
				{$milkpowderlist[outer].name}<br>
				价格: {$milkpowderlist[outer].price}
				</td>
				{/section}
				
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
