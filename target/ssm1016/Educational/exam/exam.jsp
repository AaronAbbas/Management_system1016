<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="page" uri="http://com.letben.tag" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生信息管理平台</title>
<link href="../../Style/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="../../Script/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="../../Style/ks.css" rel="stylesheet" type="text/css" />
<link href="../../css/mine.css" type="text/css" rel="stylesheet">
<script src="../../Script/jBox/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="../../Script/jBox/jquery.jBox-2.3.min.js"
	type="text/javascript"></script>
<script src="../../Script/jBox/i18n/jquery.jBox-zh-CN.js"
	type="text/javascript"></script>
<script src="../../Script/Common.js" type="text/javascript"></script>
<script src="../../Script/Data.js" type="text/javascript"></script>

<script>
	function del(){
		confirm("确认删除？");
	}
    var date =new Date();
</script>



</head>
<body>
	
	<div class="div_head" style="width: 100%;text-align:center;">
		<span> <span style="float:left">当前位置是：教务中心-》考试</span> 
			<span style="float:right;margin-right: 8px;font-weight: bold">
			<a style="text-decoration: none;" href="/Educational/exam/getDepts">【新增考试】</a>&emsp;&emsp;&emsp;&emsp;
		</span>
		</span>
	</div>

	<div class="cztable">
		<div>
			
			<ul class="seachform1">
				<form action="#" method="post">
					<li>
						<label>考试科目</label>
						<input name="name" type="text" class="scinput1" value=""/>&nbsp;&nbsp;
						<input  type="submit" class="scbtn" value="查询"/>&nbsp;
					</li>
						
				</form>
		
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr style="height: 25px" align="center">
					<th scope="col">编号</th>
					<th scope="col">考试编号</th>
					<th scope="col">考试科目</th>
					<th scope="col">考试时间</th>
					<th scope="col">考试班级</th>
					<th scope="col">考试状态</th>
					<th scope="col">操作</th>
				</tr>

		<c:forEach items="${pi.list}" var="ex">
				<tr align="center">
					<td>${ex.examid}</td>
					<td>${ex.examnum}</td>
					<td>${ex.examsubject}</td>
					<td><fmt:formatDate value="${ex.examtime}" pattern='yyyy-MM-dd'></fmt:formatDate></td>
					<td>${ex.classes.classname}</td>
					<td>

					已结束</td>
					<td>
						<a href="view.jsp">详细</a>
						<a href="list.jsp">考试成绩</a>
                        <a href="reAdd.jsp">组织补考</a>
					</td>
				</tr>
		</c:forEach>
			<%--<tr align="center">
                <td>2</td>
                <td>20150017</td>
                <td>英语</td>
                <td>2013-12-29</td>
                <td>201308J</td>
                <td>进行中</td>
                <td>
                    <a href="view.jsp">详细</a>
                </td>
            </tr>
            <tr align="center">
                <td>3</td>
                <td>20150018</td>
                <td>英语</td>
                <td>2013-12-20</td>
                <td>201308J</td>
                <td>准备中</td>
                <td>
                    <a href="add.jsp">修改</a>
                    <a href="javascript:void(0)" onclick="del();return false" class="tablelink"> 删除</a>
                    <a href="view.jsp">详细</a>
                </td>
            </tr>--%>


			</tbody>
		</table>
				<div class='MainStyle'>
					<p align="center">
						<page:page pageSize="${pi.size }" historical="" method="" url="/Educational/exam/selectexam" currentPage="${pi.pageNum }" count="${pi.total }"/>
					</p>
				</div>
			</ul>
	</div>

	</div>
	</div>

	</div>
</body>
</html>
