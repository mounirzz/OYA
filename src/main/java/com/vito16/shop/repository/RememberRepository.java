package com.vito16.shop.repository;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
import com.vito16.shop.model.Remember;
import org.springframework.data.jpa.repository.JpaRepository;


public interface RememberRepository extends JpaRepository<Remember,String> {
}
