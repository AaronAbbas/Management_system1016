package com.dao;

import com.bean.Classes;

import java.util.List;
import java.util.Map;

public interface ClassesMapper {

    int deleteByPrimaryKey(Integer classid);

    int insert(Classes record);

    int insertSelective(Classes record);

    Classes selectByPrimaryKey(Integer classid);

    int updateByPrimaryKeySelective(Classes record);

    int updateByPrimaryKey(Classes record);

    //查询全部
    List<Classes> getall(Map map);

    //详情
    Classes getallbyid(Integer classid);

    //查询年级
    List findall(Map map);
}