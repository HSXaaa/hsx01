package hsx.com.service;

import java.util.ArrayList;

import hsx.com.entity.User;

public interface UserService {

	public User login(User user);

	public int register(User user);

	public ArrayList<User> unionUserList();
}
