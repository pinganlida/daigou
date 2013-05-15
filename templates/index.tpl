{include file="header.tpl" title=foo}
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">
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
				<div id="mychemistdiv" class="leftcolumn" style="display:none;">
				testtesttesttesttesttesttesttesttesttest
				</div>
				<img id="adindex" src="./image/china.jpg" width=517 height=380 border=0 name="banner" onMouseOver="stopchangebanner();" onMouseOut="startchangebanner();">
				</td>
				<td id="adtext" width ="160" valign="top">
				</td>
			</tr>			
		</table>
		
		<hr>

		
		<h2> <img width="15px" src="./image/icon2.gif"> 热门商品 </h2>	
		<hr>
		<img width="135" src ="./image/aptamilgold.jpg">	
		<img width="135" src ="./image/karicare.jpg">	
		<img width="135" src ="./image/ugg.jpg">
		<img width="135" src ="./image/jurliquerosehandcream.jpg">
		<img width="135" src ="./image/penford.jpg">
		
		<h2> <img width="15px" src="./image/icon2.gif"> 澳洲常见超市和商店  </h2>	
		<hr>
		<img width="150" src ="./image/coles.jpg">	
		<img width="150" src ="./image/woolworths.jpg">	
		<img width="150" src ="./image/safeway.jpg">
		<img width="150" src ="./image/aldi.jpg">
		<img width="150" src ="./image/mychemist.jpg">
		
		
		</td>
		<td rowspan="3" valign="top">
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
	
</table>
</div>
{include file="footer.tpl"}
