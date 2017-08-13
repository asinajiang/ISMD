package org.hust.ismd.dao;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.dao.DataAccessException;

import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import java.io.Serializable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
/**
 * Dao基类，以泛型的方式用于其他DAO类
 * @author guweif2011
 *
 */

public class BaseDao<T> {
	private Class<T> entityClass;
	
	@Resource
	private SessionFactory sessionFactory;
	
	@SuppressWarnings("unchecked")
	public BaseDao(){
		Type genType = getClass().getGenericSuperclass();
		Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
		entityClass = (Class)params[0];
	}
	
	public SessionFactory getSessionFactory(){
		return sessionFactory;
	}
	
	
	public Session getSession(){
		return getSessionFactory().getCurrentSession();
	}
	
	public void setSessionFactory(SessionFactory sessionFactory){
		this.sessionFactory = sessionFactory;
	}
	
	@SuppressWarnings("unchecked")
	public T get(Serializable id){
		return (T)getSession().get(entityClass, id);
	}
	
	public List<T> getAll(){
		Criteria criteria = getSession().createCriteria(entityClass);
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		return criteria.list();
	}
	
	public void save(T entity){
		getSession().save(entity);
	}
	
	public void update(T entity){
		getSession().update(entity);
	}
	
	public void remove(T entity){
		getSession().delete(entity);
	}
	
	public List find(String hql){
		return getSession().createCriteria(hql).list();
	}
	
	public List<T> find(String hql, Object...param) {
		Query q = this.getSession().createQuery(hql);
		if (param != null && param.length > 0) {
			for (int i = 0; i < param.length; i++) {
				q.setParameter(i, param[i]);
			}
		}
		return q.list();
	}
	
	public Iterator iterate(final String queryString , final Object...objects ) throws DataAccessException{
		Query queryObject = getSession().createQuery(queryString);
		if(objects != null){
			for(int i=0; i<objects.length; i++){
				queryObject.setParameter(i, objects[i]);
			}
		}
		return queryObject.iterate();
	}
	
	
	
	
	public void initial(Object entity){
		Hibernate.initialize(entity);
	}
	
}
















