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
padding: 4px;
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

img.focus
{
padding:3px;
border:5px solid #ccc;
}

td.milkpowderbranch
{
font-size: 12px;
color:black;
text-align: center;
}

table.productshow
{
border-width:1px;
border-style: solid;
border-color: #E9E9E9;
margin:0px;
padding:0px;
border-collapse:collapse;
}
td.productshow
{
border-width:1px;
border-style: solid;
border-color: #999999;
margin:0px;
padding:10px;
vertical-align: top;
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
<script language="JavaScript" type="text/JavaScript">
<!--
var arrayLength=5;
var urlArray = new Array(arrayLength); 
var banArray = new Array(arrayLength);
var shopArray = new Array(arrayLength); 
var adTextArray = new Array(arrayLength);
var counter = 0;
var befocused = -1;
var url = "http://www.webdm.cn"; //initial URL
var interval = 1500;

//add your necessary URL's
urlArray[0] = "./image/china.jpg";
urlArray[1] = "./image/australia.gif";
urlArray[2] = "./image/alipay.jpg";


banArray[0] = new Image(468, 60);
banArray[0].src = "./image/mychemist_ad.jpg";
banArray[1] = new Image(468, 60);
banArray[1].src = "./image/coles_ad.jpg";
banArray[2] = new Image(468, 60);
banArray[2].src = "./image/woolworth_ad.jpg";
banArray[3] = new Image(468, 60);
banArray[3].src = "./image/aldi_ad.jpg";
banArray[4] = new Image(468, 60);
banArray[4].src = "./image/liquorland_ad.jpg";

shopArray[0]="mychemist";
shopArray[1]="coles";
shopArray[2]="woolworth";
shopArray[3]="aldi";
shopArray[4]="liquorland";

adTextArray[0] = "����һ�Ҵ�������ҩ�꣬ӵ��ȫ���̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷��̷�";
adTextArray[1] = "coles�ǰ������ĳ��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��У�";
adTextArray[2] = "Woolworth��Safeway��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��ͬһ��";
adTextArray[3] = "ALDI������˵Ĳִ����г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г��г���";
adTextArray[4] = "Liquorland�ǰ����˳�������Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ�����Ƶĳ���";



function changeBanner(x) 
{
  if(x<0){	
  if(counter > arrayLength-1)
   counter = 0;
  }else{
  counter=x;
  //alert(x);
  }

  //document.banner.src = banArray[counter].src; //sets a new banner
  document.getElementById('adindex').src = banArray[counter].src;	
  document.getElementById('adtext').innerHTML=adTextArray[counter];
  url = urlArray[counter];
  if(befocused>=0) 
  	focusOff(befocused);
  focusOn(counter);

  
  counter++; 
}
var timer = window.setInterval("changeBanner(-1)", interval);

function stopchangebanner(){
//alert("HAHA");
	window.clearInterval(timer);	
}

function startchangebanner(){
	timer = window.setInterval("changeBanner(-1)", interval);
}

function focusOn(x){
	//alert(shopArray[x]);
	if(befocused>=0)
		focusOff(befocused);

	if(x>=0){
		document.getElementById(shopArray[x]).style.opacity=0.4;
		befocused = x;
	}
}

function focusOff(x){
	if(x>=0){
		document.getElementById(shopArray[x]).style.opacity=1;
		befocused=-1;
	}
}

//-->
</script>

</HEAD>




<body align = "center">
<div class="menu" id="register" style="position: absolute; float: left; left: 350px; top: 80px; z-index: 1;" onmouseover="showmenu('register')" onmouseout="hidemenu('register')">
<table width="120">
	<tr><td class="menu"><a href="{$domainname}/changeinfo.php">�޸ĸ�������</a></td></tr>
	<tr><td class="menu"><a href="{$domainname}/login.php?action=logout">ע��</a></td></tr>
	<tr><td class="menu"><a href="{$domainname}/upload_file.php">�ϴ�ͼƬ</a></td></tr>
	<tr><td class="menu"><a href="{$domainname}/tradehistory.php">��ѯ��ʷ���׼�¼</a></td></tr>
</table>
</div>


<div class="menu" id="productlist" style="position: absolute;  left: 350px; top: 118px; z-index: 1;" onmouseover="showmenu('productlist')" onmouseout="hidemenu('productlist')">
<table width="120">
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php">ȫ����Ʒ</a></td></tr>
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php?product=milkpowder">�̷�</a></td></tr>
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php?product=health">����Ʒ</a></td></tr>
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php?product=skincare">����Ʒ</a></td></tr>
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php?product=essentialoil">����</a></td></tr>
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php?product=wine">���</a></td></tr>
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php?product=ugg">ѩ��ѥ</a></td></tr>
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php?product=skin">Ƥ��</a></td></tr>
	<tr><td class="menu"><a class="menu" href="{$domainname}/product.php?product=luxry">�ݳ�Ʒ</a></td></tr>
</table>
</div>


<div style="width:1024px; border-width:0px; border-style:solid">
<table width="100%"  height="58px"border="0" >
	<tr>
		<td width="250px"><img src="./image/upxlogo2.gif"></td>
		<td width="250px" align = "left" valign="bottom" align="left">
		{if $islogin == 1}
			��ӭ�� {$username}  | 
			<span onmouseover="showmenu('register')" onmouseout="hidemenu('register')">��������</span>
				
  				  			
		{else}
			<a href="{$domainname}/register.php">ע��</a>
|			|
			<a href="{$domainname}/login.php">��½</a>
		{/if}
		| <a href="{$domainname}/cart.php">���ﳵ </a> <a href="{$domainname}/cart.php"><img src="./image/chart.gif"></a>
		</td>
		<td align="right" valign="bottom">
		
		
		<img src="./image/rightlogo2.gif"></td>
	</tr>
</table>
</div>
<div style="width:1024px; height: 5px;" ></div>
<div style="width:1024px; height: 55px; border-width:0px; border-style:solid; text-align: right">

<table width="1024px"  height="45px" background="./image/navigator2.gif" border="0" >
	<tr>
		<td class="navigator"  width="20px"> &nbsp;&nbsp;</td>
		<td class="navigator" width="80px"><a href="{$domainname}/index.php">��ҳ</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=milkpowder">�����̷�</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=skincare">����Ʒ</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=health">����Ʒ</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=ugg">UGGѩ��ѥ</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=wine">���޺��</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=essentialoil">���޾���</a></td>
		<td class="navigator" width="10px">|</td>
		

		<td class="navigator" width="80px"><a href="{$domainname}/faq.php">��������</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/aboutus.php">��������</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/contactus.php">��ϵ����</a></td>
		<td class="navigator" align="right">
         &nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
</table>
</div>




</body>

</html>






