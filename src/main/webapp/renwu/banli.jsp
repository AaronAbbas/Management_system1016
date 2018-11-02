<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
            <span style="float:left">当前位置是：办理任务</span> <span style="float:right;margin-right: 8px;font-weight: bold">
		</span>
		</span>
</div>

<div class="morebt">

</div>
<div class="cztable">
    <form action="/renwu/shenpi" method="post">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <input type="hidden" name="taskid" value="${taskid}">
        <input type="hidden" name="leaveid" value="${leavebill.id}">
        <tbody>
        <tr style="height: 25px" align="center">
            <th colspan="8">请假单申请的任务办理</th>
        </tr>

        <tr style="height: 25px" align="center">
            <th scope="col">请假天数:</th>
            <th scope="col"><input type="text" disabled value="${leavebill.days}"/></th>
        </tr>

        <tr style="height: 25px" align="center">
            <th scope="col">请假原因:</th>
            <th scope="col"><input type="text" disabled  value="${leavebill.content}"> </th>
        </tr>

        <tr style="height: 25px" align="center">
            <th scope="col">请假备注:</th>
            <th scope="col"><textarea rows="5" cols="50" disabled> ${leavebill.remark}</textarea></th>
        </tr>

        <tr style="height: 25px" align="center">
            <th scope="col">批注</th>
            <th scope="col"><textarea rows="5" cols="50" name="pizhu"></textarea></th>
        </tr>
        <tr style="height: 25px" align="center">
            <th  colspan="2" scope="col">
                 <c:forEach items="${names}" var="str">
                     <input type="submit" name="result" value="${str}"/>
                 </c:forEach>
            </th>
        </tr>
        </tbody>
    </table>
    </form>
</div>

<div class="cztable">
    <table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tbody>
        <tr style="height: 25px" align="center">
            <th colspan="8">显示请假申请的批注信息</th>
        </tr>
      <c:forEach items="${allcomments}" var="comm">
        <tr style="height: 25px" align="center">
            <th scope="col">${comm.id}</th>
            <th scope="col">${comm.userId}</th>
            <th scope="col">${comm.fullMessage}</th>
        </tr>
      </c:forEach>
        </tbody>
    </table>
</div>
</div>
</body>
</html>