package com.taobao.controller;

import com.taobao.bean.customerInfo;
import com.taobao.bean.vo.MessageModel;
import com.taobao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
@WebServlet(name="signIn",loadOnStartup=1,urlPatterns={"/signIn"})
public class signIn extends HttpServlet {
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        UserService userService=new UserService();
        String name=request.getParameter("name");
        String pwd=request.getParameter("pawd");
        String nickName=request.getParameter("nickName");
//        MessageModel messageModel=userService.userLogin(name,pwd);
        customerInfo customerInfo=new customerInfo();
        customerInfo=userService.sign_in(name,pwd,nickName);
        if (customerInfo!=null) {
            request.getSession().setAttribute("customer",customerInfo);
            response.sendRedirect("index.jsp");
        } else {
            request.getRequestDispatcher("sign_in.jsp").forward(request,response);
        }
//        if (messageModel.getCode() == 1 ) {
//           messageModel.setMsg("用户已存在");
//            request.setAttribute("messageModel",messageModel);
//            request.getRequestDispatcher("sign_in.jsp").forward(request,response);
//        } else {
//
//        }




    }
}
