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
	
	<!-- 使用font-awesome字体图标要引入的资源 -->
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/TopNav.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/section.css">
	
	<script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/bootstrap.min.js"></script>
	
	
	
	
	
  </head>
  
  <body>
    <%@ include file="TopNav.jsp" %>
    <div class="container">
		<div class="row clearfix" style="margin-top:30px;">
			<div  class="col-md-2 column" style="width:25%; ">
				<div class="panel panel-default">
					<div class="panel-heading" style="text-align:center; background:#B22222; color:white;">
						<h3 class="panel-title">
							${section.sectionName}
						</h3>
					</div>
					<c:forEach var="cols" items="${cols}">
					    <i style="float:left; position:relative; left:8px; top:16px;" class="fa fa-tag"></i>
					<div class="panel-footer">
						&nbsp;&nbsp;&nbsp;<a href="columns-${cols.columnsId}.html">${cols.columnsName}</a>
					</div>
					</c:forEach>
				</div>
			</div>
			<div style="height:4px; background:#B22222; width:75%; position:relative; left:308px;"></div>
			
			
			
			<div class="col-md-6 column" style="width:75%;">	
			    <div>
			        <br/>
			        <div style="font-size:25px;">${col.columnsName}</div>
			        <div style="height:4px; background:#B22222; width:100px;"></div>
			    </div><br/>
				
				<div style="position:relative; left:30px;">
					<c:forEach var="arts" items="${arts}">
						<span style="font-size:18px; margin:10px;"><i style="font-size:16px;" class="fa fa-caret-right"></i> <a href="" style="text-decoration:none;">${arts.articleTitle}</a></span><br/>
					</c:forEach>
				</div>
				
				
				<!-- 学术交流列表 -->
				<div style="position:relative; left:30px;">
					<span style="font-size:18px; margin:10px;"><i style="font-size:16px;" class="fa fa-caret-right"></i> blablabla</span><br/>
					<span style="font-size:18px; margin:10px;"><i style="font-size:16px;" class="fa fa-caret-right"></i> blablabla</span><br/>
					<span style="font-size:18px; margin:10px;"><i style="font-size:16px;" class="fa fa-caret-right"></i> blablabla</span><br/>
					<span style="font-size:18px; margin:10px;"><i style="font-size:16px;" class="fa fa-caret-right"></i> blablabla</span><br/>
				</div>
				
				<!-- 留白 -->
				<div style="height:500px;">
				
				</div>
				
				

			
			</div>
			
		</div>
	</div>
	
	

			
			
<%@ include file="EndNav.jsp" %>
  </body>
</html>
