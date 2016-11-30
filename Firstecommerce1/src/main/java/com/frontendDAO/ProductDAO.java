package com.frontendDAO;


import java.util.List;

import com.frontendModel.Product;

public interface ProductDAO {





	public boolean save (Product product);
	public boolean update(Product product);
	public boolean delete(Product Product);
	public Product get(String id);
	
	public List<Product> list();
	
	

}

