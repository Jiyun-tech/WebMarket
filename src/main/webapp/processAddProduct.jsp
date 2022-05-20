<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 한글 깨지지 않도록 추가해주는 것 (주석 처리해도 한글 안 깨지는지 확인해보기)
request.setCharacterEncoding("UTF-8");

String productId = request.getParameter("productId");
String name = request.getParameter("name");
int unitPrice = Integer.parseInt(request.getParameter("unitPrice"));

// 참고 : ctrl + space ==> 자동완성
Product newProduct = new Product(productId, name, unitPrice);

ProductRepository repository = ProductRepository.getInstance();
repository.addProduct(newProduct);

response.sendRedirect("products.jsp");
%>