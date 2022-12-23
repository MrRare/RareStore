package product;

public class CosProduct {
	String name;
	int price;
	String company;
	String image;
	public CosProduct(String name, int price, String company, String image) {
		super();
		this.name = name;
		this.price = price;
		this.company = company;
		this.image = image;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getCompany() {
		return company;
	}
	public void setCompany(String company) {
		this.company = company;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}

}
