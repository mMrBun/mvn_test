package com.taobao.controller;

import com.taobao.bean.merchandise;
import com.taobao.service.MerService;
import com.taobao.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.alibaba.fastjson.JSON;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/MerServlet")
public class MerServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        MerService merService=new MerService();
        List<merchandise> list=merService.loadMerchandise();
        String data=JSON.toJSONString(list);
        PrintWriter writer=resp.getWriter();
        writer.write(data);
        writer.flush();
        writer.close();
    }
}
