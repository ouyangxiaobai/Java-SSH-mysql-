<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>

 <script type="text/javascript">
	        function reg()
	        {
	                var url="<%=path %>/qiantai/userinfo/userReg.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	        }
	        
	        function userinfo()
	        {
	                var url="<%=path %>/qiantai/userinfo/userXinxi.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	        }
	        
	        function login()
	        {
	           if(document.userLogin.userName.value=="")
	           {
	               alert("请输入用户名");
	               return;
	           }
	           if(document.userLogin.userPw.value=="")
	           {
	               alert("请输入密码");
	               return;
	           }
	           document.userLogin.submit();
	        }
	        
	</script>
	
<div id="top">
	<!----------------页面头部开始-------------------->
	<div class="banner">

		<img src="<%=path%>/images/top.jpg" />
	</div>
	<!----------------页面头部结束-------------------->
	<!----------------主导航菜单开始-------------------->
	<div id="nav">
		<ul>
			<li >
				<a href="<%=path%>/index.action"><span>首页</span> </a>
			</li>
			<li>
				<a href="<%=path%>/huodongList.action"><span>我们的活动</span> </a>
			</li>
			 
			<li>
				<a href="<%=path%>/gonggaoList.action"><span>捐赠去向公示</span> </a>
			</li>
			<li>
				<a href="<%=path%>/liuyanList.action"><span>留言板</span> </a>
			</li>
			
		    <c:forEach var="topmenu" items="${cateLogList}">
			<li>
				<a href="<%=path%>/newsAll.action?catelogId=${topmenu.catelogId}"><span>${topmenu.catelogName}</span> </a>
			</li>
			</c:forEach>
			
			<li>
				<a href="<%=path%>/admin/login.jsp"><span>后台管理</span> </a>
			</li>
		</ul>
	</div>
	<!----------------主导航菜单结束-------------------->
</div>
<!----------------内容区开始-------------------->
<div class="login_con">
   


  <s:if test="#session.user==null">
  
	<form id="userLogin" action="<%=path %>/userLogin.action" name="userLogin" method="post">
		<span>用户名： <input class="input" id="userName" title="用户名不能为空" size="14" name="userName" type="text" /> </span>
		<span>密码： <input class="input" title="密码不能为空" type="password" size="16" name="userPw"/> </span>
		<span> <input type="button" name="button" id="button" onclick="login();"
				value="登录" class="denlu" /> </span>
		<span><a href="#"  onclick="reg();"  class="zc">注册</a> </span>
		 
	</form>
	



   </s:if>
		    <s:else>
		       <span>欢迎你：<s:property value="#session.user.userName"/></span>
	           <span><a href="#" onclick="userinfo();">个人资料</a></span>
	           <span><a href="<%=path %>/userLogout.action">安全退出</a> </span>
			</s:else>
 
</div>

 