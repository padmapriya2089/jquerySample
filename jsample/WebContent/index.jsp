<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
  <link rel="stylesheet" type="text/css" href="/css/style.css" />
<style>

/* .link{
    left:2px;
    top:2px;
    position:absolute;
    width:48px;
    height:48px;
}
 */

#menus
{	margin: 0;
	padding: 0;
	


	 
	 }
	
	#menus li
	{	float: left;
		list-style: none;
		font: 12px Tahoma, Arial
		
		}

	#menus li a
	{	display: block;
		background: #20548E;
		padding: 25px 89px;
		text-decoration: none;
		border-right: 1px solid white;
		width: 70px;
		color: #EAFFED;
		white-space: nowrap
		}

	#menus li a:hover
	{	background: #1A4473}
		
		#menus li ul
		{	margin: 0;
			padding: 0;
			position: absolute;
			visibility: hidden;
			border-top: 1px solid white}
		
		#menus li ul li
		{	float: none;
			display: inline}
		
		#menus li ul li a
		{	width: auto;
			background: #9F1B1B}
		
		#menus li ul li a:hover
		{	background: #7F1616}
		
/* .icon_help{
    background:transparent url(/images/p1.jpg) no-repeat top left;
} */
</style>
<script>
var timeout    = 500;
var closetimer = 0;
var ddmenuitem = 0;

function menus_open()
{  menus_canceltimer();
menus_close();
   ddmenuitem = $(this).find('ul').css('visibility', 'visible');}

function menus_close()
{  if(ddmenuitem) ddmenuitem.css('visibility', 'hidden');}

function menus_timer()
{  closetimer = window.setTimeout(menus_close, timeout);}

function menus_canceltimer()
{  if(closetimer)
   {  window.clearTimeout(closetimer);
      closetimer = null;}}

$(document).ready(function()
{  $('#menus > li').bind('mouseover', menus_open)
   $('#menus > li').bind('mouseout',  menus_timer)});

document.onclick = menus_close; 

</script>
</head>
<body>

<div id="container" style="width:200px"></div>


<div id="header" style="background-color:#FFD700;height:200px;width:100px;">
<h1 style="margin-bottom:0;">SANSPAERIL TECHNOLOGIES</h1></div>
 
<div >
<ul id="menus">
    <li><a href="#">JavaScript</a>
        <ul>
            <li><a href="#">Drop Down Menu</a></li>
            <li><a href="#">jQuery Plugin</a></li>
            <li><a href="#">Ajax Navigation</a></li>
        </ul>
    </li>
    <li><a href="#">Effect</a>
        <ul>
            <li><a href="#">Slide Effect</a></li>
            <li><a href="#">Fade Effect</a></li>
            <li><a href="#">Opacity Mode</a></li>
            <li><a href="#">Drop Shadow</a></li>
            <li><a href="#">Semitransparent</a></li>
        </ul>
    </li>
    <li><a href="#">Navigation</a></li>
    <li><a href="#">HTML/CSS</a></li>
    <li><a href="#">Help</a></li>
</ul>
</div>
 <div class="cont" >
</div> 
 

<!-- 

<div id="menu" style="background-color:#FFD700;height:200px;width:100px;float:left;">
<b>Menu</b><br>
HTML<br>
CSS<br>
JavaScript</div> -->


 <!--  <a class="link icon_help"></a> -->
        
 <div id="footer" style="background-color:#FFA500;clear:both;text-align:center;">
<img src="images/p1.jpg"/>
</div>

 <div id="footer" style="background-color:#FFA500;clear:both;text-align:center;">
Copyright © sample.com</div>



</body>
</html>