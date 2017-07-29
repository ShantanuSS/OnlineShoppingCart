<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@include file="Mymenu.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    <title>My JSP 'Homepage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="background-color:blue;color=white ;">
  Welcome to the Home...
  <% if(session.getAttribute("authenticated")==null){
  String loginname=request.getParameter("loginname");
  String password=request.getParameter("password");  
  session.setAttribute("loginname",loginname);
  if(loginname!=null&&password!=null&&loginname.equalsIgnoreCase("admin")&&
		password.equalsIgnoreCase("admin")){
  session.setAttribute("authenticated",true);
  session.setAttribute("msg", "authentication succesfull");
}else{
	session.setAttribute("msg", "authentication failure");
	response.sendRedirect("Login.jsp");
}
}
  %>
  <img src="111.jpg" alt="Check your Browser"  width="85%"/>
  </body>
</html>
