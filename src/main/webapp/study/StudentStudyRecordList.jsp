<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title>
	学生信息管理平台
</title>
	<link href="../Style/StudentStyle.css" rel="stylesheet" type="text/css" />
	<link href="../Script/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
	<link href="../Style/ks.css" rel="stylesheet" type="text/css" />
	<link href="../Style/history.css" rel="stylesheet" type="text/css" />
	<link href="../css/mine.css" type="text/css" rel="stylesheet">
    <script src="../Script/jBox/jquery-1.4.2.min.js" type="text/javascript"></script>
    <script src="../Script/jBox/jquery.jBox-2.3.min.js" type="text/javascript"></script>
    <script src="../Script/jBox/i18n/jquery.jBox-zh-CN.js" type="text/javascript"></script>
    <script src="../Script/Common.js" type="text/javascript"></script>
    <script src="../Script/Data.js" type="text/javascript"></script>

    
    <script src="../Script/jquery-1.4.1.js" type="text/javascript"></script>
    
</head>
<body>
          
		<div class="div_head" style="width: 100%;text-align:center;">
            <span>
                <span style="float:left">当前位置是：教务中心-》我的学习历程</span>
                <span style="float:right;margin-right: 8px;font-weight: bold">
                    <a style="text-decoration: none" href="../right.jsp">【返回】</a>
                </span>
            </span>
        </div>      


    <div class="history">
        <div class="history-date">
            <ul id="hData">
            </ul>
        </div>
    </div>
    <div class="time_bm">
        2013.08.16我报考了经济法学，重新打开学习之门！</div>
    <input type="hidden" id="stuId" value="7c50f70a-775b-4aef-8bf2-5010ec612c0d" />
    <script type="text/javascript">
        var pageIndex = 1; //当前加载页数
        var hasData = true; //是否还有数据可以加载
        var yearData = ""; //年份
        var monthData = ""; //月.日
        var $dt = null; //追加数据的jq对象
        function loadData() {
            if (hasData) {
                var stuId = $("#stuId").val();
                if (stuId.length > 1) {
                    $.ajax({
                        url: "StudyGetData.ashx",
                        type: "post",
                        data: "stuId=" + stuId + "&pageIndex=" + pageIndex,
                        success: function (data) {
                            pageIndex++;
                            var s1 = data.split('$1$')[0];
                            if (s1 == "0") {
                                hasData = false;
                            }
                            var s2 = data.split('$1$')[1];
                            showData(s2);
                        }
                    });
                }
            }
        }
        function showData(str) {
            var s3 = str.split('$3$');
            for (i = 0; i < s3.length; i++) {
                var s4 = s3[i].split('$2$');
                if (s4[0] != yearData) {
                    var t = "<li><h2 class='first'><a href='#nogo'>" + s4[0] + "年</a></h2></li>";
                    $("#hData").append(t);
                    yearData = s4[0];
                }
                if (s4[1] != monthData) {
                    var $li = $("<li class='green'><h3>" + s4[1] + "<span>" + yearData + "</span></h3></li>");
                    var $div = $("<div class='lc_right'></div>");
                    var $dl = $("<dl></dl>");
                    var $tdiv = $("<div class='time_ico'></div>");
                    $dt = $("<dt></dt>");
                    $dt.appendTo($dl);
                    $tdiv.appendTo($dl);
                    $dl.appendTo($div);
                    $div.appendTo($li);
                    $li.appendTo($("#hData"));
                    monthData = s4[1];
                }
                if ($dt) {
                    var pathA = s4[6];
                    var $span;
                    if (pathA.length < 1) {
                        $span = $("<span>" + s4[2] + " " + s4[3] + "<a>" + s4[4] + "</a>  " + s4[5] + "</span>");
                    } else {
                        $span = $("<span>" + s4[2] + " " + s4[3] + "<a href='" + pathA + "' target='_blank'>" + s4[4] + "</a>  " + s4[5] + "</span>");
                    }
                    $dt.append($span);
                }
            }
        }

        function reachBottom() {
            var scrollTop = 0;
            var clientHeight = 0;
            var scrollHeight = 0;
            if (document.documentElement && document.documentElement.scrollTop) {
                scrollTop = document.documentElement.scrollTop;
            } else if (document.body) {
                scrollTop = document.body.scrollTop;
            }
            if (document.body.clientHeight && document.documentElement.clientHeight) {
                clientHeight = (document.body.clientHeight < document.documentElement.clientHeight) ? document.body.clientHeight : document.documentElement.clientHeight;
            } else {
                clientHeight = (document.body.clientHeight > document.documentElement.clientHeight) ? document.body.clientHeight : document.documentElement.clientHeight;
            }
            scrollHeight = Math.max(document.body.scrollHeight, document.documentElement.scrollHeight);
            alert(scrollTop);
            if (scrollTop + clientHeight == scrollHeight) {
                return true;
            } else {
                return false;
            }
        }
        $(function () {
            $(window).scroll(function () {
                var sTop = $(this).scrollTop();
                var sHeight = $(this).height();
                var scrollHeight = Math.max(document.body.scrollHeight, document.documentElement.scrollHeight);
                if (sTop + sHeight == scrollHeight) {
                    loadData();
                }
            });
            loadData();
        });
     
    </script>

            </div>
        </div>
       
    </div>
</body>
</html>
