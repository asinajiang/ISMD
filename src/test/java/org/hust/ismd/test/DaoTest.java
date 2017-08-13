package org.hust.ismd.test;
import static org.junit.Assert.*;

import java.sql.SQLException;
import java.util.Date;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hust.ismd.dao.ArticleDao;
import org.hust.ismd.entity.Article;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class DaoTest {

	@Before
	public void setUp() throws Exception {
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		fail("Not yet implemented");
	}
	
	
	private ApplicationContext ctx =null;
	@Test
	public void testDaoLayer() throws SQLException{
		/*ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		//System.out.println(ctx);
		DataSource dataSource = ctx.getBean(DataSource.class);
		//System.out.println(dataSource);
		SessionFactory sessionFactory = ctx.getBean(SessionFactory.class);
		//System.out.println(sessionFactory);
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		Article article = new Article();
		article.setArticleTitle("title");
		article.setArticleCreateTime(new Date());
		article.setArticleWriter("writer");
		article.setArticleSource("source");
		article.setArticleKeyWords("keywords");
		article.setArticleThemePic("themepic");
		article.setArticleSummary("summary");
		article.setArticleText("text");
		article.setColumnId(7);
		session.save(article);
		tx.commit();
		session.close();*/
		
		ctx = new ClassPathXmlApplicationContext("applicationContext.xml");
		
		ArticleDao articleDao = (ArticleDao)ctx.getBean("articleDao");
		Transaction tx = articleDao.getSessionFactory().openSession().beginTransaction();
		Article article = new Article();
		article.setArticleTitle("title1");
		article.setArticleCreateTime(new Date());
		article.setArticleWriter("writer1");
		article.setArticleSource("source1");
		article.setArticleKeyWords("keywords1");
		article.setArticleThemePic("themepic1");
		article.setArticleSummary("summary1");
		article.setArticleText("text1");
		article.setColumnId(9);
		articleDao.save(article);
		tx.commit();
		System.out.println("done!");
	}

}
