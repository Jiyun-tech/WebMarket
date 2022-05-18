<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %> <!-- 사용할 Class import하기 -->
<%@ page import="java.text.SimpleDateFormat" %> <!-- 사용할 Class import하기 -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Welcome</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- 상단 -->
 	<nav class="navbar navbar-expand navbar-dark bg-dark">
	    <ul class="container">
	        <li class="navbar-header">
	        	<a class="navbar-brand" href="./welcome.jsp">Home</a>
	        </li>
	    </ul>
	</nav>
	
	<%! 
	// 변수, 메서드 선언
	String greeting = "웹 쇼핑몰에 오신 것을 환영합니다";
	String tagline = "Welcome to Web Market!";
	%>
	
	<%
	// java 코드 (변수, 메서드 선언도 가능)
	// out.println("<h1>Hello World!!!!</h1>");
	%>
	
	<!-- 중간 -->
	<!-- Bootstrap v.5부터 jumbotron 지원 중단 -->
	<!-- p-5 : 사방으로 전체 패딩(5:많이, 3:보통) -->
	<!-- bg-primary : 배경 기본 색상 -->
	<!-- text-white : 글자 색상 하얗게 -->
	<div class="p-5 bg-primary text-white">
		<!-- container : 좌우 가운데 정렬 -->
    	<div class="container">
    		<!-- display-3 : 큰 글자 중 글자 크기 (3 : 보통)-->
       		<h1 class="display-3">
       			<%= greeting %>
       		</h1>
    	</div>
	</div>
	
	
	<!-- 하단 -->
	<div class="container">
    	<div class="text-center">
	        <h3>
	        	<%= tagline %>
	        </h3>
	        <!-- 현재 시간 표시하기 -->
	        <%
	        Date today = new Date();
	        SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
	        
	        out.println("현재 접속 시간: "+ format.format(today));
	        %>
	    </div>
	</div>
	
	<!-- footer: 하단에 사용하는 div -->
	<footer class="container">
		<!-- &copy; ==> copyright 문구로 추가됨 -->
		<p>&copy; WebMarekt</p>
	</footer>
	
</body>
</html>