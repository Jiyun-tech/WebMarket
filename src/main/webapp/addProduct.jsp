<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>상품 등록</title>
	<!-- Bootstrap CDS 가져오기 (2가지) ==> 참고 : w3school.com -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<!-- jsp action tag 사용하여 메뉴바(Home 버튼) 부분으로 연결 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 상단 ==> " 상품 등록 " // Bootstrap 사용하여 꾸미기 -->
	<div class="p-5 bg-primary text-white">
		<!-- container : 좌우 가운데 정렬 -->
    	<div class="container">
    		<!-- display-3 : 큰 글자 중 글자 크기 (3 : 보통)-->
       		<h1 class="display-3">
       			<!-- 표현문 (출력)용 스트립트 태그 -->
       			상품 등록
       		</h1>
    	</div>
	</div>
		
	<div class="container">
    	<form name="newProduct" action="./processAddProduct.jsp" class="form-horizontal" method="post">
    	<!-- method : get 방식으로 받으면 받은 내용이 user에게 모두 보임. post로 방식으로 넘겨야 보이지 않음! -->
	        <div class="form-group row ">
	            <label class="co-sm-2">상품 코드</label>
	            <div class="col-sm-3">
	                <input type="text" name="productId" class="form-control">
	            </div>
	        </div>
	        
	        <div class="form-group row">
	            <label class="co-sm-2">상품명</label>
	            <div class="col-sm-3">
	                <input type="text" name="name" class="form-control">
	            </div>
	        </div>
	        
	        <div class="form-group row">
	            <label class="co-sm-2">가격</label>
	            <div class="col-sm-3">
	                <input type="text" name="unitPrice" class="form-control">
	            </div>
	        </div>

	        <div class="form-group row">
	            <label class="co-sm-2">상세 정보</label>
	            <div class="col-sm-3">
	                <input type="text" name="description" class="form-control">          
	            </div>
	        </div>
	        
	        <div class="form-group row">
	            <label class="co-sm-2">제조사</label>
	            <div class="col-sm-3">
	                <input type="text" name="manufacturer" class="form-control">          
	            </div>
	        </div>
	        
	        <div class="form-group row">
	            <label class="co-sm-2">분류</label>
	            <div class="col-sm-3">
	                <input type="text" name="category" class="form-control">          
	            </div>
	        </div>
	        
	        <!-- 등록 버튼 -->
	        <br>
	        <div class="form-group row">
	    		<div class="col-sm-offset-2 col-sm-10">
	        		<input type="submit" class="btn btn-primary" value="등록">
	    		</div>
			</div>
			<br>

	    </form>
	
	
	<!-- footer(하단) 부분 jsp action tag로 연결  -->
	<jsp:include page="footer.jsp"/>

</body>
</html>