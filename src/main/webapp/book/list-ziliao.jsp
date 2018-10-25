<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" uri="http://com.letben.tag" %>
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
    
    <script src="../Script/Common.js" type="text/javascript"></script>
    <script type="text/javascript">
        function searchData(ctype, type) {
            if (type == "t") {
                var c = $("#cValue").val();
                window.location = 'StudentMaterial.aspx?ctype=' + ctype + "&cid=" + c;
            } else if (type == "c") {
                var t = $("#tValue").val();
                window.location = 'StudentMaterial.aspx?cid=' + ctype + "&ctype=" + t;
            }
        }
        //查询的填充
        $().ready(function () {
            var ctype = Request.QueryString("ctype");
            var cid = Request.QueryString("cid");
            if (ctype != null && ctype != "") {
                $("#tValue").val(ctype);
                $("#" + ctype).addClass("hover");
            } else {
                $("#tAll").addClass("hover");
            }
            if (cid != null && cid != "") {
                $("#cValue").val(cid);
                $("#" + cid).addClass("hover");
            } else {
                $("#cAll").addClass("hover");
            }
        });
    </script>
</head>
<body>

	<div class="div_head" style="width: 100%;text-align:center;">
            <span>
                <span style="float:left">当前位置是：学习中心-》资料中心</span>
                <span style="float:right;margin-right: 8px;font-weight: bold">
                	<a style="text-decoration: none" href="/book/gettype">【上传】</a> &emsp;
                    <a style="text-decoration: none" href="javascript:history.back();">【返回】</a> &emsp;&emsp;
                </span>
            </span>
        </div>  


    <div class="feilei">
        <a href="#"><strong>资料中心</strong></a></div>
    <input type="hidden" id="cValue" value="" />
    <input type="hidden" id="tValue" value="" />
    <form action="/book/selectall">
        <input type="hidden" name="typeid" value="${typeid}"/>
    <div class="fllist">
        <ul>
           	<li>
            <strong>
            标题:&nbsp;&nbsp;
            </strong>
            <input type="text" name="informationname" value="${informationname}"/>&nbsp;&nbsp;
                <input type="submit" value="搜索" />
            </li>
            <li><strong>类型：</strong><a href="/book/selectall" id="tAll" >全部</a>
                
                <a href="/book/selectall?typeid=1" id="1" >
                    复习资料</a>
                
                <a href="/book/selectall?typeid=2" id="2" >
                    练习题</a>
                
                <a href="/book/selectall?typeid=3" id="3" >
                    内部资料</a>
                
                <a href="/book/selectall?typeid=4" id="4" >
                    真题</a>
                
            </li>
        </ul>
        <div class="cztable">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="text-align:center;">
                <tr>
                <th width="6%">格式</th>
                    <th style="padding-left: 20px;">
                        资料名称
                    </th>
                    <th style="width: 15%; text-align: center;">
                        资料类型
                    </th>
                    <th style="width: 15%; text-align: center;">
                        更新时间
                    </th>
                    <th style="width: 15%; text-align: center;">
                        操作
                    </th>
                </tr>
            <c:forEach items="${pi.list}" var="inf">
                <tr>
                <td><img src='../Images/FileIco/doc.gif' /></td>
                    <td class="xxleft">
                        
                       ${inf.informationname}
                    </td>
                    <td>
                       ${inf.infotype.infotype}
                    </td>
                    <td>
                        <fmt:formatDate value='${inf.date}' pattern='yyyy-MM-dd'/>
                    </td>
                    <td>
                        <a href="/book/getbyid?informationid=${inf.informationid}">详情</a>
                    <a href="/book/selectid?informationid=${inf.informationid}">编辑</a>
                    </td>
                </tr>
            </c:forEach>
                
                
            </table>
            <div class='MainStyle'>
                <p align="center">
                    <page:page pageSize="${pi.size }" historical="" method="" url="/book/selectall" currentPage="${pi.pageNum }" count="${pi.total }"/>
                </p>
            </div>
        </div>
    </div>
    </form>
    </div>

            </div>
        </div>
        
    </div>
</body>
</html>
