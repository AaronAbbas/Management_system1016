package com.service;

import com.bean.Role;
import com.github.pagehelper.PageInfo;

public interface RoleService {
    int deleteByPrimaryKey(Integer roleid);

    int insert(Role record);

    int insertSelective(Role record);

    Role selectByPrimaryKey(Integer roleid);

    int updateByPrimaryKeySelective(Role record);

    int updateByPrimaryKey(Role recd);
    public PageInfo getallrole(int index, int size);
    //新增角色
    public int addrole(Role r, int[] menus);
    //修改角色
    public  int update(Role r, int[] ids);
    //删除角色
    public  int deleterole(int roleid);
}