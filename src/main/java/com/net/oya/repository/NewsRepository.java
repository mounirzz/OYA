package com.net.oya.repository;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.net.oya.model.News;


@Repository
public interface NewsRepository extends JpaRepository<News, Integer> {
}
