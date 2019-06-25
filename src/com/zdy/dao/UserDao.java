package com.zdy.dao;

import com.zdy.po.User;
import org.apache.ibatis.annotations.Param;

public interface UserDao {
    public User findUser(@Param("username") String username,
                         @Param("password") String password);
}
