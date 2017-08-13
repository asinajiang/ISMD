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
	
	
	<!--***************************************************  -->
	<style>   
        li,li a {  
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
        }  
          
        .btn1 {  
            display: block;  
            /* border: 1px solid #ddd; */  
            width: 50px;  
            height: 28px;  
            text-align: center;  
            line-height: 28px;  
        }  
          
        ul {  
            margin-top: 1px;  
            position: absolute; /*设置绝对定位，宽度为内容宽度*/  
            left: -999em;   /*设置隐藏*/  
            padding: 0;  /*离它的父元素的边界为0，所以可以位于父元素li的正下方*/  
        }  
          
        ul li a {  
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
        	height:60px;
        	background:#B22222;
        }
        #navtext{
        	position:relative;
        	top:10px;
        	text-align:center;
        }
    </style> 
	<!--***************************************************  -->
	
	
  </head>
  
  <body>
  <img style="width:100%;max-width:800px;" alt="logo" src="<%=path%>/images/logo.png">
	<!-- <nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">菜鸟教程</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li class="active"><a href="#">iOS</a></li>
					<li><a href="#">SVN</a></li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							Java
							<b class="caret"></b>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">jmeter</a></li>
							<li><a href="#">EJB</a></li>
							<li><a href="#">Jasper Report</a></li>
							<li class="divider"></li>
							<li><a href="#">分离的链接</a></li>
							<li class="divider"></li>
							<li><a href="#">另一个分离的链接</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav> -->
	
	<div id="navarea">
	    <div id="navtext">
	        <c:forEach var="section" items="${sections}">
	            <li class="btn_self"><a class="btn1" href="#">${section.sectionName}</a>
	                <c:forEach var="cols" items="${columns}">
	                    <c:if test="${cols.sectionId} == ${section.sectionId}">
		                    <ul>
		                        <li><a class="xiala" href="#">${cols.columnsName}</a></li>
		                    </ul>
	                    </c:if>
	                </c:forEach>
	            </li>
	            <li class="btn_self"><div style="height:18px; width:2px; background:#BFBFBF; position:relative; top:5px;"></div>
	        </c:forEach>
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
    </div>
	
	
	<div id="navarea">
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
    </div>
    
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
  </body>
</html>
