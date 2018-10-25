package com.web;

import com.bean.Exam;
import com.github.pagehelper.PageInfo;
import com.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
public class ExamControllor {

    @Autowired
    private ExamService examService;
    @Autowired
    private MajorService majorService;
    @Autowired
    private DepartmentService departmentService;
    @Autowired
    private ClassesService classesService;
    //新增
    @RequestMapping("/Educational/exam/addexam")
    public String addexam(Exam exam){
        examService.insertSelective(exam);
        return "redirect:/Educational/exam/selectexam";
    }

    //查询全部
    @RequestMapping("/Educational/exam/selectexam")
    public String selectexam(String examsubject,
                             @RequestParam(value="index",defaultValue = "1") int pageindex,
                             ModelMap map,
                             @RequestParam(value="size",defaultValue = "3") int size){
        PageInfo pageInfo = examService.queryall(examsubject,pageindex,size);
        map.put("examsubject",examsubject);
        map.put("pi",pageInfo);
        map.put("size",size);
        return "/Educational/exam/list";
    }


    /*
查询全部学院
*/
    @RequestMapping("/Educational/exam/getDepts")
    public String getdepts(ModelMap map){
        List list = departmentService.findall();
        map.put("dlist",list);
        return "/Educational/exam/add";
    }

    /*
  根据学院查询专业
   */
    @RequestMapping("/Educational/exam/getstudentbydid")
    @ResponseBody
    public List getmajor(int did){
        List list = majorService.findbydeptid(did);
        return list;
    }


    //查询专业学院的班级
    @RequestMapping("/Educational/exam/classname")
    @ResponseBody
    public List getteacher(int did, int mid){
        List list= classesService.findall(did,mid);
        for (Object o : list) {
            System.out.println(o);
        }
        return list;
    }

    //查询单个
    @RequestMapping("/Educational/exam/selectsid")
    public String selectsid(ModelMap map, Exam exam){
        Exam exam1 = examService.getallbyid(exam.getExamid());
        List list = departmentService.findall();
        map.put("dlist",list);
        map.put("s1",exam1);
        return "Educational/exam/view";
    }



}
