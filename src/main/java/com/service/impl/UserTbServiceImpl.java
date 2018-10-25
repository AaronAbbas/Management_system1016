package com.service.impl;

import com.bean.Menu;
import com.bean.Role;
import com.bean.UserTb;
import com.dao.UserTbMapper;
import com.service.MenuService;
import com.service.UserTbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class UserTbServiceImpl implements UserTbService {

    @Autowired
    private UserTbMapper userTbMapper;
    @Autowired
    private MenuService menuService;

    @Override
    public int deleteByPrimaryKey(Integer userId) {
        return 0;
    }

    @Override
    public int insert(UserTb record) {
        return 0;
    }

    @Override
    public int insertSelective(UserTb record) {
        return 0;
    }

    @Override
    public UserTb selectByPrimaryKey(Integer userId) {
        return userTbMapper.selectByPrimaryKey(userId);
    }

    @Override
    public int updateByPrimaryKeySelective(UserTb record) {
        return userTbMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(UserTb record) {
        return userTbMapper.updateByPrimaryKey(record);
    }

    @Override
    public UserTb login(UserTb userTb) {
        UserTb userTb1=  userTbMapper.login(userTb.getUserName());
        if(userTb1!=null&&userTb1.getUserPs().equals(userTb.getUserPs())){
            if(userTb1.getRole().getRolestate()==1){
                Role role=userTb1.getRole();
                //根据角色id查询所对应的菜单集合
                List<Menu> list=menuService.findbyroleid(role.getRoleid());
                //将所有菜单进行分类
                List fenjimenu=new ArrayList();
                for (Menu menu : list) {
                    if(menu.getUpmenuid()==-1){
                        List newlist=new ArrayList();//只保存二级菜单
                        for (Menu menu2 : list) {
                            if(menu2.getUpmenuid()==menu.getMenuid()){
                                newlist.add(menu2);
                            }
                        }
                        menu.setSeconds(newlist);
                        fenjimenu.add(menu);
                    }
                }
                //将分级完成后的菜单赋给角色
                role.setMenus(fenjimenu);
                //将角色赋给用户
                userTb1.setRole(role);
                //修改登录次数
                userTb1.setLogincount(userTb1.getLogincount()+1);
                userTbMapper.updateByPrimaryKeySelective(userTb1);
                return userTb1;
            }else{
                return null;
            }
        }
        return null;
    }



    @Override
    public List findall(int did, int mid, String rolename) {
        Map map=new HashMap();
        map.put("did",did);
        map.put("mid",mid);
        map.put("rolename",rolename);
        return userTbMapper.findall(map);
    }
}
