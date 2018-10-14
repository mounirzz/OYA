package com.vito16.shop.service;

import java.util.List;

import com.vito16.shop.model.Order;
import com.vito16.shop.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.vito16.shop.common.Page;
import com.vito16.shop.repository.NewsRepository;
import com.vito16.shop.model.News;
/**
 * Module de nouvelles Service
 * @author Mounir
 * @email m.ezzahar@madrex.ma
 * @date 2017-10-20
 */
@Service
@Transactional
public class NewsService extends BaseService {

	@Autowired
    NewsRepository newsDao;

    public void addNews(News news){
        newsDao.save(news);
    }

    public void delNews(Integer newsId){
        newsDao.delete(newsId);
    }

    public List<News> findNews(Page<News> page) {
            page.setResult(newsDao.findAll(page.getPageable()).getContent());
            page.setTotalCount(newsDao.count());
            return page.getResult();
    }

    public News findById(Integer id) {
        return newsDao.findOne(id);
    }


}
