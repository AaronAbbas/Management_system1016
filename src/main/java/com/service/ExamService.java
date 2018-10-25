package com.service;

import com.bean.Exam;
import com.github.pagehelper.PageInfo;

public interface ExamService {

    int deleteByPrimaryKey(Integer examid);

    int insert(Exam record);

    int insertSelective(Exam record);

    Exam selectByPrimaryKey(Integer examid);

    int updateByPrimaryKeySelective(Exam record);

    int updateByPrimaryKey(Exam record);
    //详情
    Exam getallbyid(Integer examid);

    PageInfo queryall(String examsubject, int pageindex, int size);
}
