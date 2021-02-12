<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>kakaofriends</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron" style="background-color: #FAB900;;">
		<div class="container">
			<h1 class="display-4"><strong>kakaofriends 결제</strong></h1>
		</div>
	</div><br>
	<%
		String id = request.getParameter("id");
		Product product = productDAO.getProductById(id);
	%>
	<blockquote>
		<h3 class="text-center">
			<mark><%=product.getPname()%></mark>
		</h3><br>
		<footer>
			<p class="text-center">
				Product Code : <small><ins><%=product.getProductId()%></ins></small><br>
				Manufacturer : <%=product.getManufacturer()%><br>
				Size : <%=product.getDescription()%><br>
				Category : <%=product.getCategory()%><br>
				<h5><p class="text-center"><%=product.getUnitPrice()%>원 (7.45 USD)</p></h5>
				<h6><s><p class="text-center"> 10000원 (9.32 USD)</p></s></h6><br>
				<p class="text-center"><a href="#" class="btn btn-warning">구매하기 &raquo;</a> <a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a><br><br>
			</p>
		</footer>
	</blockquote>
	<div class="container">
		<small><ins>취소/교환/반품</ins><br>
	<abbr title="HyperText Markup Language" class="initialism">
	· 주문 취소 및 배송지 변경은 “주문접수” 단계에서만 가능합니다.<br>
  	마이페이지에서 취소 또는 변경하실 수 있습니다.<br>
	· 글로벌 배송 구매 시, 단순 변심에 의한 교환 및 반품이 불가합니다.</small>
	</abbr>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
