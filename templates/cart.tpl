{include file="header.tpl" title=foo}
<div style="width:1280px; text-align: center" >
<table width="100%" border="0">
	<tr>
		<td width="70%" valign="top">
		
		<h2> <img width="15px" src="./image/icon2.gif"> �������� </h2>	
		<hr>
		<br>
	
		<table width="100%" border=1>
			
		{section name=outer loop=$productlist}
			<tr>
				<td>{$productlist[outer].id}</td>
				<td>{$productlist[outer].name}</td>
				<td>{$productlist[outer].price}</td>
				<td>{$productlist[outer].quantity}</td>
				<td>�޸�����</td>
				<td><a href="./cart.php?delete={$productlist[outer].id}">�Ƴ���Ʒ</a></td>
			<tr>
	
		{/section}
	
		</table>	
		
		<hr>
			����: {$totalprice}Ԫ
		<hr>
		<a href="./cart.php?action=clear"><font color="red">��չ��ﳵ</font></a>
		<br>
		����
		
		</td>
		<td rowspan="3" valign="top">
		{include file="rightcolumn.tpl" title=foo}
		</td>
	</tr>
	
	
</table>
</div>
{include file="footer.tpl"}
