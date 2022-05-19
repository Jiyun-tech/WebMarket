<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %> <%-- List 사용 위해 Class import --%>
<%@ page import="dto.Product" %> 	<%-- dto.Product Class List 메서드 import --%>

<jsp:useBean id="repository" class="dao.ProductRepository" scope="session" />
<%-- 자바빈즈 액션태그 ==> 
	 클래스(dao.ProductsRepository)를 id(repository") 이름으로 끌고 와서 쓰겠다는 의미 --%>
<%-- scope: 얼마만큼 살아있어야 하는지 범위를 지정. 
	 ==> 종류 : application, session 등..
	 ==> session: 서버(e.g. tomcat) 측에 저장하는 것 (클라이언트 x 서버 o)
	 			  서버에 객체 저장하고, 재활용함(새로고침, 페이지 이동 등 해도 재사용 가능!). 
				  매 실행 시마다 객체를 재생성하지 않음. --%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>상품 목록</title>
		<!-- Bootstrap CDS 가져오기 (2가지) ==> 참고 : w3school.com -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	</head>
	<body>
	
		<!-- 메뉴바 action tag로 연결-->
		<jsp.include page="menu.jsp" > 
		
		<%
		// useBeans 같은 기능 ==> ProductRepository repository = new ProductRepository();
		// 단, 자바빈즈 액션 태그 사용하여 useBean 하지 않고 객체를 생성하게 되면, 
		// 실행 시마다 메모리에 새로 객체를 만들게 되므로, 액션 태그사용하는(한 번 생성하고 재활용) 쪽이 효율적임.
		List<Product> products = repository.getAllProducts();
		for(Product product: products) {
			out.println(product + "<br><br>");
			// println 안에 원래 toString() 써야 하나, toString()이 Product.java 파일 안에 정의되어 있으므로 생략
			// Run ==> 생성한 3개 product 정보가 출력됨
		}
		%>
		
		<!-- footer(하단) action tag로 연결-->
		<jsp.include page="footer.jsp" >
	
	</body>
</html>