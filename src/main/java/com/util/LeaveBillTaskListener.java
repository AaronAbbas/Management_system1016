package com.util;

import com.bean.UserTb;
import org.activiti.engine.delegate.DelegateTask;
import org.activiti.engine.delegate.TaskListener;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpSession;

public class LeaveBillTaskListener implements TaskListener {

    @Override
    public void notify(DelegateTask delegateTask) {
        //任务的执行人
        //当前登录用户
        HttpSession session=((ServletRequestAttributes)
                   (RequestContextHolder.getRequestAttributes())).getRequest().getSession();
        System.out.println(session);
        UserTb users= (UserTb) session.getAttribute("u1");
        delegateTask.setAssignee(users.getManger().getUserName());
    }
}
