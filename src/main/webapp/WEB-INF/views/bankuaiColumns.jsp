<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
	request.setAttribute("path", path);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "<a href="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>backStageHomepage</title>
<!-- 使用font-awesome字体图标要引入的资源 -->
<link rel="stylesheet" type="text/css" href="<%=path%>/css/font-awesome.min.css">

<style>
	body {
            font-family: Arial;
            font-size: 16px;
        }
        
        a {
            text-decoration: none;
        }
        
        dl {
            width: 100%;
        }
        
        dl,
        dd {
            margin: 0;
        }
        
        dt {
            /* background-color: #274458; */
            /* background-image: url(images/201207.png); */
            background-repeat: no-repeat;
            background-position: 5px 13px;
            font-size: 18px;
            /* padding: 0px 5px 0px 20px; */
            margin: 2px 0px;
            height: 29px;
            line-height: 28px;
        }
        
        dt a {
            color: white;
            text-decoration: none;
        }
        
        dd a {
            color: white;
        }
        
        ul {
            list-style: none;
            /* padding: 0px 5px 0px 20px; */
            margin: 0;
            width: 100%;
        }
        
        li {
            line-height: 24px;
            /* background-color: #274458; */
            position: relative;
            left: -40px;
        }
        
        .bg {
            background-position: -16px -16px;
        }
        
        .secList {
            position: relative;
            left: -40px;
        }
        dt a {
        	position:relative;
        	left:20px;
        }
        
        li a {
            position: relative;
            left: 40px;
        }
        
        .secList a {
            position: relative;
            left: 60px;
        }
        
        
        /* 毛玻璃 */
        .blur {
            filter: url(blur.svg#blur);
            /* FireFox, Chrome, Opera */
            -webkit-filter: blur(5px);
            /* Chrome, Opera */
            -moz-filter: blur(5px);
            -ms-filter: blur(5px);
            filter: blur(5px);
            filter: progid: DXImageTransform.Microsoft.Blur(PixelRadius=10, MakeShadow=false);
            /* IE6~IE9 */
        }
        html,body{
        	height:150%;
        }
        
</style>
<script type="text/javascript" src="<%=path%>/js/jquery-1.12.0.min.js"></script>
<script type="text/javascript">
        $(document).ready(function() {
            $("dd").hide();
            $("dt a").click(function() {
                /*$(this).parent().toggleClass("bg");
                $(this).parent().prevAll("dt").removeClass("bg")
                $(this).parent().nextAll("dt").removeClass("bg")*/
                //$(".secList").hide();
                $(this).parent().next().find(".secList").hide();
                $(this).parent().next().slideToggle();

                //$(".secTitle").parent().next().slideToggle();
                /*$(this).parent().prevAll("dd").slideUp("slow");
                $(this).parent().next().nextAll("dd").slideUp("slow");*/
                return false;
            });
            $(".secTitle").click(function() {
                $(this).parent().next().slideToggle();
                return false;
            });

            $("#test").click(function() {
                if ($(this).attr("class") == "reds") {
                    $(this).removeClass("reds").addClass("yellows");
                } else if ($(this).attr("class") == "yellows") {
                    $(this).removeClass("yellows").addClass("reds");
                }
            });
        });
    </script>
</head>
<body>
	<div>
		<img style="width:60%; height:60%;" id="logo" alt="navigatorpic" src="<%=path%>/images/logo.png">
	</div>
	<!-- <div style="background-color:#003fa5; height:80px;"></div> -->
	
	<!-- <div class="blur" style="background-color:#274458;height:1600px;float:left;width:25%; z-index:-1; position:fixed;"></div> -->
	<div style="background-color:#274458;height:100%;float:left;width:25%;">
	<dl>
		<dt><a href="#">网站板块区</a></dt>
		<dd>
			<ul>
				<c:forEach var="section" items="${sessionScope.sessionSectionList}">
					<li><a class="secTitle" href="#">${section.sectionName}</a></li>
					<ul class="secList">
					<c:forEach var="cols" items="${sessionScope.sessionColumnsList}">
						<c:if test="${cols.section.sectionId == section.sectionId}">
		            		<li><a href="<c:url value="/bankuaiColumns-${cols.columnsId}.html"/>">${cols.columnsName}</a></li>
		            	</c:if>
					</c:forEach>
					</ul>
		    
				</c:forEach>
			</ul>
		</dd>
	</dl>
	
	<dl>
        <dt><a href="#">用户管理</a></dt>
        <dd>
            <ul>
                <li><a class="secTitle" href="#">总管理员</a></li>
                <li><a class="secTitle" href="#">管理员</a></li>
                <li><a class="secTitle" href="#">一般用户</a></li>
            </ul>
        </dd>
        <dt><a href="#">文章管理</a></dt>
        </dl>
    
    </div>
    <div style="background-color:#FFDEAD; height:100%; width:75%; position:relative; left:25%;" >
    	<div style="position:relative; left:-25%; top:30px;font-size:15px;">${section.sectionName}>${col.columnsName}</div>
		<div style="position:relative; left:82px;top:30px;height:3px; background:#B22222; width:180px;"></div>
		
    	<div style="position:relative; left:-25%; top:50px; width:120%;">
			<c:forEach var="arts" items="${arts}">
				<hr style="height:1px;border:none;border-top:1px dashed #0066CC; margin:2px 0px;"/>
				<span style="font-size:18px; margin:10px;"><i style="font-size:16px;" class="fa fa-caret-right"></i> 
					<a href="<c:url value="articleDisplay-${arts.articleId}.html"/>" style="text-decoration:none;" target="_blank">${arts.articleTitle}</a>
					<a href="<c:url value="articleUpdate-${arts.articleId}.html"/>" style="text-decoration:none;">修改</a>
				</span><br/>
			</c:forEach>
				<hr style="height:1px;border:none;border-top:1px dashed #0066CC; margin:2px 0px;"/>
		</div>
    
    </div>
	
</body>
</html>
