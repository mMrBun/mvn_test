package com.taobao.mapper;

import com.taobao.bean.customerInfo;
import com.taobao.bean.merchandise;

import java.util.List;

/**
 * 用户接口类
 */
public interface UserMapper {
    public customerInfo queryUserByName(String name);
    public List<merchandise> loadMerchandise();
}

