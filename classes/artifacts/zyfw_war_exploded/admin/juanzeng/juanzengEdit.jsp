<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>

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
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
                <script language="javascript" type="text/javascript"
			src="<%=path%>/My97DatePicker/WdatePicker.js"></script>
        <script language="javascript">
		   function save()
		    {
		        document.formAdd.submit();
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/juanzengEdit.action" name="formAdd" method="post">
				 <input type="hidden" name="juanzeng.id" value="${juanzeng.id}"/> 
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>添加</span></td>
					    </tr>
												
										   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       捐赠来源：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="name" name="juanzeng.name"  value="${juanzeng.name}"  maxlength="100"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       捐赠项目：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="xiangmu" name="juanzeng.xiangmu"  value="${juanzeng.xiangmu}"  maxlength="100"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       捐赠金额：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="je" name="juanzeng.je"  value="${juanzeng.je}"  maxlength="11"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       捐赠时间：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="jzsj" onClick="WdatePicker()"  name="juanzeng.jzsj"  value="${juanzeng.jzsj}"  maxlength="50"   />
					  				 
				  </td>
						</tr>
				  				   						   
							
					 
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="提交" onclick="save()"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>