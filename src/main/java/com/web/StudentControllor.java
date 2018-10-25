package com.web;

import com.bean.Student;
import com.github.pagehelper.PageInfo;
import com.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class StudentControllor {
    @Autowired
    private StudentService studentService;
    @Autowired
    private MajorService majorService;
    @Autowired
    private UserTbService userTbService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private ClassesService classesService;

    //获取全部学生
    @RequestMapping("/Educational/student/getstudentlist")
    public String getall(String stuname,String stunum,String stusex,
                         @RequestParam(value="index",defaultValue = "1") int pageindex,
                         ModelMap map,
                         @RequestParam(value="size",defaultValue = "3") int size){
        PageInfo pageInfo=studentService.getall(stuname,stunum,stusex,pageindex,size);
        map.put("pi",pageInfo);
        map.put("size",size);
        map.put("sname",stuname);
        map.put("snum",stunum);
        map.put("sex",stusex);
       return "/Educational/student/list";
    }

    //修改学生
    @RequestMapping("/Educational/student/updatestudent")
    public void update(HttpServletResponse resp, ModelMap map, Student student) {
        int k = studentService.updateByPrimaryKeySelective(student);
        resp.setContentType("text/html;charset=utf-8");
        try {
            PrintWriter out = resp.getWriter();
           if (k>0){
               out.write("<script>alert('修改成功');location.href='/Educational/student/getstudentlist'</script>");
           }else{
               out.write("<script>alert('修改失败');location.href='/Educational/student/updatestudent'</script>");
           }
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    //根据id查询+修改
    @RequestMapping("/Educational/student/selectbyid")
    public String selectbyid(ModelMap map, Student student){
        Student student1 = studentService.getallbyid(student.getStudentid());
        List list = departmentService.findall();
        map.put("dlist",list);
        map.put("s1",student1);
        return "Educational/student/update";
    }

    /*
 查询全部学院
  */
    @RequestMapping("/Educational/student/getDepts")
    public String getdepts(ModelMap map){
        List list = departmentService.findall();
        map.put("dlist",list);
        return "/Educational/student/add";
    }

    /*
  根据学院查询专业
   */
    @RequestMapping("/Educational/student/getstudentbydid")
    @ResponseBody
    public List getmajor(int did){
        List list = majorService.findbydeptid(did);
        return list;
    }


   //查询专业学院的班级
    @RequestMapping("/Educational/student/classname")
    @ResponseBody
    public List getteacher(int did, int mid){
        List list= classesService.findall(did,mid);
        for (Object o : list) {
            System.out.println(o);
        }
        return list;
    }

   //查询单个
   @RequestMapping("/Educational/student/selectsid")
   public String selectsid(ModelMap map, Student student){
       Student student1 = studentService.getallbyid(student.getStudentid());
       List list = departmentService.findall();
       map.put("dlist",list);
       map.put("s1",student1);
       return "Educational/student/view";
   }

    //添加学生
    @RequestMapping("/Educational/student/insert")
    public String insert(Student student){
       studentService.insert(student);
       return "redirect:/Educational/student/getstudentlist";
    }


}
