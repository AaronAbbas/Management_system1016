package com.dao;

import com.bean.Exam;

import java.util.List;
import java.util.Map;


public interface ExamMapper {
    int deleteByPrimaryKey(Integer examid);

    int insert(Exam record);

    int insertSelective(Exam record);

    Exam selectByPrimaryKey(Integer examid);

    int updateByPrimaryKeySelective(Exam record);

    int updateByPrimaryKey(Exam record);

    List<Exam> queryall(Map map);

    Exam getallbyid(Integer examid);
}