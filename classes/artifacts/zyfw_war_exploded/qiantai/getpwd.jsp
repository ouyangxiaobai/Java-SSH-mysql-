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
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/tab.js">
</script>

		<script type="">
function phonecheck(s) {
	var str = s;
	
    if(!(/^1[3|5][0-9]\d{4,8}$/.test(s))){ 

       alert("您的电话输入不正确");
        return false;
    }
    else
    {
   
    return true;
    }
    }
  </script>
	</head>

	<body>

		<div class="page">
			<div class="page_con">
				<jsp:include flush="true" page="/inc/top.jsp"></jsp:include>
				<!----------------内容区开始-------------------->
				<div class="sub_main">
					<div class="sub_maincon">
						<div class="sub_mainbox clearfix">


							<div class="m_border">
								<div class="m_title2">
									<h3>
										找回密码
									</h3>
								</div>
								<div class="m_content message_con">
									<form id="form1" name="form1" method="post"
										action="GetUserPwdAction"   >
										<p class="tips">
											
										</p>
										<table width="100%" border="0" cellspacing="0" cellpadding="0">
											<tr>
												<td class="left_name">
													姓名：
												</td>
												<td>
													<input type="text" name="name" id="name"
														class="text_input text150" />
													<span class="red">*</span>
												</td>
												<td>
													&nbsp;
												</td>
											</tr>
											


											<tr>
												<td class="left_name">
													密码找回问题：
												</td>
												<td>
													<input type="text" name="question" id="question"
														class="text_input text150" />

												</td>
											</tr>

											<tr>
												<td class="left_name">
													密码找回答案：
												</td>
												<td>
													<input type="text" name="answer" id="answer"
														class="text_input text150" />

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
