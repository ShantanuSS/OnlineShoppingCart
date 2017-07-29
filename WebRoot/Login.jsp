<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>My JSP 'index.jsp' starting page</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body style="background-color:teal; color: black;text-align: center;margin: auto;">
<center>
<%
if(session.getAttribute("authenticated")!=null){
	response.sendRedirect("Homepage.jsp");
}
%>
<form action="Homepage.jsp" method="post">
	<table>
		<tr>
			<td>Login Id</td>
			<td><input type="text" name="loginname" required="required"></td>
		</tr>
		<tr>
			<td>Password</td>
			<td><input type="password" name="password" required="required"></td>
		</tr>
		<tr>
			<td><input type="submit" name="sbtn" value="Submit"></td>
		</tr>
	</table>
	<% 	Object msg=session.getAttribute("msg");
		if(msg!=null){
			out.print("Message is "+msg);
		}
	%>
	
</form>
</center>
<img  src="78.jpg" alt="Your Browser Doesn't Support Image" width="50%">
</body>
