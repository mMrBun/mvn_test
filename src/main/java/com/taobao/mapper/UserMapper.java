package com.taobao.mapper;

import com.taobao.bean.Cart;
import com.taobao.bean.customerInfo;
import com.taobao.bean.merchandise;

import java.util.List;
import java.util.Map;

/**
 * 用户接口类
 */
public interface UserMapper {
    public customerInfo queryUserByName(String name);

    public int signIn(String name,String pwd,String nickname);

    public List<merchandise> loadMerchandise();

    public List<merchandise> searchMerchandise(String context);

    public int is_exist(Map map);

    public int change_Count(Map map);

    public int addCart(Map map);

    public List<Cart> load_Cart(String name);

    public int cleanCart(Integer[]buffer);

    public int check_name(String name);

}

