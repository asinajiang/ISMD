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
	
	
<!-- <style type="text/css">
        /** {
            margin: 0;
            padding: 0;
            list-style-type: none;
        }*/
        /*a,
        img {
            border: 0;
        }*/
        /*body {
            font: 12px;
        }*/
        
        .clearfix:after {
            content: ".";
            display: block;
            height: 0;
            clear: both;
            visibility: hidden;
        }
        
        .clearfix {
            display: inline-table;
        }
        /* Hides from IE-mac \*/
        /**html .clearfix {
            height: 1%;
        }*/
        
        .clearfix {
            display: block;
        }
        /* End hide from IE-mac */
        /**+html .clearfix {
            min-height: 1%;
        }*/
        /* lanrenzhijia */
        
        .lanrenzhijia {
            width: 1250px;
            margin: 10px auto 0 auto;
            overflow: hidden;
        }
        
        .lanrenzhijia ul {
            width: 1250px;
        }
        
        .lanrenzhijia ul li {
            float: left;
            margin-right: 6px;
            margin-bottom: 10px;
            display: inline;
            width: 300px;
            height: 430px;
            overflow: hidden;
            position: relative;
        }
        
        .lanrenzhijia ul li .photo {
            width: 300px;
            height: 430px;
            overflow: hidden;
        }
        
        .lanrenzhijia .rsp {
            width: 300px;
            height: 430px;
            overflow: hidden;
            position: absolute;
            background: #000;
            top: 0px;
            left: 0px;
        }
        
        .lanrenzhijia .text {
            position: absolute;
            width: 300px;
            height: 430px;
            left: -300px;
            top: 0px;
            overflow: hidden;
        }
        
        .lanrenzhijia .text h3 {
            width: 300px;
            margin-top: 100px;
            height: 50px;
            line-height: 50px;
            text-align: center;
            color: #FFFFFF;
            font-size: 20px;
        }
        
        .lanrenzhijia .text a {
            text-decoration: none
        }
        
        .lanrenzhijia .text div {
            text-align: center;
            color: #FFFFFF;
            font-size: 18px;
        }
    </style> -->
	
	
	
	
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
				<div class="lanrenzhijia">
			        <ul class="clearfix">
			            <li class="thumbnail">
			                <div class="photo"><img src="<%=path%>/images/member-pic3.jpg" width="180" height="240" /></div>
			                <div class="rsp"></div>
			                <div class="text">
			                    <a href="">
			                        <h3>三亚婚纱照</h3>
			                        <div>POST TIME :2014.02.21</div>></a>
			                </div>
			            </li>
			            <li class="thumbnail">
			                <div class="photo"><img src="http://demo.lanrenzhijia.com/2014/pic0704/images/lanrenzhijia02.jpg" width="180" height="240" /></div>
			                <div class="rsp"></div>
			                <div class="text">
			                    <a href="">
			                        <h3>樱花树婚纱照</h3>
			                        <div>POST TIME :2014.02.21</div>
			                    </a>
			                </div>
			            </li>
			            <li class="thumbnail">
			                <div class="photo"><img src="http://demo.lanrenzhijia.com/2014/pic0704/images/lanrenzhijia03.jpg" width="180" height="240" /></div>
			                <div class="rsp"></div>
			                <div class="text">
			                    <a href="">
			                        <h3>爱丽丝庄园婚纱照</h3>
			                        <div>POST TIME :2014.02.21</div>
			                    </a>
			                </div>
			            </li>
			            <li class="thumbnail">
			                <div class="photo"><img src="http://demo.lanrenzhijia.com/2014/pic0704/images/lanrenzhijia04.jpg" width="180" height="240" /></div>
			                <div class="rsp"></div>
			                <div class="text">
			                    <a href="">
			                        <h3>北戴河婚纱照</h3>
			                        <div>POST TIME :2014.02.21</div>
			                    </a>
			                </div>
			            </li>
			            <li class="thumbnail">
			                <div class="photo"><img src="http://demo.lanrenzhijia.com/2014/pic0704/images/lanrenzhijia04.jpg" width="180" height="240" /></div>
			                <div class="rsp"></div>
			                <div class="text">
			                    <a href="">
			                        <h3>北戴河婚纱照</h3>
			                        <div>POST TIME :2014.02.21</div>
			                    </a>
			                </div>
			            </li>
			        </ul>
			        <div class="clear"></div>
			    </div>
			
			</div>
			
		</div>
	</div>
	
	
    <!-- <script src="http://www.lanrenzhijia.com/ajaxjs/jquery.min.js"></script> -->
    <script>
        $(function() {
            $(".lanrenzhijia ul li .rsp").hide();
            $(".lanrenzhijia ul li").hover(function() {
                    $(this).find(".rsp").stop().fadeTo(500, 0.5)
                    $(this).find(".text").stop().animate({
                        left: '0'
                    }, {
                        duration: 500
                    })
                },
                function() {
                    $(this).find(".rsp").stop().fadeTo(500, 0)
                    $(this).find(".text").stop().animate({
                        left: '300'
                    }, {
                        duration: "fast"
                    })
                    $(this).find(".text").animate({
                        left: '-300'
                    }, {
                        duration: 0
                    })
                });
        });
    </script>
			
			
<%@ include file="EndNav.jsp" %>
  </body>
</html>
