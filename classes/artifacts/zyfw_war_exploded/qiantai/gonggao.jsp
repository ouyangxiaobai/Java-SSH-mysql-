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
		<title>网站公告</title>
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
							<div class="m_title2">
								<h3>
									捐赠去向公示
								</h3>
							</div>
							<div class="article_listbox">
					 
								
								
								
								
								<ul>
									 <s:iterator value="#request.gonggaoList" id="gonggao">
									<li>
										<span class="time">
										<s:property value='#gonggao.gonggaoFabuzhe'/>&nbsp;&nbsp;&nbsp;&nbsp;<s:property value='#gonggao.gonggaoData'/></span><a href="<%=path%>/gonggaoView.action?gonggaoId=${gonggao.gonggaoId}"
											><s:property value='#gonggao.gonggaoTitle'/></a>
									</li>
									</s:iterator>
								</ul>
								
								
							</div>
							 <div class="message_con">
							 
                </div>
						</div>
					</div>
				</div>
				<!----------------内容区结束-------------------->
				<!---------------页脚开始---------------->
				<div class="bottom">
					<p>
						优优网站设计版权所有
					</p>
				</div>
				<!---------------页脚结束---------------->
			</div>
		</div>
	</body>
</html>
