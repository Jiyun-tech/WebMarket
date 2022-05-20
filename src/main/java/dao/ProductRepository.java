package dao; // dao = Data Access Object

import java.util.ArrayList;
import java.util.List;
import dto.Product; // Package dto의 Class Product를 import함

// ProductRepository : Product에 대한 기능 정의
public class ProductRepository {
	private List<Product> products = new ArrayList<>();
	// ArrayList는 List, Serializable 등 구현한 것이기 때문에, 부모 클래스인 List로 선언 가능.
	// 참고: F3 키 사용하여 code 보기
	
	// Singleton Design Pattern 구현 (생성 관련 패턴)
	// 하나의 객체를 생성 후 인스턴스를 재사용하는 싱글턴 패턴
	private static ProductRepository instance = new ProductRepository();
	public static ProductRepository getInstance() {
		return instance;
	}
	
	// 기본 생성자에 제품 3개 만들기
	// 기본 생성자 다른 곳에서 생성하지 못하게 private으로 설정 (singleton pattern)
	public ProductRepository() {
		// DB에서 데이터 가져와야하나, 현재 database를 배우지 않아 데이터 3개 생성함.
		Product phone = new Product("P1234", "iphone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, 8-megapixel iSight Camara");
		phone.setManufacturer("Apple");
		phone.setCategory("Smart Phone");
		phone.setUnitInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		notebook.setDescription("13.3inch, IPS LED display, 5th Generation Intel Core processors");
		notebook.setManufacturer("LG");
		notebook.setCategory("Notebook");
		notebook.setUnitInStock(1000);
		notebook.setCondition("Refurbished");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		tablet.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		tablet.setManufacturer("Samsung");
		tablet.setCategory("Tablet");
		tablet.setUnitInStock(1000);
		tablet.setCondition("Old");
		
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}
	
	public List<Product> getAllProducts() {
		return products;
		
	}
	
	// ID로 상품 찾기 (stream : for문 대신 쓸 수 있는 신규 기능, for문은 책 p.173 참고)
	public Product getProductById(String ProductId) {
		return products.stream() // 상품 개 흘러감
				.filter((product)->product.getProductId().equals(ProductId))
				// 필요한 것 거르기 (filter가 하나씩 돌림)
				.findFirst()	// 그 중 첫 번째 것 찾기
				.get(); 		// 찾은 값 얻어오기	
	}
	
	// 상품 추가
	public void addProduct(Product product) {
		products.add(product);
	}
	
}
