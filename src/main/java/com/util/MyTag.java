package com.util;

import com.bean.UserTb;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import java.io.IOException;
import java.io.StringWriter;

public class MyTag extends SimpleTagSupport {

    private UserTb yonghu;

    private boolean test;

    public boolean isTest() {
        return test;
    }

    public void setTest(boolean test) {
        this.test = test;
    }

    public UserTb getYonghu() {
        return yonghu;
    }

    public void setYonghu(UserTb yonghu) {
        this.yonghu = yonghu;
    }

    //定义希望标签要做的事情
    @Override
    public void doTag() throws JspException, IOException {
        //直接给页面输出内容
        /*JspWriter out = this.getJspContext().getOut();
        out.print("这是我的自定义标签");*/
        //获取标签对的中间内容并输出
        StringWriter sw = new StringWriter();
        this.getJspBody().invoke(sw);
        this.getJspContext().getOut().print(sw);
        this.getJspContext().getOut().print(yonghu.getUserName()+"***********");
    }
}
