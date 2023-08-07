package com.jcrud;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Service;

@Service
public class ProductService {

	public Products getProductById(Integer id) {
		SqlSession session = Configuration.getSqlSessionFactory().openSession();
		try {
			Products product = (Products) session.selectOne("com.jcrud.ProductMapper.getProductById", id);
			return product;
		} finally {
			session.close();
		}
	}

	public List<Products> getAllProducts() {
		SqlSession session = Configuration.getSqlSessionFactory().openSession();
		try {
			@SuppressWarnings("unchecked")
			List<Products> products = session.selectList("com.jcrud.ProductMapper.getAllProducts");
			return products;
		} finally {
			session.close();
		}
	}

	public void addProduct(Products product) {
		SqlSession session = Configuration.getSqlSessionFactory().openSession();
		try {
			session.insert("com.jcrud.ProductMapper.addProduct", product);
			session.commit();
		} finally {
			session.close();
		}
	}

	public void editProduct(Products product) {
		SqlSession session = Configuration.getSqlSessionFactory().openSession();
		try {
			session.update("com.jcrud.ProductMapper.updateProduct", product);
			session.commit();
		} finally {
			session.close();
		}
	}

	public void deleteProduct(Integer id) {
		SqlSession session = Configuration.getSqlSessionFactory().openSession();
		try {
			session.update("com.jcrud.ProductMapper.deleteProduct", id);
			session.commit();
		} finally {
			session.close();
		}
	}
}
