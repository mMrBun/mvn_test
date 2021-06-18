package com.taobao.controller;

import com.alibaba.fastjson.JSON;
import com.taobao.bean.merchandise;
import com.taobao.service.MerService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name="serchMerchandise",loadOnStartup=1,urlPatterns={"/serchMerchandise"})
public class serchMerchandise extends HttpServlet {
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        String context=req.getParameter("context");
        MerService merService=new MerService();
        List<merchandise> list=merService.searchMerchandise(context);
        String data= JSON.toJSONString(list);
        PrintWriter writer=resp.getWriter();
        writer.write(data);
        writer.flush();
        writer.close();
    }
}
