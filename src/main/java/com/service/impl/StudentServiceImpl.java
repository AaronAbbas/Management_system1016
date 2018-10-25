package com.service.impl;

import com.bean.Student;
import com.dao.StudentMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentMapper studentMapper;
    @Override
    public PageInfo getall(String name, String stunum,String stusex, int pageindex, int size) {

        Map map = new HashMap();
        map.put("sname",name);
        map.put("stunum",stunum);
        map.put("sex",stusex);
        PageHelper.startPage(pageindex,size);
        List list = studentMapper.getall(map);
        PageInfo pi = new PageInfo(list);
        return pi;
    }

    @Override
    public int deleteByPrimaryKey(Integer studentid) {
        return studentMapper.deleteByPrimaryKey(studentid);
    }

    @Override
    public int insert(Student record) {
        return studentMapper.insert(record);
    }

    @Override
    public int insertSelective(Student record) {
        return studentMapper.insertSelective(record);
    }

    @Override
    public Student selectByPrimaryKey(Integer studentid) {
        return studentMapper.selectByPrimaryKey(studentid);
    }

    @Override
    public int updateByPrimaryKeySelective(Student record) {
        return studentMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Student record) {
        return studentMapper.updateByPrimaryKey(record);
    }

    @Override
    public Student getallbyid(Integer studentid) {
        return studentMapper.getallbyid(studentid);
    }
}
