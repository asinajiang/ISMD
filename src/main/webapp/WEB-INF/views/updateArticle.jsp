<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String context = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+context+"/";
request.setAttribute("context" , context);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <script type="text/javascript" src="<%=context%>/commons/Ueditor/ueditor.config.js"></script>
    <script type="text/javascript" src="<%=context%>/commons/Ueditor/ueditor.all.js"></script>
<!--     <script type="text/javascript" src="commons/Ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" src="commons/Ueditor/lang/zh-cn/zh-cn.js"></script> -->
    
    <script type="text/javascript" src="<%=context%>/js/jquery-1.12.0.min.js"></script>
    <script type="text/javascript" src="<%=context%>/js/jquery.color.js"></script>
</head>
<body>
    
    <form method="post" action="<c:url value="doArticleUpdate.html"/>">
    	<input type="hidden" value="${article.articleId}" name="id"/>
    	title：<input type="text" value="${article.articleTitle}" name="title" style="background:gray;"/>
        <script id="container" name="container" type="text/plain" style="width:800px; height:600px;">
            ${article.articleText}
        </script>
        <input type="submit" value="发表"></input> 
    </form>
    <script type="text/javascript">
      var ue = UE.getEditor('container',{
    	  autoHeight:false
      });
      function test(){
    	  //获取html内容，包括文本和html格式如<p></p>等
    	  var html = ue.getContent();
    	  //获取文本内容，即不包括html格式
    	  var txt = ue.getContentTxt();
    	  alert(html);
    	  alert(txt);
    	  window.location.href="${context}/artical/main.html";
      }
  </script>
</body>
</html>