package shop;

import java.util.List;

import schnuppern.axon.Product;
import schnuppern.axon.WahrenkorbProdukte;

public class Wahrenkorb {
	public static List<WahrenkorbProdukte> add(List<Product> products, List<WahrenkorbProdukte> items, Integer idToAdd)
	{
		Product product = products.stream()
			.filter(prod -> prod.getId().equals(idToAdd))
			.findFirst().get();
		
		WahrenkorbProdukte cartItem = items.stream()
			.filter(item -> item.getProdukte().getId().equals(idToAdd))
			.findFirst().orElseGet(()->newItem(product, items));
		
		int count = cartItem.getCount().intValue();
		cartItem.setCount(count+1);
		cartItem.setTotal(cartItem.getTotal()+product.getPrice());
		
		return items;
	}

	private static WahrenkorbProdukte newItem(Product product, List<WahrenkorbProdukte> items) {
		WahrenkorbProdukte item = new WahrenkorbProdukte();
		item.setProdukte(product);
		item.setCount(0);
		item.setTotal(0.0);
		items.add(item);
		return item;
	}
	
	public static double getTotalPrice(List<WahrenkorbProdukte> items)
	{
		double sum = 0.0;
		for(WahrenkorbProdukte item : items)
		{
			sum+=item.getTotal();
		}
		return sum;
	}
	

}