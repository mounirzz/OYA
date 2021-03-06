package com.net.oya.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.net.oya.model.Picture;

/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Repository
public interface PictureRepository extends JpaRepository<Picture, Integer> {
}
