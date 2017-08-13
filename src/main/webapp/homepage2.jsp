<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("path" , path);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name= "viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<title>bootstrap model page</title>
	
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/bootstrap.min.css">
	
	<%-- <script type="text/javascript" src="<%=path%>/js/jquery-1.12.0.min.js"></script> --%>
	<script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/font-awesome.min.css">
	
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/TopNav.css">
	<!--***************************************************  -->
	<style>   
        /* li,li a {  
            text-decoration: none;  
            list-style-type: none;  
            font-family: "宋体";  
            font-size: 22px; 
            /* font-weight:bold;  */
            color: #FFF;  
        }  
        .xiala{
        	text-decoration: none;  
            list-style-type: none;  
            font-family: "宋体";  
            font-size: 16px; 
            /* font-weight:bold; */ 
            color: #FFF;
			width:120px;
        }  
          
        .btn1 {  
            display: block;  
            /* border: 1px solid #ddd; */  
            width: 100px;  
            height: 28px;  
            text-align: center;  
            line-height: 28px;  
        }  
          
        ul {  
            z-index:9999;
            margin-top: 1px;  
            position: absolute; /*设置绝对定位，宽度为内容宽度*/  
            left: -999em;   /*设置隐藏*/  
            padding: 0;  /*离它的父元素的边界为0，所以可以位于父元素li的正下方*/  
            /* text-align:center; */
        }  
          
        ul li a {
            /* z-index:9999; */  
            display: inline-block;  /*菜单项宽度未知，设置inline－block宽度为内容宽度*/  
            /* border-top: 1px solid #ddd;  
            border-left: 1px solid #ddd;  
            border-right: 1px solid #ddd;  */ 
            height: 30px;  
            padding: 0 10px;  
            line-height: 30px; 
            background:#B22222; 
            /* list-style-type:none; */
            /* border-bottom: 1px solid #ddd; */
        }  
          
        .last {  
            border-bottom: 0px solid #ddd;  
        }  
          
        .btn_self:hover ul {  
            left: auto; /*默认ul的padding为0，位于按钮正下方*/  
        }  
          
        ul li a:hover {  
            background-color: #ddd; 
            
            text-decoration: none; 
        }  
        .btn_self{  
            display: inline-block; /*设置btn是inline－block，   默认宽度为内容宽度，则鼠标只会在hover到按钮区域时才会展开下拉菜单*/ 
            padding:5px 10px; 
        }  
        #navarea{
            /* z-index:9999; */
        	height:60px;
        	background:#B22222;
        }
        #navtext{
        	position:relative;
        	top:10px;
        	text-align:center;
        }
        #myCarousel{    /* 图片轮播区域控制 */
            z-index:2;
            position:relative;
            left:10%;
        	width:80%;
        	height:400px;
        } */
        .loca{      /* 控制左右切换按钮的位置 */
        	position:relative;
        	top:180px;
        }
        .item{    /* 控制轮播图片的高度 */
        	height:400px;
        }
        
        .btn{        /* 按钮更多 */
        	position:relative;
        	top:15px;
        	width:60px;
        }
        .img-thumbnail{
            width:130px;
            hight:130px;
            margin:4px;
        }
    </style> 
	<!--***************************************************  -->
	
	
  </head>
  
  <body>
  <%-- <!-- *************************logo******************************* -->
  <img style="width:100%;max-width:800px;" alt="logo" src="<%=path%>/images/logo.png">   
	
  <!-- *****************************导航begin************************************ -->
	<div id="navarea">
	    <div id="navtext">
	        <c:forEach var="section" items="${sections}">
	            <li class="btn_self"><a class="btn1" href="#">${section.sectionName}</a>
	                <ul>
		                <c:forEach var="cols" items="${cols}">
		                    <c:if test="${cols.section.sectionId == section.sectionId}">
		                        <li><a class="xiala" href="#">${cols.columnsName}</a></li>
		                    </c:if>
		                </c:forEach>
	                </ul>
	            </li>
	            <c:if test="${section.sectionId < size}">
	            <li class="btn_self"><div style="height:18px; width:2px; background:#BFBFBF; position:relative; top:5px;"></div>
	            </c:if>
	        </c:forEach>
	    </div>
    </div>
    <!-- *****************************导航end************************************ --> --%>
    
    <%@ include file="TopNav.jsp" %>
    
    <!-- **************************图片轮播begin*************************************** -->
    <div id="myCarousel" class="carousel slide">
	   <!-- 轮播（Carousel）指标 -->
	   <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	   </ol>  
	   <!-- 轮播（Carousel）项目 -->
	   <div class="carousel-inner">
	      <div class="item active">
	         <img src="<%=path%>/images/1.jpg" alt="First slide">
	         <div class="carousel-caption">标题 1</div>
	      </div>
	      <div class="item">
	         <img src="<%=path%>/images/2.jpg" alt="Second slide">
	         <div class="carousel-caption">标题 2</div>
	      </div>
	      <div class="item">
	         <img src="<%=path%>/images/3.jpg" alt="Third slide">
	         <div class="carousel-caption">标题 3</div>
	      </div>
	   </div>
	   <!-- 轮播（Carousel）导航 -->
	   <a class="carousel-control left" href="#myCarousel"
	      data-slide="prev"><span class="icon-prev loca" aria-hidden="true"></span></a>
	   <a class="carousel-control right" href="#myCarousel"
	      data-slide="next"><span class="icon-next loca" aria-hidden="true"></span></a>
   </div>
	<script type="text/javascript">
		$(document).ready(function(){
		    $('.carousel').carousel({
		     	interval:2000
		     })
		})
	</script>
	<!-- **************************图片轮播end*************************************** -->
	
	<!-- <div id="navarea">  
	    <div id="navtext">
			<li class="btn_self"><a class="btn1" href="#">按钮</a>  
		        <ul>  
		            <li><a class="xiala" href="#">下拉菜单项</a></li>  
		            <li><a class="xiala" href="#">下拉菜单项</a></li>  
		            <li><a class="xiala" href="#">下拉菜单项</a></li>  
		            <li><a class="last xiala" href="#">下拉菜单项</a></li>  
		        </ul>  
		    </li>  
		    <li class="btn_self"><div style="height:18px; width:2px; background:#BFBFBF; position:relative; top:5px;"></div>  
		    </li>
		    <li class="btn_self"><a class="btn1" href="#">按钮</a>  
		        <ul>  
		            <li><a class="xiala" href="#">下拉菜单项</a></li>  
		            <li><a class="xiala" href="#">下拉菜单项</a></li>  
		            <li><a class="xiala" href="#">下拉菜单项</a></li>  
		            <li><a class="last xiala" href="#">下拉菜单项</a></li>  
		        </ul>  
		    </li>
	    </div>
    </div> -->
    
    
    <!-- ***********************主体部分begin**************************************** -->
	<div class="container">
		<div class="row clearfix">
			<div style="width:92%;"  class="col-md-8 column">
				<h3 class="text-center">
					团队新闻
				</h3>
			</div>
			<div style="width:65px;" class="col-md-4 column">
				 <button type="button" class="btn btn-info btn-default btn-block">更多>></button>
			</div>
		</div>
		<div class="row clearfix">
		    
		    <c:forEach var="articles" items="${articles}">
		        <div class="col-md-4 column">
		            <div style="height:3px; background:#551A8B;"></div>
					<img style="width:400px; height:260px;" alt="400X260" src="<%=path%>/images/${articles.articleThemePic}" class="img-thumbnail" />
					<h2 style="font-size:24px;">
						${articles.articleTitle}
					</h2>
					<p>
						${articles.articleText}
					</p>
					<p>
						 <a class="btn" href="#">View details »</a>
					</p>
			    </div>
		    </c:forEach>
		
		</div>
		<div class="row clearfix">
			<div class="col-md-6 column">
			    
				<div class="row clearfix">
					<div style="width:85%;" class="col-md-8 column">
						<h3>
							通知公告
						</h3>
					</div>
					<div style="width:65px;" class="col-md-4 column">
						 <button type="button" class="btn btn-default btn-block btn-info">更多>></button>
					</div>
				</div>
				<div style="height:3px; background:#551A8B;"></div>
				<div class="media well">
					 <a href="#" class="pull-left">
					     <div style="border:1px solid #EE7621; width:57px; heigth:55px;"class="media-object">   <!-- 通知公告日期显示 -->
                             <div style="width:55px; height:35px; background:#EE7621; font-size:26px; color:white; text-align:center;" class="ye-mon-day">26</div>
                             <div style="width:55px; height:20px; fontsize:20px; color:#EE7621">2017-07</div>
                         </div>
                    </a>
					<div class="media-body">
						学术讲座：半导体器件紧凑模型技术<br/>
						时间：2017-06-12<br/>
						地点：国光A座301
					</div>
				</div>
				<div class="media well">
					 <a href="#" class="pull-left">
                         <div style="border:1px solid #EE7621; width:57px; heigth:55px;"class="media-object">   <!-- 通知公告日期显示 -->
                             <div style="width:55px; height:35px; background:#EE7621; font-size:26px; color:white; text-align:center;" class="ye-mon-day">26</div>
                             <div style="width:55px; height:20px; fontsize:20px; color:#EE7621">2017-07</div>
                         </div>
                     </a>
					<div class="media-body">
						毕业生离校手续通知
					</div>
				</div>
				<div class="media well">
					 <a href="#" class="pull-left">
					     <div style="border:1px solid #EE7621; width:57px; heigth:55px;"class="media-object">   <!-- 通知公告日期显示 -->
                             <div style="width:55px; height:35px; background:#EE7621; font-size:26px; color:white; text-align:center;" class="ye-mon-day">26</div>
                             <div style="width:55px; height:20px; fontsize:20px; color:#EE7621">2017-07</div>
                         </div>
					 </a>
					<div class="media-body">
						光电信息大讲堂第45期
					</div>
				</div>
				
				
			</div>
			<div class="col-md-6 column">
				<div class="row clearfix">
					<div style="width:85%;" class="col-md-8 column">
						<h3>
							团队相册
						</h3>
					</div>
					<div style="width:65px;" class="col-md-4 column">
						 <button type="button" class="btn btn-default btn-info btn-block">更多>></button>
					</div>
					
				</div>
				<div style="height:3px; background:#551A8B;"></div>
				<img alt="140x140" src="<%=path%>/images/member-pic5.jpg" class="img-thumbnail" /><img alt="140x140" src="<%=path%>/images/member-pic2.jpg" class="img-thumbnail"/><img alt="140x140" src="<%=path%>/images/member-pic3.jpg" class="img-thumbnail"/><img alt="140x140" src="<%=path%>/images/member-pic6.jpg" class="img-thumbnail" />
			</div>
			
		</div>
		
		
	</div>
	<div style="height:280px; width:100%; background:#191970; color:white;">
        <div style=" position:relative; left:100px; top:30px; color:white; ">
            <p style="font-size:24px;">常用链接</p><br/>
            <span style="font-size:18px;"><i style="font-size:24px;" class="fa fa-bank"></i> &nbsp;&nbsp;图书馆</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-size:18px;"><i style="font-size:24px;" class="fa fa-user-circle"></i> &nbsp;&nbsp;用户登录</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-size:18px;"><i style="font-size:24px;" class="fa fa-bell-o"></i> &nbsp;&nbsp;通知公告</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-size:18px;"><i style="font-size:24px;" class="fa fa-qq"></i> &nbsp;&nbsp;官方QQ</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br/>
            <div style="height:15px;"></div>
            <span style="font-size:18px;"><i style="font-size:24px;" class="fa fa-universal-access"></i> &nbsp;&nbsp;校主页</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-size:18px;"><i style="font-size:24px;" class="fa fa-envelope-o"></i> &nbsp;&nbsp;邮箱登录</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-size:18px;"><i style="font-size:24px;" class="fa fa-weixin"></i> &nbsp;&nbsp;官方微信</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <span style="font-size:18px;"><i style="font-size:24px;" class="fa fa-weibo"></i> &nbsp;&nbsp;官方微博</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            
        </div>
	</div>
	
	<div style="height:40px; width:100%; background:#8B2323; color:white; text-align:center; line-height:40px;">地址：湖北省武汉市洪山区珞喻路1037号  华中科技大学国家光电实验室F区105室    邮政编码：430074  电话：027-8754 2692</div>
	
	
    <!-- *******************************主体部分end********************************** -->
    
    
    
  </body>
</html>
