	<!-- 기존 welcome.jsp 페이지에 있던 menu바(상단) 부분을 떼어 옮겨 옴. -->
	<!-- 상단 메뉴바-->
	<!-- nav (navigator) ==> div와 같은 기능 -->
	<!-- Bootstrap 기능 사용하여 꾸미기 -->
 	<nav class="navbar navbar-expand navbar-dark bg-dark">
	    <ul class="container">
	        <li class="navbar-header">
	        	<!-- Home 클릭 시 연결될 url 지정 (welcome page)-->
	        	<a class="navbar-brand" href="./welcome.jsp">Home</a>
	        	<!-- Products 클릭 시 연결될 url 지정 (products(상품 리스트) page)-->	        	
	        	<a class="navbar-brand" href="./products.jsp">Products</a>
	        </li>
	    </ul>
	</nav>