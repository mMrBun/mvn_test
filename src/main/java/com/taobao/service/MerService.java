package com.taobao.service;

import com.taobao.bean.merchandise;
import com.taobao.mapper.UserMapper;
import com.taobao.util.GetSqlSession;
import org.apache.ibatis.session.SqlSession;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MerService {
    int result=0;
    public List<merchandise> loadMerchandise()
    {
        List<merchandise> list;
        SqlSession session= GetSqlSession.createSqlSession();
        UserMapper userMapper = session.getMapper(UserMapper.class);
        list=userMapper.loadMerchandise();
        return list;
    }
    public boolean is_exits(String name,int m_id )
    {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("name",name);
        map.put("m_id",m_id);
        SqlSession session=GetSqlSession.createSqlSession();
        UserMapper userMapper=session.getMapper(UserMapper.class);
        result=userMapper.is_exist(map);
        return result > 0;
    }
    public int change_Count(String name,int m_id,int m_count)
    {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("name",name);
        map.put("m_id",m_id);
        map.put("m_count",m_count);
        SqlSession session=GetSqlSession.createSqlSession();
        UserMapper userMapper=session.getMapper(UserMapper.class);
        result=userMapper.change_Count(map);
        session.commit();
        return result;
    }
    public int addCart(String name,int m_id,int m_count)
    {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("name",name);
        map.put("m_id",m_id);
        map.put("m_count",m_count);
        SqlSession session=GetSqlSession.createSqlSession();
        UserMapper userMapper=session.getMapper(UserMapper.class);
        result=userMapper.addCart(map);
        session.commit();
        return result;
    }
}
