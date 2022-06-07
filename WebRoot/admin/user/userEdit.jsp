<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
            
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/editUser.action" name="form1" method="post">
				<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#FFFFFF" style="font-size: 11px;">
							用户名：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userName" id="userName" readonly="readonly" value="${user.userName }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#FFFFFF" style="font-size: 11px;">
							密 码：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="userPw" value="${user.userPw }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#FFFFFF" style="font-size: 11px;">
							真实姓名：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userRealname" value="${user.userRealname }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#FFFFFF" style="font-size: 11px;">
							住址：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userAddress" value="${user.userAddress }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#FFFFFF" style="font-size: 11px;">
							性别：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="radio" name="userSex" value="男" checked="checked"/>男
							&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="radio" name="userSex" value="女"/>女
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#FFFFFF" style="font-size: 11px;">
							联系方式：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userTel" value="${user.userTel }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#FFFFFF" style="font-size: 11px;">
							E-mail：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userEmail" value="${user.userEmail }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#FFFFFF" style="font-size: 11px;">
							QQ：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="userQq" value="${user.userQq }"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#FFFFFF">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="hidden" name="userId" value="${user.userId }"/>
							<input type="submit" value="确定"/>
							 
						</td>
					</tr>
				</table>
			</form>
   </body>
</html>
