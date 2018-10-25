﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script type="text/javascript">
        $(function(){
            $("[name=deptid]").change(function(){
                var did=$(this).val();
                if(did==-1){
                    alert("请选择学院");
                    $("[name=majorid]")[0].length=0;
                    $("[name=majorid]")[0].add(new Option("请选择",-1));
                }else{
                    $.ajax({
                        url:"/Educational/student/getstudentbydid",
                        data:"did="+did,
                        type:"post",
                        dataType:"json",
                        success:function(rs){
                            //将专业添加到元素中
                            $("[name=majorid]")[0].length=0;
                            $("[name=majorid]")[0].add(new Option("请选择",-1));
                            for(var i=0;i<rs.length;i++){
                                //alert(rs[i].majorname);
                                $("[name=majorid]")[0].add(new Option(rs[i].majorname,rs[i].majorid));
                            }
                        }

                    });
                }

            });




            $("[name=majorid]").change(function(){
                var did=$("[name=deptid]").val();
                var mid=$(this).val();
                if(mid==-1){
                    alert("请先选择学院");
                }else{
                    $.ajax({
                        url:"/Educational/student/classname",
                        data:"did="+did+"&mid="+mid,
                        type:"post",
                        dataType:"json",
                        success:function(rs){
                            $("[name=classteacher]")[0].length=0;
                            $("[name=majorid]")[0].add(new Option("请选择",-1));
                            for(var i=0;i<rs.length;i++){
                                $("[name=classteacher]")[0].add(new Option(rs[i].classname,rs[i].classname));
                            }
                        }
                    });
                }
            });


        })
    </script>

</head>
<body>

		<div class="div_head">
            <span>
                <span style="float:left">当前位置是：教务中心-》学生管理-》新增</span>
                <span style="float:right;margin-right: 8px;font-weight: bold"></span>
            </span>
        </div>
</div>
<div class="cztable">
    <form action="/Educational/student/insert" method="post">
	<table border="1" width="100%" class="table_a">
                <tr  width="120px;">
                    <td width="10%">学号：<span style="color:red">*</span>：</td>
                    <td>
						<input type="text"  name="studentno" value="" />
					</td>
                </tr>

                <tr  width="120px;">
                    <td>姓名<span style="color:red">*</span>：</td>
                    <td>
						<input type="text"  name="stuname" value="杨" />
					</td>
                </tr>
                <tr>
                    <td>学院<span style="color:red">*</span>：</td>
                    <td>
                        <select name="deptid">
                            <option value="-1">请选择</option>
                            <c:forEach items="${dlist}" var="d">
                                <option value="${d.departid}">${d.departname}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>专业<span style="color:red">*</span>：</td>
                    <td>
                        <select name="majorid">
                            <option value="-1">请选择</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>班级<span style="color:red">*</span>：</td>
                    <td>
                        <select name="classteacher">
                            <option value="-1">请选择</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>classid：</td>
                    <td>
                        <input type="text" name="classid" value="1" />
                    </td>
                </tr>
                <tr>
                    <td>性别<span style="color:red">*</span>：</td>
                    <td>
                        <input type="radio" name="sex" checked value="男" />男
                        <input type="radio" name="sex" value="女"/>女
                    </td>
                </tr>

					<input type="hidden" name="stusex" value="男">

				<tr>
                    <td>EMAIL：</td>
                    <td>
                        <input type="text" name="email" value="1332@126.com" />
                    </td>
                </tr>

				<tr>
                    <td>联系电话：</td>
                    <td>
                        <input type="text" name="phone" value="13333333333" />
                    </td>
                </tr>

				<tr>
                    <td>户口所在地：</td>
                    <td>
                        <input type="text" name="registered" value="北京"  />
                    </td>
                </tr>

				<tr>
                    <td>住址：</td>
                    <td>
                        <input type="text" name="address" value="朝阳" />
                    </td>
                </tr>
				<tr>
                    <td>政治面貌：</td>
                    <td>
                        <input type="text" name="politice" value="团员" />
                    </td>
                </tr>
				<tr>
                    <td>身份证号：</td>
                    <td>
                        <input type="text" name="cardid" value="110111111111111111111" />
                    </td>
                </tr>

				<tr>
                    <td>简介<span style="color:red">*</span>：</td>
                    <td>
                        <textarea name="stucontent">一个新开辟领域的探讨，探讨摸索</textarea>
                    </td>
                </tr>
                    <%--<input type="hidden" value="regdate" value="2018/10/20">--%>
				<tr>
					<td colspan=2 align="center">
						<input type="submit" value="添加" />
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
