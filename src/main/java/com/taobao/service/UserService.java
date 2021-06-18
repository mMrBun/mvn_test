package com.taobao.service;

import com.taobao.bean.Cart;
import com.taobao.bean.customerInfo;
import com.taobao.bean.merchandise;
import com.taobao.bean.vo.MessageModel;
import com.taobao.mapper.UserMapper;
import com.taobao.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

public class UserService {

    public MessageModel userLogin(String name,String pwd)
    {
        MessageModel messageModel=new MessageModel();
        SqlSession session= GetSqlSession.createSqlSession();
        UserMapper userMapper=session.getMapper(UserMapper.class);
        customerInfo user =userMapper.queryUserByName(name);
        if (user == null ) {
            messageModel.setCode(0);
            messageModel.setMsg("用户不存在！");
            return  messageModel;
        }
        if  (!pwd.equals(user.getPwd())) {
            messageModel.setCode(0);
            messageModel.setMsg("用户密码不正确！");
            return  messageModel;
        }
        messageModel.setObject(user);
        return messageModel;
    }
    public List<Cart> load_Cart(String name)
    {
        List<Cart>list;
        SqlSession session=GetSqlSession.createSqlSession();
        UserMapper userMapper=session.getMapper(UserMapper.class);
        list=userMapper.load_Cart(name);
        return list;
    }
    public int cleanCart(Integer[] buffer)
    {
        int result=0;
        SqlSession session=GetSqlSession.createSqlSession();
        UserMapper userMapper=session.getMapper(UserMapper.class);
        System.out.println(buffer);
        result=userMapper.cleanCart(buffer);
        session.commit();
        return result;
    }
    public customerInfo sign_in(String name,String pwd,String nickname)
    {
        customerInfo customerInfo=new customerInfo();
        SqlSession session= GetSqlSession.createSqlSession();
        UserMapper userMapper=session.getMapper(UserMapper.class);
       if(userMapper.signIn(name,pwd,nickname)>0)
       {
           customerInfo.setName(name);
           customerInfo.setNickname(nickname);
           customerInfo.setPwd(pwd);
       }
       session.commit();
        return customerInfo;
    }
}
