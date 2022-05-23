<%@page import="dto.Todo"%>
<%@page import="java.util.List"%>
<%@ page import="dao.TodoRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <link rel="stylesheet" type="text/css" href="assets/css/todolist.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/form.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/todoitem.css" />
    <script src="assets/js/common.js"></script>
    <!-- jQuery 가져오기 -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    
    <meta charset="UTF-8">
    <title>To Do List</title>
    <script>
      function setDone(id) {
    	  $.ajax({
    		  url: "toggleTodo.do",
    		  type: "post",
    		  data: { "id": id},
    	  	  // 통신이 끝나면 새로고침 한 번씩 해주기 (입력 시마다 reload됨)
    	  	  success: function (data) {
    	  		  window.location.reload();
    	  	  }
    	  });
      }

      function addTodo() {
    	  console.log("추가클릭~!");
    	  // post 방식으로 processAddTodo.jsp?task=내용어쩌구 
    	  // jQuery 방식으로 데이터 넘기기
    	  let task = $("#text").val();
    	  $.ajax({
    		  url: "addTodo.do",
    		  type: "post",
    		  data: { "task": task},
    	  	  // 통신이 끝나면 새로고침 한 번씩 해주기 (입력 시마다 reload됨)
    	  	  success: function (data) {
    	  		  window.location.reload();
    	  	  }
    	  });
      }

      function remove(id) {
    	  $.ajax({
    		  url: "removeTodo.do",
    		  type: "post",
    		  data: { "id": id},
    	  	  // 통신이 끝나면 새로고침 한 번씩 해주기 (입력 시마다 reload됨)
    	  	  success: function (data) {
    	  		  window.location.reload();
    	  	  }
    	  });
      }

    </script>
  </head>

  <body>
  	<%
    TodoRepository repository = TodoRepository.getInstance();
    List<Todo> todos = repository.getTodos();
  	%>
  	
    <div class="todo-list-template">
      <div class="title">오늘 할 일</div>

      <section class="form-wrapper">
        <div class="form">
          <input name="text" id="text" />
          <div class="create-button" onclick="addTodo()">추가</div>
        </div>
      </section>
     

      <section class="todos-wrapper">
      	<!-- 입력한 내용 받아서 To do List 창으로 가져오기 -->
      	<%
      	for (Todo todo : todos) {	
      	%>
		    <div class="todo-item" onclick="setDone(<%= todo.getId()%>)">
	        	<div class="remove" onclick="remove(<%= todo.getId()%>)">&times;</div>
	        	<div class="todo-text <%= todo.isDone() ? "checked" : "" %>"> <%= todo.getTask() %> </div>	
	        	<!-- 체크 마크 추가 (조건에 따라)-->
	        	<%
	        	if (todo.isDone()) {
	        	%>
	        		<div class="check-mark">&#x2713;</div>     	
	        	<%
	        	}
	        	%>
	        </div>
      	<%
      	}
      	%>

      </section>
    </div>
  </body>

  </html>