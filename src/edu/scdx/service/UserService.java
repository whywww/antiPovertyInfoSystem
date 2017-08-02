package edu.scdx.service;

import java.util.List;

import edu.scdx.entity.User;

public interface UserService {
	public User getByTelNoandPassword(String telNo,String password);
	public User getByTelNo(String telNo);
	public void registerUser(User user);
}