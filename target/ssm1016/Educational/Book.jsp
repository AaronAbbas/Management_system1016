<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>学生信息管理平台</title>
<link href="../Style/StudentStyle.css" rel="stylesheet" type="text/css" />
<link href="../Script/jBox/Skins/Blue/jbox.css" rel="stylesheet" type="text/css" />
<link href="../Style/ks.css" rel="stylesheet" type="text/css" />
<link href="../css/mine.css" type="text/css" rel="stylesheet">
<script src="../Script/jBox/jquery-1.4.2.min.js" type="text/javascript"></script>
<script src="../Script/jBox/jquery.jBox-2.3.min.js"
	type="text/javascript"></script>
<script src="../Script/jBox/i18n/jquery.jBox-zh-CN.js"
	type="text/javascript"></script>
<script src="../Script/Common.js" type="text/javascript"></script>
<script src="../Script/Data.js" type="text/javascript"></script>

</head>
<body>



	<div class="div_head" style="width: 100%;text-align:center;">
		<span> <span style="float:left">当前位置是：教务中心-》我的书籍</span> <span
			style="float:right;margin-right: 8px;font-weight: bold"> <a
				style="text-decoration: none" href="../right.jsp">【返回】</a>
		</span>
		</span>
	</div>

	<div class="cztable">
		<div class="tis red">
			注：请仔细核对自己的书籍发放情况，如正确请点击“确定无误”，如不正确请点击“有异议”。</div>
		<table width="100%" border="0" cellspacing="0" cellpadding="0">
			<tbody>
				<tr style="height: 25px" align="center">
					<th scope="col">编号</th>
					<th scope="col">书籍名称</th>
					<th scope="col">已发书数量</th>
					<th scope="col">发书日期</th>
					<th scope="col">操作</th>
				</tr>

				<tr align="center">
					<td>1</td>
					<td>00015英语（二）</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>2</td>
					<td>00167劳动法</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>3</td>
					<td>00169房地产法</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>4</td>
					<td>00261行政法学</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>5</td>
					<td>03708中国近现代史纲要</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>6</td>
					<td>03709马克思主义基本原理概论</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>7</td>
					<td>06909行政诉讼法</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>8</td>
					<td>07944经济法学原理</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>9</td>
					<td>07945企业与公司法学</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				<tr align="center">
					<td>10</td>
					<td>07946税法原理</td>
					<td>0</td>
					<td>2013-12-20 04:47</td>
					<td><a href="javascript:;"
						onclick="confirmStatus('bb91b039-004b-4da6-b765-012d19b205f1', 2)">[确认无误]</a>
						&nbsp; &nbsp; <a href="javascript:;"
						onclick="submitObjection('bb91b039-004b-4da6-b765-012d19b205f1')">[有异议]</a>
					</td>
				</tr>

				 <tr>
                        <td colspan="5" style="text-align: center;">						
						<a style="text-decoration: none;" href="#">
                            首页 上一页  ... 7 8 9 10 11 12 ... 下一页 尾页 共1234条 每页显示 10/23 </a>
                        </td>
                    </tr>

			</tbody>
		</table>
	</div>

	</div>
	</div>

	</div>
</body>
</html>
