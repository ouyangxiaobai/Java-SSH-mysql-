<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>用户注册</title>
		<link href="<%=path%>/css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="<%=path%>/js/tab.js">
</script>
		<LINK
			href="<%=path%>/js/jquery/plugin/jquery-easyui/themes/default/easyui.css"
			type="text/css" rel="stylesheet">
		<LINK href="<%=path%>/js/jquery/plugin/jquery-easyui/themes/icon.css"
			type="text/css" rel="stylesheet">

		<script type="text/javascript"
			src="<%=path%>/js/jquery/jquery-1.4.2.min.js">
		</script>
		<script type="text/javascript" src="<%=path%>/js/xiehui.js">
		</script>
		<script type="text/javascript"
			src="<%=path%>/js/jquery/plugin/jquery-easyui/jquery.easyui.min.js">
		</script>
		<script type="text/javascript"
			src="<%=path%>/js/jquery/plugin/jquery-easyui/locale/easyui-lang-zh_CN.js">
		</script>
		<script type="text/javascript"
			src="<%=path%>/js/jquery/plugin/jquery-easyui/plugins/jquery.window.js">
		</script>
		<script type="">
function phonecheck(s) {
	var str = s;

	if (!(/^1[3|5][0-9]\d{4,8}$/.test(s))) {

		alert("您的电话输入不正确");
		return false;
	} else {

		return true;
	}
}
</script>
<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
		 
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
								<div class="m_title2">
									<h3>
										志愿者注册
									</h3>
								</div>
								<div class="m_content message_con">
									<form id="form1" name="form1" method="post" action="<%=path%>/userinfo!editFUserinfo.action"
										onSubmit="return phonecheck(document.all.tel.value)">
										<p class="tips">
											<input type="hidden" id="messageInfo"
												value="${requestScope.messageInfo}" />
											<b>注：</b>带
											<span class="red">*</span>号为必填项
										</p>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="left_name">
													账号：
												</td>
												<td>
													<input type="text" name="userName" id="userName"
														class="text_input text150"  />
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											<tr>
												<td class="left_name">
													密码：
												</td>
												<td>
													<input type="password" name="userinfo.pwd" id="pwd"
														class="text_input text150" value="${sessionScope.user.pwd}"/>
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>



											<tr>
												<td class="left_name">
													性别：
												</td>
												<td>
													<span><input type="radio" name="userinfo.sex" id="sex"
															 
															value="男" />男</span><span><input
															type="radio" name="userinfo.sex" id="radio" value="女" />女</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
 

											<tr>
												<td class="left_name">
													电话：
												</td>
												<td>
													<input type="text" name="userinfo.tel" id="tel"
														class="text_input text150"  value="${sessionScope.user.tel}"/>

												</td>
											</tr>

											 

											<tr>
												<td class="left_name">
													邮箱：
												</td>
												<td>
													<input type="text" name="userinfo.email" id="email"
														class="text_input text150"  value="${sessionScope.user.email}"/>

												</td>
											</tr>

											 

											<tr>
												<td>
													&nbsp;
												</td>
												<td>
													<input type="image" name="button" id="button"
														src="images/ok.gif" />
												</td>
											</tr>
										</table>
									</form>
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
<script>

$(document).ready(function() {
	var $messageInfo = $("#messageInfo").val();
	if ($messageInfo != null && $messageInfo != "") {
		$.messager.show( {
			title : '提示',
			msg : $messageInfo,
			timeout : 2000,
			showType : 'slide'
		});
		$("#messageInfo").val("");
	}
});
</script>
