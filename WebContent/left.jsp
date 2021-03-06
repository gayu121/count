<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
body {
	margin: 0;
	padding: 0;
	font-size: 12px;
	font-family: "Microsoft Yahei", Verdana, Arial, Helvetica, sans-serif
}
.leftMenu {
	min-width:200px;
    width:200px;
	margin:0 px auto 0 auto;
}
.menu {
	border: #bdd7f2 1px solid;
	border-top: #0080c4 4px solid;
	border-bottom: #0080c4 4px solid;
	background: #f4f9ff repeat-y right;
	margin-left: 10px;
}
.menu .ListTitle {
	border-bottom: 1px #98c9ee solid;
	display: block;
	text-align: center;
	/*position: relative;*/
	height: 38px;
	line-height: 38px;
	cursor: pointer;
	/*+min-width:220px;*/

	+width:100%;
}
.ListTitlePanel {
	position: relative;
}
.leftbgbt {
	position: absolute;
	background: no-repeat;
	width: 11px;
	height: 52px;
	left: -11px;
	top: -4px;
}
.leftbgbt {
	float:left;
	background: no-repeat;
	width: 11px;
	height: 52px;
	left: 0px;
	top: 0px;
	zoom:1;
	z-index:200px;
}

.leftbgbt2 {
	position: absolute;
	background: no-repeat;
	width: 11px;
	height: 48px;
	left: -11px;
	top: -1px;
}
.menuList {
	display: block;
	height: auto;
}
.menuList div {
	height: 28px;
	line-height: 24px;
	border-bottom: 1px #98c9ee dotted;
}
.menuList div a {
	display: block;
	background: #fff;
	line-height: 28px;
	height: 28px;
	text-align: center;
	color: #185697;
	text-decoration: none;
}
.menuList div a:hover {
	color: #f30;
	background: #0080c4;
	color: #fff;
}
</style>

<script type="text/javascript" src="${pageContext.request.contextPath }/static/js/jquery-1.12.1.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var menuParent = $('.menu > .ListTitlePanel > div');//获取menu下的父层的DIV
	var menuList = $('.menuList');
	$('.menu > .menuParent > .ListTitlePanel > .ListTitle').each(function(i) {//获取列表的大标题并遍历
		$(this).click(function(){
			if($(menuList[i]).css('display') == 'none'){
				$(menuList[i]).slideDown(300);
			}
			else{
				$(menuList[i]).slideUp(300);
			}
		});
	});
});
</script>

</head>
<body style="margin-top: 10px;">

<div class="leftMenu">
	<div class="menu">
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>账目管理</strong>
					<div class="leftbgbt"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="add.jsp" target = "name">添加账目</a></div>
				<div> <a href="${pageContext.request.contextPath}/CountServlet?method=list" target = "name">管理账目</a> </div>
			</div>
		</div>
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>账目查询</strong>
					<div class="leftbgbt2"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="time.jsp" target = "name">按时间点查询</a></div>
				<div> <a href="lei.jsp" target = "name">按消费类型段查询</a></div>
				<div> <a href="${pageContext.request.contextPath}/CountServlet?method=money" target = "name">按金额大小排序</a></div>
			</div>
		</div>
		<!-- <div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>商品属性管理</strong>
					<div class="leftbgbt2"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="addType.jsp" target = "name">添加商品属性</a></div>
				<div> <a href="addChoice.jsp" target = "name">添加商品属性选项</a></div>
				<div> <a href="#">查看商品属性</a></div>
			</div>
		</div>
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>商品管理</strong>
					<div class="leftbgbt2"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="addShop.jsp" target = "name">添加商品</a></div>
				<div> <a href="manageShop.jsp" target = "name">查询商品信息</a></div>
			</div>
		</div>
		<div class="menuParent">
			<div class="ListTitlePanel">
				<div class="ListTitle">
					<strong>用户管理</strong>
					<div class="leftbgbt2"> </div>
				</div>
			</div>
			<div class="menuList">
				<div> <a href="#">用户信息查询</a></div>
				<div> <a href="#">冻结账号</a></div>
				<div> <a href="#">查询用户订单</a></div>
			</div> 
		</div>-->
	</div>
</div>
<div style="text-align:center;">
</div>
</body>
</html>