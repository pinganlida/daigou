<HTML>
<HEAD>
<TITLE>UPXpost 澳洲最大的华人代购网站</TITLE>
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

adTextArray[0] = "澳洲一家大型连锁药店，拥有全部奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉奶粉";
adTextArray[1] = "coles是澳洲最大的超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市！";
adTextArray[2] = "Woolworth和Safeway是同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家同一家";
adTextArray[3] = "ALDI是最便宜的仓储超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市超市";
adTextArray[4] = "Liquorland是澳洲人常见的买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市买酒的超市";



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
			欢迎你 {$username}  | 			
			<a href="{$domainname}/changeinfo.php">修改个人资料</a> |	
  			<a href="{$domainname}/tradehistory.php">查询历史交易记录</a> |
  			<a href="{$domainname}/login.php?action=logout">注销</a>
  			
  				  			
		{else}
			<a href="{$domainname}/register.php">注册</a>
|			|
			<a href="{$domainname}/login.php">登陆</a>
		{/if}
		| <a href="{$domainname}/cart.php">购物车 </a> <a href="{$domainname}/cart.php"><img src="./image/chart.gif"></a>
		
		</td>
	</tr>
</table>
</div>
<div style="width:1024px; height: 5px;" ></div>
<div style="width:1024px; height: 55px; border-width:0px; border-style:solid; text-align: right">

<table width="1024px"  height="45px" background="./image/navigator2.gif" border="0" >
	<tr>
		<td class="navigator"  width="20px"> &nbsp;&nbsp;</td>
		<td class="navigator" width="80px"><a href="{$domainname}/index.php">首页</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=milkpowder">澳洲奶粉</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=skincare">护肤品</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=health">保健品</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=ugg">UGG雪地靴</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=wine">澳洲红酒</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/product.php?category=essentialoil">澳洲精油</a></td>
		<td class="navigator" width="10px">|</td>
		

		<td class="navigator" width="80px"><a href="{$domainname}/faq.php">常见问题</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/aboutus.php">关于我们</a></td>
		<td class="navigator" width="10px">|</td>
		<td class="navigator" width="80px"><a href="{$domainname}/contactus.php">联系我们</a></td>
		<td class="navigator" align="right">
         &nbsp;&nbsp;&nbsp;&nbsp;
		</td>
	</tr>
</table>
</div>




</body>

</html>






