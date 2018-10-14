package com.net.oya.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.net.oya.common.Page;
import com.net.oya.model.News;
import com.net.oya.model.Order;
import com.net.oya.model.Product;
import com.net.oya.repository.NewsRepository;
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
