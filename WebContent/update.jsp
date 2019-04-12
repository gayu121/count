<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
		<h1 style="color: black;">账户信息修改</h1>
		
		<form action="${pageContext.request.contextPath}/CountServlet?method=update" method="post" >
			<div class="a" align="left">
				年份 <input type="text" id="year" name="year" value="${count.year}"/>
			</div>
			<div class="a" align="left">
				月份    <input type="text" id="month" name="month" value="${count.month}"/>
			</div>
			<div class="a" align="left">
				日期<input type="text" id="day" name="day" value="${count.day}" />
			</div>
			<div class="a" align="left">
				金额<input type="text" id="money" name="money" value="${count.money}" />
			</div>
			<div class="a" align="left">
				类型<input type="text" id="lei" name="lei" value="${count.lei}" />
			</div>
			<input type="hidden" id="id" name="id" value="${count.id}"/>
			<div class="a" >
				<button type="submit" class="b">保&nbsp;&nbsp;&nbsp;存</button>
			</div>
		</form>
	</div>
<!-- 	<script type="text/javascript">
		function check() {
			var name = document.getElementById("name");;
			var password = document.getElementById("password");
			var repassword = document.getElementById("repassword");
			
			
			//非空 
			if(name.value == '') {
				alert('用户名为空');
				name.focus();
				return false;
			}
			if(password.value == '') {
				alert('密码为空');
				password.focus();
				return false;
			}
			if(repassword.value == '') {
				alert('请确认密码');
				repassword.focus();
				return false;
			}
			
			
		}
			</script> -->
</body>
</html>