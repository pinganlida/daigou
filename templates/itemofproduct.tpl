{include file="header.tpl" title=foo}
<table width="100%" border="0">
<div style="width:1024px; border-width:0px; border-style:solid; text-align: center">
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		<table border=1>	
		
		<tr>
				<td >
				��Ʒ����
				</td>
				<td width="500">
				��Ʒ����
				</td>			
				

				<td width="100">
				����
				</td>
			</tr>
		{section name=outer loop=$item}
			<tr>
				<td>
				<img width="150" src="./image/productpic/{$item[outer].image}">
				
				</td>
				<td>
				{$item[outer].name}<br>
				�۸�: {$item[outer].price} Ԫ<br>
				����: {$item[outer].description|truncate:"500"}				
				</td>
			
	
				<td width="100">
				<a target=_blank href="{$domainname}/addtocart.php?productid={$item[outer].id}">���빺�ﳵ</a>
				</td>
			</tr>
		{/section}
		</table>
