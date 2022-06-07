<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>管理页面</title>

		<script src="js/prototype.lite.js" type="text/javascript">
</script>
		<script src="js/moo.fx.js" type="text/javascript">
</script>
		<script src="js/moo.fx.pack.js" type="text/javascript">
</script>
		<style>
body {
	font: 12px Arial, Helvetica, sans-serif;
	color: #000;
	background-color: #EEF2FB;
	margin: 0px;
}

#container {
	width: 182px;
}

H1 {
	font-size: 12px;
	margin: 0px;
	width: 182px;
	cursor: pointer;
	height: 30px;
	line-height: 20px;
}

H1 a {
	display: block;
	width: 182px;
	color: #000;
	height: 30px;
	text-decoration: none;
	moz-outline-style: none;
	background-image: url(images/menu_bgs.gif);
	background-repeat: no-repeat;
	line-height: 30px;
	text-align: center;
	margin: 0px;
	padding: 0px;
}

.content {
	width: 182px;
	height: 26px;
}

.MM ul {
	list-style-type: none;
	margin: 0px;
	padding: 0px;
	display: block;
}

.MM li {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	list-style-type: none;
	display: block;
	text-decoration: none;
	height: 26px;
	width: 182px;
	padding-left: 0px;
}

.MM {
	width: 182px;
	margin: 0px;
	padding: 0px;
	left: 0px;
	top: 0px;
	right: 0px;
	bottom: 0px;
	clip: rect(0px, 0px, 0px, 0px);
}

.MM a:link {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}

.MM a:visited {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}

.MM a:active {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	color: #333333;
	background-image: url(images/menu_bg1.gif);
	background-repeat: no-repeat;
	height: 26px;
	width: 182px;
	display: block;
	text-align: center;
	margin: 0px;
	padding: 0px;
	overflow: hidden;
	text-decoration: none;
}

.MM a:hover {
	font-family: Arial, Helvetica, sans-serif;
	font-size: 12px;
	line-height: 26px;
	font-weight: bold;
	color: #006600;
	background-image: url(images/menu_bg2.gif);
	background-repeat: no-repeat;
	text-align: center;
	display: block;
	margin: 0px;
	padding: 0px;
	height: 26px;
	width: 182px;
	text-decoration: none;
}
</style>
	</head>

	<body>
		<table width="100%" height="280" border="0" cellpadding="0"
			cellspacing="0" bgcolor="#EEF2FB">
			<tr>
				<td width="182" valign="top">
					<div id="container">
						 
						<h1 class="type">
							<a href="javascript:void(0)">管理员维护</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=path %>/adminManage.action" target="main">管理员维护</a>
								</li>
								<li>
									<a href="<%=path %>/admin/index/adminAdd.jsp" target="main">管理员添加</a>
								</li>
								<li>
									<a href='<%=path %>/admin/index/userinfo.jsp' target='main'>密码修改</a> 
								</li>
								
							</ul>
						</div>
						<h1 class="type">
							<a href="javascript:void(0)">志愿者管理</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=path %>/userMana.action" target="main">志愿者审核</a>
								</li>
								 <li>
									<a href="<%=path %>/userList.action" target="main">志愿者查询</a>
								</li>
							</ul>
						</div>
						<h1 class="type">
							<a href="javascript:void(0)">活动管理</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=path %>/huodongMana.action" target="main">活动管理</a>
								</li>
							</ul>
						</div>
				 
						<h1 class="type">
							<a href="javascript:void(0)">捐赠管理</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=path %>/juanzengMana.action" target="main">捐赠管理</a>
								</li>
								<li>
							<a href="<%=path %>/gonggaoMana.action" target="main">捐赠去向</a>
							</li>
							</ul>
						</div>
				 
				 
				 
				     <h1 class="type">
							<a href="javascript:void(0)">关于我们</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=path %>/jieshaoMana.action?id=1" target="main">关于我们</a>
								</li>
							 
							</ul>
						</div>
					
					   <h1 class="type">
							<a href="javascript:void(0)">友情链接</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=path %>/lianjieMana.action" target="main">友情链接</a>
								</li>
							 
							</ul>
						</div>
						
						<h1 class="type">
							<a href="javascript:void(0)">新闻管理</a>
						</h1>
						<div class="content">
							<table width="100%" border="0" cellspacing="0" cellpadding="0">
								<tr>
									<td>
										<img src="images/menu_topline.gif" width="182" height="5" />
									</td>
								</tr>
							</table>
							<ul class="MM">
								<li>
									<a href="<%=path %>/catelogMana.action" target="main">新闻类别</a>
								</li>
							 <li>
									<a href="<%=path %>/newsMana.action" target="main">内容管理</a>
								</li>
							</ul>
						</div>
					
					 
					
	 
					
					<h1 class="type">
						<a href="javascript:void(0)">退出系统</a>
					</h1>
					<div class="content">
						<table width="100%" border="0" cellspacing="0" cellpadding="0">
							<tr>
								<td>
									<img src="images/menu_topline.gif" width="182" height="5" />
								</td>
							</tr>
						</table>
						<ul class="MM">
							<li>
								<a href='#' onclick='javascript:window.parent.location="<%=path %>/admin/login.jsp"'>退出系统</a>
							</li>
							
							
						</ul>
					</div>
					
					
					
					
					<script type="text/javascript">
var contents = document.getElementsByClassName('content');
var toggles = document.getElementsByClassName('type');

var myAccordion = new fx.Accordion(toggles, contents, {
	opacity : true,
	duration : 400
});
myAccordion.showThisHideOpen(contents[0]);
</script>
				</td>
			</tr>
		</table>
	</body>
</html>
