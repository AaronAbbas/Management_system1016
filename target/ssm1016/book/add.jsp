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
    <%--<script type="text/javascript">
        $(function() {
            $("[name=infoid]").change(function () {
                var did = $(this).val();
                if (did == -1) {
                    alert("请选择资料类型");
                    $("[name=majorid]")[0].length = 0;
                    $("[name=majorid]")[0].add(new Option("请选择", -1));
                }
            });
        })
    </script>--%>

</head>
<body>

		<div class="div_head">
            <span>
                <span style="float:left">当前位置是：书籍管理-》资料上传</span>
                <span style="float:right;margin-right: 8px;font-weight: bold"></span>
            </span>
        </div>
</div>
<div class="cztable">
<%-- <form action="/book/fileupload" method="post" enctype="multipart/form-data" >--%>
    <form action="/book/insertbook" method="post" enctype="multipart/form-data" >

    <table border="1" width="100%" class="table_a">
                <tr>
                    <td>资料名称 ：<span style="color:red">*</span>：</td>
                    <td>
                       <input type="text" name="informationname" value="3432545" />
                    </td>
                </tr>
               
                <tr>
                    <td>资料类型：<span style="color:red">*</span>：</td>
                    <td>
                        <%--定义的是数据库中的列名--%>
                        <select name="typeid">
                            <c:forEach items="${dlist}" var="d">
                                <option value="${d.infoid}">${d.infotype}</option>
                            </c:forEach>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>更新时间：<span style="color:red">*</span>：</td>
                    <td>
						<input type="text" name="date" value="2014/04/11 " /></td>
                </tr>

				 <tr>
                    <td>格式：<span style="color:red">*</span>：</td>
                    <td>
						<input type="text" name="filetype" value="doc" /></td>
                </tr>
                <tr>
                    <td>上传人：<span style="color:red">*</span>：</td>
                    <td>
						<input type="text" name="uploader" value="王二麻子" /></td>
                </tr>
				<tr>
                    <td>上传：<span style="color:red">*</span>：</td>
                    <td>
                        <input type="file" name="myfile">
                    </td> 
                </tr>
				

                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" value="提交">
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
