package com.dao;

import com.bean.Menu;

import java.util.List;

public interface MenuMapper {
    int deleteByPrimaryKey(Integer menuid);

    int insert(Menu record);

    int insertSelective(Menu record);

    Menu selectByPrimaryKey(Integer menuid);

    int updateByPrimaryKeySelective(Menu record);

    int updateByPrimaryKey(Menu record);
    //根据角色id查询菜单集合
    public List<Menu> findbyroleid(int roleid);
    public List<Menu> getall();

    List getall3(int mid);

    //详情
    Menu selectid(int selectid);

    // 批量删除
    int deletebyid(List list);
}