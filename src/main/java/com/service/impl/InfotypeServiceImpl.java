package com.service.impl;

import com.bean.Infotype;
import com.dao.InfotypeMapper;
import com.service.InfotypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class InfotypeServiceImpl implements InfotypeService {

    @Autowired
    private InfotypeMapper infotypeMapper;

    @Override
    public int deleteByPrimaryKey(Integer infoid) {
        return infotypeMapper.deleteByPrimaryKey(infoid);
    }

    @Override
    public int insert(Infotype record) {
        return infotypeMapper.insert(record);
    }

    @Override
    public int insertSelective(Infotype record) {
        return infotypeMapper.insertSelective(record);
    }

    @Override
    public Infotype selectByPrimaryKey(Integer infoid) {
        return infotypeMapper.selectByPrimaryKey(infoid);
    }

    @Override
    public int updateByPrimaryKeySelective(Infotype record) {
        return infotypeMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(Infotype record) {
        return infotypeMapper.updateByPrimaryKey(record);
    }

    @Override
    public List gettype() {
        return infotypeMapper.gettype();
    }
}
