<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fy" uri="http://java.sun.com/jsp/fenye/fy" %>
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
	<script src="../../Script/jBox/jquery.jBox-2.3.min.js" type="text/javascript"></script>
	<script src="../../Script/jBox/i18n/jquery.jBox-zh-CN.js" type="text/javascript"></script>
	<script src="../../Script/Common.js" type="text/javascript"></script>
	<script src="../../Script/Data.js" type="text/javascript"></script>

	<script>
        function del(){
            confirm("确认删除？");
        }

	</script>



</head>
<body>

<div class="div_head" style="width: 100%;text-align:center;">
		<span> <span style="float:left">当前位置是：教务中心-》班级管理</span> <span
				style="float: right; margin-right: 8px; font-weight: lighter">
            <span onclick="todaochu()" style="color:blue;cursor:pointer">【导出excel】</span>&nbsp;&nbsp;
            <a style="text-decoration: blink" href="/Educational/class/getDepts">【新增班级】&emsp;&emsp;&emsp;&emsp;</a>
		</span>
		</span>
</div>

<div class="cztable">
	<div>

		<ul class="seachform1">
			<form action="/Educational/class/getclasslist" method="post">
				<li>
					<label>班级名称:</label>
					<input name="classname" type="text" class="scinput1" value="${cname}"/>&nbsp;&nbsp;
					<label>班级编号:</label>
					<input name="classnum" type="text" class="scinput1" value="${cnum}"/>&nbsp;&nbsp;
					<input  type="submit" class="scbtn" value="查询"/>&nbsp;
				</li>

			</form>


			<script type="text/javascript">
                $(function(){
                    $("[name=all]").click(function(){
                        //alert($(this)[0].checked);
                        var singles=$("[name=single]");
                        for(var i=0;i<singles.length;i++){
                            singles[i].checked=$(this)[0].checked;
                        }
                    });
                })
			</script>

			<script type="text/javascript">
                function todaochu(){
                    var singles=$("[name=single]");
                    var k=-1;
                    for(var i=0;i<singles.length;i++){
                        if(singles[i].checked==true){
                            k=2;
                            document.forms[1].submit();
                            break;
                        }
                    }

                    if(k==-1){
                        alert("请先选择导出的班级");
                    }

                }
			</script>

			<form action="/Educational/class/daochu" method="post">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tbody><tr style="font-weight: bold;">
						<th  width="8%">
							<input name="all" type="checkbox"/>
						</th>
						<th >院系</th>
						<th width="">班级编号</th>
						<th width="">班级名称</th>
						<th width="15%">班主任老师</th>
						<th width="15%">人数</th>
						<th width="15%">班级状态</th>
						<th width="20%">操作</th>
					</tr>
					<c:forEach items="${pi.list}" var="cla">
						<tr id="product1">
							<td  width="8%" align="center">
								<input type="checkbox" value="${cla.classid}" name="single"/>
							</td>
							<td align="center">${cla.department.departname}</td>
							<td align="center">${cla.classnum}</td>
							<td align="center">${cla.classname}</td>
							<td align="center">${cla.classteacher}</td>
							<td align="center">${cla.peoplecount}</td>
							<td align="center">${cla.classstate}</td>
							<td align="center">
								<c:if test="${cla.classstate=='未审核'||cla.classstate=='审核未通过'}">
									<a href="/Educational/class/getclassbyid?classid=${cla.classid}">详情</a> ，
									<a href="/Educational/class/selectbyid?classid=${cla.classid}">修改</a>，
									<a href="/Educational/class/updateclassstate?classid=${cla.classid}">提交审核</a>，
									<a href="/Educational/class/delete?classid=${cla.classid}">删除</a>
								</c:if>
								<c:if test="${cla.classstate=='审核中'||cla.classstate=='已毕业'}">
										<a href="/Educational/class/getclassbyid?classid=${cla.classid}">详情</a>
								</c:if>
								<c:if test="${cla.classstate=='审核通过'}">
									发书 ,<a href="/Educational/class/getclassbyid?classid=${cla.classid}">详情</a>
								</c:if>
							</td>
						</tr>
					</c:forEach>










								
								<%--<a href="/Educational/class/getclasslist?classname=${cname}&classnum=${cnum}&index=${pi.pageNum}&size=${size}">首页</a>
								<a href="/Educational/class/getclasslist?classname=${cname}&classnum=${cnum}&index=${pi.prePage}&size=${size}">上一页</a>
								<c:if test="${pi.pages<6}">
									<c:forEach begin="1" end="${pi.pages}" var="i">
										<a style="text-decoration: none;" href="/Educational/class/getclasslist?index=${i}&size=${size}">${i}</a>
									</c:forEach>
								</c:if>
								<c:if test="${pi.pages>=6}">
									<c:if test="${pi.pageNum<6}">
										<c:forEach begin="1" end="6" var="i">
											<a style="text-decoration: none;" href="/Educational/class/getclasslist?index=${i}&size=${size}">${i}</a>
										</c:forEach>
									</c:if>
									<c:if test="${pi.pageNum>=6&&pi.pageNum<=pi.pages-5}">
										<c:forEach begin="${pi.pageNum-2<0?1:pi.pageNum-2}" end="${pi.pageNum+3>pi.pages?pi.pages:pi.pageNum+3}" var="i">
											<a style="text-decoration: none;" href="/Educational/class/getclasslist?index=${i}&size=${size}">${i}</a>
										</c:forEach>
									</c:if>
									<c:if test="${pi.pageNum>pi.pages-4}">
										<c:forEach begin="${pi.pages-5}" end="${pi.pages}" var="i">
											<a style="text-decoration: none;" href="/Educational/class/getclasslist?index=${i}&size=${size}">${i}</a>
										</c:forEach>
									</c:if>
								</c:if>
								<a href="/Educational/class/getclasslist?classname=${cname}&classnum=${cnum}&index=${pi.nextPage}&size=${size}">下一页</a>
								<a href="/Educational/class/getclasslist?classname=${cname}&classnum=${cnum}&index=${pi.pages}&size=${size}">尾页</a>
								共${pi.total}条
								每页显示
								<select name="num">
									<option value="5" <c:if test="${size==5}">selected</c:if> >5</option>
									<option value="10" <c:if test="${size==10}">selected</c:if>>10</option>
									<option value="15" <c:if test="${size==15}">selected</c:if>>15</option>
								</select>   ${pi.pageNum}/${pi.pages} </a>
						</td>--%>


					</tbody>
				</table>
				<div class='MainStyle'>
					<p align="center">
						<page:page pageSize="${pi.size}" historical="" method="" url="/Educational/class/getclasslist" currentPage="${pi.pageNum}" count="${pi.total}"/>
					</p>
				</div>
			</form>
		</ul>
	</div>

</div>
</div>

</div>
</body>
</html>
