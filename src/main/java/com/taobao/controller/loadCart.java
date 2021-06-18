package com.taobao.controller;

import com.alibaba.fastjson.JSON;
import com.taobao.bean.Cart;
import com.taobao.bean.merchandise;
import com.taobao.service.MerService;
import com.taobao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name="loadCart",loadOnStartup=1,urlPatterns={"/loadCart"})
public class loadCart extends HttpServlet {
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String name=req.getParameter("name");
        UserService userService=new UserService();
        List<Cart> list=userService.load_Cart(name);
        req.getSession().setAttribute("cart",list);
    }
}
