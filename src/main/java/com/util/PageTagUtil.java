package com.util;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.text.MessageFormat;

/**
 * PageTag 1.1 解决了，历史分页问题。
 * PageTag 1.2 尝试配出老师需要的模板，是个 过渡版本。存在严重bug！！！
 * PageTag 1.3 版本，并不存在十分严重bug。算法是对的。应用场景，有点儿小bug。忘了考虑上下几页的问题。
 * PageTag 1.4 版本，能够显示分页了。应该是 各种bug都没有了，并且 能很好地 显示分页。最后一页显示条目有bug。
 * PageTag 1.5 版本，必须各种bug没有了！！！。能够完美显示，并且最后一页有几条项目，就显示多少个条目。
 * PageTag 1.6 版本，消除了，未获得数据时，回报的by zero。异常。
 * PageTag 1.61 版本，多一个判非条件。之前仅一个 不合适，可能会存在异常。
 * @author RealisedBy : Letben  TaughtBy : Salmon  At Dec.16th
 */
public class PageTagUtil extends TagSupport {

    private int count=0;
    private int currentPage=1;
    private int pageSize = 5;
    private String url;
    private String method;
    private String historical;

    public String getMethod() {
        return method;
    }
    public void setMethod(String method) {
        this.method = method;
    }
    public String getHistorical() {
        return historical;
    }
    public void setHistorical(String historical) {
        this.historical = historical;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public int getCurrentPage() {
        return currentPage;
    }
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getPageSize() {
        return pageSize;
    }
    public void setPageSize(int pageSize) {
        this.pageSize = pageSize;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * 主要是 创建 标签这里需要一些技术。
     * 现在 样式   ：首页 上一页 下一页 尾页    共 3 页，6 条记录。当前第 3 页，分页单位是 2 条记录
     * 期望样式    ：首页 上一页 ... 7 8 9 10 11 12 ... 下一页 尾页 共1234条 每页显示 10/23
     */
    @Override
    public int doStartTag() throws JspException {
        /*
         * 现在 样式   ：首页 上一页 下一页 尾页    共 3 页，6 条记录。当前第 3 页，分页单位是 2 条记录
         * 期望样式    ：首页 上一页 ... 7 8 9 10 11 12 ... 下一页 尾页 共1234条 每页显示 10/23
         *
         * 修改点1：
         * 需要在 上一页 和 下一页中间加入一些内容。数字，如果页数大于5就有必要隐藏一些数据，如果页数小于5就展示所有信息。
         *
         * 修改点2：
         * 共 3 页，6 条记录。当前第 3 页，分页单位是 2 条记录
         * 共1234条 每页显示 10/23
         */
        JspWriter out = this.pageContext.getOut();//select * from user_tb where username like '%~%';


        if(pageSize==0||count==0){
            try {
                out.println("%>_<%，查找时，未获得数据哟~~~。【请更换查找条件 O(∩_∩)O ~~~】");
            } catch (Exception e) {
                System.out.println("未获得数据，输出标签时，出现异常");
                e.printStackTrace();
            }
            return this.EVAL_PAGE;
        }else{
            int totalPage = count%pageSize==0?count/pageSize:count/pageSize+1;
            if(currentPage<=1){
                currentPage = 1;
            }
            if(currentPage>=totalPage){
                currentPage = totalPage;
            }
            //<a href="BookServlet.do?page=3&historical=yes&method=somehow" >超级链接</a>

            //string pattern1 = wo de ming zi jiao {0} nian ling shi {1};
            // string str1 = messageFormat.format(pattern1,"lifei",23);
            //System.out.println(str1); --->  wo de ming zi jiao lifei nian ling shi 23;
            //*************************
            String linkPattern = "<a href=\"{0}?index={1}&historical={3}&method={4}\">{2}</a>";
            String first = MessageFormat.format(linkPattern, url,1,"首页",historical,method);
            String pre = MessageFormat.format(linkPattern, url,currentPage-1,"上一页",historical,method);
            String next = MessageFormat.format(linkPattern,url,currentPage+1,"下一页",historical,method);
            String last = MessageFormat.format(linkPattern, url,totalPage,"尾页",historical,method);
            if(currentPage<=1){
                first = "首页";
                pre = "上一页";
            }
            if(currentPage>=totalPage){
                next = "下一页";
                last = "尾页";
            }
            /*
             * 共 3 页，6 条记录。当前第 3 页，分页单位是 2 条记录
             * 共1234条 每页显示 10/23
             */
            String htmlString = "{0}&nbsp;{1}&nbsp;{7}{2}&nbsp;{3}&nbsp;&nbsp;&nbsp;&nbsp;共&nbsp;{4}&nbsp;条&nbsp;&nbsp;每页显示&nbsp{5}/{6}";

            String middle = getMiddleNumber(totalPage,currentPage);
            //System.out.println(middle);
            int showPageSize=0;
            if(currentPage!=totalPage){
                showPageSize = pageSize;
            }else{
                showPageSize = count-pageSize*(totalPage-1);
            }
            //System.out.println(showPageSize);

            htmlString = MessageFormat.format(htmlString, first,pre,next,last,count,showPageSize,count,middle);
            //System.out.println(htmlString);

            try {
                out.println(htmlString);
            } catch (IOException e) {
                System.out.println("输出标签时，出现异常");
                e.printStackTrace();
            }

            return this.EVAL_PAGE;

        }

    }
    /**
     * 拼接中间的那对数字的代码
     * @param totalPage
     * @param currentPage
     * @return
     */
    private String getMiddleNumber(int totalPage,int currentPage) {
        //System.out.println(currentPage);
        //  TODO 这也是个bug    首页 上一页 1 下一页 尾页    共 1 条  每页显示 2/1 当只有一个 用户的时候。
        // 如果真的老板丧心病狂，把 用户 一个一个 都删了，这就会出问题，
        // 如果 此时 有人直接 动了 数据库，删除了当前用户，根据 session他仍然能够 登录，这也是个 bug。
        // TODO
        //<a href="BookServlet.do?page=3&historical=yes&method=somehow" >超级链接</a>
        //当前页码跳转index
        String linkPattern = "<a href=\"{0}?index={1}&historical={3}&method={4}\">{2}</a>";
        String[] strings = null;
        StringBuffer sb=null;
        if(totalPage<=0){
            //如果条目数<=0的话
            //如果系统能够登录,只少有一个 用户，那么就不用做，为0判断。
            System.out.println("没有记录可以被显示");
        }else{// 否则 count一定有值
            //否则count 一定大于0.
            if(totalPage>5){
                strings = new String[5];
            }else{
                strings = new String[totalPage];
            }
            String string=null;
            //if(totalPage<=5){//1-5
            //string =MessageFormat.format(linkPattern,url,count,count,historical,method);
            //strings[count-1]=string;
            int times = 0;
            if(totalPage<=5){
                times=totalPage;
            }else {
                times=5;
            }
            if(totalPage<=5){//1,2,3,4,5
                for(int i=1;i<=times;i++){
                    if(i==currentPage){
                        string = i+"";
                        strings[i-1]=string;
                        //System.out.println(string);
                    }else{
                        string = MessageFormat.format(linkPattern, url,i,i,historical,method);
                        strings[i-1]=string;
                        string=null;
                    }
                }
            }else{//6,7,8……
                int middle=0;
                if(currentPage<3){
                    middle=3;
                }else if(currentPage+2>totalPage){
                    middle = totalPage-2;
                }else {
                    middle = currentPage;
                }

                for(int i=middle-2,j=0;i<=middle+2;i++,j++){
                    if(i!=currentPage){
                        string = MessageFormat.format(linkPattern, url,i,i,historical,method);
                        //System.out.println(i);
                        //System.out.println(j);//调皮的bug，我不输出你，你都不老老实实执行！！！，这应该是 历史上第三次了，之前事件监听里面有一回。
                        //System.out.println(string);
                        //System.out.println(strings.length);
                        strings[j] = string;
                        string = null;
                    }else {
                        string = i+"";
                        strings[j]=string;
                        string=null;
                    }
                }
            }
            //}
            /*else if(totalPage>5){
                //如果>5的话，是不是要显示中间的五个
                //首页 上页   2 3 4 5 6 下页 尾页   ***
                int middle=0;
                if(currentPage<3){
                    middle=3;
                }else if(currentPage+2>totalPage){
                    middle = totalPage-2;
                }else {
                    middle = currentPage;
                }
                for(int i=middle-2;i<=middle+2;i++){
                    string = MessageFormat.format(linkPattern, url,i,i,historical,method);
                    strings[i-1] = string;
                    string = null;
                }
            }*/
            sb = new StringBuffer();
            for(int i=0;i<strings.length;i++){
                sb.append(strings[i]);
                sb.append("&nbsp;");
            }
            if(totalPage>5){
                if(currentPage>3){
                    sb.insert(0, "……");
                }
                if(currentPage+2<totalPage){
                    sb.append("……");
                }

            }
        }
        return sb.toString();
    }
}