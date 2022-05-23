<%@ page import="dao.TodoRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <!DOCTYPE html>
  <html>

  <head>
    <link rel="stylesheet" type="text/css" href="assets/css/todolist.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/form.css" />
    <link rel="stylesheet" type="text/css" href="assets/css/todoitem.css" />
    <script src="assets/js/common.js"></script>
    
    <meta charset="UTF-8">
    <title>Todo List</title>
    <script>
      function setDone(id) {
      }

      function addTodo() {
    	  console.log("추가클릭~!");
    	  // post 방식으로 processAddTodo.jsp?task=내용어쩌구
 		  postData('processAddTodo.jsp', { task: 'test' }); 		
      }

      function remove(id) {
      }

    </script>
  </head>

  	<%
  	TodoRepository repository = TodoRepository.getInstance();
  	out.println(repository.getTodos());
  	// 위는 추후 주석 처리 (추가한 내용이 잘 저장되고 있는지 확인하기 위함)
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
        <div class="todo-item">
        	<div class="remove">&times;</div>
        	<div class="todo-text checked">숙제</div>
        	<div class="check-mark">&#x2713;</div>
        </div>
      
		<div class="todo-item">
        	<div class="remove">&times;</div>
        	<div class="todo-text">청소</div>
       </div>
      </section>
    </div>
  </body>

  </html>