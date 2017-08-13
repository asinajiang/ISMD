package org.hust.ismd.service;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

import org.hust.ismd.dao.ArticleDao;
import org.hust.ismd.entity.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ArticleService {
	private ArticleDao articleDao;

	public ArticleDao getArticleDao() {
		return articleDao;
	}
	
	@Autowired
	public void setArticleDao(ArticleDao articleDao) {
		this.articleDao = articleDao;
	}
	
	public void save(Article article){
		articleDao.save(article);
	}
	
	public void remove(Article article){
		articleDao.remove(article);
	}
	
	public void update(Article article){
		articleDao.update(article);
	}
	
	public Article get(Serializable id){
		return articleDao.get(id);
	}
	
	public List<Article> getAll(){
		return articleDao.getAll();
	}
	
	public List<Article> getFrontArticles(){   //获取团队新闻的前三篇用于首页展示，团队新闻的columnsId为25
		List<Article> list = getArticlesByColumnsId(25);
		List<Article> result = new ArrayList<Article>();
		for(int i=0; i<3; i++){
			result.add(list.get(i));
		}
		return result;
	}
	
	public List<Article> getFrontNotices(){   //获取通知公告的前三篇用于首页展示，团队新闻的columnsId为25
		List<Article> list = getArticlesByColumnsId(26);
		List<Article> result = new ArrayList<Article>();
		for(int i=0; i<3; i++){
			result.add(list.get(i));
		}
		return result;
	}
	
	
	public List<Article> getArticlesByColumnsId(int columnsId){
		return articleDao.getArticlesByColumnsId(columnsId);
	}
}
