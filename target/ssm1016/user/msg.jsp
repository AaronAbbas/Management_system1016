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
       <script type="text/javascript">
        function submitMail() {
            var mtitle = "联系方式有修改";
            var html = "&lt;div style='padding:10px;'>&lt;div style='width:65px; height:120px; float:left;'>修改的地方：&lt;/div>&lt;div style='width:250px; height:120px; float:left;'>&lt;textarea id='objeCont' name='objeCont' style='width:250px; height:105px;'>&lt;/textarea>&lt;/div>&lt;/div>";

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
    </script>

</head>
<body>

		<div class="div_head">
            <span>
                <span style="float:left">当前位置是：学员中心-》学员信息</span>
                <span style="float:right;margin-right: 8px;font-weight: bold"></span>
            </span>
        </div>
</div>
<div class="cztable">
    <table width="100%" cellpadding="0" cellspacing="0">
        <tr>
            <td align="right" width="80">姓名：</td>
            <td>邹智&nbsp;</td>
            <td align="right" width="90">身份证号码：</td>
            <td>430181198612113330&nbsp;</td>
            
            <td rowspan="9"><div align="center"><img id="pic_face"  height="160" width="120" src="../Images/Student/photo.jpg" style="padding:2px 2px 5px; border:1px #ddd solid;"></div>&nbsp;</td>
        </tr>
        <tr>
            <td align="right">性别：</td>
            <td>男&nbsp;</td>
            <td align="right">考籍号：</td>
            <td>910513201419&nbsp;</td>
        </tr>
        <tr>
            <td align="right">报考类别：</td>
            <td>自考&nbsp;</td>
            <td align="right">报考学校：</td>
            <td>湖南大学&nbsp;</td>
        </tr>
        <tr>
            <td align="right">报考专业：</td>
            <td>经济法学&nbsp;</td>
            <td align="right">原专业：</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td align="right">报考层次：</td>
            <td>专本同读&nbsp;</td>
            
            <td align="right">注册批次：</td>
            <td>2013秋&nbsp;</td>
        </tr>
        <tr>
            <td align="right">报名时间：</td>
            <td>2013-08-16&nbsp;</td>
            <td align="right">状态：</td>
            <td>在读&nbsp;</td>
        </tr>
        
        <tr>
            <td colspan="4" align="left">联系方式（如联系方式有变动请及时修改，以便能及时联系到你。谢谢！）</td>
            
        </tr>
        <tr>
            <td align="right">手机号码：</td>
            <td>15111141999</td>
            <td align="right">第二联系号码：</td>
            <td></td>
           
        </tr>
        <tr>
            <td align="right">QQ:</td>
            <td></td>
            <td align="right">电子邮箱：</td>
            <td></td>
            
        </tr>
        <tr>
            <td align="right">联系地址：</td>
            <td colspan="4"></td>
        </tr>
        <tr align="center">
            <td colspan="5" height="40">
                <div align="center">
                    
                    <input type="button" id="button2" value="联系方式有修改" onclick="submitMail()" class="input2" />
                </div>
            </td>
        </tr>
    </table>
</div>

            </div>
        </div>
    </div>
</body>
</html>
