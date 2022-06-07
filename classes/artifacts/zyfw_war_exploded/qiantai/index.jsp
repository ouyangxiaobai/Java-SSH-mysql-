<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=path%>">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>青协志愿服务管理系统</title>
	<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<%=path%>/js/tab.js">
	</script>
</head>

<body>

<div class="page">
	<div class="page_con">
		<jsp:include flush="true" page="inc/top.jsp"></jsp:include>

		<div class="main">
			<div class="main_con">
				<div class="main_box clearfix">
					<div class="main_left">
						<div class="m_border">
							<div class="m_title">
								关于我们
							</div>
							<div class="m_content intro">
								<p>
									${jieshao.neirong}
								<p>
							</div>
						</div>
						<div class="m_border news">
							<div class="m_title">
								网站公告
							</div>
							<div class="m_content">
								<div class="news_list ">
									<ul>
										<s:iterator value="#request.gonggaoList" id="gonggao">
											<li>
												<a href="<%=path%>/gonggaoView.action?gonggaoId=${gonggao.gonggaoId}" target="_blank"><s:property value="#gonggao.gonggaoTitle"/></a>
											</li>
										</s:iterator>
									</ul>
								</div>
							</div>
						</div>

						<div class="m_border news">
							<div class="m_title">
								友情链接
							</div>
							<div class="m_content">
								<div class="news_list ">
									<ul>
										<s:iterator value="#request.lianjieList" id="lianjie">
											<li>
												<a href="${lianjie.url }" target="_blank"> &nbsp;${lianjie.name }</a>
											</li>
										</s:iterator>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="main_center">
						<div class="m_border">
							<ul class="product_tab">
								<li class="hover" onclick="setTab('data',1,2)" id="data1">
									活动信息
								</li>
							</ul>
							<div class="product_tabcon" id="con_data_1"
								 style="display: block;">
								<ul>
									<s:iterator value="#request.huodongList" id="huodong">
										<li>
											<p class="pic">
												<a  href="<%=path%>/huodongView.action?id=${huodong.id}"><img
														src='<%=path%><s:property value="#huodong.pic"/>' /></a>
											</p>
											<p>
												<s:property value="#huodong.name"/>
											</p>
										</li>
									</s:iterator>
								</ul>
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
