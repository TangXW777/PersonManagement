<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'schedule_show.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <table  width="1100" height="100%" border="1" align="center">
  <tr>
    <td width="10%" rowspan="3" valign="top" ><img alt="你好" src="images/cc.gif" width="110"> </td>
    <td width="90%" height="40" colspan="5" align="center" class="title">欢迎使用个人信息管理平台</td>
  </tr>
  <tr>
    <td><jsp:include page="../top.jsp" /></td>
  </tr>
  <tr>
    <td height="168" colspan="5" align="center">
    	<div style="height:800px;width:968px;">
    	<table border="1" width="100%" height="20px">
    	  	<tr>
    			<td height="10" colspan="2"> <jsp:include page="head.jsp" /></td>
  			</tr>
  			<tr>
    			<td height="10" colspan="2" bgcolor="#999999">&nbsp;</td>
 			</tr>    		
    	</table>
    	<table border="1" width="60%">
    		<tr>
    			<th>日期</th>
    			<th>事项</th>
    			<th>备注</th>
    		</tr>
    		<s:iterator value="scList" var="sc">
    			<tr>
    				<td><s:property value="#sc.date"/></td>
    				<td><s:property value="#sc.items"/></td>
    				<td><s:property value="#sc.notes"/></td>
    			</tr>
    		</s:iterator>
    	</table>
    	
    	<!-- 分页模块 -->
    	<s:url var="url_pageNow" value="schedule/schedule_show">
   		<s:param name="pageNow" value="pageNow"/>
   		</s:url>
    	<s:url var="url_next" value="schedule/schedule_show">
   		<s:param name="pageNow" value="pageNow+1"/>
   		</s:url>
   		<s:url var="url_pre" value="schedule/schedule_show">
   			<s:param name="pageNow" value="pageNow-1"/>
   		</s:url>
   		<span style="color:grey;font-size:14px;">
   		共<s:property value="numItems"/>条记录&nbsp;&nbsp;
   		当前第<s:property value="pageNow"/>页
   		</span>
   		&nbsp;&nbsp;
   		<s:if test="pageNow==1">
   			<s:a href="%{url_pageNow}">首页</s:a>
   		</s:if>
   		<s:else>
   			<s:a href="%{url_pre}">上一页</s:a>
   		</s:else>
   		&nbsp;&nbsp;
   		<s:if test="pageNow==lastPage">
   			<s:a href="%{url_pageNow}">尾页</s:a>
   		</s:if>
   		<s:else>
   			<s:a href="%{url_next}">下一页</s:a>
   		</s:else>
    	</div>
    </td>
  </tr>
  <tr>
    <td height="10" colspan="6" align="center" bgcolor="#9999FF"><jsp:include page="../footer.jsp" /></td>
  </tr>
  </table>
  <s:debug></s:debug>
  </body>
</html>
