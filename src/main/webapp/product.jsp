<!-- 상품 클릭 시, 상세 정보 페이지로 넘어가는 기능 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.List" %> <!-- List 사용 위해 Class import -->
<%@ page import="dto.Product" %>	<!-- dto.Product Class List 메서드 import -->

<jsp:useBean id="repository" class="dao.ProductRepository" scope="session"/>
<!-- JavaBeans 사용 위한 Action Tag -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Product Details</title>
	<!-- Bootstrap CDS 가져오기 (2가지) ==> 참고 : w3school.com -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	
		<!-- 메뉴바 action tag로 연결 (/슬래쉬로 닫는 것 잊지 말기!)-->
		<jsp:include page="menu.jsp"/> 
		
		<!-- 상단 ==> " 상품 상세 정보 " // Bootstrap 사용하여 꾸미기 -->
		<!-- p-5 : 사방으로 전체 패딩(5:많이, 3:보통) -->
		<!-- bg-primary : 배경 기본 색상 -->
		<!-- text-white : 글자 색상 하얗게 -->
		<div class="p-5 bg-primary text-white">
			<!-- container : 좌우 가운데 정렬 -->
	    	<div class="container">
	    		<!-- display-3 : 큰 글자 중 글자 크기 (3 : 보통)-->
	       		<h1 class="display-3">
	       			<!-- 표현문 (출력)용 스트립트 태그 -->
	       			상품 상세 정보
	       		</h1>
	    	</div>
		</div>
			
		<%
		// 내장 객체 사용 (교재 p.174)
		// product.jsp?id=p1234 와 같은 식으로 넘어온 값 얻는 것!
		String id = request.getParameter("id");
		// getParameter 메서드는 무조건 String 형태로 받음
		Product product = repository.getProductById(id);
		%>
		
		<div class="container">
			<!-- 글자 가운데 정렬 -->
		    <div class="row">
   			  		<div class="col-md-4">
   			  			<h3><%= product.getName()%></h3>
   			  			<p><%= product.getDescription()%></p>
   			  			<p> <b>상품 코드</b> : <%=product.getProductId()%></p>	
   			  			<p> <b>제조사</b> : <%=product.getManufacturer()%></p>
   			  			<p> <b>분류</b> : <%=product.getCategory() %></p>
   			  			<p> <b>재고 수</b> : <%=product.getUnitInStock() %></p>
   			  			<!-- p.174 코드 추가하기 -->
   			  			
   			  			<p>
   			  				<a href="#" class="btn btn-info"> 상품 주문 &raquo;</a>
							<!-- # : 현재 페이지를 의미함!-->
							<a href="./products.jsp" class="btn btn-secondary"> 상품 목록 &raquo;</a>
						</p>

   			  		</div> 
	
		    </div>
		</div>
				
		<!-- footer(하단) action tag로 연결-->
		<jsp:include page="footer.jsp"/>
</body>
</html>