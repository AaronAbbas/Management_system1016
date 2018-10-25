package com.service.impl;

import com.bean.Exam;
import com.dao.ExamMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.ExamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ExamServiceImpl implements ExamService {

    @Autowired
    private ExamMapper examMapper;

    @Override
    public int deleteByPrimaryKey(Integer examid) {
        return examMapper.deleteByPrimaryKey(examid);
    }

    @Override
    public int insert(Exam record) {
        return examMapper.insert(record);
    }

    @Override
    public int insertSelective(Exam record) {
        return examMapper.insertSelective(record);
    }

    @Override
    public Exam selectByPrimaryKey(Integer examid) {
        return examMapper.selectByPrimaryKey(examid);
    }

    @Override
    public int updateByPrimaryKeySelective(Exam record) {
        return examMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Exam record) {
        return examMapper.updateByPrimaryKey(record);
    }

    @Override
    public Exam getallbyid(Integer examid) {
        return examMapper.getallbyid(examid);
    }

    @Override
    public PageInfo queryall(String examsubject, int pageindex, int size) {
        Map map=new HashMap();
        map.put("examsubject",examsubject);
        PageHelper.startPage(pageindex,size);
        List list= examMapper.queryall(map);
        PageInfo pi=new PageInfo(list);
        return pi;
    }


}
