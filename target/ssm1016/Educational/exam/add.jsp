<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
    <script src="../Script/Data.js" type="text/javascript"></script>

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
                        url:"/Educational/exam/getstudentbydid",
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
                        url:"/Educational/exam/classname",
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



   <%-- <script type="text/javascript">
        function submitMail() {
            var mtitle = "联系方式有修改";
            var html = "<div style='padding:10px;'><div style='width:65px; height:120px; float:left;'>修改的地方：</div><div style='width:250px; height:120px; float:left;'><textarea id='objeCont' name='objeCont' style='width:250px; height:105px;'></textarea></div></div>";

            var submit = function (v, h, f) {
                if (f.objeCont == '' || f.objeCont.length > 80) {
                    $.jBox.tip("请您输入有修改的地方，且不超过80个字！", 'error', { focusId: "objeCont" }); // 关闭设置 objeCont 为焦点
                    return false;
                }

                StudentCompain.insertCompain('', mtitle, 5, f.objeCont, function (data) {
                    var obj = $.parseJSON(data);
                    var resultObj = false;
                    if (obj.ok) {
                        $.jBox.tip("成功提交联系方式的修改邮件！");
                    }
                });
            };

            $.jBox(html, { title: "联系方式修改的邮件", submit: submit });
        }
    </script>--%>
</head>
<body>

		<div class="div_head">
            <span>
                <span style="float:left">当前位置是：教务中心-》考试-》新增</span>
                <span style="float:right;margin-right: 8px;font-weight: bold">
                    <a style="text-decoration: none" onclick="history.back();">【返回】</a>
                </span>
            </span>
        </div>
</div>
<div class="cztable">
	<form action="/Educational/exam/addexam" method="post">

    <table width="100%" cellpadding="0" cellspacing="0">

        <tr>
            <td align="right" width="80">编号：</td>
            <td>
				<input type="text" name="examid" />
			</td>
        </tr>

        <tr>
            <td align="right">考试编号：</td>
            <td>
				<input type="text" name="examnum" value="" />
			</td>
        </tr>

        <tr>
            <td align="right">考试科目：</td>
            <td>
				<input type="text" name="examsubject" value="" />
			</td>
        </tr>

		<tr>
            <td align="right">考试时间：</td>
            <td>
				<input type="text" name="examtime"  value=""/>
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
            <td align="right">考试人数：</td>
            <td>
				<input type="text" name="examcount" value="" />
			</td>
        </tr>

		<tr>
            <td align="right">考试状态：</td>
            <td>
				<input type="text" name="examstate" value="" />
			</td>
        </tr>
        
        <tr align="center">
            <td colspan="5" height="40">
                <div align="center">
                    
                    <input type="submit" id="button2" value="添加"/>
                </div>
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
