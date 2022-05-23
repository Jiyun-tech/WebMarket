<%@page import="dto.Todo"%>
<%@page import="dao.TodoRepository"%> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 한글 깨지지 않도록 추가해주는 것 (주석 처리해도 한글 안 깨지는지 확인해보기)
	// request.setCharacterEncoding("UTF-8");


	long id = Long.parseLong(request.getParameter("id"));
	
	TodoRepository repository = TodoRepository.getInstance();
	repository.remove(id);
	
	response.sendRedirect("./todolist.jsp");
%>