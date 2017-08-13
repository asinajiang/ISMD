<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% 
    String context = request.getContextPath();
    request.setAttribute("context",context);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <style type="text/css">
    html{   
        width: 100%;   
        height: 100%;   
        overflow: hidden;   
        font-style: sans-serif;   
    }   
    body{   
        width: 100%;   
        height: 100%;   
        font-family: 'Open Sans',sans-serif;   
        margin: 0;   
        background-color: #4A374A;   
    }   
    #login{   
        position: absolute;   
        top: 50%;   
        left:50%;   
        margin: -150px 0 0 -150px;   
        width: 300px;   
        height: 300px;   
    }   
    #login h1{   
        color: #fff;   
        text-shadow:0 0 15px;   
        letter-spacing: 1px;   
        text-align: center;   
    }   
    h1{   
        font-size: 2em;   
        margin: 0.67em 0;   
    }   
    .login_input{   
        width: 278px;   
        height: 18px;   
        margin-bottom: 10px;   
        outline: none;   
        padding: 10px;   
        font-size: 13px;   
        color: #fff;   
        text-shadow:1px 1px 1px;   
        border-top: 1px solid #312E3D;   
        border-left: 1px solid #312E3D;   
        border-right: 1px solid #312E3D;   
        border-bottom: 1px solid #56536A;   
        border-radius: 4px;   
        background-color: #2D2D3F;   
    }   
    .submit{  
        float: left; 
        width: 150px;   
        min-height: 20px;   
        display: block;   
        background-color: #4a77d4;   
        border: 1px solid #3762bc;   
        color: #fff;   
        padding: 9px 18px;   
        font-size: 15px;   
        line-height: normal;   
        border-radius: 5px;   
        margin: 0;   
        cursor:pointer;
    }
    #login a{
        display: block;
        float: left;
        color: white;
        text-shadow:0.5px 0.5px 0.5px;
        font-size: 15px;
        line-height: 38px;
       
        margin: 0px 15px 0 15px;
    }
    </style>
</head>
<body>
    <div id="login">  
        <h1>Login</h1>  
        <!--  <form method="post" action="${pageContext.request.contextPath}/person/doLogin }">  -->
        <c:if test="${!empty errorMsg}">
            <div style="color:red">${errorMsg}</div>
        </c:if>
        <form action="${context}/doLogin.html" method="post">
        <%-- <form method="post" action="<c:url value='loginCheck.html'/>">   --%>   
            <input class="login_input" type="text" required="required" placeholder="用户名" name="userName"></input>  
            <input class="login_input" type="password" required="required" placeholder="密码" name="password"></input>  
            <!-- <button class="submit" type="submit">登录</button> -->
            <input type="submit" class="submit" value="登录"/>
            <a href="<c:url value="/register.jsp"/>">注册</a>    <a href="#">忘记密码</a>  
        </form>  
    </div>
</body>
</html>