package org.hust.ismd.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.hibernate.annotations.Cache;
import org.hibernate.annotations.CacheConcurrencyStrategy;

/**
 * 网站用户PO类
 * @author guweif2011
 *
 */


@Entity
@Cache(usage = CacheConcurrencyStrategy.NONSTRICT_READ_WRITE)
@Table(name = "ismd_user")
public class User extends BaseDomain{
	/*  普通用户   */
	public static final int NORMAL_USER = 0;
	
	/*  普通管理员用户  */
	public static final int MANAGER_USER = 1;
	
	/*  最高权限管理员用户  */
	public static final int SUPER_USER = 2;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_id")
	private int userId;
	
	@Column(name = "user_name")
	private String userName;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "user_type")
	private int userType;
	
	@ManyToMany(cascade = {CascadeType.PERSIST , CascadeType.MERGE}, fetch = FetchType.EAGER)
	@JoinTable(name = "article_manager",joinColumns = {@JoinColumn(name = "user_id")}, inverseJoinColumns = {@JoinColumn(name = "article_id")})
	private Set<Article> articles = new HashSet<Article>();

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public int getUserType() {
		return userType;
	}

	public void setUserType(int userType) {
		this.userType = userType;
	}

	public Set<Article> getArticles() {
		return articles;
	}

	public void setArticles(Set<Article> articles) {
		this.articles = articles;
	}
	
	
}



















