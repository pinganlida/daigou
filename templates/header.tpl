<HTML>
<HEAD>
<TITLE>UPXpost �������Ļ��˴�����վ</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />

<style type="text/css">
<!--
body 
{
font-size: 12px;
background-color:#ffffff;
font-family:"����";
text-align: center;
}

table
{
table-layout:fixed;
}
td
{
font-size: 12px;
font-family:"����";
}

td.navigator{
font-size: 14px;
text-align: center;
font-family:"����";
}

a:link
{
text-decoration:none; color: black;
}
a:hover
{
text-decoration:none; color: black;
}
a:visited
{
text-decoration:none; color: black;
}
h2
{
color:#E47911;
font-size: 14px;
font-family:"����";
}

div
{
margin: 0 auto;
}

div.rightcolumn
{
background: #FBFBFB;
padding: 10px;
border-style: solid; 
border-width: 1px;
border-color: #E9E9E9;
margin-left: 10px;
}
div.leftcolumn
{
background: #FBFBFB;
padding: 10px;
border-style: solid; 
border-width: 1px;
border-color: #E9E9E9;
}

div.text
{
background: #ffffff;
font-size: 18px;
padding: 40px;
font-family:"����";
border-style: solid; 
border-width: 0px;
border-color: #E9E9E9;
line-height: 200%;
}

div.contactus
{
background: #ffffff;
font-size: 14px;
padding: 40px;
font-family:"����";
border-style: solid; 
border-width: 0px;
border-color: #E9E9E9;
line-height: 200%;
}

div.faq
{
background: #ffffff;
font-size: 14px;
padding: 40px;
font-family:"����";
border-style: solid; 
border-width: 0px;
border-color: #E9E9E9;
line-height: 200%;
}

a.gotop
{
color:#E47911;
}

a.menu
{
font-size: 14px;
}


div.menu
{
font-size:100%;
position:absolute;
visibility:hidden;
border-left: 1px solid black;
border-right: 1px solid black;
border-top: 0px solid black;
border-bottom: 1px solid black;
background-image: url(./image/menubackground.gif);
}
table.menu
{
font-size:100%;
position:absolute;
visibility:hidden;
}
-->
</style>
<script type="text/javascript">
function showmenu(elmnt)
{
var offset = 174;
if(elmnt=="productlist")
	offset = 174;
if(elmnt=="register")
	offset = 350;
if(document.body.clientWidth<1280)
	document.getElementById(elmnt).style.left =offset;
else
	document.getElementById(elmnt).style.left = (document.body.clientWidth-1280)/2+offset-8;
document.getElementById(elmnt).style.visibility="visible";
}
function hidemenu(elmnt)
{
document.getElementById(elmnt).style.visibility="hidden";
}
</script>
</HEAD>




<body align = "center">
<div class="menu" id="register" style="position: absolute; float: left; left: 350px; top: 80px; z-index: 1;" onmouseover="showmenu('register')" onmouseout="hidemenu('register')">
<table width="120">
	<tr><td class="menu"><a href="./changeinfo.php">�޸ĸ�������</a></td></tr>
	<tr><td class="menu"><a href="./login.php?action=logout">ע��</a></td></tr>
	<tr><td class="menu"><a href="./upload_file.php">�ϴ�ͼƬ</a></td></tr>
	<tr><td class="menu"><a href="./tradehistory.php">��ѯ��ʷ���׼�¼</a></td></tr>
</table>
</div>


<div class="menu" id="productlist" style="position: absolute;  left: 350px; top: 118px; z-index: 1;" onmouseover="showmenu('productlist')" onmouseout="hidemenu('productlist')">
<table width="120">
	<tr><td class="menu"><a class="menu" href="./product.php">ȫ����Ʒ</a></td></tr>
	<tr><td class="menu"><a class="menu" href="./product.php?product=milkpowder">�̷�</a></td></tr>
	<tr><td class="menu"><a class="menu" href="./product.php?product=health">����Ʒ</a></td></tr>
	<tr><td class="menu"><a class="menu" href="./product.php?product=skincare">����Ʒ</a></td></tr>
	<tr><td class="menu"><a class="menu" href="./product.php?product=essentialoil">����</a></td></tr>
	<tr><td class="menu"><a class="menu" href="./product.php?product=wine">���</a></td></tr>
	<tr><td class="menu"><a class="menu" href="./product.php?product=ugg">ѩ��ѥ</a></td></tr>
	<tr><td class="menu"><a class="menu" href="./product.php?product=skin">Ƥ��</a></td></tr>
	<tr><td class="menu"><a class="menu" href="./product.php?product=luxry">�ݳ�Ʒ</a></td></tr>
</table>
</div>


<div style="width:1280px; border-width:0px; border-style:solid">
<table width="100%"  height="58px"border="0" >
	<tr>
		<td width="250px"><img src="./image/upxlogo2.gif"></td>
		<td align = "left" valign="bottom" align="left">
		{if $islogin == 1}
			��ӭ�� {$username}  | 
			<span onmouseover="showmenu('register')" onmouseout="hidemenu('register')">��������</span>
				
  				  			
		{else}
			<a href="./register.php">ע��</a>
|			|
			<a href="./login.php">��½</a>
		{/if}
		| <a href="./cart.php">���ﳵ </a> <a href="./cart.php"><img src="./image/chart.gif"></a>
		</td>
		<td align="right" valign="bottom">
		
		
		<img src="./image/rightlogo2.gif"></td>
	</tr>
</table>
</div>
<div style="width:1280px; height: 5px;" ></div>
<div style="width:1280px; height: 55px; border-width:0px; border-style:solid; text-align: right">

<table width="1280px"  height="45px" background="./image/navigator2.gif" border="0" >
	<tr>
		<td class="navigator"  width="20px"> &nbsp;&nbsp;</td>
		<td class="navigator" width="100px"><a href="./index.php">��ҳ</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="100px"><a href="./product.php" onmouseover="showmenu('productlist')" onmouseout="hidemenu('productlist')">��Ʒ�б�</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="100px"><a href="./goodofhelper.php">����Ա��Ϣ</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="100px"><a href="./faq.php">��������</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="100px"><a href="./aboutus.php">��������</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="100px"><a href="./contactus.php">��ϵ����</a></td>
		<td class="navigator" align="right">
         &nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
</table>
</div>




</body>

</html>






