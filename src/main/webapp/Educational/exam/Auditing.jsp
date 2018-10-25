<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ѧ����Ϣ����ƽ̨</title>
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
<script src="../sScript/Data.js" type="text/javascript"></script>

<script>
	function del(){
		confirm("ȷ��ɾ����");
	}

</script>



</head>
<body>
	
	<div class="div_head" style="width: 90%;text-align:center;">
		<span> <span style="float:left">��ǰλ���ǣ���������-������</span> <span
			style="float:right;margin-right: 8px;font-weight: bold"> <a
				style="text-decoration: none" href="add.jsp">���������ԡ�</a>
		</span>
		</span>
	</div>

	<div class="cztable">
		<div>
			
			<ul class="seachform1">
				<form action="#" method="post">
					<li>
						<label>���Կ�Ŀ</label>
						<input name="name" type="text" class="scinput1" value=""/>&nbsp;&nbsp;
						<input  type="submit" class="scbtn" value="��ѯ"/>&nbsp;
					</li>
						
				</form>

		<table class="table_a" border="1" width="100%">
                <tbody><tr style="font-weight: bold;">
                        <td >Ժϵ</td>
						<td width="">�༶���</td>
						<td width="">�༶����</td>
                        <td width="15%">��������ʦ</td>						
                        <td width="15%">����</td>
						<td width="15%">�༶״̬</td>
						<td width="15%">����</td>  
                    </tr>

                    <tr id="product1">
                        <td>�����ϵ</td>
						<td>201308J</td>
                        <td>2013��JAVA</td>
						<td>С��</td>
                        <td>35</td> 
						<td>����</td>
						<td>
							<a href="class.add.html">�޸�</a>						   
							<a href="javascript:void(0)" onclick="del();return false" class="tablelink"> ɾ��</a>
							<a href="class.list.html">��ϸ</a>
						</td>
                    </tr> 
					 <tr id="product1">
                        <td>Ӣ��ϵ</td>
						<td>201008E</td>
                        <td>2010��Ӣ��</td>
						<td>С��</td>
                        <td>40</td> 
						<td>�ѱ�ҵ</td>
						<td>
							<a href="class.add.html">�޸�</a>						   
							<a href="javascript:void(0)" onclick="del();return false" class="tablelink"> ɾ��</a>
							<a href="class.list.html">��ϸ</a>
						</td>
                    </tr> 
					
					 <tr id="product1">
                        <td>����ϵ</td>
						<td>201609W</td>
                        <td>2016������</td>
						<td>С��</td>
                        <td>60</td> 
						<td>�����</td>
						<td>
							<a href="class.add.html">�޸�</a>						   
							<a href="javascript:void(0)" onclick="del();return false" class="tablelink"> ɾ��</a>
							<a href="class.list.html">��ϸ</a>
						</td>
                    </tr> 
					
				
					
                    <tr>
                        <td colspan="20" style="text-align: center;">						
						<a style="text-decoration: none;" href="#">
                            ��ҳ ��һҳ  ... 7 8 9 10 11 12 ... ��һҳ βҳ ��1234�� ÿҳ��ʾ 10/23 </a>
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
