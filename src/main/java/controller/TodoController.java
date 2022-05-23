// 비즈니스 로직 처리/조정하는 기능을 한 개 클래스에 모두 몰아 넣기 (참고 : 교재 ch18 MVC)
// MVC 2 : 로직을 모두 Java Code로 짜는 것
package controller;

import java.io.IOException;

import dao.TodoRepository;
import dto.Todo;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

// 톰캣에 컨트롤러의 존재를 노출
@WebServlet(name = "TodoController", 
			urlPatterns = {"/addTodo.do", "/toggleTodo.do", "/removeTodo.do"})

// 서블릿 클래스 생성하기 (HttpServlet 클래스 확장)
public class TodoController extends HttpServlet {

	private static final long serialVersionUID = -5789298759459019056L;

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		super.doGet(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) 
			throws ServletException, IOException {
		// 요청 주소 (e.g. processAddTodo.do)
		String command = req.getRequestURI().substring(req.getContextPath().length());
		
		TodoRepository repository = TodoRepository.getInstance();
		
		if (command.equals("/addTodo.do")) {
			String task = req.getParameter("task");
			Todo todo = new Todo(task);
			repository.addTodo(todo);	
 		} else if (command.equals("/toggleTodo.do")) {
 			long id = Long.parseLong(req.getParameter("id"));
 			repository.toggle(id);
 		} else if (command.equals("/removeTodo.do")) {
 			long id = Long.parseLong(req.getParameter("id"));
 			repository.remove(id);
 		}
		
		// session에 저장
		// req.getSession().setAttribute("todos", repository.getTodos());		
		
		// 페이지 이동하기
		// 리다이렉트 하면서 주소창에 노출하지 않고 처음 요청된 url 유지 (포워딩 방식)
		req.getRequestDispatcher("todolist.jsp").forward(req, resp);
	}
}
