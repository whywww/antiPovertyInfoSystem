package edu.scdx.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.scdx.dao.UserMapper;
import edu.scdx.entity.User;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper usermapper;

	public User getByTelNoandPassword(String telNo,String password){
	    User user=new User(telNo,"",password,"",1);
        return usermapper.getByTelNoandPassword(user);
	}
	public User getByTelNo(String telNo){
		return usermapper.getByTelNo(telNo);
	}

	public void registerUser(User user){
	   usermapper.insertUser(user);
	   return;
    }
}
