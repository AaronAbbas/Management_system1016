<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    
</head>
<body>

   
                

		<div class="div_head">
            <span>
                <span style="float:left">当前位置是：个人中心-》班级信息</span>
                <span style="float:right;margin-right: 8px;font-weight: bold"></span>
            </span>
        </div>


<div class="morebt">
    
</div>

<div class="cztable">
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
        <tr>
            <td width="91" align="right">班级名称：</td>
            <td colspan="5">2013秋经济法学&nbsp;</td>
        </tr>
        <tr>
            <td align="right">班级QQ群：</td>
            <td colspan="5">57197804 &nbsp;</td>
        </tr>
        <tr>
            <td align="right">班级宣传语：</td>
            <td colspan="5">&nbsp;</td>
        </tr>
        <tr>
            <td align="right">学校名称：</td>
            <td colspan="5">湖南大学&nbsp;</td>
        </tr>
            
            <tr>
                    <td align="right"><div align="right">班主任老师：</div>&nbsp;</td>
                    <td><div align="left">王娟</div></td>
                    <td><div align="right">电话：</div>&nbsp;</td>
                    <td><div align="left">15388088011</div>&nbsp;</td>
                    
                  </tr>
            
       
        <tr>
            <td rowspan="3" align="right">问题反馈：</td>
            <td colspan="5">
                <input value="4" checked="checked" type="radio" name="problemType" />提问
                
                <input value="1" type="radio" name="problemType" />投诉
            </td>
        </tr>
        <tr>
            <td colspan="5">
                <textarea name="problemContent" id="problemContent" cols="80" rows="6" class="input_2"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="5" align="left" valign="middle">
                <input type="button" name="button2" id="button2" value="点击提交" class="input2" onclick="onSaveProblem()" />
            </td>
        </tr>
    </table>
</div>

            </div>
        </div>
        
    </div>
</body>
</html>
