package com.zdy.serivce;

import com.zdy.po.User;

public interface UserService {
    public User findUser(String username,String password);
}
