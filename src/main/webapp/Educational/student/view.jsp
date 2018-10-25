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
                <span style="float:left">当前位置是：教务中心-》学生管理-》详细</span>
                <span style="float:right;margin-right: 8px;font-weight: bold"></span>
            </span>
        </div>
</div>
<div class="cztable">
    <form action="/Educational/student/selectsid" method="post">
	<table border="1" width="100%" class="table_a">
                
                <tr  width="120px;">
                    <td width="10%">姓名<span style="color:red">*</span>：</td>
                    <td>
						${s1.stuname}
					</td>
                </tr>
                <tr>
                    <td>性别<span style="color:red">*</span>：</td>
                    <td>
                        <input type="radio" name="sex" value="男" readonly <c:if test="${s1.stusex=='男'}">checked</c:if> />男
                        <input type="radio" name="sex" value="女" readonly <c:if test="${s1.stusex=='男'}">checked</c:if> />女
                    </td>
                </tr>

				<tr>
                    <td>EMAIL：</td>
                    <td>
                        ${s1.email}
                    </td>                
                </tr>

				<tr>
                    <td>联系电话：</td>
                    <td>
                        ${s1.phone}
                    </td>                
                </tr>

				<tr>
                    <td>户口所在地：</td>
                    <td>
                       ${s1.registered}
                    </td>                
                </tr>

				<tr>
                    <td>住址：</td>
                    <td>
                        ${s1.address}
                    </td>                
                </tr>
				<tr>
                    <td>政治面貌：</td>
                    <td>
                        ${s1.politics}
                    </td>
                </tr>
				<tr>
                    <td>身份证号：</td>
                    <td>
                        ${s1.cardid}
                    </td>                
                </tr>
				
				<tr>
                    <td>专业：</td>
                    <td>
                       ${s1.major.majorname}
                    </td>                
                </tr>
					
				</tr>
					<tr>
                    <td>登记时间：</td>
                    <td>
                        <fmt:formatDate type="date" value="${s1.regdate}" />
                    </td>
                </tr>
				<tr>
                    <td>简介<span style="color:red">*</span>：</td>
                    <td>
                        ${s1.stucontent}
                    </td>
                </tr>
                <tr>
                    <td colspan=2 align="center">
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
