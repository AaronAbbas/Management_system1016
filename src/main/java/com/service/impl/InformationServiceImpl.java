package com.service.impl;

import com.bean.Information;
import com.dao.InformationMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.service.InformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class InformationServiceImpl implements InformationService {

    @Autowired
    private InformationMapper informationMapper;

    @Override
    public int deleteByPrimaryKey(Integer informationid) {
        return informationMapper.deleteByPrimaryKey(informationid);
    }

    @Override
    public int insert(Information record) {
        return informationMapper.insert(record);
    }

    @Override
    public int insertSelective(Information record) {
        return informationMapper.insertSelective(record);
    }

    @Override
    public Information selectByPrimaryKey(Integer informationid) {
        return informationMapper.selectByPrimaryKey(informationid);
    }

    @Override
    public int updateByPrimaryKeySelective(Information record) {
        return informationMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Information record) {
        return informationMapper.updateByPrimaryKey(record);
    }

    @Override
    public PageInfo selectall(String informationname,Integer typeid, int pageindex, int size) {
        Map map = new HashMap();
        map.put("informationname",informationname);
        map.put("typeid",typeid);
        PageHelper.startPage(pageindex,size);
        List list = informationMapper.selectall(map);
        PageInfo pi = new PageInfo(list);
        return pi;
    }

    @Override
    public Information getallbyid(Integer informationid) {
        return informationMapper.getallbyid(informationid);
    }
}
