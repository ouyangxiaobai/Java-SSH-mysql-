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
		<script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script language="javascript">
           function juanzengDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path%>/juanzengDel.action?id="+id;
               }
           }
           
           function juanzengAdd()
           {
                 var url="<%=path %>/admin/juanzeng/juanzengAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }		
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	
	<form action="<%=path%>/juanzengMana.action" method="post">
	    &nbsp;&nbsp;捐赠来源：<input type="text" name="name" value="${name}"/>
	    &nbsp;&nbsp;捐赠项目：<input type="text" name="xiangmu" value="${xiangmu}"/>
	    <input type="submit" value="查询" />
	</form>
	
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="8" background="<%=path %>/images/tbg.gif">&nbsp;捐赠管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
											 
											<td>捐赠来源</td>
											<td>捐赠项目</td>
											<td>捐赠金额</td>
											<td>捐赠时间</td>
										<td width="12%">操作</td>
		        </tr>	
				<s:iterator value="#request.juanzengList" id="juanzeng">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					
					
											 
											<td bgcolor="#FFFFFF" align="center"><s:property value="#juanzeng.name" /> </td>
											<td bgcolor="#FFFFFF" align="center"><s:property value="#juanzeng.xiangmu" /> </td>
											<td bgcolor="#FFFFFF" align="center"><s:property value="#juanzeng.je" /> </td>
											<td bgcolor="#FFFFFF" align="center"><s:property value="#juanzeng.jzsj" /> </td>
										 
					<td bgcolor="#FFFFFF" align="center">
					    <a href="<%=path %>/tojuanzengEdit.action?id=<s:property value="#juanzeng.id" />"   class="pn-loperator">编辑</a>
					    &nbsp; 
						<a href="#" onclick="juanzengDel('<s:property value="#juanzeng.id" />')" class="pn-loperator">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			        <input type="button" value="添加" style="width: 80px;" onclick="juanzengAdd()" />
			    </td>
			  </tr>
		    </table>
		    <div id="tip" style="position:absolute;display:none;border:0px;width:80px; height:80px;">
			<TABLE id="tipTable" border="0" bgcolor="#ffffee">
				<TR align="center">
					<TD><img id="photo" src="" height="80" width="80"></TD>
				</TR>
			</TABLE>
		</div>
	</body>
</html>