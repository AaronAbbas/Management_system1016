<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
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

</head>
<body>

<div class="div_head">
            <span>
                <span style="float:left">当前位置是：个人中心-》我的信息</span>
                <span style="float:right;margin-right: 8px;font-weight: bold"></span>
            </span>
</div>
</div>
<div class="cztable">
    <form action="/user/updateuser" method="post">
        <input type="hidden" name="userId" value="${u1.userId}">
        <table width="100%" cellpadding="0" cellspacing="0">
            <tr  width="120px;">
                <td width="120px">用户名：<span style="color:red">*</span>：</td>
                <td>
                    <input type="text"  name="userName" value="${u1.userName}" />
                </td>
            </tr>

            <tr  width="120px;">
                <td>姓名<span style="color:red">*</span>：</td>
                <td>
                    <input type="text"  name="userRealname" value="${u1.userRealname}" />
                </td>
            </tr>
            <tr>
                <td>性别<span style="color:red">*</span>：</td>
                <td>

                    <input type="radio" name="userSex"  value="男" <c:if test="${u1.userSex=='男'}">checked</c:if> />男
                    <input type="radio" name="userSex" value="女" <c:if test="${u1.userSex=='女'}">checked</c:if>/>女
                </td>
            </tr>

            <tr>
                <td>EMAIL：</td>
                <td>
                    <input type="text" name="userEmail" value="${u1.userEmail}" />
                </td>
            </tr>

            <tr>
                <td>联系电话：</td>
                <td>
                    <input type="text" name="userPhone" value="${u1.userPhone}" />
                </td>
            </tr>

            <tr>
                <td>住址：</td>
                <td>
                    <input type="text" name="userAddress" value="${u1.userAddress}" />
                </td>
            </tr>

            <tr>
                <td>身份证号：</td>
                <td>
                    <input type="text" name="userIdcard" value="${u1.userIdcard}" />
                </td>
            </tr>


            <tr>
                <td>简介<span style="color:red">*</span>：</td>
                <td>
                    <textarea name="userContent">${u1.userContent}</textarea>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit" value="保存">
                    <input type="button" value="返回" onclick="history.back();">
                </td>
            </tr>

        </table>
    </form>
</div>

</div>
</div>
</div>
</body>
</html>
