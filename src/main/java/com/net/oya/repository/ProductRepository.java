package com.net.oya.repository;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */

import java.util.List;

import com.alibaba.druid.stat.TableStat.Mode;
import com.net.oya.model.Product;
import com.net.oya.model.ProductType;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface ProductRepository extends JpaRepository<Product, Integer> {

    List<Product> findByOrderByCreateTimeDesc();

    List<Product> findByOrderByCreateTimeAsc();

    @Query("FROM Product p")
    List<Product> findPopProducts();
    
    
  //  @Query("select name , id_marque from t_marque ")
  //  List<Marque> SelectMarque(String name,Integer id);
    //
   // @Query("select t.name from t_model t  inner join t_marque m where m.id_marque = t.id_marque")
  //  public List<Model> SelectModel(String name, Integer id);

//	@Query("select m.name from t_marque m  inner join m.t_product p where p.id_marque = m.id_marque")
  //  public List<Marque> SearchNamepr(@Param("x")String name);
    
	//@Query("select t.name from t_model t  inner join m.t_marque m where m.id_marque = m.id_marque and t.name like %:x%")
   // public List<Model> SearchNamemod(@Param("x")String name);
    
//	@Query("select p from t_product p where p.title like %:x%")
//	public List<Product> searchByTitle(@Param("x")String title);
  //  @Query("select u.userName from User u inner join u.area ar where ar.idArea = :idArea")


}
