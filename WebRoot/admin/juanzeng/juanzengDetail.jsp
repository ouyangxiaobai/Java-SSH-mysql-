


<%@include file="/common/sub_header.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
  <form name="form1" action="juanzeng!viewJuanzeng.action" method="post">
	<table cellspacing="0" cellpadding="0" width="98%" align="center"  border="0" class="margtb5">
		    <tr>
		      <td align="left" class="padl5 lan12"><img src="<%=path%>/images/img-11.gif" width="12" height="12"><span id="titleLabel"></span></td>
		    </tr>
       </table>

	    <table cellspacing="1" cellpadding="0" width="98%" align="center"  border="0" class="bgcolor2 margb5">
               <tr>
		   <td colspan="4" align="left" class="bkuang zi13b bgcolor2 padl5"></td>
		</tr>   
            

									<tr class="bgcolor">
															  <td width="20%"  align="right" class="zi13"> 捐赠来源：</td>
			  <td width="30%"  class="pad2 zi13">
				 				      					  ${juanzeng.name}
				      				  				  
			  </td>
							</tr>
									<tr class="bgcolor">
							  <td width="20%"  align="right" class="zi13"> 捐赠项目：</td>
			  <td width="30%"  class="pad2 zi13">
				 				      					  ${juanzeng.xiangmu}
				      				  				  
			  </td>
													  <td width="20%"  align="right" class="zi13"> 捐赠金额：</td>
			  <td width="30%"  class="pad2 zi13">
				 				      					  ${juanzeng.je}
				      				  				  
			  </td>
							</tr>
									<tr class="bgcolor">
							  <td width="20%"  align="right" class="zi13"> 捐赠时间：</td>
			  <td width="30%"  class="pad2 zi13">
				 				      					  ${juanzeng.jzsj}
				      				  				  
			  </td>
							</tr>
				
           </table>
        
 
		<p><p><p>
	
<table width="98%" align="center" border="0" cellspacing="0"
		cellpadding="0">
		<tr>
			<td align="center">
			  
				 <input type="button" class="buttonbg" onclick="back();" value="返回"/>

		</tr>
	</table>
  
</form>
</body>
</html>


<script>
  var title = "查看";
  $("#titleLabel").html(title);

</script>
