package dto;

public class Todo {
	private long id;
	private String task;
	private boolean isDone; // 기본값 : false (field에 작성 시, 기본값 false임)
	
	// 생성자 (인자 : id & task)
	public Todo(String task) {
		this.task = task;
	}

	// Generate Getters and Setters
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getTask() {
		return task;
	}

	public void setTask(String task) {
		this.task = task;
	}

	public boolean isDone() {
		return isDone;
	}

	public void setDone(boolean isDone) {
		this.isDone = isDone;
	}

	// Generate toString()
	@Override
	public String toString() {
		return "Todo [id=" + id + ", task=" + task + ", isDone=" + isDone + "]";
	}
	
}
