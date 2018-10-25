<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

</script>

   <script type="text/javascript">
        function submitMail() {
            var mtitle = "成绩添加或修改";
            var html = "<div style='padding:10px;'><div style='width:65px; height:120px; float:left;'>修改的地方：</div><div style='width:250px; height:120px; float:left;'><textarea id='objeCont' name='objeCont' style='width:250px; height:105px;'></textarea></div></div>";

            var submit = function (v, h, f) {
				alert(v + "-" + h + "-" + f);
                if (f.objeCont == '') {
                    $.jBox.tip("请您输入成绩，且不超过3个字！", 'error', { focusId: "objeCont" }); // 关闭设置 objeCont 为焦点
                    return false;
                }

                StudentCompain.insertCompain('', mtitle, 5, f.objeCont, function (data) {
                    var obj = $.parseJSON(data);
                    var resultObj = false;
                    if (obj.ok) {
                        $.jBox.tip("成功提交成绩！");
                    }
                });
            };

            $.jBox(html, { title: "成绩添加或修改", submit: submit });
        }
    </script>




</head>
<body>
	
	<div class="div_head" style="width: 100%;text-align:center;">
		<span> <span style="float:left">当前位置是：教务中心-》考试-》考试成绩</span>
			<span style="float: right; margin-right: 8px; font-weight: bold;">
                    <a style="text-decoration: none;" href="/Educational/exam/getDepts">【新增考试】</a>&emsp;&emsp;&emsp;&emsp;
                </span>
			<span style="float:right;margin-right: 8px;font-weight: bold">
				<a style="text-decoration: none" onclick="history.back();">【返回】</a>
		</span>
		</span>
	</div>

	<div class="cztable">
		<div>
			
			<%--<ul class="seachform1">--%>
				<form action="/Educational/exam/selectexam" method="post">
					<li>
						<label>学生姓名</label>
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
					<th scope="col">考生姓名</th>
					<th scope="col">考生分数</th>
					<th scope="col">操作</th>
				</tr>
			<c:forEach items="${pi.list}" var="ex">
				<tr align="center">
					<td>${ex.examid}</td>
					<td>${ex.examnum}</td>
					<td>${ex.examsubject}</td>
					<td><fmt:formatDate value="${ex.examtime}" pattern='yyyy-MM-dd'></fmt:formatDate></td>
					<td>${ex.classes.classname}</td>
					<td>${ex.major.majorname}</td>
					<td>${ex.examcount}</td>
					<td>${ex.examstate}</td>
					<td><input type="text" value="84" size="5" /></td>
					<td>
						<input type="button" id="button2" value="修改" class="input2" />						   
					</td>
				</tr>
			</c:forEach>


			</tbody>
		</table>
				<div class='MainStyle'>
					<p align="center">
						<page:page pageSize="${pi.size }" historical="" method="" url="/power/role/getroles" currentPage="${pi.pageNum }" count="${pi.total }"/>
					</p>
				</div>
			</ul>
	</div>

	</div>
	</div>

	</div>
</body>

</html>