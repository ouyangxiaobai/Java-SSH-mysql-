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
		<title>留言板</title>
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
									留言
								</h3>
							</div>
							<div class="m_content">
							
						    <s:iterator value="#request.liuyanList" id="liuyan">
								<div class="leave_mes">
									<p class="mes_info">
										<span class="reply"> </span><span>留言人：${liuyan.liuyanUser}</span><span>时间：${liuyan.liuyanDate}</span>
									</p>
									<div class="mes_con">
										 ${liuyan.liuyanContent}
									</div>
								 
								</div>
								
								</s:iterator> 
								
								<div class="message_con">
									<form id="form2" name="form2" method="post" action="<%=path%>/liuyanAddWeb.action">
										<h3>
											我要留言：
										</h3>
										<p>
											<textarea name="message" id="message" cols="45" rows="5"
												class="text_mes"></textarea>
										</p>
										<p class="btn_box">
											<input type="button" name="button2" id="button2" value="提交" onclick="addMessage();"
												class="btn" />
										</p>
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

<script type="text/javascript">
 
	        function addMessage()
	        {
	            <s:if test="#session.user==null">
                    alert("请先登录");
                </s:if>
		        <s:else>
			       if(document.form2.message.value=="")
		           {
		               alert("请输入留言内容");
		               return;
		           }
	          
	               document.form2.submit();
			    </s:else>
	           
	        }
	        
	</script>