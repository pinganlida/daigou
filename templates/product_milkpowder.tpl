{include file="header.tpl" title=foo}
<div style="width:1280px; border-width:0px; border-style:solid; text-align: center">

<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<h2> <img width="15px" src="./image/icon2.gif"> 请选择奶粉品牌 </h2>	
		<hr>
		<img width="150" src="./image/productpic/karicaregoldimmu1duan.jpg">
		<img width="150" src="./image/productpic/bellamy1duan.jpg">
		<img width="150" src="./image/productpic/huishi1duan.jpg">
		<img width="150" src="./image/productpic/ozcare1duan.jpg">
		<img width="150" src="./image/productpic/woolworthskim.jpg">
		<img width="150" src="./image/productpic/nestle1.jpg">
		<img width="150" src="./image/productpic/diplomaskim.jpg">
		<img width="150" src="./image/productpic/ozfarmprobiotic.jpg">



		
		<table border=1>	
		
		<tr>
				<td >
				商品名称
				</td>
				<td width="500">
				商品描述
				</td>			
				

				<td width="100">
				购买
				</td>
			</tr>
		{section name=outer loop=$productlist}
			<tr>
				<td>
				<img width="150" src="./image/productpic/{$productlist[outer].image}">
				
				</td>
				<td>
				{$productlist[outer].name}<br>
				价格: {$productlist[outer].price} 元<br>
				描述: {$productlist[outer].description|truncate:"500"}				
				</td>
			
	
				<td width="100">
				<a target=_blank href="{$domainname}/addtocart.php?productid={$productlist[outer].id}">放入购物车</a>
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
		<input type="submit" name="submit" value="跳页   ">
		</td>
		<td valign="top">
		
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
</table>

</div>
{include file="footer.tpl"}
