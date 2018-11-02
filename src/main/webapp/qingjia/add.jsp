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
     <form action="/qingjia/add" method="post">
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
            <tr style="height: 25px" align="center">
                <th colspan="8">添加请假单</th>
            </tr>
               <input type="hidden" value="${u1.userId}" name="userTb.userId">
              <tr style="height: 25px" align="center">
                    <th scope="col">请假人:</th>
                    <th scope="col"><input type="text" value="${u1.userName}"readonly> </th>
                </tr>
            <tr style="height: 25px" align="center">
                <th scope="col">原因</th>
                <th scope="col"><input type="text" name="content"> </th>
            </tr>

            <tr style="height: 25px" align="center">
                <th scope="col">请假日期</th>
                <th scope="col"><input type="text" name="date"> </th>
            </tr>
            <tr style="height: 25px" align="center">
                <th scope="col">请假天数</th>
                <th scope="col"><input type="text" name="days"> </th>
            </tr>
            <tr style="height: 25px" align="center">
                <th scope="col">备注</th>
                <th scope="col">
                <textarea rows="10" cols="80" name="remark"></textarea></th>
            </tr>
            <tr style="height: 25px" align="center">
                <th scope="col" colspan="2">
                    <input type="submit" value="保存"/>
                </th>
            </tr>
            </tbody>
        </table>
     </form>
    </div>

    </div>
</body>
</html>