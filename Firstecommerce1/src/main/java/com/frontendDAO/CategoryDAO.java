package com.frontendDAO;



import java.util.List;

import com.frontendModel.Category;

public interface CategoryDAO {
	public boolean saveorUpdate (Category category);
	
	public boolean delete(String id);
	public Category get(String id);
		public List<Category> list();
	
	

}

