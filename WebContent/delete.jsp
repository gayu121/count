<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>删除界面</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/CountServlet?method=delete&id=${count.id}" method="post" onsubmit="return check()">
<div align="center">
		<h1 style="color: black;">账户信息删除</h1>
		<table class="tb" border="1">
			<tr>
				<td>年份</td>
				<td>${count.year}</td>
			</tr>
			<tr>
				<td>月份</td>
				<td>${count.month}</td>
			</tr>
			<tr>
				<td>日期</td>
				<td>${count.day}</td>
			</tr>
			<tr>
				<td>金额</td>
				<td>${count.money}</td>
			</tr>
			<tr>
				<td>类型</td>
				<td>${count.lei}</td>
			</tr>
		</table>
		<div>
		    <input type ="submit" value ="删除" name="delete">
		</div>
		<%-- <div class="a">
			<a onclick="return check()" href="${pageContext.request.contextPath}/AdminServlet?method=delete&id=${admin.id}">删&nbsp;&nbsp;&nbsp;除</a>
		</div> --%>
	</div>
	<script type="text/javascript">
		function check() {
			if (confirm("真的要删除吗？")){
				return true;
			}else{
				return false;
			}
		}
	
	</script>
	</form>
</body>
</html>