package com.service;


import com.bean.Classes;
import com.github.pagehelper.PageInfo;

import java.util.List;

public interface ClassesService {
    int deleteByPrimaryKey(Integer classid);

    int insertSelective(Classes record);

    Classes selectByPrimaryKey(Integer classid);

    int updateByPrimaryKeySelective(Classes record);

    int updateByPrimaryKey(Classes record);

    int insert(Classes record);
    //查询全部的方法
    public PageInfo getall(String name,String classnum,int pageindex,int size,int[] ids,String state);

    //详情
    Classes getallbyid(Integer classid);

    //查询年级
    List findall(int did, int mid);
}
