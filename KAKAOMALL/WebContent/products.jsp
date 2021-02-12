<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Product"%>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<html>
<head>
<link rel="stylesheet" 	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<title>상품 목록</title>
</head>
<body>
	<jsp:include page="menu.jsp" />
	<div class="jumbotron" style="background-color: #FAB900;;">
		<div class="container">
			<h1 class="display-4"><strong>''Friends of kakao are with you''</strong></h1>
		</div>
	</div>
	<%
		ArrayList<Product> listOfProducts = productDAO.getAllProducts();
	%>
	<div class="container">
		<div class="row" align="center" style="display: flex; flex: 1; align-items: space-between;">
			<%
				for (int i = 0; i < listOfProducts.size(); i++) {
					Product product = listOfProducts.get(i);
			%>
			<div class="card" style="flex: 1; margin: 1rem;">
  				<img width="320" height="520" src="<%=product.getImageUrl()%>" class="card-img-top" alt="...">
				<div class="card-body">
					<h4 class="card-title"><%=product.getPname()%></h4>
				    <p class="card-text"><%=product.getBannerDescription()%></p>
				    <h5><%=product.getUnitPrice()%>원 (7.45 USD)</h5>
				    <h6><s>10000원 (9.32 USD)</s></h6><br>
				    <a href="./product.jsp?id=<%=product.getProductId()%>" class="btn btn-warning">상품 주문</a>
				</div>
			</div>
			<%
				}
			%>
		</div>
		<hr>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>

	