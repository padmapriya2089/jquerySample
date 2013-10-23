<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Training consultancy services</title>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" /> 
<script src="http://code.jquery.com/jquery-1.9.1.js"></script>
 <script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script> 
 <link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/default/easyui.css">
 <link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/themes/icon.css">
 <link rel="stylesheet" type="text/css" href="http://www.jeasyui.com/easyui/demo/demo.css"> 
 <script type="text/javascript" src="http://www.jeasyui.com/easyui/jquery.easyui.min.js"></script> 
 <script type="text/javascript" src="jMenu.jquery.min.js"></script> 
<link rel="stylesheet" type="text/css" href="jmenu.css" media="screen" />
<link rel="stylesheet" type="text/css" href="/css/style.css" /> 


<style>

/* Scrollingtext */

div.jp-title{
        position:relative;
        height:24px;
        width:1315px;
        display:block;
        overflow:hidden;
        border:#CCCCCC 1px solid;
    }
   .scrollingtext{
        position:absolute;
        white-space:nowrap;
        font-family:'Trebuchet MS',Arial;
        font-size:10px;
        font-weight:bold;
        color:#000000;
    }
    

   /* Image Slideshow */
    
    #slides
{
    margin-left: 300px;
    margin-top: 2px;
}
#slides2
{
    margin-left: 20px;
    margin-top: 120px;
}

.slides li
{
    display:block;
    position:absolute;
}

/*Image Sliding Position  */

#imageslide
{

     position:absolute;
     width:1000px;
     height:250px;
     z-index:15;
     top:80%;
     left:10%;
     margin:-150px 0 0 -150px;

}
/* Logo Marquee */

html,body{margin:0}
 ul.slide{margin:0;
          padding:0;
          height:80px;
          list-style-type:none;}
 ul.slide li{float:left;
             list-style-type:none;}
 ul.slide img{border:1px solid silver;
             height:80px;}


</style>
<script>

/* Menu */
var timeout    = 500;
var closetimer = 0;
var ddmenuitem = 0;


$(document).ready(function(){
    
    $("#jMenu").jMenu();
 
    $("#jMenu").jMenu({
      ulWidth : 'auto',
      effects : {
        effectSpeedOpen : 300,
        effectTypeClose : 'slide'
      },
      animatedText : false
    });
  });



	/* Quick Enquiry*/
  function submitForm(){
 $('#ff').form('submit');
}
 function clearForm(){
 $('#ff').form('clear');
 }
 
 /*Progressbar  */
 function start(){
	 var value = $('#p').progressbar('getValue');
	if (value < 100){
	 value += Math.floor(Math.random() * 10);
	 $('#p').progressbar('setValue', value);
	setTimeout(arguments.callee, 200);
	 }
	 }; 
 
 
	 
	 
	 /*Scrollingtext  */
	
	 $(document).ready(function() {

		    $('.scrollingtext').bind('marquee', function() {
		        var ob = $(this);
		        var tw = ob.width();
		        var ww = ob.parent().width();
		        ob.css({ right: -tw });
		        ob.animate({ right: ww }, 20000, 'linear', function() {
		            ob.trigger('marquee');
		        });
		    }).trigger('marquee');

		}); 
	
	  
	  /*Datepicker*/
	  $(function() {
		  $( "#datepicker" ).datepicker();
		  });
		
		/* Image Sliding*/
	  jQuery.fn.extend({
		    slideshow: function(duration) {
		        var current = 0;
		        var length = this.length;
		        var me = this;
		        this.slice(1, this.length).hide();
		        function fadeBetween(elem1, elem2) {
		            elem1.fadeOut(duration);
		            elem2.fadeIn(duration, function() {
		                if (current == length - 1) {                    
		                    current = 0;
		                    fadeBetween(me.last(), me.first());
		                }
		                else {
		                    fadeBetween(me.eq(current), me.eq(++current));
		                }
		            });
		        }
		        fadeBetween(this.eq(current), this.eq(current + 1));
		    }
		});

		$(function() {
		    $('#slides li').slideshow(5000);
		    $('#slides2 li').slideshow(3000);
		}); 
	  
	  
	  
	  
	
		 
		/* Logo Marquee */
		 (function($)
		   {
		     var methods = 
		       {
		         init : function( options ) 
		         {
		           return this.each(function()
		             {
		               var _this=$(this);
		                   _this.data('marquee',options);
		               var _li=$('>li',_this);
		                   
		                   _this.wrap('<div class="slide_container"></div>')
		                        .height(_this.height())
		                       .hover(function(){if($(this).data('marquee').stop){$(this).stop(true,false);}},
		                              function(){if($(this).data('marquee').stop){$(this).marquee('slide');}})
		                        .parent()
		                        .css({position:'relative',overflow:'hidden','height':$('>li',_this).height()})
		                        .find('>ul')
		                        .css({width:screen.width*2,position:'absolute'});
		           
		                   for(var i=0;i<Math.ceil((screen.width*3)/_this.width());++i)
		                   {
		                     _this.append(_li.clone());
		                   } 
		             
		               _this.marquee('slide');});
		         },
		      
		         slide:function()
		         {
		           var $this=this;
		           $this.animate({'left':$('>li',$this).width()*-1},
		                         $this.data('marquee').duration,
		                         'swing',
		                         function()
		                         {
		                           $this.css('left',0).append($('>li:first',$this));
		                           $this.delay($this.data('marquee').delay).marquee('slide');
		             
		                         }
		                        );
		                             
		         }
		       };
		   
		     $.fn.marquee = function(m) 
		     {
		       var settings={
		                     'delay':2000,
		                     'duration':900,
		                     'stop':true
		                    };
		       
		       if(typeof m === 'object' || ! m)
		       {
		         if(m){ 
		         $.extend( settings, m );
		       }
		 
		         return methods.init.apply( this, [settings] );
		       }
		       else
		       {
		         return methods[m].apply( this);
		       }
		     };
		   }
		 )( jQuery );
		 
		
		 $(document).ready(
		   function(){$('.slide').marquee({delay:3000});}
		 );
		 
		 
/* Quick Links  */
		
		 $(".addressClick").click(function () {
		        var addressValue = $(this).attr("href");
		        alert(addressValue );
		    });	
		
		
		
	</script>
 
</head>
<body>

<!--Heading-->
<div id="heading">
<img src="h1.png" height="150" width="1350"/>
</div>
 
<!--Menu  -->
<div>
<ul id="jMenu">
	 <li><a href="#">Home</a></li>
    <li><a href="#">Training</a>
        <ul>
            <li><a href="courses.jsp">Courses Offered</a></li>
            <li><a href="college.jsp">Colleges</a></li>
            <li><a href="#">Corporates</a></li>
            <li><a href="#">Placement</a></li>
        </ul>
    </li>
    <li><a href="#">Development</a></li>
    <li><a href="#">Consultancy</a>
        <ul>
            <li><a href="#">Profile</a></li>
            <li><a href="#">Business Client</a></li>
            <li><a href="#">Services</a></li>
        </ul>
    </li>
    <li><a href="contactus.gif">Contact Us</a></li>
     <li><a href="aboutus.jsp">About Us</a></li>
    </ul>
</div> 

 <!-- Marquee -->
<div class="demo-info" ></div> 
 
 <div class="demo-tip icon-tip"></div>
 <div style="color:red">Latest News</div>
  

<div class="jp-title">
    
    <ul>
 
 
   <li class="scrollingtext">Campus Drive on November we are providing Training with Placement for Testing  We are happy to inform that our Student Nikhila got selected as Software Developer with our Client</li>
    </ul>
</div>

<!-- Image Slideshow -->

<div id="imageslide">
<ul id="slides" class="slides">
    <li><img height="325" width="1000" alt="slide" src="p1.jpg" /></li>
    <li><img height="325" width="1000" alt="slide" src="plain.jpg" /></li>
<li><img height="325" width="1000" alt="slide" src="po.jpg" /></li>
<li><img height="325" width="1000" alt="slide" src="gy.jpg" /></li>
<li><img height="325" width="1000" alt="slide" src="professional.jpg" /></li>
     <li><img height="325" width="1000" alt="slide" src="d1.jpg" /></li>
    <li><img height="325" width="1000" alt="slide" src="success.jpg" /></li>
    
</ul>
</div>

<!-- Quick Enquiry -->
<div style= "margin:10px 0"></div>
<div class="easyui-panel" title="Quick Enquiry" style="width:300px">
<div style="padding:10px 0 10px 60px">
<form id="ff" method="post">
<table>
<tr>
<td>Name:</td>
<td><input class="easyui-validatebox" type="text" name="name" data-options="required:true"></input></td>
</tr>
<tr>
<td>Email:</td>
<td><input class="easyui-validatebox" type="text" name="email" data-options="required:true,validType:'email'"></input></td>
</tr>
<tr>
<td>Password:</td>
<td><input class="easyui-validatebox" type="password" name="subject" data-options="required:true"></input></td>
</tr>
<tr>
<td>Confirm Password:</td>
<td><input class="easyui-validatebox" type="password" name="subject" data-options="required:true"></input></td>
</tr>
<tr>
<td>Location:</td>
<td>
<select class="easyui-combobox" name="language">
<option value="ar">chennai</option>
<option value="bg">delhi</option>
<option value="ca">kolkatta</option>
<option value="cs">madurai</option>

</select>
</td>
</tr>
</table>
</form>
</div>

 <div style="text-align:center;padding:5px">
<a href="javascript:void(0)" class="easyui-linkbutton" onclick="submitForm()">Submit</a>
<a href="javascript:void(0)" class="easyui-linkbutton" onclick="clearForm()">Clear</a>
</div>
</div> 

<!--  Progress Bar-->
<div class="demo-info" style="width:280px">
 <div class="demo-tip icon-tip" ></div>
 <div>DOWNLOAD THE COMPANY PROFILE</div>
 </div>
 
<div style="margin:10px 0">
 <a href="#" class="easyui-linkbutton" onclick="start()">Download now</a>
 </div>
 <div id="p" class="easyui-progressbar" style="width:300px;"></div>
 
<!-- Types of training -->

 <div class="demo-info">
<div class="demo-tip icon-tip"></div>
<div>Types of Training programs</div>
</div>
<div style="margin:10px 0;"></div>
<div class="easyui-tabs" style="width:1320px;height:350px">
<div title="Online Training" style="padding:10px">
<p style="font-size:14px"><b>Online Training</b></p>
<p style="font-size:14px">E-learning can occur in or out of the classroom. It can be self-paced, asynchronous learning or may be instructor-led, synchronous learning. E-learning is suited to distance learning and flexible learning, but it can also be used in conjunction with face-to-face teaching, in which case the term blended learning is commonly used.

</p>

<img src="el.jpg"/>
</div>


<div title="Classroom Training" style="padding:20px">
<p style="font-size:14px"><b>Classroom Training</b></p>
<p style="font-size:14px"><p style="font-size:14px">Instructors may deliver training in a lecture or classroom format, as an interactive workshop, as a demonstration with the opportunity for learners to practice, or even virtually, utilising video-conferencing tools; and the instructor may have facilitation and teaching skills, in which they can utilise different methods to engage learners and embrace different learning styles.
</p>
<img src="class.jpg"/> 

</div>

<div title="Campus Training" style="padding:20px">
<p style="font-size:14px"><b>Campus Training</b></p>
<p style="font-size:14px">Instructors may deliver training in a lecture or classroom format, as an interactive workshop, as a demonstration with the opportunity for learners to practice, or even virtually, utilising video-conferencing tools; and the instructor may have facilitation and teaching skills, in which they can utilise different methods to engage learners and embrace different learning styles.</p>
<img src="ctt.jpg"/>

</div>

<!--Date Picker  -->
<div class="demo-info" title="Training shedule" style="padding:20px">

<p>Preferred Dates: <input type="text" id="datepicker" /></p></div>

<div title="Help" data-options="iconCls:'icon-help',closable:true" style="padding:10px">
<div class="easyui-accordion" style="width:500px;height:300px;">
<div title="About" data-options="iconCls:'icon-ok'" style="overflow:auto;padding:10px;">
<!-- <h3 style="color:#0099FF;">Accordion for jQuery</h3> -->

<p>Ever in the History of Cegonsoft Pvt Ltd, it has been an easy task for freshers and job seekers to find their way into IT industry. We researched on the expectations of our IT clients from the candidates and the syllabuses were designed based on the results. IT industry is vast, but the psychology is simple. Candidates with adequate knowledge in technology with a reasonable communication skill to explain his/her work are preferred. With this as basis, Communication classes were included in the syllabus. In addition, we prepare the candidates for interviews by training them in Aptitude, Group Discussion, and Personality Development etc.</p>
</div>

<!--Quick Links  -->
<div title="Quick Links" data-options="iconCls:'icon-help'" style="padding:10px;">

<p><b>visit us</b></p>
 <a  href="http://www.w3schools.com">Visit W3Schools</a>
    <br />
    <a  href="http://jquery.com">Visit JQuery</a>
    <br />
    <a  href="http://www.javatpoint.com">Visit JavatPoint</a>

</div>

</div>

</div>

 </div>
 <!--Logo Marquee  -->
 <div>
 
 <ul class="slide">
  <li><img src="i2jpg.jpg"/></li>
  <li><img src="index.jpg"/></li>
  <li><img src="wip.jpg"/></li>
  <li><img src="inf.jpg"/></li>
  <li><img src="sat.bmp"/></li>

</ul>
</div>
 
 <!--Footer  -->
 <div id="footer" style="background-color:#FFA500;clear:both;text-align:center;">
Copyright © sample.com</div>
 


</body>
</html>

