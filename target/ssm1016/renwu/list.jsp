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
            <span style="float:left">当前位置是：流程管理-》任务管理</span> <span style="float:right;margin-right: 8px;font-weight: bold">
		</span>
		</span>
	</div>

<div class="morebt">
 
</div>





 <div class="cztable">

        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
            <tr style="height: 25px" align="center">
                <th colspan="5">个人任务列表</th>
            </tr>

            <tr style="height: 25px" align="center">
                    <th scope="col">任务ID</th>
                    <th scope="col">任务名称</th>
                    <th scope="col">创建时间</th>
                    <th scope="col">办理人</th>
                     <th scope="col">操作</th>
                </tr>
            <c:forEach items="${tlist}" var="t">
            <tr style="height: 25px" align="center">
                <th scope="col">${t.id}</th>
                <th scope="col">${t.name}</th>
                <th scope="col">${t.createTime}</th>
                <th scope="col">${t.assignee}</th>
                <th scope="col">
                    <a href="/renwu/banli?taskid=${t.id}">办理任务</a> 查看当前流程图</th>
            </tr>
            </c:forEach>
            </tbody>
        </table>

    </div>

    </div>
</body>
</html>