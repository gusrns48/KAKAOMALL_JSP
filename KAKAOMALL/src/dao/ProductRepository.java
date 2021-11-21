package dao;

import java.util.ArrayList;

import dto.Product;

public class ProductRepository {

	private ArrayList<Product> listOfProducts = new ArrayList<Product>();

	public ProductRepository() {
		Product lion = new Product("FRPBRYFMD0001", "<strong>����Ƽ �̴�����-���̾�</strong>", 8000);
		lion.setDescription("11*10*11cm");
		lion.setCategory("doll");
		lion.setManufacturer("kakao");
		lion.setUnitsInStock(978);
		lion.setCondition("New");
		lion.setBannerDescription("����̰� ��!��! ������ ���ϰ� �Բ��ϴ�<br>īī��������� ������ ��ܿ�~<br>" + "Ʃ�� ���� �յ� ���ٴϴ� ���̾���<br>�̴������Դϴ�.");
		lion.setImageUrl("images/���̾�.PNG");

		Product apeach = new Product("FRPBAPFMD0001", "<strong>����Ƽ �̴�����-����ġ</strong>", 8000);
		apeach .setDescription("11*8*9cm");
		apeach .setCategory("doll");
		apeach .setManufacturer("kakao");
		apeach .setUnitsInStock(990);
		apeach .setCondition("New");
		apeach .setBannerDescription("����̰� ��!��! ������ ���ϰ� �Բ��ϴ�<br>īī��������� ������ ��ܿ�~<br>" + "Ʃ�� ���� �յ� ���ٴϴ� ����ġ��<br>�̴������Դϴ�.");
		apeach .setImageUrl("images/����ġ.PNG");

		Product tube = new Product("FRPBTBFMD0001", "<strong>����Ƽ �̴�����-Ʃ��</strong>", 8000);
		tube.setDescription("11*10*11cm");
		tube.setCategory("doll");
		tube.setManufacturer("kakao");
		tube.setUnitsInStock(1000);
		tube.setCondition("New");
		tube.setBannerDescription("����̰� ��!��! ������ ���ϰ� �Բ��ϴ�<br>īī��������� ������ ��ܿ�~<br>" + "Ʃ�� ���� �յ� ���ٴϴ� Ʃ����<br>�̴������Դϴ�.");
		tube.setImageUrl("images/Ʃ��.PNG");

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

