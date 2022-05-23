// Todo의 data를 처리하고 data를 돌려주는 Class

package dao;

import java.util.List;
import java.util.ArrayList;
import dto.Todo;

public class TodoRepository {
	
	private static long currentId = 0; // 현재 id
	
	public List<Todo> todos = new ArrayList<>();
	
	// List todos : 새로고침 해도 데이터가 날아가면 안 됨 ==> Singleton Pattern 사용
	private static TodoRepository instance = new TodoRepository();
	
	public static TodoRepository getInstance() {
		return instance;
	}
	
	// Getter
	public List<Todo> getTodos() {
		return todos;
	}
	
	// 기능 추가 : 할 일 추가 (id 세팅 포함)
	public void addTodo(Todo todo) {
		todo.setId(currentId);
		currentId++;
		todos.add(todo);
	}
	
	
}
