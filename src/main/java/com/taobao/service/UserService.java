package com.taobao.service;

import com.taobao.bean.customerInfo;
import com.taobao.bean.vo.MessageModel;
import com.taobao.mapper.UserMapper;
import com.taobao.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

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
}
