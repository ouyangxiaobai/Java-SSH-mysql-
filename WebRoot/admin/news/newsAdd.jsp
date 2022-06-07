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
        <script type='text/javascript' src='<%=path %>/dwr/interface/catelogService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
         <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
         
        <script language="javascript">
            var i=0;
		    function catelogSelect()
		    {
		        if(i==0)
		        {
		           document.getElementById("indicator").style.display="block";
		           catelogService.findAllCatelog(callback);
		           i=1;
		        }
		        
		    }
		   
		    function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    DWRUtil.addOptions("catelogId",data,"catelogId","catelogName");
			}
			
			
	    function up()
	    {
	        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
            pop.setContent("title","文件上传");
            pop.build();
            pop.show();
	    }
			</script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/newsAdd.action" name="formAdd" method="post">
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>信息添加</span></td>
					    </tr>
					    
					    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						         信息分类：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <table>
						           <tr>
						               <td>
						                  <select name="catelogId" id="catelogId" onclick="catelogSelect()">
								             <option value="0">--请选择分类--</option>
								          </select>
						               </td>
						               <td>
						                   <img id="indicator" src="<%=path %>/images/loading.gif" style="display:none"/>
						               </td>
						           </tr>
						        </table>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						          标题：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" id="newsTitle" name="newsTitle" style="width: 210px;" />
						       
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        内容：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <FCK:editor instanceName="newsContent"  basePath="/fckeditor" width="500" height="200" value="请输入内容" toolbarSet="Basic">
                                </FCK:editor> 
						    </td>
						</tr>
						 
						
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" onclick="saveXinwen();" value="提交"/>&nbsp; 
						       <input type="reset" value="重置"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
 <script type="text/javascript">
        var ue = UE.getEditor('container');
        
        function saveXinwen(){
           
           var title = document.getElementById("newsTitle").value;
           var cid = document.getElementById('catelogId').value;
           if(cid=='0'){
              alert('请选择分类');
              return false;
           }
           if(title==null || title==""){
               alert("请输入标题");
               return false;
           }
          
           document.forms['formAdd'].submit();
           
        }
      
    </script>
