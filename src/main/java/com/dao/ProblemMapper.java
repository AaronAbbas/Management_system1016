package com.dao;

import com.bean.Problem;

public interface ProblemMapper {
    int insert(Problem record);

    int insertSelective(Problem record);
}