package com.service;

import com.bean.UserTb;

import java.util.List;

public interface UserTbService {
    int deleteByPrimaryKey(Integer userId);

    int insert(UserTb record);

    int insertSelective(UserTb record);

    UserTb selectByPrimaryKey(Integer userId);

    int updateByPrimaryKeySelective(UserTb record);

    int updateByPrimaryKey(UserTb record);
    //登录
    UserTb login(UserTb userTb);
    //查询
    List findall(int did, int mid, String rolename);


}