package com.taobao.controller;

import com.taobao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name="removeMerchandise",loadOnStartup=1,urlPatterns={"/removeMerchandise"})
public class removeMerchandise extends HttpServlet {
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String id=req.getParameter("id");
        String[]re=id.split(",");
        Integer[]buffer = new Integer[re.length];
        for(int i=0;i<re.length;i++)
        {
            buffer[i]=Integer.parseInt(re[i]);
        }
        UserService userService=new UserService();
        int result=userService.cleanCart(buffer);

    }
}
