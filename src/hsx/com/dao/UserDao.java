package hsx.com.dao;

import java.util.ArrayList;

import hsx.com.entity.User;

public interface UserDao {

	public User login(User user);

	public int registerByUsernameAndPassword(User user);

	public ArrayList<User> unionUser();
}
