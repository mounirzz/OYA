/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
package com.net.oya.service;

import com.net.oya.common.Page;
import com.net.oya.model.Product;
import com.net.oya.model.ProductType;
import com.net.oya.model.User;
import com.net.oya.repository.ProductRepository;
import com.net.oya.repository.ProductTypeRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class ProductService {

	@Autowired
    ProductTypeRepository productTypeDao;

	@Autowired
	ProductRepository productDao;

	public void saveType(ProductType type) {
		productTypeDao.save(type);
	}


	public void save(Product product) {
		productDao.save(product);
	}

	public Product findById(Integer id) {
		return productDao.findOne(id);
	}
	//public List<Product> findByTitle(String title) {
	//	return productDao.searchByTitle(title);
	//}

	//public List<Marque> listeNameMar(String name, Integer id){
//		return productDao.SelectMarque(name, id);
	//}


	public List<Product> findNew() {
		return productDao.findByOrderByCreateTimeDesc();
	}
    public List<Product> findOld() {
        return productDao.findByOrderByCreateTimeAsc();
    }
	
	public List<Product> findPop(){
		return productDao.findPopProducts();
	}

    public List<Product> findProducts(Page<Product> page) {
        page.setResult(productDao.findAll(page.getPageable()).getContent());
        page.setTotalCount(productDao.count());
        return page.getResult();
    }
  //  public List<Marque> findMarque(String name,Integer id) {
  //      return productDao.SelectMarque(name, id);
  //  }
  //  public List<Model> findModel(String name,Integer id) {
   //     return productDao.SelectModel(name, id);
   // }

	public List<ProductType> findType() {
		return productTypeDao.findAll();
	}

	public List<Product> findAll() {
		return productDao.findAll();
	}
	public Product findOne(Integer id) {
		return productDao.findOne(id);
	}


    
}
