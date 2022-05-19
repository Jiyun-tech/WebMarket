<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %> 			<!-- 사용할 Class import하기 -->
<%@ page import="java.text.SimpleDateFormat" %> <!-- 사용할 Class import하기 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Welcome</title>
	<!-- Bootstrap CDS 가져오기 (2가지) ==> 참고 : w3school.com -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<!-- jsp action tag 사용하여 메뉴바(Home 버튼) 부분으로 연결 -->
	<jsp:include page="menu.jsp" />
	
	<!-- 스크립트 태그 3종
		(1) 선언문 (!) : 자바 변수,메소드 정의 시 사용
		(2) 스크립틀릿 : 자바 로직 코드 작성 시 사용
		(3) 표현문 (=): 변수, 계산식, 메소드 호출 결과를 문자열 형태로 출력(print) -->
	
	<%! 
	// 변수, 메서드 선언
	String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";
	%>
	
	<%
	// java 코드 (변수, 메서드 선언도 가능)
	// out.println("<h1>Hello World!!!!</h1>");
	%>
	
	<!-- 중간단 -->
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
       			<%= greeting %>
       		</h1>
    	</div>
	</div>
	
	
	<!-- 하단 -->
	<!-- container : 좌우 중앙 정렬 -->
	<div class="container">
		<!-- text-center : 글자 중앙 정렬 -->
    	<div class="text-center">
	        <h3>
	        	<!-- tagline 변수 호출하여 출력 -->
	        	<%= tagline %>
	        </h3>
	        <!-- 현재 시간 표시하기 -->
	        <%
	        // 오늘 날짜 불러오기 (==> import 필요)
	        Date today = new Date();
	        // 시간 출력 약식 지정 (시시:분분:초초 am/pm) (==> import 필요)
	        SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
	        // 출력하기
	        out.println("현재 접속 시간: "+ format.format(today));
	        %>
	    </div>
	</div>
	
	<!-- footer(하단) 부분 jsp action tag로 연결  -->
	<jsp:include page="footer.jsp"/>
	
</body>
</html>