<HTML>
<HEAD>
<TITLE>UPXpost �������Ļ��˴�����վ</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GB2312" />
<link rel="stylesheet" href="upxpost.css" type="text/css" />

<script type="text/javascript">
function showmenu(elmnt)
{
var offset = 174;
if(elmnt=="productlist")
	offset = 174;
if(elmnt=="register")
	offset = 900;
if(document.body.clientWidth<1024)
	document.getElementById(elmnt).style.left =offset;
else
	document.getElementById(elmnt).style.left = (document.body.clientWidth-1024)/2+offset-8;
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



<div style="width:1024px; border-width:0px; border-style:solid">
<table width="100%"  height="58px"border="0" >
	<tr>
		<td width="250px"><img width="268" src="./image/upxlogo.jpg"></td>
		<td width="250px" align = "left" valign="bottom" align="left">
		&nbsp;&nbsp;&nbsp;&nbsp;
		</td>
		<td align="right" valign="bottom">
		{if $islogin == 1}
			��ӭ�� {$username}  | 			
			<a href="{$domainname}/changeinfo.php">�޸ĸ�������</a> |	
  			<a href="{$domainname}/tradehistory.php">��ѯ��ʷ���׼�¼</a> |
  			<a href="{$domainname}/login.php?action=logout">ע��</a>
  			
  				  			
		{else}
			<a href="{$domainname}/register.php">ע��</a>
|			|
			<a href="{$domainname}/login.php">��½</a>
		{/if}
		| <a href="{$domainname}/cart.php">���ﳵ </a> <a href="{$domainname}/cart.php"><img src="./image/chart.gif"></a>
		
		</td>
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






