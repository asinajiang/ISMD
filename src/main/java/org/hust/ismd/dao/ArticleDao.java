package org.hust.ismd.dao;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hust.ismd.entity.Article;
import org.hust.ismd.entity.Columns;
import org.springframework.stereotype.Repository;

@Repository
public class ArticleDao extends BaseDao<Article>{
	private static final String GET_ARTICLE_NUM ="select count(a.articleId) from Article a";
	public long getArticleNum(){
		Iterator iterator = iterate(GET_ARTICLE_NUM);
		return ((Long)iterator.next());
	}
	
	/*public List<Article> getFrontArticles(){   //获取文章列表的前三篇用于首页展示
		List<Article> list = new ArrayList<Article>();
		for(int i=0; i<3; i++){
			list.add(get(i));
		}
		return list;
	}*/
	
	
	public List<Article> getArticlesByColumnsId(int columnsId){
		List<Article> arts = new ArrayList<Article>();
		List<Article> allArts = this.getAll();
		for(Article attri:allArts){
			if(attri.getColumnId() == columnsId){
				arts.add(attri);
			}
		}
		return arts;
	}
}
