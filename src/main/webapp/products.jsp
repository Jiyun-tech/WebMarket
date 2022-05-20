<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="dao.ProductRepository"%>
<%@ page import="java.util.List" %> 
<!-- List 사용 위해 Class import -->
<%@ page import="dto.Product" %>
<!-- dto.Product Class List 메서드 import -->

<!-- <jsp:useBean id="repository" class="dao.ProductRepository" scope="session"/> -->
<%-- 자바빈즈 액션태그 ==> 
	 클래스(dao.ProductsRepository)를 id(repository") 이름으로 끌고 와서 쓰겠다는 의미 --%>
<%-- scope: 얼마만큼 살아있어야 하는지 범위를 지정.
	 ==> 종류 : application, session 등..
	 ==> session: 서버(e.g. tomcat) 측에 저장하는 것 (클라이언트 x 서버 o)
	 			  서버에 객체 저장하고, 재활용함(새로고침, 페이지 이동 등 해도 재사용 가능!)
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
	
		<!-- 메뉴바 action tag로 연결 (/슬래쉬로 닫는 것 잊지 말기!)-->
		<jsp:include page="menu.jsp"/> 
		
		<!-- 상단 ==> " 상품 목록 "-->
		<!-- Bootstrap v.5부터 jumbotron 지원 중단 -->
		<!-- p-5 : 사방으로 전체 패딩(5:많이, 3:보통) -->
		<!-- bg-primary : 배경 기본 색상 -->
		<!-- text-white : 글자 색상 하얗게 -->
		<div class="p-5 bg-primary text-white">
			<!-- container : 좌우 가운데 정렬 -->
	    	<div class="container">
	    		<!-- display-3 : 큰 글자 중 글자 크기 (3 : 보통)-->
	       		<h1 class="display-3">
	       			<!-- 표현문 (출력)용 스트립트 태그 -->
	       			상품 목록
	       		</h1>
	    	</div>
		</div>
			
		<%
		
		// session 활용 예시 (어디에서나 접근 가능한 서버 저장 데이터)
		out.println(session.getAttribute("name"));
		out.println(session.getAttribute("age"));
		out.println(session.getAttribute("foods"));
		
		// useBeans 같은 기능 ==> ProductRepository repository = new ProductRepository();
		// 단, 자바빈즈 액션 태그 사용하여 useBean 하지 않고 객체를 생성하게 되면, 
		// 실행 시마다 메모리에 새로 객체를 만들게 되므로, 액션 태그사용하는(한 번 생성하고 재활용) 쪽이 효율적임.
		// ==> 5/20) Singleton Pattern으로 변경		
		ProductRepository repository22 = ProductRepository.getInstance();
		List<Product> products = repository22.getAllProducts();
		// *참고) 상품 정보 확인하기 위한 테스트 기능
		// for(Product product: products) {
			//out.println(product + "<br><br>");
			//// println 안에 원래 toString() 써야 하나, toString()이 Product.java 파일 안에 정의되어 있으므로 생략
			//// Run ==> 생성한 3개 product 정보가 출력됨
		//}
		%>
		
		<div class="container">
			<!-- 글자 가운데 정렬 -->
		    <div class="row text-center">
		    	<%
		    	// loop
		    	for (Product product : products) {
		    	%>
   			    	<!-- md : medium size device -->
   			    	<!-- ProductRepository.java 클래스에 있는 정보 불러오기 -->
   			  		<div class="col-md-4">
   			  			<h3><%= product.getName()%></h3>
   			  			<p><%= product.getDescription()%></p>
   			  			<p><%= product.getUnitPrice()%>원</p>
   			  			<!-- 상품ID로 정보 가져오는 버튼 만들기  -->
   			  			<p>
   			  				<a class="btn btn-secondary" href="./product.jsp?id=<%= product.getProductId()%>">
   			  					<!-- &raquo : 화살표 표시 -->
   			  					상세 정보 &raquo;
   			  				</a>
   			  			</p>
   			  		</div> 
		    	<%	
		    	}
		    	%>
		    </div>
		</div>
				
		<!-- footer(하단) action tag로 연결-->
		<jsp:include page="footer.jsp"/>
	
	</body>
</html>