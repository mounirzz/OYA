package com.vito16.shop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.vito16.shop.model.ProductType;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Repository
public interface ProductTypeRepository extends JpaRepository<ProductType, Integer> {
	
}
