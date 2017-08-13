package org.hust.ismd.service;

import java.io.Serializable;
import java.util.List;

import org.hust.ismd.dao.UserDao;
import org.hust.ismd.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
	private UserDao userDao;

	public UserDao getUserDao() {
		return userDao;
	}
    @Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
    public void save(User user){
		userDao.save(user);
	}
	
	public void remove(User user){
		userDao.remove(user);
	}
	
	public void update(User user){
		userDao.update(user);
	}
	
	public User get(Serializable id){
		return userDao.get(id);
	}
	
	public List<User> getAll(){
		return userDao.getAll();
	}
	
	public User getUserByUserName(String userName){
		return userDao.getUserByUserName(userName);
	}
	
}
