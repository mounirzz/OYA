package com.vito16.shop.service;
/**
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vito16.shop.repository.PictureRepository;
import com.vito16.shop.repository.ProductRepository;
import com.vito16.shop.model.Picture;

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
