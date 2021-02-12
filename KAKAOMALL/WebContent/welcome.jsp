<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>Welcome</title>
</head>
<body>
	<%@ include file="menu.jsp"%>
	<%!String greeting = "Welcome to<br><strong>Kakaofriends Market</strong>";
	String tagline = "''카카오는 새로운 연결을 통해 더 편리하고 즐거운 세상을 꿈꿉니다''<br>" ;%>
	<div class="jumbotron" style="background-color: #FAB900;">
		<div class="container">
			<h1 class="display-4">
				<%=greeting%>
			</h1>
		</div>
	</div>	
	<div class="container">
		<div class="text-center" style="color : #FAB900;">
			<h3>
				<%=tagline%>
			</h3>
			<%
				response.setIntHeader("Refresh", 5);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("카카오프렌즈 현재 시간: " + CT + "\n");
			%><br><br>
			<a class="btn btn-outline-warning" href="./products.jsp" role="button">상품 목록</a>
		</div>
		<hr>
	</div>	
	<%@ include file="footer.jsp"%>
</body>
</html>