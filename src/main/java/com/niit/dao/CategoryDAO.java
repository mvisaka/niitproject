package com.niit.dao;


import java.util.List;

import com.niit.model.Category;

public interface CategoryDAO {
	
	public List<Category> findAllCategorys();
	public Category findCategoryById(int categoryId);
	public Category findCategoryByName(String categoryName);
	public boolean addCategory(Category category);
	public boolean updateCategory(Category category);
	public boolean deleteCategory(int categoryId);

}
