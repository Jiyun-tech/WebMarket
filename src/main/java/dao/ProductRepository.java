package dao; // dao = Data Access Object

import java.util.ArrayList;
import java.util.List;
import dto.Product; // Package dto의 Class Product를 import함

// ProductRepository : Product에 대한 기능 정의
public class ProductRepository {
	private List<Product> products = new ArrayList<>();
	// ArrayList는 List, Serializable 등 구현한 것이기 때문에, 부모 클래스인 List로 선언 가능.
	// 참고: F3 키 사용하여 code 보기
	
	// 기본 생성자에 제품 3개 만들기
	public ProductRepository() {
		// DB에서 데이터 가져와야하나, 현재 database를 배우지 않아 데이터 3개 생성함.
		Product phone = new Product("P1234", "iphone 6s", 800000);
		phone.setDescription("4.7-inch, 1334X750 Retina HD display, 8-megapixel iSight Camara");
		phone.setCategory("Smart Phone");
		phone.setManufacturer("Apple");
		phone.setUnitInStock(1000);
		phone.setCondition("New");
		
		Product notebook = new Product("P1235", "LG PC 그램", 1500000);
		phone.setDescription("13.3inch, IPS LED display, 5th Generation Intel Core processors");
		phone.setCategory("Notebook");
		phone.setManufacturer("LG");
		phone.setUnitInStock(1000);
		phone.setCondition("Refurbished");
		
		Product tablet = new Product("P1236", "Galaxy Tab S", 900000);
		phone.setDescription("212.8*125.6*6.6mm, Super AMOLED display, Octa-Core processor");
		phone.setCategory("Tablet");
		phone.setManufacturer("Samsung");
		phone.setUnitInStock(1000);
		phone.setCondition("Old");
		
		// List에 데이터 추가
		products.add(phone);
		products.add(notebook);
		products.add(tablet);
	}
	
	// 기능 추가 : 모든 상품 정보 가져오기
	public List<Product> getAllProducts() {
		return products;
		
	}
}
