package dto; // dto = data transfer object
//*참고 : F3 ==> 해당 기능의 소스코드 확인 (e.g. Serializable에 커서 놓고 > F3 > 코드 확인 가능)

import java.io.Serializable; // import "Serializable" 메서드

// 모델 클래스
// JSP : 자바빈즈 (getter/setter, 기본 생성자 필수, Serializable 구현 필수)
// 단, 5/19 수업분까지는 implements Serializable 하지 않아도 기능에 문제 없음! (5/20에 배울 예정)
public class Product implements Serializable {

	// Add generated serial version ID
	private static final long serialVersionUID = -8090315455666992429L;
	
	// 상품 정보 > 기본적으로 private으로 만들어놓기(다른 클래스에서 수정하지 못하도록)
	private String productId;
	private String name;
	private int unitPrice;
	private String description;
	private String manufacturer;
	private String category;
	private long unitInStock;
	private String condition;
	
	Product() {}	// 기본 생성자 만들어놓기 (다른 생성자 생성하므로, 기본 생성자 만들어야 함)
				 	// 5/19 수업분 까지는 아직 없어도 괜찮음! 5/20에 꼭 필요한 이유와 상황 배울 예정.

	// 생성자 만들기 (Source > Generate Constructor using Fields..)
	// <jsp:useBean> Action Tag에서 Parameter 사용 시 사용할 예정...(5/20 수업 예정)
	public Product(String productId, String name, int unitPrice) {
		super();
		this.productId = productId;
		this.name = name;
		this.unitPrice = unitPrice;
	}


	// generate getters & setters
	public String getProductId() {
		return productId;
	}
	public void setProductId(String productId) {
		this.productId = productId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getUnitPrice() {
		return unitPrice;
	}
	public void setUnitPrice(int unitPrice) {
		this.unitPrice = unitPrice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getManufacturer() {
		return manufacturer;
	}
	public void setManufacturer(String manufacturer) {
		this.manufacturer = manufacturer;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public long getUnitInStock() {
		return unitInStock;
	}
	public void setUnitInStock(long unitInStock) {
		this.unitInStock = unitInStock;
	}
	public String getCondition() {
		return condition;
	}
	public void setCondition(String condition) {
		this.condition = condition;
	}


	// Source > generate toString()....
	@Override
	public String toString() {
		return "Product [productId=" + productId + ", name=" + name + ", unitPrice=" + unitPrice + ", description="
				+ description + ", manufacturer=" + manufacturer + ", category=" + category + ", unitInStock="
				+ unitInStock + ", condition=" + condition + "]";
	}
	
	
	
}
