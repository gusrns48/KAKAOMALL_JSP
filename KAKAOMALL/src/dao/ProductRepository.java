package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();

	public ProductRepository() {
		Product lion = new Product("FRPBRYFMD0001", "<strong>프루티 미니인형-라이언</strong>", 8000);
		lion.setDescription("11*10*11cm");
		lion.setCategory("doll");
		lion.setManufacturer("kakao");
		lion.setUnitsInStock(978);
		lion.setCondition("New");
		lion.setBannerDescription("과즙미가 팡!팡! 달콤한 과일과 함께하는<br>카카오프렌즈와 여름을 즐겨요~<br>" + "튜브 위에 둥둥 떠다니는 라이언의<br>미니인형입니다.");
		lion.setImageUrl("images/라이언.PNG");

		Product apeach = new Product("FRPBAPFMD0001", "<strong>프루티 미니인형-어피치</strong>", 8000);
		apeach .setDescription("11*8*9cm");
		apeach .setCategory("doll");
		apeach .setManufacturer("kakao");
		apeach .setUnitsInStock(990);
		apeach .setCondition("New");
		apeach .setBannerDescription("과즙미가 팡!팡! 달콤한 과일과 함께하는<br>카카오프렌즈와 여름을 즐겨요~<br>" + "튜브 위에 둥둥 떠다니는 어피치의<br>미니인형입니다.");
		apeach .setImageUrl("images/어피치.PNG");

		Product tube = new Product("FRPBTBFMD0001", "<strong>프루티 미니인형-튜브</strong>", 8000);
		tube.setDescription("11*10*11cm");
		tube.setCategory("doll");
		tube.setManufacturer("kakao");
		tube.setUnitsInStock(1000);
		tube.setCondition("New");
		tube.setBannerDescription("과즙미가 팡!팡! 달콤한 과일과 함께하는<br>카카오프렌즈와 여름을 즐겨요~<br>" + "튜브 위에 둥둥 떠다니는 튜브의<br>미니인형입니다.");
		tube.setImageUrl("images/튜브.PNG");

		listOfProducts.add(lion);
		listOfProducts.add(apeach);
		listOfProducts.add(tube);
	}

	public ArrayList<Product> getAllProducts() {
		return listOfProducts;
	}
	
	public Product getProductById(String productId) {
		Product productById = null;

		for (int i = 0; i < listOfProducts.size(); i++) {
			Product product = listOfProducts.get(i);
			if (product != null && product.getProductId() != null && product.getProductId().equals(productId)) {
				productById = product;
				break;
			}
		}
		return productById;
	}
}

