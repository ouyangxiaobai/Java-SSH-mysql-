<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		
         <script language="javascript">
           function userDel(userId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/userDel.action?userId="+userId;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	   
	   <form action="<%=path%>/userList.action" method="post">
	   &nbsp;&nbsp;姓名：<input name="userRealname" value="${userRealname}"/>  
	   &nbsp;&nbsp;电话：<input name="userTel" value="${userTel}"/>  
	   <input type="submit" value="查询"/>
	   </form>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="10" background="<%=path %>/images/tbg.gif">&nbsp;志愿者查询&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">ID</td>
					<td width="10%">姓名</td>
					<td width="10%">住址</td>
					<td width="10%">性别</td>
					<td width="10%">联系方式</td>
					<td width="10%">E-mail</td>
					<td width="10%">QQ</td>
					<td width="10%">状态</td>
					 <td width="15%">操作</td>
		        </tr>	
				<s:iterator value="#request.userList" id="user">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userId"/>
					</td>
					 
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userRealname"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userAddress"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userSex"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userTel"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#user.userEmail"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.userQq"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#user.zt"/>
					</td>
					
					
				    <td bgcolor="#FFFFFF" align="center">
					     <a href="<%=path%>/toEditUser.action?userId=<s:property value="#user.userId"/>"   class="pn-loperator">修改</a>
						<a href="#" onclick="userDel(<s:property value="#user.userId"/>)" class="pn-loperator">删除</a>
					</td>
					 
				</tr>
				</s:iterator>
			</table>
	</body>
</html>