package com.service.impl;

import com.bean.Major;
import com.dao.MajorMapper;
import com.service.MajorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MajorServiceImpl implements MajorService {

    @Autowired
    private MajorMapper majorMapper;

    @Override
    public int deleteByPrimaryKey(Integer majorid) {
        return majorMapper.deleteByPrimaryKey(majorid);
    }

    @Override
    public int insert(Major record) {
        return majorMapper.insert(record);
    }

    @Override
    public int insertSelective(Major record) {
        return majorMapper.insertSelective(record);
    }

    @Override
    public Major selectByPrimaryKey(Integer majorid) {
        return majorMapper.selectByPrimaryKey(majorid);
    }

    @Override
    public int updateByPrimaryKeySelective(Major record) {
        return majorMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Major record) {
        return majorMapper.updateByPrimaryKey(record);
    }

    @Override
    public List<Major> findbydeptid(int did) {
        return majorMapper.findbydeptid(did);
    }
}
