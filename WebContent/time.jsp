<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1 style="color: black;">账目查询</h1>
<form action="${pageContext.request.contextPath}/CountServlet?method=find" method="post" id="add" onsubmit="return check()" >
请选择查询的日期：<br>
<select name = "year" id="year">
<option  value = "请选择年份">---请选择年份---</option>
<option  value = "2018">2018</option>
<option  value = "2019">2019</option>
</select><br>

<select name = "month" id="month">
<option  value = "请选择月份">---请选择月份---</option>
<option  value = "1">1</option>
<option  value = "2">2</option>
<option  value = "3">3</option>
<option  value = "4">4</option>
<option  value = "5">5</option>
<option  value = "6">6</option>
<option  value = "7">7</option>
<option  value = "8">8</option>
<option  value = "9">9</option>
<option  value = "10">10</option>
<option  value = "11">11</option>
<option  value = "12">12</option>
</select><br>

<select name = "day" id = "day">
<option  value = "请选择日期">---请选择日期---</option>
<option  value = "1">1</option>
<option  value = "2">2</option>
<option  value = "3">3</option>
<option  value = "4">4</option>
<option  value = "5">5</option>
<option  value = "6">6</option>
<option  value = "7">7</option>
<option  value = "8">8</option>
<option  value = "9">9</option>
<option  value = "10">10</option>
<option  value = "11">11</option>
<option  value = "12">12</option>
<option  value = "13">13</option>
<option  value = "14">14</option>
<option  value = "15">15</option>
<option  value = "16">16</option>
<option  value = "17">17</option>
<option  value = "18">18</option>
<option  value = "19">19</option>
<option  value = "20">20</option>
<option  value = "21">21</option>
<option  value = "22">22</option>
<option  value = "23">23</option>
<option  value = "24">24</option>
<option  value = "25">25</option>
<option  value = "26">26</option>
<option  value = "27">27</option>
<option  value = "28">28</option>
<option  value = "29">29</option>
<option  value = "30">30</option>
<option  value = "31">31</option>
</select>
<br>

<input type = "submit" name = "submit" value = "查询">

</form>

<script type="text/javascript">
		function check() {
			var year = document.getElementById("year");;
			var month = document.getElementById("month");
			var day = document.getElementById("day");
			
			
			//非空 
			if(year.value == '请选择年份'&& month.value == '请选择月份' && day.value == '请选择日期') {
				alert('请选择一个时间点');
				year.focus();
				month.focus();
				day.focus();
				return false;
			}
							
		}
	</script>
</body>
</html>