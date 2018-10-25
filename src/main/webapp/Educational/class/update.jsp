<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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

</head>
<body>
		<div class="div_head">
            <span>
                <span style="float:left">当前位置是：教务中心-》学生管理-》修改</span>
                <span style="float:right;margin-right: 8px;font-weight: bold"></span>
            </span>
        </div>
</div>
<div class="cztable">
    <form action="/Educational/class/updateclass" method="post">
	 <table border="1" width="100%" class="table_a">
         <input type="hidden" name="classid" value="${c1.classid}">
                <tr>
                    <td width="120px;">院系：<span style="color:red">*</span>：</td>
                    <td><input type="text" name="departname" value="${c1.department.departname}" /></td>
                </tr>
                <tr>
                    <td>班级编号：<span style="color:red">*</span>：</td>
                    <td>
                       <input type="text" name="classnum" value="${c1.classnum}"  />
                    </td>
                </tr>
               
                <tr>
                    <td>班级名称：<span style="color:red">*</span>：</td>
                    <td>
						<input type="text" name="classname" value="${c1.classname}" /></td>
                </tr>
                <tr>
                    <td>人数：<span style="color:red">*</span>：</td>
                    <td>
						<input type="text" name="peoplecount" value="${c1.peoplecount}" /></td>
                </tr>

				 <tr>
                    <td>开班时间：<span style="color:red">*</span>：</td>
                    <td>

                        <input type="text" name="classbegin"  value="<fmt:formatDate value='${c1.classbegin}' pattern='yyyy/MM/dd'/>"class="date" dateFmt="yyyy/MM/dd"/>
                    </td>
                </tr>
                <tr>
                    <td>毕业时间：<span style="color:red">*</span>：</td>
                    <td>
                        <input type="text" name="classend"  value="<fmt:formatDate value='${c1.classend}' pattern='yyyy/MM/dd'/>"class="date" dateFmt="yyyy/MM/dd"/>
                    </td>
                </tr>


                <tr>
                    <td>简介<span style="color:red">*</span>：</td>
                    <td>
                        <textarea name="classcontent">${c1.classcontent}</textarea>
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
