package com.taobao.service;

import com.taobao.bean.merchandise;
import com.taobao.mapper.UserMapper;
import com.taobao.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.List;

public class MerService {
    public List<merchandise> loadMerchandise()
    {
        List<merchandise> list;
        SqlSession session= GetSqlSession.createSqlSession();
        UserMapper userMapper = session.getMapper(UserMapper.class);
        list=userMapper.loadMerchandise();
        return list;
    }
}
