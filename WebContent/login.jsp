<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录界面</title>
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
	<div align="center">
		<h1 style="color: black;">用户登录</h1>
		<form action="${pageContext.request.contextPath}/Servlet?method=login" method="post" onsubmit="return check()">
			<div class="a">
				用户名<input type="text" id="user" name="user"/>
			</div>
			<div class="a">
				密码<input type="password" id="password" name="password" />
			</div>
			<div>
			验证码<input type="text" id="code" name="code" />
			
			</div>
			<%
                String code="abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
                String intmethod=String.valueOf(code.charAt((int)(((Math.random())*73)-1)));
                String intmethod2=String.valueOf(code.charAt((int)(((Math.random())*73)-1)));
                String intmethod3=String.valueOf(code.charAt((int)(((Math.random())*73)-1)));
                String intmethod4=String.valueOf(code.charAt((int)(((Math.random())*73)-1)));
                String intmethod5=String.valueOf(code.charAt((int)(((Math.random())*73)-1)));
                String intmethod6=String.valueOf(code.charAt((int)(((Math.random())*73)-1)));
              	out.print("<font size='5' color=red ><i><b>"+intmethod+" "+intmethod2+" "+intmethod3+" "+intmethod4+" "+intmethod5+" "+intmethod6+"</b></i></font>");
              	String instum=intmethod+intmethod2+intmethod3+intmethod4+intmethod5+intmethod6;
              %>
              <input type ="hidden" name = "yzm" value ="<%=instum%>">
			<div class="a">
				<button type="submit" class="b">登&nbsp;&nbsp;&nbsp;录</button>
			</div>
			
		</form>
	</div>
	<script type="text/javascript">
		function check() {
			var user = document.getElementById("user");;
			var password = document.getElementById("password");
			var code = document.getElementById("code");
			
			//非空 
			if(user.value == '') {
				alert('用户名不能为空');
				user.focus();
				return false;
			}
			if(password.value == '') {
				alert('密码不能为空');
				passwork.focus();
				return false;
			}
			if(code.value == '') {
				alert('验证码不能为空');
				code.focus();
				return false;
			}
		
			
			}
			
		</script>      
        
		
		
</body>
</html>