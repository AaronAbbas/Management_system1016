package com.dao;

import com.bean.Score;

public interface ScoreMapper {
    int deleteByPrimaryKey(Integer middleid);

    int insert(Score record);

    int insertSelective(Score record);

    Score selectByPrimaryKey(Integer middleid);

    int updateByPrimaryKeySelective(Score record);

    int updateByPrimaryKey(Score record);
}