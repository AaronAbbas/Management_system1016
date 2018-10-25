package com.web;


import com.bean.Classes;
import com.github.pagehelper.PageInfo;
import com.service.ClassesService;
import com.service.DepartmentService;
import com.service.MajorService;
import com.service.UserTbService;
import com.util.ExcelUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Controller
public class ClassesControllor {

    @Autowired
    private ClassesService classesService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private MajorService majorService;
    @Autowired
    private UserTbService userTbService;
    //查询+登录+模糊查
    /*
    班级查询
     */
    @RequestMapping("/Educational/class/getclasslist")
    public String getall(String classname, String classnum,
                         @RequestParam(value="index",defaultValue = "1") int pageindex,
                         ModelMap map,
                         @RequestParam(value="size",defaultValue = "3") int size){
        PageInfo pageInfo=classesService.getall(classname,classnum,pageindex,size,null,null);
        pageInfo.setPageSize(size);
        map.put("pi",pageInfo);
        map.put("cname",classname);
        map.put("cnum",classnum);
        //map.put("size",size);
        return "/Educational/class/list";

    }


    /*
    查询全部学院
     */
    @RequestMapping("/Educational/class/getDepts")
    public String getdepts(ModelMap map){
        List list = departmentService.findall();
        map.put("dlist",list);
        return "/Educational/class/add";
    }

    /*
    根据学院查询专业
     */
    @RequestMapping("/Educational/class/getmajorbydid")
    @ResponseBody
    public List getmajor(int did){
        List list = majorService.findbydeptid(did);
        return list;
    }
    //查询专业学院的老师
    @RequestMapping("/Educational/class/getteacher")
    @ResponseBody
    public List getteacher(int did,int mid){
        List list=userTbService.findall(did,mid,"班主任");
        return list;
    }

    //新增班级
    @RequestMapping("/Educational/class/addclass")
    public String add(Classes classes){
        classes.setClassstate("未审核");
        classesService.insert(classes);
        return "redirect:/Educational/class/getclasslist";
    }


    //提交审核状态
    @RequestMapping("/Educational/class/updateclassstate")
    public String update(Classes classes){
        classes.setClassstate("审核中");
        classesService.updateByPrimaryKeySelective(classes);
        return "redirect:/Educational/class/getclasslist";
    }


    //导出班级信息
    @RequestMapping("/Educational/class/daochu")
    public void daochu(int[] single, HttpServletResponse response){
        PageInfo pg= classesService.getall(null,null,0,0,single,null);
        List<Classes> list=pg.getList();
        ExcelUtil.headers=new String[]{"院系","班级编号","班级名称","班主任老师","人数","班级状态"};
        ExcelUtil.createhead(6);
        ExcelUtil.createother(list);
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyyMMddhhmmss");
        String date= simpleDateFormat.format(new Date());
        FileOutputStream out= null;
        try {
            out = new FileOutputStream("f:\\class"+date+".xls");
            ExcelUtil.export(out);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }finally{
            try {
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        response.setContentType("text/html;charset=utf-8");
        try {
            PrintWriter out2=response.getWriter();
            out2.print("<script>alert('导出成功');location.href='/Educational/class/getclasslist'</script>");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //详情
    @RequestMapping("/Educational/class/getclassbyid")
    public String getclassbyid(int classid,ModelMap map){
        Classes classes = classesService.getallbyid(classid);
        map.put("cla",classes);
        return "Educational/class/view";
    }

    //更新
    @RequestMapping("/Educational/class/updateclass")
    public void updateclass(HttpServletResponse resp, ModelMap map,Classes classes){
        int k = classesService.updateByPrimaryKeySelective(classes);
        resp.setContentType("text/html;charset=utf-8");
        try {
            PrintWriter out=resp.getWriter();
            if (k>0) {
                out.write("<script>alert('修改成功');location.href='/Educational/class/getclasslist'</script>");
            }else{
                out.write("<script>alert('修改失败');top.location.href='/Educational/class/selectbyid'</script>");
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //根据id查询
    @RequestMapping("/Educational/class/selectbyid")
    public String selectbyid(ModelMap map,Classes classes){
        Classes classes1 = classesService.getallbyid(classes.getClassid());
        map.put("c1",classes1);
        return "Educational/class/update";
    }

    //删除
    @RequestMapping("/Educational/class/delete")
    public void delete(HttpServletResponse resp,int classid) {
        int k = classesService.deleteByPrimaryKey(classid);
        resp.setContentType("text/html;charset=utf-8");
        try {
            PrintWriter out = resp.getWriter();
            if (k > 0) {
                out.write("<script>alert('删除成功');location.href='/Educational/class/getclasslist'</script>");
            } else {
                out.write("<script>alert('删除失败');location.href='/Educational/class/getclasslist'</script>");
                System.out.println(classid);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    //更改审核状态
    @RequestMapping("/Educational/udpatestate")
    public String update2(Classes classes){
        classesService.updateByPrimaryKeySelective(classes);
        return "redirect:/Educational/getclasses";//审核界面
    }


    //审核--查询班级
    @RequestMapping("/Educational/getclasses")
    public  String getclass(String classname, String classnum,
                            @RequestParam(value="index",defaultValue = "1") int pageindex,
                            ModelMap map,
                            @RequestParam(value="size",defaultValue = "5") int size){

        PageInfo pi= classesService.getall(classname,classnum,pageindex,size,null,"审核中");
        map.put("pi",pi);
        map.put("cname",classname);
        map.put("cnum",classnum);
        map.put("size",size);
        return "/Educational/Auditing";
    }
}
