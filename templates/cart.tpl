{include file="header.tpl" title=foo}
<div style="width:1280px; text-align: center" >
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		
		<h2> <img width="15px" src="./image/icon2.gif"> 关于我们 </h2>	
		<hr>
		<br>
		<font color=red>{$error}</font>
		<table width="100%" border=1>
			
		{section name=outer loop=$productlist}
		<form method="post" action="">
			<tr>
				<td>{$productlist[outer].id}</td>
				<td>{$productlist[outer].name}</td>
				<td>{$productlist[outer].price}</td>				
				<td>{$productlist[outer].quantity}</td>				
				<td>
				<input name="submit" type="submit" value="修改数量">
				<input name="quantity" value="{$productlist[outer].quantity}" type="input" size="4">
				<input name="quantityid" value="{$productlist[outer].id}" type="hidden">
				</td>
				
				<td><a href="{$domainname}/cart.php?delete={$productlist[outer].id}">移除商品</a></td>
			<tr>
			</form>
		{/section}
	
		</table>	
		
		<hr>
			共计: {$totalprice}元
		<hr>
		<a href="./cart.php?action=clear"><font color="red">清空购物车</font></a>
		<br>
		付款
		
		</td>
		<td rowspan="3" valign="top">
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
	
</table>
</div>
{include file="footer.tpl"}
