<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String context = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ context + "/";
	request.setAttribute("context", context);
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "<a href="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>backStageHomepage</title>
<style>
	body {
		background-color: #F3F3F3;
		margin: 0px;
		font-size: 13pt;
		font-family:宋体;
		background-position: center;
		text-decoration: none;
		scrollbar-face-color: #f6f6f6;
		scrollbar-highlight-color: #ffffff;
		scrollbar-shadow-color: #EEEEEE;
		scrollbar-3dlight-color: #EEEEEE;
		scrollbar-arrow-color: #330000;
		scrollbar-track-color: #f6f6f6;
		scrollbar-darkshadow-color: #ffffff;
	}
	
	#logo {
		position: fixed;
		left: 120px;
		width: 600px;
		height: 70px;
	}
	/* 网站链接总的css定义*/
	a {
		text-decoration: underline;
	}
	
	a:link {
		color: #595989;
	}
	
	a:visited {
		color: #595989;
	}
	
	a:hover {
		color: #ff0000;
	}
	
	a:active {
		color: #595989;
	}
	
	.dt1, .dt2, .dt3, .dt4, .dt {
		padding: 0px;
		margin: 0px;
		border: 0px;
		padding-left: 50px;
		border-left: 5px solid #c0c0c0;
		border-top: 1px solid #ffffff;
		border-bottom: 1px solid #c0c0c0;
		width: auto;
		text-align: left;
		line-height: 40px;
		height: 40px;
		background: #E0E0E0;
		cursor: pointer !important;
		cursor: hand;
		display: block;
	}
	/* 这里可以加入背景图片 */
	    .dt1{
	    background-image: url("<%=context%>/images/jiaobiao.png");
	    background-repeat: no-repeat;
	    /* background-position: left center; */
	    background-position: 22px  13px;
	    }
	    <%-- .dt{
	    background-image: url("<%=context%>/images/flag1.png");
	    background-repeat: no-repeat;
	    background-position: 8px center;
	    }
	    .dt2{
	    background-image: url("<%=context%>/images/flag1.png");
	    background-repeat: no-repeat;
	    background-position: right center;
	    }
	    .dt4{
	    background-image: url("<%=context%>/images/flag1.png");
	    background-repeat: no-repeat;
	    background-position: right center;
	    }
	    .dt3{
	    background-image: ur"<%=context%>/images/flag1.png"();
	    background-repeat: no-repeat;
	    background-position: right center;
	    } --%>
	#aboutbox { /*左侧box*/
		padding: 0px;
		margin: 0px;
		border: 0px;
		width: 250px;
		float: left;
		background: #eee;
	}
	
	#aboutbox dl { /*dl、dt、dd*/
		margin: 0px;
		border: 0px;
		border: medium none; /*不显示边框*/
		background: #eeeeee;
		background-image: url(); /*背景图像，这里省略了*/
		background-repeat: repeat-y;
		background-position: left;
		clear: both;
	}
	
	#aboutbox dd {
		padding: 0px;
		margin: 0px;
		border: 0px;
		background: #eee;
		border-top: 1px solid #fff;
		border-left: 5px solid #e0e0e0;
		padding-right: 3px;
	}
	
	#aboutbox ul { /*ul、li定义*/
		padding: 0px;
		margin: 0px;
		border: 0px;
		list-style-type: none;
	}
	
	#aboutbox li {
		padding: 0px;
		margin-left: 45px;
		border: 0px;
		text-align: left;
		text-indent: 10px;
		list-style: none;
	}
	
	#aboutbox li a {
		padding-left: 5px;
		margin: 0px;
		border: 0px;
		display: block;
		background: #eee;
		font-weight: normal;
		height: 38px;
		line-height: 38px;
		color: #000;
		border: 1px solid #eee;
		text-decoration: none;
	}
	
	#aboutbox li a:link, #aboutbox li a:visited {
		height: 38px;
		line-height: 38px;
	}
	
	#aboutbox li a:hover {
		padding-left: 5px;
		background-color: #e4e4e4;
		border: 1px solid #999999;
		color: #D90000;
		height: 38px;
		line-height: 38px;
	}
	
	#aboutbox li a:active {
		color: #333333;
		height: 38px;
		line-height: 38px;
		background: #EEEEEE;
	}
	
	.center_tdbgall /* 中部表格背景颜色 */ {
	    position:relative;
	    top:80px;
		background: #ffffff;
	}
</style>
</head>
<body>
	<div style="position:fixed; width:100%; height:70px; background:white;">
		<img id="logo" alt="navigatorpic" src="<%=context%>/images/logo.png">
	</div>
	<table class=center_tdbgall width="191" border="0" cellspacing="0"
		cellpadding="0">
		<tr>
			<td width=191 rowspan="2" valign=top class=web_left_all>
				<div id=aboutbox>
					<dl>
						<dt class=dt1 id=dt1 onmouseover=showbg(1) onclick=showsubmenu(1)
							onmouseout=showoutbg(1)>
							<B>文章管理</B>
						<dd id=submenu1>
							<ul>
								<LI><A href='http://www.CsrCode.cn/html/txdm/cddh/'>菜单导航特效</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/txdm/tcys/'>图层样式特效</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/txdm/txtx/'>图形图像特效</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/txdm/ymck/'>页面窗口特效</A></LI>
							</ul>
						</dd>
						</dt>
					</dl>
					<dl>
						<dt class=dt2 id=dt2 onmouseover=showbg(2) onclick=showsubmenu(2)
							onmouseout=showoutbg(2)>
							<B>用户管理</B>
						<dd id=submenu2>
							<ul>
								<LI><A href='http://www.CsrCode.cn/html/mfkj/'>免费.空间</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/sucai/'>素材.资源</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/tool/'>seo.工具</A></LI>
							</ul>
						</dd>
						</dt>
					</dl>
					<dl>
						<dt class=dt3 id=dt3 onmouseover=showbg(3) onclick=showsubmenu(3)
							onmouseout=showoutbg(3)>
							<B>资源管理</B>
						<dd id=submenu3>
							<ul>
								<LI><A href='http://www.CsrCode.cn/html/mfkj/'>免费.空间1</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/sucai/'>素材.资源1</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/tool/'>seo.工具1</A></LI>
							</ul>
						</dd>
						</dt>
					</dl>
					<dl>
						<dt class=dt4 id=dt4 onmouseover=showbg(4) onclick=showsubmenu(4)
							onmouseout=showoutbg(4)>
							<B>其他</B>
						<dd id=submenu4>
							<ul>
								<LI><A href='http://www.CsrCode.cn/html/mfkj/'>免费.空间</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/sucai/'>素材.资源</A></LI>
								<LI><A href='http://www.CsrCode.cn/html/tool/'>seo.工具</A></LI>
							</ul>
						</dd>
						</dt>
					</dl>
					<script>
						function showsubmenu(sid) {
							whichEl = eval('submenu' + sid);
							if (whichEl.style.display == 'none') {
								eval("submenu" + sid + ".style.display='';");
								eval("dt" + sid + ".className='dt2';");
							} else {
								eval("submenu" + sid + ".style.display='none';");
								eval("dt" + sid + ".className='dt1';");
							}
						}
						function showbg(sid) {
							whichEl = eval('submenu' + sid);
							if (whichEl.style.display == 'none') {
								eval("dt" + sid + ".className='dt4';");
							} else {
								eval("dt" + sid + ".className='dt3';");
							}
						}
						function showoutbg(sid) {
							whichEl = eval('submenu' + sid);
							if (whichEl.style.display == 'none') {
								eval("dt" + sid + ".className='dt1';");
							} else {
								eval("dt" + sid + ".className='dt2';");
							}
						}
					</script>
				</div>
			</TD>
		</tr>
	</table>
</body>
</html>
