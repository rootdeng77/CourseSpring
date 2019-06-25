package com.zdy.service.impl;

import com.zdy.dao.UserDao;
import com.zdy.po.User;
import com.zdy.serivce.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("userService")
@Transactional
public class UserServicImpl implements UserService {
    @Autowired
    private UserDao userDao;
    @Override
    public User findUser(String username,String password){
        User user=this.userDao.findUser(username,password);
        return user;
    }
}
