package com.dao;

import com.bean.Role;

import java.util.List;
import java.util.Map;

public interface RoleMapper {
    int deleteByPrimaryKey(Integer roleid);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleid);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role record);

    public List<Role> getallrole();

    public int insertMiddle(Map map);

    int deletemiddlebyrid(int rid);//根据角色id删除中间表

    int findusercountbyroleid(int rid);
    public List select();
}


