package sc;
import java.util.*;

public class Proj {
	public String itemName = "";
	public int Price;
	public int quantity;
	public int discount;
	public int postOfferPrice;
	
	public static ArrayList getProducts() {
		ArrayList products=new ArrayList();
		Proj p = new Proj();
		p.itemName = "Moserbaer Pendrive";
		p.Price = 500;
		p.discount = 10;
		p.postOfferPrice = p.Price - (p.Price * p.discount / 100);
		p.quantity = 1;
		products.add(p);
		
		Proj p1 = new Proj();
		p1.itemName = "Samsung 32' LED TV";
		p1.Price = 32000;
		p1.discount = 10;
		p1.postOfferPrice = p1.Price - (p1.Price * p1.discount / 100);
		p1.quantity = 1;
		products.add(p1);
		
		Proj p2 = new Proj();
		p2.itemName = "Toshiba Laptop";
		p2.Price = 45000;
		p2.discount = 15;
		p2.postOfferPrice = p2.Price - (p2.Price * p2.discount / 100);
		p2.quantity = 1;
		products.add(p2);
		
		Proj p3 = new Proj();
		p3.itemName = "Fastrack Watch";
		p3.Price = 3500;
		p3.discount = 5;
		p3.postOfferPrice = p3.Price - (p3.Price * p3.discount / 100);
		p3.quantity = 1;
		products.add(p3);
		
		Proj p4 = new Proj();
		p4.itemName = "LG Telivision";
		p4.Price = 57000;
		p4.discount = 15;
		p4.postOfferPrice = p4.Price - (p4.Price * p4.discount / 100);
		p4.quantity = 1;
		products.add(p4);
		
		//initially containing 5 items 		
		//similarly more items can be added to products list 
		return products; //returns the whole list
	}	
}
