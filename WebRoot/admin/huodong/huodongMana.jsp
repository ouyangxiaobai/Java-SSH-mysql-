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
           function huodongDel(id)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/huodongDel.action?id="+id;
               }
           }
           
           function huodongAdd()
           {
                 var url="<%=path %>/admin/huodong/huodongAdd.jsp";
                 //var n="";
                 //var w="480px";
                 //var h="500px";
                 //var s="resizable:no;help:no;status:no;scroll:yes";
				 //openWin(url,n,w,h,s);
				 window.location.href=url;
           }
           
           function over(picPath)
	       {
			  if (picPath=="")picPath="/images/default.jpg";
			  x = event.clientX;
			  y = event.clientY;      
			  document.all.tip.style.display = "block";
			  document.all.tip.style.top = y;
			  document.all.tip.style.left = x+10;
			  document.all.photo.src = ".."+picPath; 
		   }
		   function out()
	       {
			  document.all.tip.style.display = "none";
		   }
		   function xiangqin(goodsId)
	       {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:500,height:400});
	            pop.setContent("contentUrl","<%=path %>/huodongDetail.action?id="+id);
	            pop.setContent("title","详细介绍");
	            pop.build();
	            pop.show();
	       }		
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
	
	
	<form action="<%=path%>/huodongMana.action" method="post">
	    &nbsp;&nbsp;活动名称：<input type="text" name="name" value="${name}"/>
	    
	    <input type="submit" value="查询" />
	</form>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="8" background="<%=path %>/images/tbg.gif">&nbsp;活动管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="12%">ID</td>
					<td>活动名称</td>
					<td  >活动地点</td>
					<td width="10%">活动详情</td>
					<td  >活动时间</td>
					 
					<td width="12%">操作</td>
		        </tr>	
				<s:iterator value="#request.huodongList" id="huodong">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#huodong.id"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#huodong.name"/>
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#huodong.dizhi"/>
					</td>
					 <td bgcolor="#FFFFFF" align="center">
					    <a href="#" onclick="xiangqin(<s:property value="#huodong.id"/>)">查看活动详情</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					     <s:property value="#huodong.shijian"/>
					</td>
		 
					<td bgcolor="#FFFFFF" align="center">
					    <a href="<%=path%>/toEditHuodong.action?id=<s:property value="#huodong.id"/>"   class="pn-loperator">修改</a>
						<a href="#" onclick="huodongDel(<s:property value="#huodong.id"/>)" class="pn-loperator">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			     
			        <input type="button" value="添加" style="width: 80px;" onclick="huodongAdd()" />
			    </td>
			  </tr>
		    </table>
		     
	</body>
</html>
