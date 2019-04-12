<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/CountServlet?method=lei" method="post" id="lei" onsubmit="return check()" >
<h1 style="color: black;">按消费类型查询</h1>
<br>请选择您要查询的消费类型:<br>


<input type="radio" name="lei" id="lei" value="水果">水果
<input type="radio" name="lei" id="lei" value="蔬菜">蔬菜
<input type="radio" name="lei" id="lei" value="其他食品">其他食品<br>
<input type="radio" name="lei" id="lei" value="衣服">衣服
<input type="radio" name="lei" id="lei" value="红包">红包
<input type="radio" name="lei" id="lei" value="送礼">送礼<br>
<input type="radio" name="lei" id="lei" value="请客吃饭">请客吃饭
<input type="radio" name="lei" id="lei" value="出行开销">出行开销
<input type="radio" name="lei" id="lei" value="其他">其他<br><br>
<input type = "submit" name = "submit" value = "查询">
</form>


<script type="text/javascript">
		function check() {
			
			var lei = document.getElementById("lei");
			
			//非空 
			if(lei.value == '') {
				alert('请选择您所要查询的类型');
				lei.focus();
				return false;
			}
			
			
			
		}
		</script>
</body>
</html>