package edu.scdx.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import edu.scdx.entity.User;

@Repository
public interface UserMapper {
	public User getByTelNoandPassword(User user);
	public User getByTelNo(@Param("telNo")String telNo);
	public void insertUser(User user);
}
