<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>
	学生信息管理平台
</title>
	<link href="../Style/StudentStyle.css" rel="stylesheet" type="text/css" />
	<link href="../Script/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
	<link href="../Style/ks.css" rel="stylesheet" type="text/css" />
	<link href="../css/mine.css" type="text/css" rel="stylesheet">
    <script src="../Script/jBox/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="../Script/jBox/jquery.jBox-2.3.min.js" type="text/javascript"></script>
    <script src="../Script/jBox/i18n/jquery.jBox-zh-CN.js" type="text/javascript"></script>
    <script src="../Script/Common.js" type="text/javascript"></script>
    <script src="../Script/Data.js" type="text/javascript"></script>
    <script>
	function del(){
		confirm("确认删除？");
	}

</script>
</head>
<body>

   

<div class="div_head" style="width: 100%;text-align:center;">
		<span>
            <span style="float:left">当前位置是：流程管理-》请假管理</span> <span style="float:right;margin-right: 8px;font-weight: bold">
		</span>
		</span>
	</div>

<div class="morebt">
 
</div>





 <div class="cztable">
     <div><a href="/qingjia/add.jsp">添加请假单</a></div>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
            <tr style="height: 25px" align="center">
                <th colspan="8">请假申请列表</th>
            </tr>

            <tr style="height: 25px" align="center">
                    <th scope="col">ID</th>
                    <th scope="col">请假人</th>
                    <th scope="col">请假天数</th>
                    <th scope="col">请假事由</th>
                    <th scope="col">请假备注</th>
                    <th scope="col">请假时间</th>
                    <th scope="col">请假状态</th>
                    <th scope="col">操作</th>
                </tr>
        <c:forEach items="${leavelist}" var="leave">
            <tr style="height: 25px" align="center">
                <th scope="col">${leave.id}</th>
                <th scope="col">${u1.userName}</th>
                <th scope="col">${leave.days}</th>
                <th scope="col">${leave.content}</th>
                <th scope="col">${leave.remark}</th>
                <th scope="col"><fmt:formatDate value="${leave.date}" pattern="yyyy-MM-dd"></fmt:formatDate></th>
                <th scope="col">
                      <c:if test="${leave.state==0}">初始录入</c:if>
                      <c:if test="${leave.state==1}">开始审批</c:if>
                      <c:if test="${leave.state==2}">审批完成</c:if>
                    <c:if test="${leave.state==3}">审核未通过</c:if>
                </th>
                <th scope="col">
                    <c:if test="${leave.state==0}"> 修改 删除
                        <a href="/qingjia/tijiao?leaveid=${leave.id}">提交申请</a> </c:if>
                    <c:if test="${leave.state==1}">查看</c:if>
                    <c:if test="${leave.state==2}">查看 删除</c:if>
                    <c:if test="${leave.state==3}">修改 删除  <a href="/qingjia/tijiao?leaveid=${leave.id}">提交申请</c:if>
                </th>
            </tr>
        </c:forEach>
            </tbody>
        </table>
    </div>

    </div>
</body>
</html>