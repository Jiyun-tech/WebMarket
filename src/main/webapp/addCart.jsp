<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="dto.Product"%>
<%@ page import="dao.ProductRepository"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>cart</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("products.jsp");
		return;
	}
	
	ProductRepository repository2 = ProductRepository.getInstance();
	
	Product product = repository2.getProductById(id);
	if (product == null) {
		response.sendRedirect("exceptionNoProductId.jsp");
	}

	List<Product> productsList = repository2.getAllProducts();
	Product products = new Product();
	for (int index = 0; index < productsList.size(); index ++) {
		products = productsList.get(index);
		if (products.getProductId().equals(id)) {
			break;
		}
	}
	
	List<Product> list = (List<Product>) session.getAttribute("cartlist");
	if (list == null) {
		list = new ArrayList<Product>();
		session.setAttribute("cartlist", list);
	}
	
	int count = 0;
	Product productsQuantity = new Product();
	for (int index = 0; index < list.size(); index++) {
		productsQuantity = list.get(index);
		if (productsQuantity.getProductId().equals(id)) {
			count++;
			int orderQuantity = productsQuantity.getQuantity() + 1;
			productsQuantity.setQuantity(orderQuantity);
		}
	}
	
	if (count == 0) {
		products.setQuantity(1);
		list.add(products);
	}
	
	
	response.sendRedirect("product.jps?id=" + id);
	%>

</body>
</html>