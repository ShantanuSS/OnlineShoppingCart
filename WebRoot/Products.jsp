<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="sc.Proj"%>
<%@include file="Mymenu.jsp"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'Products.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>  
  <body style="background-color: red ;color: black;">
   <%
String loginname=request.getParameter("loginname");
String password=request.getParameter("password");
%>
<%=loginname %>
<%=password %>
<br><br><br>
   
<table border="1">
<tr>
<td>Sr No.</td>
<td>Product Name</td>
<td>Quantity</td>
<td>Price</td>
<td>Offer</td>
<td>Post Offer Price</td>
<td>Add to cart</td>
<td>View</td>
</tr>
<%
ArrayList list=Proj.getProducts();
ArrayList empty=new ArrayList();
if(session.getAttribute("mycart")==null){
session.setAttribute("mycart", empty);
}else{
	ArrayList mybasket=(ArrayList)session.getAttribute("mycart");
	System.out.println("list before=>"+mybasket.size());
}
%>
<%
for(int i=0;i<list.size();i++){
	Proj p=(Proj)list.get(i);%>
	<tr>
	<td><%=i+1 %></td>
	<td><%=p.itemName %></td>
	<td><%=p.quantity %></td>
		<td><%=p.Price%></td>
			<td>&nbsp;<%=p.discount%></td>
			<td>&nbsp;<%=p.postOfferPrice%></td>
			
				<td><a href="Addcart.jsp?pid=<%=i%>">Add</a></td>
				<td>View</td>
				</tr>
	<%
}
%>
</table>


   
  </body>
</html>
