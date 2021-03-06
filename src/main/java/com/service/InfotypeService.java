package com.service;

import com.bean.Infotype;

import java.util.List;

public interface InfotypeService {
    int deleteByPrimaryKey(Integer infoid);

    int insert(Infotype record);

    int insertSelective(Infotype record);

    Infotype selectByPrimaryKey(Integer infoid);

    int updateByPrimaryKeySelective(Infotype record);

    int updateByPrimaryKey(Infotype record);

    //查询资料类型
    public List gettype();
}
