package hsx.com.service.impl;

import java.util.ArrayList;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import hsx.com.dao.UserDao;
import hsx.com.entity.User;
import hsx.com.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{

	@Resource
	private UserDao userDao;
	
	@Override
	public User login(User user) {
		return userDao.login(user);
	}

	@Override
	public int register(User user) {
		// TODO Auto-generated method stub
		return userDao.registerByUsernameAndPassword(user);
	}

	@Override
	public ArrayList<User> unionUserList() {
		// TODO Auto-generated method stub
		return userDao.unionUser();
	}

}
