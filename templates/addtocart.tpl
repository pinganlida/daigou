{include file="header.tpl" title=foo}
<div style="width:1280px; text-align: center" >
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		
		<h2> <img width="15px" src="./image/icon2.gif"> �������� </h2>	
		<hr>
		<br>
	
		
		�ѷ��빺�ﳵ
		<br><br><br>
		��Ʒ����
		<hr>		
		{$product.name}
		
		<br><br>
		��Ʒ����
		<hr>
		{$product.description}
		
	
			
		
		
		</td>
		<td rowspan="3" valign="top">
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
	
</table>
</div>
{include file="footer.tpl"}
