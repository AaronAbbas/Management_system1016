package com.web;

import com.bean.Role;
import com.github.pagehelper.PageInfo;
import com.service.MenuService;
import com.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class RoleControllor {

    @Autowired
    private RoleService roleService;
    @Autowired
    private MenuService menuService;
    //查询所有角色
    @RequestMapping("/power/role/getroles")
    public String list(@RequestParam(defaultValue = "1") int index,
                       @RequestParam(defaultValue = "5") int size,
                       ModelMap map){
        PageInfo pageInfo=roleService.getallrole(index,size,1);
        map.put("rpage",pageInfo);
        return "/power/role/list";
    }


    //查询所有菜单
    @RequestMapping("/power/role/getallmenus")
    public String getmenus(ModelMap map){
        List list=menuService.getall();
        map.put("menulist",list);
        return "/power/role/add";
    }

    //新增角色
    @RequestMapping("/power/role/addrole")
    public String addrole(Role role,int[] menu){

        roleService.addrole(role,menu);
        return "redirect:/power/role/getroles";
    }
    //查询指定的角色信息
    @RequestMapping("/power/role/findbyroid")
    public String getrolebyid(int rid,ModelMap map){
        Role role= roleService.selectByPrimaryKey(rid);
        //查询所有菜单列表
        List list=menuService.getall();
        map.put("role",role);
        map.put("menulist",list);
        return "/power/role/edit";
    }
    //修改角色
    @RequestMapping("/power/role/updaterole")
    public String updaterole(Role role,int[] menu){
        roleService.update(role,menu);
        return "redirect:/power/role/getroles";
    }

    //删除角色
    @RequestMapping("/power/role/deleterole")
    public void deleterole(int rid, HttpServletResponse response){
        response.setContentType("text/html;charset=utf-8");
        try {
            PrintWriter out=response.getWriter();
            int k=roleService.deleterole(rid);
            if(k>0){
                out.print("<script>alert('删除成功');location.href='/power/role/getroles';</script>");
            }else{
                out.print("<script>alert('删除失败，请先删除角色下的用户');location.href='/power/role/getroles';</script>");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    @RequestMapping("/power/role/upp")
    public String upp(Role role){
        roleService.updateByPrimaryKeySelective(role);
        System.out.println(role.getRoleid()+role.getRolestate());
        return "redirect:/power/role/getroles";
    }

}
