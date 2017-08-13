package org.hust.ismd.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 网站文章PO类
 * @author guweif2011
 *
 */

@Entity
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@Table(name = "ismd_article")
public class Article extends BaseDomain{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="article_id")
	private int articleId;
	
	@Column(name = "article_title")
	private String articleTitle;
	
	@Column(name = "article_create_time")
	private Date articleCreateTime;
	
	@Column(name = "article_writer")
	private String articleWriter;
	
	@Column(name = "article_source")
	private String articleSource;
	
	@Column(name = "article_key_words")
	private String articleKeyWords;
	
	@Column(name = "article_theme_pic")
	private String articleThemePic;
	
	@Column(name = "article_summary")
	private String articleSummary;
	
	@Column(name = "article_text")
	private String articleText;
	
	@Column(name = "column_id")
	private int columnId;
	
	@ManyToMany(cascade = {CascadeType.PERSIST,CascadeType.MERGE}, mappedBy="articles",fetch=FetchType.LAZY)
	private Set<User> articleManager = new HashSet<User>();

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public String getArticleTitle() {
		return articleTitle;
	}

	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}

	public Date getArticleCreateTime() {
		return articleCreateTime;
	}

	public void setArticleCreateTime(Date articleCreateTime) {
		this.articleCreateTime = articleCreateTime;
	}

	public String getArticleWriter() {
		return articleWriter;
	}

	public void setArticleWriter(String articleWriter) {
		this.articleWriter = articleWriter;
	}

	public String getArticleSource() {
		return articleSource;
	}

	public void setArticleSource(String articleSource) {
		this.articleSource = articleSource;
	}

	public String getArticleKeyWords() {
		return articleKeyWords;
	}

	public void setArticleKeyWords(String articleKeyWords) {
		this.articleKeyWords = articleKeyWords;
	}

	public String getArticleThemePic() {
		return articleThemePic;
	}

	public void setArticleThemePic(String articleThemePic) {
		this.articleThemePic = articleThemePic;
	}

	public String getArticleSummary() {
		return articleSummary;
	}

	public void setArticleSummary(String articleSummary) {
		this.articleSummary = articleSummary;
	}

	public String getArticleText() {
		return articleText;
	}

	public void setArticleText(String articleText) {
		this.articleText = articleText;
	}

	public int getColumnId() {
		return columnId;
	}

	public void setColumnId(int columnId) {
		this.columnId = columnId;
	}

	public Set<User> getArticleManager() {
		return articleManager;
	}

	public void setArticleManager(Set<User> articleManager) {
		this.articleManager = articleManager;
	}
	
	
	
	
}
