<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=path%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>活动说明</title>
	<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=path%>/js/tab.js">
	</script>
</head>

<body>

<div class="page">
	<div class="page_con">
		<jsp:include flush="true" page="inc/top.jsp"></jsp:include>
		<!----------------内容区开始-------------------->
		<div class="sub_main">
			<div class="sub_maincon">
				<div class="sub_mainbox clearfix">

					<div class="m_border">

						<div class="m_content">
							<div class="article_conbox">

								<h1 class="title">
									<s:property value='#request.huodong.name'/>
								</h1>
								<div class="article_info">
									<span>活动名称：<s:property value='#request.huodong.name'/>&nbsp;&nbsp;&nbsp;&nbsp;地址：<s:property value='#request.huodong.dizhi'/>&nbsp;&nbsp;&nbsp;&nbsp;</span>
								</div>
								<div class="article_con" align="center">
									<p>
										<img style="width: 280px" height="200px;"  src="<%=path%><s:property value='#request.huodong.pic'/>"/>
									</p>
								</div>
								<div class="article_con">

									<s:property value='#request.huodong.info' escape="false"/>

								</div>
								<div class="article_info" align="center">
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!----------------内容区结束-------------------->
		<!---------------页脚开始---------------->
		<div class="bottom">
			<p>
				版权所有
			</p>
		</div>
		<!---------------页脚结束---------------->
	</div>
</div>
</body>
</html>
