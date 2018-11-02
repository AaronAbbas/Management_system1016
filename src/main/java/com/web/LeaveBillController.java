package com.web;

import com.bean.LeaveBill;
import com.bean.UserTb;
import com.service.LeaveBillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class LeaveBillController {

    @Autowired
    private LeaveBillService leaveBillService;
    //查询请假单列表
    @RequestMapping("/qingjia/getleavebills")
    public String findall(HttpSession session, ModelMap map){
        UserTb userTb=(UserTb) session.getAttribute("u1");
        //查看当前登录人的请假信息
        List<LeaveBill> list=leaveBillService.findleavelist(userTb.getUserId());
        map.put("leavelist",list);
       return  "/qingjia/list";
    }
    //保存请假单:
    @RequestMapping("/qingjia/add")
    public String add(LeaveBill leaveBill){
        leaveBillService.add(leaveBill);
        return "redirect:/qingjia/getleavebills";
    }
}
