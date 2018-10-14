package com.net.oya.service;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.net.oya.model.Picture;
import com.net.oya.repository.PictureRepository;
import com.net.oya.repository.ProductRepository;

@Service
@Transactional
public class PictureService {

    @Autowired
    PictureRepository pictureDao;
    @Autowired 
    ProductRepository productDao ;

    public void save(Picture picture) {
        pictureDao.save(picture);
    }

    public List<Picture> findAll() {
        return pictureDao.findAll();
    }


}
