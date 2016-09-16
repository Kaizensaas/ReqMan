package com.enpoc.dao;

import com.enpoc.model.User;

public interface UserDao {

	User findByUserName(String username);

}