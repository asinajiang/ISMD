package org.hust.ismd.dao;

import java.util.List;

import org.hust.ismd.entity.User;
import org.springframework.stereotype.Repository;

@Repository
public class UserDao extends BaseDao<User>{
	private static final String GET_USER_BY_USERNAME = "FROM User u where u.userName = ?";
	
	public User getUserByUserName(String userName){
		List<User> users = (List<User>)this.find(GET_USER_BY_USERNAME, userName);
		if(users.size() == 0){
			return null;
		}else{
			return users.get(0);
		}
	}
}
