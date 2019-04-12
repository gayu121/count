<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理管理员信息</title>
</head>
<body>
<%
	     Object message = request.getAttribute("message");
	     if(message!=null && !"".equals(message)){
	 
	%>
	     <script type="text/javascript">
	          alert("<%=request.getAttribute("message")%>");
	     </script>
	<%} %>
	<div align="left">
		<h1 style="color: black;">账目信息列表</h1>
	
		<table class="tb" border = "1">
			<tr>
				<td>id</td>
				<td>年份</td>
				<td>月份</td>
				<td>日期</td>
				<td>金额</td>
				<td>消费类型</td>
				<td align="center" colspan="2">操作</td>
			</tr>
			<c:forEach items="${count}" var="item">
				<tr>
					<td>${item.id}</td>
					<td>${item.year}</td>
					<td>${item.month}</td>
					<td>${item.day}</td>
					<td>${item.money}</td>
					<td>${item.lei}</td>
					<td><a href="${pageContext.request.contextPath}/CountServlet?method=getById1&id=${item.id}">修改</a></td>
					<td><a href ="${pageContext.request.contextPath}/CountServlet?method=getById2&id=${item.id}">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>