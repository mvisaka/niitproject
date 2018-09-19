package com.niit.footware;






import java.util.List;
import java.util.Scanner;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.niit.config.DBConfig;
import com.niit.dao.CategoryDAO;
import com.niit.model.Category;

public class CategoryMain {

	public void categoryOut() {

Category category1 = new Category();
		
		AbstractApplicationContext context = new AnnotationConfigApplicationContext(DBConfig.class);
		CategoryDAO categoryDAO = (CategoryDAO) context.getBean("categoryDAO");
		
		Scanner sc = new Scanner(System.in);
		
		System.out.println("Please select a category to do the manipulation");
		System.out.println("1.Add Category /n 2.Delete Category /n 3.Update Category /n 4.View All Categorys /n 5.View Categorys by ID /n 6.View Categorys by Name");
		
		int choice = sc.nextInt();
		
		switch(choice){
		case 1:
			System.out.println("Please Enter the Category details to enter");
			
			
			System.out.println("CategoryName:");

			category1.setCategoryName(sc.next());
			
			
			
			
			boolean result1 = categoryDAO.addCategory(category1);
			if(result1 == true)
			{
				System.out.println("Details has been added successfully");
			}
			break;
		case 2:
			
			List<Category> categoryList1 = categoryDAO.findAllCategorys();
			for(Category category : categoryList1)
			{
				System.out.print("| Id:"+category.getCategoryId()+"|");
				System.out.print("Name:"+category.getCategoryName()+"|");
				
				System.out.println("");

			}
			System.out.println("Please enter the CategoryId to be deleted from the above Table");
			int CategoryId = sc.nextInt();
			boolean result = categoryDAO.deleteCategory(CategoryId);
			if(result == true)
			{
				System.out.println("The row has been successfuly deleted");
			}
			break;
		case 3:
			List<Category> productCategoryList2 = categoryDAO.findAllCategorys();
			for(Category productCategory : productCategoryList2)
			{
				System.out.print("| Id:"+productCategory.getCategoryId()+"|");
				System.out.print("Name:"+productCategory.getCategoryName()+"|");
				
				System.out.println("");

			}
			
			System.out.println("Please Enter the Category details for updation");
			
			System.out.println("CategoryName:");

			category1.setCategoryName(sc.next());
			
	
			
			boolean result2 = categoryDAO.updateCategory(category1);
			if(result2 == true)
			{
				System.out.println("Details has been updated successfully");
			}
			break;
			
		case 4:
			List<Category> categoryList = categoryDAO.findAllCategorys();
			for(Category category : categoryList)
			{
				System.out.print("| Id:"+category.getCategoryId()+"|");
				System.out.print("Name:"+category.getCategoryName()+"|");
				
				System.out.println("");

			}
			break;
			
		case 5:
			System.out.println("Please enter the CategoryId to view Category Details");
			int CategoryId3 = sc.nextInt();
			Category category = categoryDAO.findCategoryById(CategoryId3);
			System.out.print("| Id:"+category.getCategoryId()+"|");
			System.out.print("Name:"+category.getCategoryName()+"|");
			

			break;
		case 6:
			System.out.println("Please enter the CategoryName to view Category Details");
			String CategoryName = sc.next();
			Category category2 = categoryDAO.findCategoryByName(CategoryName);
			System.out.print("| Id:"+category2.getCategoryId()+"|");
			System.out.print("Name:"+category2.getCategoryName()+"|");
			

			break;
			
	 default: System.out.println("Please enter a valid input");
			
		}
		
		
		
		context.close();
		sc.close();
		

	}

}

