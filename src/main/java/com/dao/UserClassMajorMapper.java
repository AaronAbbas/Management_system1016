package com.dao;

import com.bean.UserClassMajor;

public interface UserClassMajorMapper {
    int deleteByPrimaryKey(Integer userClassMajorId);

    int insert(UserClassMajor record);

    int insertSelective(UserClassMajor record);

    UserClassMajor selectByPrimaryKey(Integer userClassMajorId);

    int updateByPrimaryKeySelective(UserClassMajor record);

    int updateByPrimaryKey(UserClassMajor record);
}