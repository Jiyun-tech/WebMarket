<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Product" %>
<jsp:useBean id="repository" class="dao.ProductRepository" scope="session" />

<%-- 클래스(dao.ProductsRepository)를 id(repository") 이름으로 끌고 와서 쓰겠다는 의미 --%>
<%-- scope="session" : 얼마만큼 살아있어야 하는지 범위를 지정--%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>products.jsp</title>
	</head>
	<body>
		<%
		// 같은 코드 == ProductRepository repository = new ProductRepository();
		List<Product> products = repository.getAllProducts();
		for(Product product: products) {
			out.println(product + "<br><br>");
			// println 안에 원래 toString() 써야 하나, toString()이 Product.java 파일 안에 정의되어 있으므로 생략
			// Run ==> 생성한 3개 product 정보가 출력됨
		}
		%>
	
	</body>
</html>