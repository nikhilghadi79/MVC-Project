package com.projectApp.Dao;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.projectApp.Model.Product;

@Component
public class ProductDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	// creating the product
	@Transactional
	public void createProduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	
	// get all products 
	public List<Product> getProductus(){
		List<Product> products = this.hibernateTemplate.loadAll(Product.class);
		return products;
		
	}
	// delete the products 
	@Transactional
	public void deleteProduct(int pId) {
		Product product = this.hibernateTemplate.load(Product.class,pId);
		this.hibernateTemplate.delete(product);
	}
	// get the single product
	public Product getProduct(int pId) {
		return this.hibernateTemplate.get(Product.class, pId);
	}

}
