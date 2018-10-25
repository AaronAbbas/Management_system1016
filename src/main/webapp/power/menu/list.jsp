<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
    <%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="page" uri="http://com.letben.tag" %>
    <html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>
	学生信息管理平台
</title>
	<link href="../../Style/StudentStyle.css" rel="stylesheet" type="text/css" />
	<link href="../../Script/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
	<link href="../../Style/ks.css" rel="stylesheet" type="text/css" />
	<link href="../../css/mine.css" type="text/css" rel="stylesheet">
    <script src="../../Script/jBox/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="../../Script/jBox/jquery.jBox-2.3.min.js" type="text/javascript"></script>
    <script src="../../Script/jBox/i18n/jquery.jBox-zh-CN.js" type="text/javascript"></script>
    <script src="../../Script/Common.js" type="text/javascript"></script>
    <script src="../../Script/Data.js" type="text/javascript"></script>
    <script>
	function del(mid){
		var rs=confirm("确认删除？");
		if(rs==true){
		    location.href="/power/menu/deletemenu?mid="+mid;
         }
	}

</script>
</head>
<body>

   

<div class="div_head" style="width: 100%;text-align:center;">
		<span> <span style="float:left">当前位置是：权限管理-》菜单管理</span> <span
			style="float:right;margin-right: 8px;font-weight: bold">
			<a style="text-decoration: none;" href="javascript:alert('操作成功！');">【导出excel】</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none;" href="javascript:document.forms[0].submit()">【批量删除】</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none;" href="/power/menu/getupmenu">【新增菜单】</a>&nbsp;&nbsp;&nbsp;&nbsp;
		</span>
		</span>
	</div>

<div class="morebt">
 
</div>





 <div class="cztable">
        <form action="/power/menu/deleteall" method="post" >
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr style="height: 25px" align="center">
                	<th><input type="checkbox" /></th>
                    <th scope="col">
                        序号
                    </th>
                    
                    <th scope="col">
                        菜单名称
                    </th>
                    <th scope="col">
                        UTL
                    </th>
                    <th scope="col">
                        状态
                    </th>
                    <th scope="col">
                        操作
                    </th>
                </tr>
                
               
                <c:forEach items="${pi.list}" var="m" varStatus="sta">
                <tr align="center">
                    <th><input type="checkbox" name="menuids" value="${m.menuid}-${m.upmenuid}"/></th>
                    <td>${sta.count}</td>
                    <td>${m.menuname}</td>
                    <td>
                       <a href="">${m.menupath}</a>
                    </td>
                    
                    <td> ${m.menustate==1?"启用":"禁用"} </td>
                    
                    <td>&nbsp;
                        <a href="/power/menu/selectid?menuid=${m.menuid}">详情</a>
                        <a href="edit.html">修改</a>
                    <a href="javascript:void(0)" onclick="del(${m.menuid});
                    return false" class="tablelink"> 删除</a>
                    </td>
                </tr>

                </c:forEach>
            </tbody>
        </table>
    </form>
    <div class='MainStyle'>
        <p align="center">
            <page:page pageSize="${pi.size}" historical="" method="" url="/power/menu/getmenus" currentPage="${pi.pageNum}" count="${pi.total}"/>
        </p>
    </div>
    </div>

    </div>
</body>
</html>