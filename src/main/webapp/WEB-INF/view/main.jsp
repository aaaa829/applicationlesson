<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="model.Product,java.util.*"%>
<% 
String msg = (String)request.getAttribute("msg");
String err = (String)request.getAttribute("err");
List<Product> list = (List<Product>)application.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% if(msg != null){ %>
<p><%=msg %></p>
<%} %>
<p>商品を登録してください。</p>
<% if(err != null){%>
<p><%=err %></p>
<%} %>
<form action="Main" method="post" >
	製品名：<br><input type="text" name="name"><br>
	値段：<br><input type="number" name="price"><br>
	<input type="submit" value="登録">
</form>
<% if(list != null){ %>
<table border="">
<tr><th>商品名</th><th>価格</th><th>登録日</th></tr>
<% for(Product p :list){ %>
<tr><td><%=p.getName() %></td><td><%=p.getPrice() %></td><td><%=p.getUpdated() %></td></tr>
<%} %>
</table>
<%} %>
</body>
</html>