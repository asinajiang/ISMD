<%@ page language="java" import="java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
/* String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
request.setAttribute("path" , path); */
/* List<Section> sessionSectionList= request.getAttribute("sessionSectionList"); */
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- *************************logo******************************* -->
  <img style="width:100%;max-width:800px;" alt="logo" src="<%=path%>/images/logo.png">   
	
  <!-- *****************************导航begin************************************ -->
	<div id="navarea">
	    <div id="navtext">
	        <c:forEach var="section" items="${sessionScope.sessionSectionList}">
	            <li class="btn_self nav_li"><a class="btn1 nav_a" href="section-${section.sectionId}.html">${section.sectionName}</a>
	                <ul class="nav_ul">
		                <c:forEach var="cols" items="${sessionScope.sessionColumnsList}">
		                    <c:if test="${cols.section.sectionId == section.sectionId}">
		                        <li class="nav_li"><a id="xiala" class="xiala nav_a" href="columns-${cols.columnsId}.html">${cols.columnsName}</a></li>
		                    </c:if>
		                </c:forEach>
	                </ul>
	            </li>
	            <c:if test="${section.sectionId < sessionScope.size}">
	            <li class="btn_self nav_li"><div style="height:18px; width:2px; background:#BFBFBF; position:relative; top:5px;"></div>
	            </c:if>
	        </c:forEach>
	    </div>
    </div>
