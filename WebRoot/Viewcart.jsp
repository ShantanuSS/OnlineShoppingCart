<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="sc.Proj"%>
<%@include file="Mymenu.jsp"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Viewcart.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body style="color: black;">
    <%
ArrayList mybasket=(ArrayList)session.getAttribute("mycart");
ArrayList list=Proj.getProducts();
%>
  No of items in basket are <%=mybasket.size() %>
   <table border="2">
<tr>
<td>Sr No.</td>
<td>Product Name</td>
<td>Quantity</td>
<td>Price</td>
</tr>
   <%
for(int i=0;i<mybasket.size();i++){
	String pid=mybasket.get(i).toString();
	int ipid=Integer.parseInt(pid);
	Proj p= (Proj)list.get(ipid);
	%>
	<tr>
		<td><%=p.itemName %></td>
		<td><%=p.Price%></td>
	</tr>
	<%
}
%>
</table>
   <h2> You are viewing your cart<h2>
      </body>
</html>
