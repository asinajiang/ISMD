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
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>homepage</title>
    
	<!-- <meta http-equiv="pragma" content="no-cache"> -->
<!-- 	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page"> -->
	
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/homepage-styles.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/homepage-htmleaf-demo.css">
	<link rel="stylesheet" type="text/css" href="<%=path%>/css/homepage-normalize.css">
	
	<script type="text/javascript" src="<%=path%>/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="<%=path%>/js/jquery.color.js"></script>
  </head>
  
  <body>
  <div class="htmleaf-container">
        <header class="htmleaf-header">
            <!-- <h1>CSS3响应式下拉导航菜单特效 <span>CSS3 animated & responsive dropdown menu</span></h1>
            <div class="htmleaf-links">
                <a class="htmleaf-icon icon-htmleaf-home-outline" href="http://www.htmleaf.com/" title="jQuery之家" target="_blank"><span> jQuery之家</span></a>
                <a class="htmleaf-icon icon-htmleaf-arrow-forward-outline" href="http://www.htmleaf.com/css3/ui-design/201604163348.html" title="返回下载页" target="_blank"><span> 返回下载页</span></a>
            </div>-->
        </header>
        <nav class="animenu">
            <button class="animenu__toggle">
		    <span class="animenu__toggle__bar"></span>
		    <span class="animenu__toggle__bar"></span>
		    <span class="animenu__toggle__bar"></span>
		  </button>
            <ul class="animenu__nav">
                <li>
                    <a href="#">Home</a>
                </li>
                <li>
                    <a href="#">Archive</a>
                    <ul class="animenu__nav__child">
                        <li><a href="">Sub Item 1</a></li>
                        <li><a href="">Sub Item 2</a></li>
                        <li><a href="">Sub Item 3</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">Categories</a>
                    <ul class="animenu__nav__child">
                        <li><a href="">Sub Item 1</a></li>
                        <li><a href="">Sub Item 2</a></li>
                        <li><a href="">Sub Item 3</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#">About</a>
                </li>
                <li>
                    <a href="#">Contact</a>
                </li>
            </ul>
        </nav>
        <div class="related">
            <div style="height: 100px"></div>


        </div>
    </div>

    <script type="text/javascript">
        (function() {
            var animenuToggle = document.querySelector('.animenu__toggle'),
                animenuNav = document.querySelector('.animenu__nav'),
                hasClass = function(elem, className) {
                    return new RegExp(' ' + className + ' ').test(' ' + elem.className + ' ');
                },
                toggleClass = function(elem, className) {
                    var newClass = ' ' + elem.className.replace(/[\t\r\n]/g, ' ') + ' ';
                    if (hasClass(elem, className)) {
                        while (newClass.indexOf(' ' + className + ' ') >= 0) {
                            newClass = newClass.replace(' ' + className + ' ', ' ');
                        }
                        elem.className = newClass.replace(/^\s+|\s+$/g, '');
                    } else {
                        elem.className += ' ' + className;
                    }
                },
                animenuToggleNav = function() {
                    toggleClass(animenuToggle, "animenu__toggle--active");
                    toggleClass(animenuNav, "animenu__nav--open");
                }

            if (!animenuToggle.addEventListener) {
                animenuToggle.attachEvent("onclick", animenuToggleNav);
            } else {
                animenuToggle.addEventListener('click', animenuToggleNav);
            }
        })()
    </script>
  
  
  
  
  
      <%-- <div>
          <table border="1px" width="100%">
	        <c:forEach var="sections" items="${sections}">
	            <tr>
	              <td colspan="2">${sections.sectionName}</td>
	            </tr>
	        </c:forEach>
	        <c:forEach var="cols" items="${cols}">
	            <tr>
	              <td colspan="2">${cols.columnsName}</td>
	            </tr>
	        </c:forEach>
          </table>

      </div> --%>
  </body>
</html>
