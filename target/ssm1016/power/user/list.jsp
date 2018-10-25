<%@ taglib prefix="page" uri="http://com.letben.tag" %>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
		function del(){
			confirm("确定删除？");
		}
	</script>

</head>
<body>


<div class="div_head" style="width: 100%;text-align:center;">
		<span> <span style="float:left">当前位置是：权限管理-》人员管理</span> <span
			style="float:right;margin-right: 8px;font-weight: bold">
            <a style="text-decoration: none;" href="javascript:alert('操作成功！');">【导出excel】</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none;" href="javascript:alert('操作成功！');">【批量删除】</a>&nbsp;&nbsp;&nbsp;&nbsp;
            <a style="text-decoration: none;" href="add.jsp">【新增人员】</a>&nbsp;&nbsp;&nbsp;&nbsp;
		</span>
		</span>
	</div>

<div class="morebt">
 
</div>
 <div class="cztable" style="width: 100%;">
        
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
            <tbody>
                <tr style="height: 25px;" align="center">
                    
                    <th  width="8%">
						<input type="checkbox"/>
					</th>
					<th scope="col" width="15%">
                        序号
                    </th>
                    <th scope="col" width="15%">
                        账号
                    </th>
                    <th scope="col" width="15%">
                        姓名
                    </th>
                    <th scope="col" width="15%">
                        角色
                    </th>
                   
                    <th scope="col" >
                        操作
                    </th>
                </tr>
                
               
                
                <tr align="center">
					<th><input type="checkbox"/></th>
                    <td>
                        1
                    </td>
                    
                    <td>
                      zhangsan
                    </td>
                    <td>
                       <a href="info.jsp">张三</a>
                    </td>
                    
                    <td>&nbsp;
                       管理员
                    </td>
                    
                    <td>&nbsp;
                        <a href="edit.jsp">修改</a>
						<a href="javascript:void(0)" onclick="del();return false" class="tablelink"> 删除</a>
                    </td>
                </tr>
                
                 <tr align="center">
                   
                    <th><input type="checkbox"/></th>
					 <td>
                        2
                    </td>
                    <td>
                      zhangsan
                    </td>
                    <td>
                       <a href="info.jsp">李四</a>
                    </td>
                    
                    <td>&nbsp;
                       学生
                    </td>
                    <td>&nbsp;
                        <a href="edit.jsp">修改</a>
							<a href="JavaScript:void(0)" onclik="del();return false" class="tablelink">删除</a>
                    </td>
                </tr>
                
                
                <tr align="center">
                    <th><input type="checkbox"/></th>
					<td>
                        3
                    </td>
                    <td>
                      zhangsan
                    </td>
                    <td>
                       <a href="info.jsp">王五</a>
                    </td>
                    
                    <td>&nbsp;
                       老师
                    </td>
                    <td>&nbsp;
                        <a href="edit.jsp">修改</a>
						<a href="JavaScript:void(0)" onclik="del();return false" class="tablelink">删除</a>
                    </td>
                </tr>
				<tr align="center">
                    <th><input type="checkbox"/></th>
					<td>
                        4
                    </td>
                    <td>
                      zhangsan
                    </td>
                    <td>
                       <a href="info.jsp">赵六</a>
                    </td>
                    
                    <td>&nbsp;
                       主任
                    </td>
                    <td>&nbsp;
                        <a href="edit.jsp">修改</a>
						<a href="JavaScript:void(0) onclik="del();return false" class="tablelink">删除</a>
                    </td>
                </tr>
                
                
               
                
               
                
                
            </tbody>
        </table>
   <%--  <div class='MainStyle'>
         <p align="center">
             <page:page pageSize="${pi.size }" historical="" method="" url="/Educational/class/getclasslist" currentPage="${pi.pageNum }" count="${[i].total }"/>
         </p>
     </div>--%>

    </div>

        
        
      
    </div>
</body>
</html>