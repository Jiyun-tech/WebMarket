<%@page import="dto.Product"%>
<%@page import="dao.ProductRepository"%> 
<!-- Download and import the file 'cos.jar -->
<%@page import="com.oreilly.servlet.*"%>
<%@page import="com.oreilly.servlet.multipart.*"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글 깨지지 않도록 추가해주는 것 (주석 처리해도 한글 안 깨지는지 확인해보기)
	request.setCharacterEncoding("UTF-8");

	// process product Image
	String filename = "";
	String realFolder = "C://upload";	// path on Web Application
	int maxSize = 5 * 1024 * 1024;		// maximum size of the image (5MB)
	String encType = "utf-8";			// type of encoding

	// ***** Error *****
	// MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, 
	//											new DefaultFileRenamePolicy());
	
	// process product Information
	String productId = request.getParameter("productId");
	String name = request.getParameter("name");
	int unitPrice = Integer.parseInt(request.getParameter("unitPrice"));
	String description = request.getParameter("description");
	String manufacturer = request.getParameter("manufacturer");
	String category =  request.getParameter("category");
	int unitInStock = Integer.parseInt(request.getParameter("unitInStock"));
	String condition =  request.getParameter("condition");
	
	// get Images - error!
	// Enumeration files = multi.getFileNames();
	// String fname = (String)files.nextElement();
	// String fileName = multi.getFilesystemName(fname);
	
	// 참고 : ctrl + space ==> 자동완성
	// Generatge new producte with the input information
	Product newProduct = new Product(productId, name, unitPrice);
	newProduct.setProductId(productId);
	newProduct.setName(name);
	newProduct.setUnitPrice(unitPrice);
	newProduct.setDescription(description);
	newProduct.setManufacturer(manufacturer);
	newProduct.setCategory(category);
	newProduct.setUnitInStock(unitInStock);
	newProduct.setCondition(condition);
	
	
	// Singleton Pattern
	ProductRepository repository = ProductRepository.getInstance();
	repository.addProduct(newProduct);
	
	response.sendRedirect("./products.jsp");
%>