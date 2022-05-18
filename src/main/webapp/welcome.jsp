<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Date" %> 			<!-- ����� Class import�ϱ� -->
<%@ page import="java.text.SimpleDateFormat" %> <!-- ����� Class import�ϱ� -->
<!DOCTYPE html>
<html>
<head>
	<meta charset="EUC-KR">
	<title>Welcome</title>
	<!-- Bootstrap CDS �������� (2����) ==> ���� : w3school.com -->
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<!-- ��� -->
	<!-- nav (navigator) ==> div�� ���� ��� -->
	<!-- Bootstrap ��� ����Ͽ� �ٹ̱� -->
 	<nav class="navbar navbar-expand navbar-dark bg-dark">
	    <ul class="container">
	        <li class="navbar-header">
	        	<!-- Home Ŭ�� �� ����� url ���� -->
	        	<a class="navbar-brand" href="./welcome.jsp">Home</a>
	        </li>
	    </ul>
	</nav>
	
	<!-- ��ũ��Ʈ �±� 3��
		(1) ���� (!) : �ڹ� ����,�޼ҵ� ���� �� ���
		(2) ��ũ��Ʋ�� : �ڹ� ���� �ڵ� �ۼ� �� ���
		(3) ǥ���� (=): ����, ����, �޼ҵ� ȣ�� ����� ���ڿ� ���·� ���(print) -->
	
	<%! 
	// ����, �޼��� ����
	String greeting = "�� ���θ��� ���� ���� ȯ���մϴ�";
	String tagline = "Welcome to Web Market!";
	%>
	
	<%
	// java �ڵ� (����, �޼��� ���� ����)
	// out.println("<h1>Hello World!!!!</h1>");
	%>
	
	<!-- �߰��� -->
	<!-- Bootstrap v.5���� jumbotron ���� �ߴ� -->
	<!-- p-5 : ������� ��ü �е�(5:����, 3:����) -->
	<!-- bg-primary : ��� �⺻ ���� -->
	<!-- text-white : ���� ���� �Ͼ�� -->
	<div class="p-5 bg-primary text-white">
		<!-- container : �¿� ��� ���� -->
    	<div class="container">
    		<!-- display-3 : ū ���� �� ���� ũ�� (3 : ����)-->
       		<h1 class="display-3">
       			<!-- ǥ���� (���)�� ��Ʈ��Ʈ �±� -->
       			<%= greeting %>
       		</h1>
    	</div>
	</div>
	
	
	<!-- �ϴ� -->
	<!-- container : �¿� �߾� ���� -->
	<div class="container">
		<!-- text-center : ���� �߾� ���� -->
    	<div class="text-center">
	        <h3>
	        	<!-- tagline ���� ȣ���Ͽ� ��� -->
	        	<%= tagline %>
	        </h3>
	        <!-- ���� �ð� ǥ���ϱ� -->
	        <%
	        // ���� ��¥ �ҷ����� (==> import �ʿ�)
	        Date today = new Date();
	        // �ð� ��� ��� ���� (�ý�:�к�:���� am/pm) (==> import �ʿ�)
	        SimpleDateFormat format = new SimpleDateFormat("hh:mm:ss a");
	        // ����ϱ�
	        out.println("���� ���� �ð�: "+ format.format(today));
	        %>
	    </div>
	</div>
	
	<!-- footer: �ϴܿ� ����ϴ� div -->
	<footer class="container">
		<!-- &copy; ==> copyright ������ �߰��� -->
		<p>&copy; WebMarekt</p>
	</footer>
	
</body>
</html>