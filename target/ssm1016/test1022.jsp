<%@ page import="com.bean.UserTb" %><%--
  Created by IntelliJ IDEA.
  User: LulzSec
  Date: 2018/10/22
  Time: 11:39
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="my" uri="http://java.sun.com/jsp/mytag/my"%>
<%@ page isELIgnored="false" contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <h1>test1022</h1>
    <% UserTb userTb = new UserTb();
        userTb.setUserName("siri");
        pageContext.setAttribute("u1",userTb);
    %>
<my:abc test="${1<2}" yonghu="${u1}">aaaa</my:abc>


</body>
</html>
