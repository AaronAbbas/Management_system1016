package com.service.impl;

import com.bean.Classes;
import com.dao.ClassesMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.ClassesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class ClassesServiceImpl implements ClassesService {
    @Autowired
    private ClassesMapper classesMapper;
    @Override
    public PageInfo getall(String name,String classnum,int pageindex,int size,int[] ids,String state) {

        //封装模糊查条件
        Map map=new HashMap();
        map.put("cname",name);
        map.put("clanum",classnum);
        map.put("ids",ids);
        map.put("state",state);
        PageHelper.startPage(pageindex,size);
        List list= classesMapper.getall(map);

        PageInfo pi=new PageInfo(list);

        return pi;
    }

    @Override
    public Classes getallbyid(Integer classid) {
        return classesMapper.getallbyid(classid);
    }

    @Override
    public List findall(int did, int mid) {
        Map map=new HashMap();
        map.put("did",did);
        map.put("mid",mid);
        return classesMapper.findall(map);
    }

    @Override
    public int deleteByPrimaryKey(Integer classid) {
        return classesMapper.deleteByPrimaryKey(classid);
    }

    @Override
    @Transactional
    public int insert(Classes record) {
        return classesMapper.insert(record);
    }

    @Override
    public int insertSelective(Classes record) {
        return classesMapper.insertSelective(record);
    }

    @Override
    public Classes selectByPrimaryKey(Integer classid) {
        return selectByPrimaryKey(classid);
    }

    @Override
    @Transactional
    public int updateByPrimaryKeySelective(Classes record) {
        return classesMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Classes record) {
        return classesMapper.updateByPrimaryKey(record);
    }
}
