package com.jcrud;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service
public class CategoryService {
	public Category getCategoryById(Integer id) {
	    SqlSession session = Configuration.getSqlSessionFactory().openSession();
	    try {
	    	Category category = (Category) session.selectOne("com.jcrud.CategoryMapper.getCategoryById", id);
	        return category;
	    } finally {
	        session.close();
	    }
	}


	public List<Category> getAllCategories() {
		  SqlSession session = Configuration.getSqlSessionFactory().openSession();
		  try {
		    @SuppressWarnings("unchecked")
			List<Category> category = session.selectList("com.jcrud.CategoryMapper.getAllCategories");
		    return category;
		  } finally {
		    session.close();
		  }
		}

	
	public void addCategory(Category category) {
	    SqlSession session = Configuration.getSqlSessionFactory().openSession();
	    try {
	        session.insert("com.jcrud.CategoryMapper.addCategory", category);
	        session.commit();
	    } finally {
	        session.close();
	    }
	}
	public void editCategory(Category category) {
	    SqlSession session = Configuration.getSqlSessionFactory().openSession();
	    try {
	        session.update("com.jcrud.CategoryMapper.updateCategory", category);
	        session.commit();
	    } finally {
	        session.close();
	    }
	}
	public void deleteCategory(Integer id) {
	    SqlSession session = Configuration.getSqlSessionFactory().openSession();
	    try {
	        session.update("com.jcrud.CategoryMapper.deleteCategory", id);
	        session.commit();
	    } finally {
	        session.close();
	    }
	}

	
}
