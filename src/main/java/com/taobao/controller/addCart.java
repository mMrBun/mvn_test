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

@WebServlet(name="addCart",loadOnStartup=1,urlPatterns={"/addCart"})
public class addCart extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        resp.setContentType("text/html;charset=UTF-8");
        resp.setCharacterEncoding("UTF-8");
        int result=0;
        int mer_id=Integer.parseInt(req.getParameter("m_id"));
        String name=req.getParameter("name");
        int mer_count=Integer.parseInt(req.getParameter("m_count"));
        MerService merService=new MerService();
        boolean is_extis=merService.is_exits(name,mer_id);
        if(is_extis)
          result= merService.change_Count(name,mer_id,mer_count);
        else
           result= merService.addCart(name,mer_id,mer_count);
        String data=JSON.toJSONString(result);
        PrintWriter writer=resp.getWriter();
        writer.write(data);
        writer.flush();
        writer.close();


    }

}
