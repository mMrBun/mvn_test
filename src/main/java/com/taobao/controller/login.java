package com.taobao.controller;

import com.taobao.bean.vo.MessageModel;
import com.taobao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/login")
public class login extends HttpServlet {
    private UserService userService=new UserService();
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String name=request.getParameter("in_name");
        String pwd=request.getParameter("in_pwd");
        MessageModel messageModel=userService.userLogin(name,pwd);
        if (messageModel.getCode() == 1 ) {
            request.getSession().setAttribute("customer",messageModel.getObject());
            response.sendRedirect("index.jsp");
        } else {
            request.setAttribute("messageModel",messageModel);
            request.getRequestDispatcher("login.jsp").forward(request,response);
        }
    }
}
