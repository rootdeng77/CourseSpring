package com.zdy.controller;

import com.zdy.serivce.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpSession;
/**
 * 用户控制器类
 */
@Controller
public class UserController {
    private UserService userService;
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(String username,String password, Model model,
                        HttpSession session) {
        // 通过账号和密码查询用户
        System.out.println(username);
        System.out.println("password  "+password);
        if(username.equals("root") ){
            // 跳转到主页面

            return "redirect:/selectStudentList ";
        }
        model.addAttribute("msg", "账号或密码错误，请重新输入！");
        // 返回到登录页面
        return "login";
    }
}
