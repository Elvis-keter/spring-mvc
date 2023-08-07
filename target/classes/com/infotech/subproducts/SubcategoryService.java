package com.jcrud;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service
public class SubcategoryService {
	
	public Subcategory getSubcategoryById(Integer id) {
	    SqlSession session = Configuration.getSqlSessionFactory().openSession();
	    try {
	    	Subcategory subcategory = (Subcategory) session.selectOne("com.jcrud.SubcategoryMapper.getSubcategoryById", id);
	        return subcategory;
	    } finally {
	        session.close();
	    }
	}


	public List<Subcategory> getAllSubcategories() {
		  SqlSession session = Configuration.getSqlSessionFactory().openSession();
		  try {
		    @SuppressWarnings("unchecked")
			List<Subcategory> subcategory = session.selectList("com.jcrud.SubcategoryMapper.getAllSubcategories");
		    return subcategory;
		  } finally {
		    session.close();
		  }
		}

	
	public void addSubcategory(Subcategory subcategory) {
	    SqlSession session = Configuration.getSqlSessionFactory().openSession();
	    try {
	        session.insert("com.jcrud.SubcategoryMapper.addSubcategory", subcategory);
	        session.commit();
	    } finally {
	        session.close();
	    }
	}
	public void editSubcategory(Subcategory subcategory) {
	    SqlSession session = Configuration.getSqlSessionFactory().openSession();
	    try {
	        session.update("com.jcrud.SubcategoryMapper.updateSubcategory", subcategory);
	        session.commit();
	    } finally {
	        session.close();
	    }
	}
	public void deleteSubcategory(Integer id) {
	    SqlSession session = Configuration.getSqlSessionFactory().openSession();
	    try {
	        session.update("com.jcrud.SubcategoryMapper.deleteSubcategory", id);
	        session.commit();
	    } finally {
	        session.close();
	    }
	}
	

}
