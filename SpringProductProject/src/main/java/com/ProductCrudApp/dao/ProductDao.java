package com.ProductCrudApp.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ProductCrudApp.model.UserProduct;
@Component
@Repository
public class ProductDao {
	@Autowired
	private HibernateTemplate hibernateTemplate;
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	//save product
	@Transactional(value="hibernateTransactionManager")                                           
	public void saveProduct(UserProduct userproduct){                       //---------------->Save product
		this.hibernateTemplate.saveOrUpdate(userproduct);	
		
	}
	@Transactional(value="hibernateTransactionManager")                                           
	public void updateProduct(UserProduct userproduct){                       //---------------->Save product
		this.hibernateTemplate.update(userproduct);	
		
	}
	///get all product
	public List<UserProduct> getAllProduct(){
		List<UserProduct> list_product = this.hibernateTemplate.loadAll(UserProduct.class);
		return list_product;
	}
	//delete product
	@Transactional(value="hibernateTransactionManager")
	public void deleteProduct(int pid){
		UserProduct user_product = this.hibernateTemplate.load(UserProduct.class, pid);
		this.hibernateTemplate.delete(user_product);
	}
	//get single product
	public UserProduct getProduct(int pid){
		UserProduct user_product = this.hibernateTemplate.get(UserProduct.class, pid);
		return user_product;
	}
	

}
