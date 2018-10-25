package com.service;

import com.bean.Information;
import com.github.pagehelper.PageInfo;

public interface InformationService {
    int deleteByPrimaryKey(Integer informationid);

    int insert(Information record);

    int insertSelective(Information record);

    Information selectByPrimaryKey(Integer informationid);

    int updateByPrimaryKeySelective(Information record);

    int updateByPrimaryKey(Information record);

    //查询全部的方法
    public PageInfo selectall(String informationname,Integer typeid, int pageindex, int size);

    //查询单个
    Information getallbyid(Integer informationid);

}
