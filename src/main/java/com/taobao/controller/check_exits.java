package com.taobao.controller;

import com.alibaba.fastjson.JSON;
import com.taobao.bean.vo.MessageModel;
import com.taobao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="check_exits",loadOnStartup=1,urlPatterns={"/check_exits"})
public class check_exits extends HttpServlet {
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String name=req.getParameter("name");
        UserService userService=new UserService();
        MessageModel messageModel=new MessageModel();
        int result=userService.check_name(name);
        if(result>0)
        {
            messageModel.setMsg("用户已存在");
            req.setAttribute("messageModel",messageModel);
        }
        String data= JSON.toJSONString(result);
        PrintWriter writer=resp.getWriter();
        writer.write(data);
        writer.flush();
        writer.close();
    }
}
